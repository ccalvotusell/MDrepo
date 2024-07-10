def convert_distances(input_file, output_file, threshold):
    # Read the input file
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    # Process the lines to convert distances to formatted 1.000 or 0.000 based on the threshold
    converted_lines = []
    for line in lines:
        numbers = line.split()
        converted_numbers = []
        for num in numbers:
            value = float(num)
            if value < threshold:
                converted_numbers.append('1.000')
            else:
                converted_numbers.append('0.000')
        converted_line = '  '.join(converted_numbers)
        converted_lines.append(converted_line)

    # Write the output file
    with open(output_file, 'w') as outfile:
        for converted_line in converted_lines:
            outfile.write(converted_line + '\n')

if __name__ == "__main__":
    input_file = 'distmat_md.dat'
    output_file = 'distmat_wisp.dat'
    threshold = 5.0

    convert_distances(input_file, output_file, threshold)

