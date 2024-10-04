import re
def replace_ccz(file_path):
    # Read the contents of the file
    new_lines = []
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Iterate through the lines and check for the sequence
    for i in range(len(lines)):
        # print(lines[i][0:3])
        
        if "OPENQASM" in lines[i]:
            new_lines.append(lines[i])
        elif "include" in lines[i]:
            new_lines.append(lines[i])
        elif "qreg" in lines[i]:
            new_lines.append(lines[i])
        elif lines[i][0:3] == "ccx":
            new_lines.append("h q[" + re.findall(r'\d+', lines[i])[-1] + "];\n")
            new_lines.append("ccz" + lines[i][3:])
            new_lines.append("h q[" + re.findall(r'\d+', lines[i])[-1] + "];\n")
        elif "q[" in lines[i]:
            new_lines.append(lines[i])
    #for a in new_lines:
    #    print(a)
    # Write the modified contents back to the file
    with open(file_path[:-5] + "_fin.qasm", 'w') as file:
        file.writelines(new_lines)

# Example usage:
file_path = "circuit/nam-benchmarks/toff3.qasm"  # Replace with the path to your input file
replace_ccz(file_path)


file_path = "circuit/nam-benchmarks/taka4.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/taka6.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/taka8.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/cucc4.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/cucc6.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/rand6.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/rand11.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
file_path = "circuit/nam-benchmarks/rand16.qasm"  # Replace with the path to your input file

replace_ccz(file_path)
