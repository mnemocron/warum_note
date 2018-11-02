#!/bin/bash

## Define Database for ...
declare -a arr=(	
			"Wennd merksch, dass d Initiale (H.P.S.) vom Hanspi zemli bitter ironisch sind. (N.S.)"
			"Dä het no meh Fingerspitzegfühl als der Hanspi (?)"
			"Liiiiiiimes von iiiiiiiiiix gegen Unendlich IIIIIntegral ... (C.B.)"
			"Die Flasche unter der Kurve (R.M.)"
			"Die Schisstdicke ist ... (R.M.)"
			"Guck mal! (R.M.)"
			"Was isch en Lauch im Tornado? (E.v.D)"
			"So jetzt wäri en guete Moment zum wider Synchronisiere (H.S)"
			"Hey säg mol öppis Gschits (I.P.)"
			"Mini Herre das isch de Trüc (D.J.)"
			"Warum Note? (R.M.)" 
			"Wissen Sie überhaupt, wie der Winkel definiert ist?! (P.N.)"
			"Totale Überforderung der Studis. (P.N.)"
			"Sklave des Tools! (P.N.)"
			"pspice - It's pspicier (P.B.)"
			"Grad Patent amelde. (P.N.)"
            		"Und jetzt kommt der Moment, in dem der Frosch in Wasser sprint und sein Leben riskiert. (R.G.)"
			"Yes Yes (R.G.)"
			"check - check - double check (R.G.)"
			"bätsch bätsch (R.G.)"
			"Mit dem chamer chlini Chind verschrecke! (R.G.)"
			"Audi-Max und -Moritz. (M.M.)"
			"Guten Nachmittag miteinander. (H.P.S.)"
			"Wiksed Sie witer! (H.P.S.)"
			"Was macht ein Lauch im Wind? (E.v.D.)"
			"Simulieren ist wirtschaftlich und macht spass? (S.W.)"
			"Gioconda (C.B.)"
			"Spile mer es Risiko? (R.v.D)"
			"Isch sLäbe guet (R.G)"
			"Das mache ich jetz nicht, weil das haben sie ja eh nicht gemacht (P.N.)"
			"Bin ich da im falschen Film? (P.N.)"
			"Und an der Prüfung laufen sie knallhart ins Messer. (P.N.)"
			"Herr Vogt. Fühlen sie sich durch den Unterricht nicht gestört? (P.N.)"
			"Wenn sie aben C nischt gescrieben, albe Punct weniger (C.B.)"
			"Ou, das isch wider politisch inkorrekt! (R.G.)"
			"Watch it guys! (R.G.)"
			"Hold the Horses! (R.G.)"
			"Und wenn sie dann den Fisch auf den Speer werfen... (C.W.)"
			"Ich han jetz ächt kei Bock mit dir z'flirte du mit dine schwule Augebrauetricks! (C.A.)"
			"Eventunell (M.M.)"
			"Ausser rauschen nichts zu lauschen (M.M.)"
			"Migrosfarad (M.M.)"
			"Kapazität: Einheit ist Velo(M.M.)"
			"Dann kriegen Sie den Föifliber, s'Weggli und die Bäckerstochter (M.M.)"
			"Mittelsellenwender (M.M.)"
			"Feld-Wald-Wiesen-Elektronik (M.M.)"
			"Handgelenk mal PI durch Waldluft (M.M.)"
			"Dirac Töggel (M.M.)"
			"Da habens Sie einen Schlurzkuss (M.M.)"
			)

## Find Database lenght ...
ARR_LENGHT=${#arr[@]}

if [ -z $1 ]; then
	## Choose a randoom entry ...
	RAND_NUMB=$(( ( RANDOM % $ARR_LENGHT )  + 1))-1

	## Give out ...
	echo "${arr[$RAND_NUMB]}"
else

	if [ "$1" = "-all" ]; then

		for (( i=0; i<=$ARR_LENGHT; i++ ))
		do
			## Give out ...
			echo "${arr[i]}"
			echo "   "			
		done
	else

		## now loop through the above array
		for i in "${arr[@]}"
		do
		  	if [[ $i = *$1* ]]; then
				echo $i
				echo "   "
			fi
		done

	fi

fi










