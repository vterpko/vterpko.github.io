[**HOME**](/)

# Awk OneLiners

## Basic Text Processing
#### Print entire file:
```bash
awk '{ print }' file
```

#### Print first field
```bash
awk '{ print $1 }' file
```

#### Print specific fields:
```bash
awk '{ print $1, $3 }' file
```

#### Print lines with specific pattern:
```bash
awk '/pattern/ { print }' file
```

#### Print lines not matching pattern:
```bash
awk '!/pattern/ { print }' file
```

#### Print lines with specific field value:
```bash
awk '$2 == "value" { print }' file
```

#### Print lines longer than a specific length:
```bash
awk 'length > 80' file
```

#### Print last field:
```bash
awk '{ print $NF }' file
```

#### Print second last field:
```bash
awk '{ print $(NF-1) }' file
```

#### Count lines:
```bash
awk 'END { print NR }' file
```

## Math and Arithmetic
#### Calculate sum of column
```bash
awk '{ sum += $1 } END { print sum }' file
```

#### Calculate average of column
```bash
awk '{ sum += $1 } END { print sum / NR }' file
```

#### Find maximum value in column
```bash
awk 'max < $1 { max = $1 } END { print max }' file
```

#### Find minimum value in column
```bash
awk 'NR == 1 { min = $1 } $1 < min { min = $1 } END { print min }' file
```

#### Calculate total
```bash
awk '{ total += $1 * $2 } END { print total }' file
```

#### Round numbers
```bash
awk '{ printf "%.2f\n", $1 }' file
```

#### Perform calculations with precision
```bash
awk '{ result = sqrt($1) + 2 * $2; printf "%.2f\n", result }' file
```

## Filtering and Selection
#### Print lines from line number N to M
```bash
awk 'NR >= N && NR <= M' file
```

#### Print lines in range
```bash
awk '/start_pattern/, /end_pattern/' file
```

#### Print unique lines
```bash
awk '!seen[$0]++' file
```

#### Print duplicate lines
```bash
awk 'seen[$0]++' file
```

#### Print lines with unique field values
```bash
awk '!seen[$2]++' file
```

#### Remove duplicate consecutive lines
```bash
awk '$0 != prev; { prev = $0 }' file
```

#### Print lines containing specific field value
```bash
awk -v field="value" '$2 == field' file
```

## Text Manipulation
#### Replace text
```bash
awk '{ gsub("old", "new"); print }' file
```

#### Convert to lowercase
```bash
awk '{ print tolower($0) }' file
```

#### Convert to uppercase
```bash
awk '{ print toupper($0) }' file
```

#### Reverse lines
```bash
awk '{ for(i=NF; i>0; i--) printf("%s ", $i); print "" }' file
```

#### Reverse characters in each line
```bash
awk '{ for(i=length; i>=1; i--) printf("%s", substr($0, i, 1)); print "" }' file
```

## Field Manipulation
#### Change field separator
```bash
awk -F':' '{ print $1, $3 }' file
```

#### Print fields in reverse order
```bash
awk '{ for(i=NF; i>0; i--) printf("%s ", $i); print "" }' file
```

#### Concatenate fields
```bash
awk '{ print $1 $2 }' file
```

#### Swap first and second fields
```bash
awk '{ print $2, $1, $3 }' file
```

#### Print selected columns
```bash
awk -v cols="2 4" '{ for(i=1; i<=NF; i++) if(i in split(cols,a," ")) printf("%s ", $a[i]); print "" }' file
```

## Advanced Text Processing
#### Print lines matching pattern in column
```bash
awk '$2 ~ /pattern/ { print }' file
```

#### Print lines based on pattern in specific column
```bash
awk '$2 ~ /^[0-9]+$/ { print }' file
```

#### Print lines based on length of specific field
```bash
awk 'length($3) > 10 { print }' file
```

#### Print lines with more than N fields
```bash
awk 'NF > N' file
```

#### Print lines with fewer than N fields
```bash
awk 'NF < N' file
```

## Grouping and Aggregation
#### Count occurrences of each value in column
```bash
awk '{ count[$1]++ } END { for(val in count) print val, count[val] }' file
```

#### Sum values based on field value
```bash
awk '{ sum[$2] += $1 } END { for(val in sum) print val, sum[val] }' file
```

#### Calculate average per group
```bash
awk '{ sum[$1] += $2; count[$1]++ } END { for(val in sum) print val, sum[val] / count[val] }' file
```

## Conditional Operations
#### Apply condition to specific field
```bash
awk '$3 > 10 { print }' file
```

#### Apply condition across multiple fields
```bash
awk '$2 > 5 && $3 < 20 { print }' file
```

#### Print lines where field matches any of multiple values
```bash
awk '$1 == "value1" || $1 == "value2" { print }' file
```

#### Negate a condition
```bash
awk '!($2 > 10) { print }' file
```

## Text Formatting
#### Format output
```bash
awk '{ printf("%-10s %5d\n", $1, $2) }' file
```

#### Align columns
```bash
awk '{ printf("%-20s %5d\n", $1, $2) }' file
```

#### Print with header
```bash
awk 'NR == 1 { print "Header" } { print }' file
```

#### Add line numbers
```bash
awk '{ print NR, $0 }' file
```

## Special Tasks
#### Print lines from specific line number
```bash
awk 'NR >= 10 { print }' file
```

#### Print specific range of lines
```bash
awk 'NR >= 10 && NR <= 20' file
```

#### Print lines between two patterns (exclusive)
```bash
awk '/start_pattern/,/end_pattern/{next}1' file
```

#### Print lines between two patterns (inclusive)
```bash
awk '/start_pattern/,/end_pattern/' file
```

#### Calculate median
```bash
awk '{ a[NR]=$1 } END { n=asort(a); if(n%2) print a[(n+1)/2]; else print (a[n/2]+a[n/2+1])/2 }' file
```

#### Print lines from Nth line to end
```bash
awk 'NR >= N' file
```

#### Print lines with line numbers
```bash
awk '{ print NR ": " $0 }' file
```