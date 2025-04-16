bin/musicalLL: mainA3.o addNewSong.o countNotesInASong.o createPlayList.o deleteASongGivenId.o deletePlayList.o playPlayList.o playSongGivenId.o playSongGivenName.o
	mkdir -p bin
	gcc -std=c99 -Wall -o bin/musicalLL mainA3.o addNewSong.o countNotesInASong.o createPlayList.o deleteASongGivenId.o deletePlayList.o playPlayList.o playSongGivenId.o playSongGivenName.o

mainA3.o: src/mainA3.c include/givenA3.h
	gcc -std=c99 -Wall -c src/mainA3.c
addNewSong.o: src/addNewSong.c include/givenA3.h
	gcc -std=c99 -Wall -c src/addNewSong.c
countNotesInASong.o: src/countNotesInASong.c include/givenA3.h
	gcc -std=c99 -Wall -c src/countNotesInASong.c
createPlayList.o: src/createPlayList.c include/givenA3.h
	gcc -std=c99 -Wall -c src/createPlayList.c
deleteASongGivenId.o: src/deleteASongGivenId.c include/givenA3.h
	gcc -std=c99 -Wall -c src/deleteASongGivenId.c
deletePlayList.o: src/deletePlayList.c include/givenA3.h
	gcc -std=c99 -Wall -c src/deletePlayList.c
playPlayList.o: src/playPlayList.c include/givenA3.h
	gcc -std=c99 -Wall -c src/playPlayList.c
playSongGivenId.o: src/playSongGivenId.c include/givenA3.h
	gcc -std=c99 -Wall -c src/playSongGivenId.c
playSongGivenName.o: src/playSongGivenName.c include/givenA3.h
	gcc -std=c99 -Wall -c src/playSongGivenName.c

clean:
	rm -f *.o musicalLL