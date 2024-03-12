int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
	// teamA
	int teamA1 = teamA['Free throws']!;
	int teamA2 = teamA['2 pointers']! * 2;
	int teamA3 = teamA['3 pointers']! * 3;

	//total teamA
	int totalA = (teamA1 + teamA2 + teamA3);

	//teamB
	int teamB1 = teamB['Free throws']!;
	int teamB2 = teamB['2 pointers']! * 2;
	int teamB3 = teamB['3 pointers']! * 3;

	//total team B
	int totalB = (teamB1 + teamB2 + teamB3);

	// Compare
	if (totalA > totalB) {
		return 1;
	} else if (totalA < totalB) {
		return 2;
	} else {
		return 0;
	}
}
