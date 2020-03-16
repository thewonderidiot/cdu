#!/usr/bin/env python3
import fileinput
import re
import sys

signals = {}
signal_names = {}

dump_lines = []
last_angle = 0
while True:
    time = 0
    staged_inst = None
    instruction_starting = False
    inkl_inst = None

    # Buffer up all the lines we need. Going on the fly is too slow
    line = sys.stdin.readline()
    if not line:
        break
    if not line.startswith('$comment data_end'):
        dump_lines.append(line)
        continue

    for line in dump_lines:
        if line.startswith('$'):
            if line.startswith('$var'):
                idx = 2
                if 'var wire' in line:
                    idx += 1
                toks = line.split()
                sig_num = int(toks[idx])
                
                sig_name = toks[idx+1]
                signal_names[sig_num] = sig_name
                signals[sig_name] = 0
            elif line.startswith('$dumpvars'):
                print('$name ARDCNT')
                print('#0')

            continue

        if line.startswith('#'):
            time = int(line[1:])
            continue
        
        state = int(line[0]) if line[0] not in 'zx' else 0
        sig_num = int(line[1:])
        sig_name = signal_names[sig_num]
        signals[sig_name] = state

        angle = 0
        for name,val in signals.items():
            bit = int(name[3:5]) - 40
            if not val:
                angle |= 1 << bit

        angle = (angle / 0x10000) * 360

        if angle != last_angle:
            print('#%u %.4f' % (time, angle))
            last_angle = angle

    print('$finish')
    sys.stdout.flush()
    dump_lines = []

