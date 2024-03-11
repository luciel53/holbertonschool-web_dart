List<double> convertToF(List<double> temperaturesInC) {
	return temperaturesInC.map((celsius) {
		double fahrenheit = (celsius * 9 / 5) + 32;
		String Roundedfahrenheit = fahrenheit.toStringAsFixed(2);
		return double.parse(Roundedfahrenheit);
	}).toList();
}
