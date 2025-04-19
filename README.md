# CS253-Common-Prefix-Length-Shell

This repository contains a Bash script that computes the length of the common prefix for each pair of lines from two input files.

## Usage

```bash
./common_prefix.sh file1 file2 output_file
```

- `file1`: First input file (one string per line)
- `file2`: Second input file (one string per line)
- `output_file`: File where the common prefix lengths will be written

Each line in the output file corresponds to the length of the common prefix between the respective lines of `file1` and `file2`.

## Example

Suppose `file1` contains:
```
apple
banana
carrot
```
and `file2` contains:
```
apricot
band
car
```

Running the script:
```bash
./common_prefix.sh file1 file2 output.txt
```

The `output.txt` will contain:
```
2
2
3
```

## Notes

- Both input files must exist and have the same number of lines.
- The script prints the output file contents after processing.
---

*For academic use in CS253 or similar courses. Contributions and suggestions are welcome!*