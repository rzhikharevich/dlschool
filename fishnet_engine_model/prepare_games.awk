{
	line = $0

	elo1_flag = $9
	elo2_flag = $10
	elo1 = $4
	elo2 = $5

	setup_flag = $12

	if ( \
		(elo1_flag == "welo_true" && elo2_flag == "belo_true") || \
		setup_flag == "setup_true" \
	) {
		next
	}

	if (elo1_flag == "welo_true") {
		elo = elo2
	} else if (elo2_flag == "belo_true") {
		elo = elo1
	} else {
		elo = elo1 < elo2 ? elo1 : elo2
	}

	pgn = substr(line, index(line, "###") + 3)

	print elo " " pgn
}
