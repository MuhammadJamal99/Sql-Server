/** 29.Mathematical_Functions **/
/** 1.ABS() **/
/* ABS stands for absolute and returns, the absolute(positive) number. */
PRINT ABS(-101.5) -- returns 101.5, without the - sign
/** 2.CEILING() **/
/** 
	CEILING() accept a numeric expression as a single parameter and 
	returns the Smallest integer value greater than or equal to the parameter.
**/
SELECT CEILING(15.2); --return 16
SELECT CEILING(-15.2); -- return -15
SELECT ABS(CEILING(-15.2)); -- return 15

/** 3.FLOOR() **/
/** 
	FLOOR() accept a numeric expression as a single parameter and
	returns the largest integer lass than or equal to the parameter.
**/
SELECT FLOOR(15.2); --return 15
SELECT FLOOR(-15.2); -- return -16
SELECT ABS(FLOOR(-15.2)); -- return 16

/** 4.POWER() **/
/**
	POWER(expression, power)
	returns The Power Value of The Specified Expression to The Specified Power
**/
SELECT POWER(2,3); -- return 8

/** 5.RAND() **/
/**
	Returns  a random  float number between 0 and 1.
	Rand() Function Takes an optional seed Parameter.
	When seed value is supplied the RAND() function always returns the same 
	value for the same seed.
**/
SELECT RAND(100);
DECLARE @Counter INT;
SET @Counter = 1;
WHILE(@Counter <= 10)
BEGIN
	PRINT FLOOR(RAND() * 100);
	SET @Counter = @Counter + 1;
END

/** 6.SQUARE() **/
/** Returns the square of given number **/
SELECT SQUARE(3);
SELECT SQUARE(9);
SELECT ABS(SQUARE(SQRT(3)));

/** 7.SQRT() **/
/** Returns the square root of given number **/
SELECT SQRT(9);
SELECT SQRT(3);

/** 8.ROUND() **/
/**	
	ROUND(Numeric_expression,Length[function]) 
		Rounds the given numeric expression based on the given length.
		this function takes 3 parameters.

		Numeric_Expression: 
			is the number that we want to round.
		length Parameter : 
			specifies the number of the digits that we want to round to. 
			if the length is positive number, 
			then the rounding is applied to the number before the decimal Part. 
			Where as if the length is negative, then the rounding is applied to the number 
			before the decimal.
			the optional function parameter : 
				is used to indicate rounding or truncation operation.
				0 indicates rounding, non zero indicates truncation. 
				default, if not specified is 0.
**/
PRINT ROUND(850.556, 2);

PRINT ROUND(850.556, 2, 1);

PRINT ROUND(850.556, 1);

PRINT ROUND(850.556, 1, 1);

PRINT ROUND(850.556, -2); 

PRINT ROUND(850.556, -1);
