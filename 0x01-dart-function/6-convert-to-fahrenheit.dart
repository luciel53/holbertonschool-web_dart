List<double> convertToF(List<double> temperaturesInC) {
	return temperaturesInC.map((celsius) {
		double fahrenheit = (celsius * 9 / 5) + 32;
		return fahrenheit.roundToDouble() * 0.01;
	}).toList();
}
