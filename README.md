
# SINGLE DIGIT BCD MULTIPLIER
As any BCD digit lies between [0, 9] or [0000, 1001], multiplying two BCD digits can result in numbers between [0, 81]. All the possible combinations can be represented in a 7-bit binary
number when multiplied, (81)10 or (1010001)2 being the highest.
X3 to x0 are binary input and y3 to y0 are another binary input.

# 8-digit_BCD_Multiplier
 A single digit BCD multiplier is extended into a 8 digits BCD multiplier as follows:
 Call the single digit multiplier in a loop 64 times. The values returned my each multiplier will be a 8 bit BCD partial product.
 The partial products comprise of 64 higher and 64 lower bits. The binary to BCD conversion block is responsible to produce BCD partial products in 8 digits multiplier.
 BCD adders are used to add these 64 partial products in a particular order.
 The carry propagation from each column of partial product addition is taken care while adding.
This process gives a result of 64 bits BCD product.

Reference by (https://www.researchgate.net/publication/3480208_Binary-coded_decimal_digit_multipliers)