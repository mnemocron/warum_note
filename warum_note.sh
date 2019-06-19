#!/bin/bash

# Usage: ./warum_note.sh [--all | substring]

# Array with quotations from lecturers
declare -a arr=(
			"Wennd merksch, dass d Initiale (H.P.S.) vom Hanspi zemli bitter ironisch sind. (N.S.)"
			"Dä het no meh Fingerspitzegfühl als der Hanspi. (?)"
			"Liiiiiiimes von iiiiiiiiiix gegen Unendlich IIIIIntegral... (C.B.)"
			"Die Flasche unter der Kurve. (R.M.)"
			"Die Schisstdicke ist... (R.M.)"
			"Guck mal! (R.M.)"
			"Was isch en Lauch im Tornado? (E.v.D)"
			"So jetzt wäri en guete Moment zum wider Synchronisiere. (H.S)"
			"Hey säg mol öppis Gschits. (I.P.)"
			"Mini Herre das isch de Trüc. (D.J.)"
			"Warum Note? (R.M.)"
			"Wissen Sie überhaupt, wie der Winkel definiert ist?! (P.N.)"
			"Totale Überforderung der Studis. (P.N.)"
			"Sklave des Tools! (P.N.)"
			"Pspice - It's pspicier. (P.B.)"
			"Grad Patent amelde. (P.N.)"
			"Und jetzt kommt der Moment, in dem der Frosch in Wasser sprint und sein Leben riskiert. (R.G.)"
			"Yes, Yes! (R.G.)"
			"Check, Check, Double Check. (R.G.)"
			"Bätsch, Bätsch. (R.G.)"
			"Mit dem chamer chlini Chind verschrecke! (R.G.)"
			"Audi-Max und -Moritz. (M.M.)"
			"Guten Nachmittag miteinander. (H.P.S.)"
			"Wiksed Sie witer! (H.P.S.)"
			"Was macht ein Lauch im Wind? (E.v.D.)"
			"Simulieren ist wirtschaftlich und macht spass? (S.W.)"
			"Gioconda (C.B.)"
			"Spile mer es Risiko? (R.v.D)"
			"Isch s'Läbe guet. (R.G.)"
			"Das mache ich jetz nicht, weil das haben sie ja eh nicht gemacht (P.N.)"
			"Bin ich da im falschen Film? (P.N.)"
			"Und an der Prüfung laufen sie knallhart ins Messer. (P.N.)"
			"Herr Vogt. Fühlen sie sich durch den Unterricht nicht gestört? (P.N.)"
			"Wenn sie aben C nischt gescrieben, albe Punct weniger. (C.B.)"
			"Ou, das isch wider politisch inkorrekt! (R.G.)"
			"Watch it guys! (R.G.)"
			"Hold the Horses! (R.G.)"
			"Und wenn sie dann den Fisch auf den Speer werfen... (C.W.)"
			"Ich han jetz ächt kei Bock mit dir z'flirte du mit dine schwule Augebrauetricks! (C.A.)"
			"Eventunell (M.M.)"
			"Ausser rauschen nichts zu lauschen. (M.M.)"
			"Primärseitig und Sekretärseitig (M.M.)"
			"Für einen Elektroingenieur ist es Penibel, wenn er die Dezibel nicht kann. (M.M.)"
			"Migrosfarad (M.M.)"
			"Kapazität: Einheit ist Velo. (M.M.)"
			"Dann kriegen Sie den Föifliber, s'Weggli und die Bäckerstochter. (M.M.)"
			"Mittelsellenwender (M.M.)"
			"Feld-Wald-Wiesen-Elektronik (M.M.)"
			"Handgelenk mal PI durch Waldluft. (M.M.)"
			"Dirac Töggel (M.M.)"
			"Da habens Sie einen Schlurzkuss. (M.M.)"
			"War das Frage? (R.M.)"
			"[...] werden aber von den Studis nicht ernst genommen (offensichtlich muss es sehr weh tun!). Durch Nichtanschreiben von M und benennen der Spannung lassen sich viele Studis schon aus dem Konzept bringen. (P.N.)"
			"[...] Muss erfüllt sein. Wer diese Kontrolle weglässt spielt Russisches Roulett! (P.N.)"
			"Interpretation: Studis schalten PC/Matlab ein und Kopf aus! (P.N.)"
			"Oft erwähnt und demonstriert, aber Studis sind teilweise therapieresitent. (P.N.)"
			"Wer hier einen Solver benutzt, hat sein Handwerk nicht im Griff. (P.N.)"
			"Hier will ich kein Bodeplot von Tool/Matlab, sondern eine Handrechnung. Irgendeinmal bringe ich das schon noch in die Köpfe. (P.N.)"
			"Leben am Limes. (?)"
			"Dann sind Sie bereit für Industrie. (T.N.)"
			"Ein RS-232 Adapter funktioniert nicht Da keine COM Ports mehr vorhanden sind an den heutigen Notebooks, wurde ein Adapter [...] gekauft. (EUT Thesis)"
			)

# Length of array $arr
arr_len=${#arr[@]}

if [ -z $1 ]; then
	# Print a random quotation
	# Random number generator [0, arr_len) (biased)
	rn=$(( $RANDOM % $arr_len ))
	echo "${arr[$rn]}"
else
	if [ "$1" == "--all" ]; then
		# Print all quotations
		for i in "${arr[@]}"; do
			echo "$i"
			echo
		done
	else
		# Print quotations containing substring $1
		for i in "${arr[@]}"; do
			if [[ $i == *"$1"* ]]; then
				echo "$i"
				echo
			fi
		done
	fi
fi
