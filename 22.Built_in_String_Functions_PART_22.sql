/** 22.Built_in_String_Functions **/


/** 1.ASCII(CharacterExpression) **/
/* Return Ascii Code of given Char */
/** if you give it more than one char it will return the ascii code of first char **/
SELECT ASCII('A');
SELECT ASCII('ABC');

/** 2.CHAR(Integer_Expression) **/
/* Return Char Of Integer Number */
SELECT CHAR(65);

/* Captil Letters 65 : 91 */
/* Captil Letters 97 : 123 */
/* Numbers 48 : 58 */
DECLARE @Start INT;
SET @Start = 65;
WHILE(@Start <= 90)
BEGIN
	PRINT CHAR(@Start);
	SET @Start = @Start + 1;
END


/** 3.LTRIM(CharacterExpression) **/
/** NOTE: Not Working with Tap Space **/
/* Return given CharacterExpression After Remove Left Space Characters From it */
PRINT LTRIM('        Muhammad');

/** 4.RTRIM(CharacterExpression) **/
/* Return given CharacterExpression After Remove Right Space Characters From it */
/** NOTE: Not Working with Tap Space **/
PRINT RTRIM('Muhammad        ');

/** 5.TRIM(CharacterExpression) **/
/* Return given CharacterExpression After Remove Right and Left Space Characters From it */
PRINT TRIM('          Muhammad          ');

/** 6.UPPER(CharacterExpression) **/
/* Convert All Chars in Given CharacterExpression To Upper Case */
PRINT UPPER('muhammad Jamal');

/** 7.LOWER(CharacterExpression) **/
PRINT LOWER('MUHAMMAD JAMAL');

/** 8.REVERSE(CharacterExpression) **/
/** Reverse given CharacterExpression **/
PRINT REVERSE('MUHAMMAD JAMAL');

/** 9.LEN(CharacterExpression) **/
/** Return Length Of given CharacterExpression Excluding blanks in the End of CharacterExpression **/
PRINT LEN('MUHAMMAD JAMAL        ');