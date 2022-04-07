import sys
from natsort import natsorted


def extract_results(filename):
    with open(filename) as f:
        content = f.readlines()
    flag = False
    tot_time = 0
    tot_gate = 0
    num_finished = 0
    gate_product = 1
    key = ''
    result = {}
    for line in content:
        line = line.strip()
        data = line.split()
        if flag:
            pos = line.find(':')
            pos2 = line.find(',', pos)
            pos3 = line.find('s', pos2)
            if not line[pos + 2:pos2].isnumeric():
                continue
            val = line[pos + 2:pos2]
            result[key] = val
            num_finished += 1
            tot_gate += int(line[pos + 2:pos2])
            gate_product *= int(line[pos + 2:pos2])
            tot_time += float(line[pos2 + 2:pos3])
        if line.startswith('Optimization'):
            flag = True
            pos = line.find('.qasm')
            pos2 = line.rfind(' ', 0, pos)
            key = line[pos2 + 1:pos]
        else:
            flag = False
        if len(data) >= 2 and data[1] == 'Timeout.':
            key = data[0].split('.')[0]
            val = data[-1] + ' (timeout)'
            result[key] = val
            num_finished += 1
            tot_gate += int(data[-1])
            gate_product *= int(data[-1])
            tot_time += 86400  # 1-day timeout
        if len(data) >= 2 and data[1].startswith('bestCost('):
            key = data[0].split('.')[0]
            val = data[1].split('.')[0][9:] + ' (at ' + data[-2] + ' seconds)'
            result[key] = val
    for k, v in natsorted(result.items()):
        print(k.ljust(15), v)
    print('num_circuits (finished) =', num_finished)
    print('tot_gate =', tot_gate)
    if num_finished > 0:
        print('geomean_gatecount =', gate_product ** (1 / num_finished))
    print('tot_time =', tot_time)
    for k, v in natsorted(result.items()):  # easy paste to google doc
        if v.isnumeric():
            print(v)
        else:
            print(v.split(' ')[0])


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print('Usage: python extract_results.py [result file of ./run_*.sh]')
        exit()
    extract_results(sys.argv[1])
