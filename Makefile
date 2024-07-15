out: main.c
	tcc workarounds.c main.c libs/glad/src/glad.c -o out/main.exe -Ilibs/glfw/include -Ilibs/glad/include -m32 -lglfw3 -lopengl32 -bench -L.

dude: out/main.exe
	out/main.exe

clean:
	rm out\main.exe
