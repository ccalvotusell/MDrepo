import numpy as np
import math

def main():
    input_file = 'corr_md.dat'
    output_file = 'log_abs_corr_md.dat'

    # Define a small value to avoid log(0) error
    epsilon = 1e-10

    # Read the input file
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    # Process the lines to take the -log of the absolute value of each number
    log_abs_lines = []
    for line in lines:
        numbers = line.split()
        log_abs_numbers = []
        for num in numbers:
            value = abs(float(num))
            # Avoid log(0) by using a small epsilon value
            if value == 0:
                value = epsilon
            log_abs_value = -math.log10(value)
            log_abs_numbers.append(f'{log_abs_value: .3f}')
        log_abs_line = '  '.join(log_abs_numbers)
        log_abs_lines.append(log_abs_line)

    # Write the output file
    with open(output_file, 'w') as outfile:
        for log_abs_line in log_abs_lines:
            outfile.write(log_abs_line + '\n')

if __name__ == "__main__":
    main()

