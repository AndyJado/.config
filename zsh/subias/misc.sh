function 2ascii() {
	echo hex: $(echo "16i $1 P" | dc);
	echo deci: $(echo "10i $1 P" | dc);
}