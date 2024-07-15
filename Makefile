build: main.c
	tcc workarounds.c main.c libs/glad/src/gl.c -o out/main.exe -Ilibs/glfw/include -Ilibs/glad/include -m32 -lglfw3 -lopengl32 -bench -L.

test: out/main.exe
	out/main.exe

clean:
	rm out\main.exe
