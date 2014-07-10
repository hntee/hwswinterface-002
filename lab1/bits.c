/* 
 * CSE 351 HW1 (Data Lab )
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to this homework by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   Use the dlc compiler to check that your solutions conform
 *   to the coding rules.
 */


#endif
// Rating: 1
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  // x & y = ~(~(x & y)) = ~((~x) | (~y))
  return ~((~x) | (~y));
}
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
  /*
   * x ^ y = (x | y) & ~(~x | ~y)
   *
   * x | y = ~(~(x | y))
   *       = (~(~x & ~y))
   * 
   * ~(~x | ~y) = ~(x & y)
   */
  return (~(~x & ~y)) & (~(x & y));
}
/* 
 * thirdBits - return word with every third bit (starting from the LSB) set to 1
 * and the rest set to 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int thirdBits(void) {
  int result = 0;
  const int MASK = 0x49; // 0100 1001

  result |= MASK;
  result |= MASK << 9;  // (MASK << 1) << 8;
  result |= MASK << 18; // (MASK << 2) << 16;
  result |= MASK << 24;

  return result;
}
// Rating: 2
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  // 32 - n
  int thirty_two_minus_n = 32 + (~n + 1);

  // make the n-1 bit be the sign bit
  int after_shift = x << thirty_two_minus_n >> thirty_two_minus_n;

  return !(after_shift ^ x);
}
/* 
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 2
 */
int sign(int x) {
  // x = 0, all is 0
  // x = 0x0..1010, first is 0, second is 1, last is 0
  // x = 0x1..1010, first is 0, second is 0, last is 0xfff..f 
  return (x & 0) + ( (!!x) & ~(x >> 31) ) + (x >> 31);
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  int shift_width = n << 3; // n * 8;

  // the last step is to clear 8 to 31 bits
  return ( (x & (0xff << shift_width)) >> shift_width ) & 0xff;
}
// Rating: 3
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  // c: is n greater than 0?
  int c = !!n; // 0 or 1

  // if n == 0, then just return original x
  // if n > 0, the first n bits from the left should be masked to be 0

  // c == 1 ? a : b
  int n_minus_one = n + (1 << 31 >> 31);
  int a = ~(1 << 31 >> n_minus_one);
  int b = 1 << 31 >> 31;
  int mask = ((c << 31 >> 31) & a) + (((!c) << 31 >> 31) & b);

  return (x >> n) & mask;
}
/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
  // there are only two conditions that causes overflow
  // first:
  // x + y = 0x0*******, where x = 0x1******* and y = 0x1*******
  // second:
  // x + y = 0x1*******, where x = 0x0******* and y = 0x0*******
  int _0xffffffff = 1 << 31 >> 31;
  int x_plus_y = x + y;

  // if the first condition is satisfied, first = 1
  int first = (!((x & y) >> 31 ^ _0xffffffff)) & (! (x_plus_y >> 31) );

  // if the second condition is satisfied, second = 1
  int second = (!((x | y) >> 31)) & (!( (x_plus_y >> 31) ^ _0xffffffff ));

  int overflow_cond = first | second;
  return !overflow_cond;
}
// Rating: 4
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  // return (~(x | (~x + 1)) >> 31) & 1;
  // I think the following one is better, though the former one is valid
  return ((x | (~x + 1)) >> 31) + 1;
}
// Extra Credit: Rating: 3
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  int c = !!x; // 0 or 1
  return ((c << 31 >> 31) & y) + (((!c) << 31 >> 31) & z);
}
// Extra Credit: Rating: 4
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
  int minus_one = (1 << 31 >> 31);

  // if x < 0, (x >> 31) + 1 == 0
  // else if x == 0, (!!x) == 0
  // else x > 0, return !((x - 1) & x)
  return ((x >> 31) + 1) & (!!x) & (!((x + minus_one) & x));
}
