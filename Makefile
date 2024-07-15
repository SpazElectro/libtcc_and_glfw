out: main.c
	tcc workarounds.c main.c libs/glad/src/glad.c -o out/main.exe -libs/Iglfw/include -libs/Iglad/include -m32 -lglfw3 -lopengl32 -bench

dude: out/main.exe
	out/main.exe

clean:
	rm out\main.exe
