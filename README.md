#	Credit Card Validation

Exercise in basic validation of credit cards.

Given the following input

	4111111111111111
	4111111111111
	4012888888881881
	378282246310005
	6011111111111117
	5105105105105100
	5105 1051 0510 5106
	9111111111111111

The following should be output

	VISA: 4111111111111111       (valid)
	VISA: 4111111111111          (invalid)
	VISA: 4012888888881881       (valid)
	AMEX: 378282246310005        (valid)
	Discover: 6011111111111117   (valid)
	MasterCard: 5105105105105100 (valid)
	MasterCard: 5105105105105106 (invalid)
	Unknown: 9111111111111111    (invalid)