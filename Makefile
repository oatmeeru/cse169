CC = g++

BREW = $(shell brew --prefix)

CFLAGS = -g -std=c++11 -Wno-deprecated-declarations
INCFLAGS = -Iinclude -I$(BREW)/include -Iinclude/imgui -Iinclude/backends
LDFLAGS = -framework OpenGL -L$(BREW)/lib -lglfw

RM = /bin/rm -f

all: menv
menv: main.o Camera.o Cube.o Shader.o Tokenizer.o Window.o DOF.o Joint.o Skeleton.o imgui.o imgui_demo.o imgui_draw.o imgui_tables.o imgui_widgets.o imgui_impl_glfw.o imgui_impl_opengl3.o
	$(CC) -o menv main.o Camera.o Cube.o Shader.o Tokenizer.o Window.o DOF.o Joint.o Skeleton.o imgui.o imgui_demo.o imgui_draw.o imgui_tables.o imgui_widgets.o imgui_impl_glfw.o imgui_impl_opengl3.o $(LDFLAGS)

# project 1
main.o: main.cpp include/Window.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c main.cpp

Camera.o: src/Camera.cpp include/Camera.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Camera.cpp

Cube.o: src/Cube.cpp include/Cube.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Cube.cpp

Shader.o: src/Shader.cpp include/Shader.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Shader.cpp

Tokenizer.o: src/Tokenizer.cpp include/Tokenizer.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Tokenizer.cpp

Window.o: src/Window.cpp include/Window.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Window.cpp

DOF.o: src/DOF.cpp include/DOF.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/DOF.cpp

Joint.o: src/Joint.cpp include/Joint.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Joint.cpp

Skeleton.o: src/Skeleton.cpp include/Skeleton.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c src/Skeleton.cpp

# imgui
imgui.o: include/imgui/imgui.cpp include/imgui/imgui.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/imgui/imgui.cpp

imgui_demo.o: include/imgui/imgui_demo.cpp include/imgui/imgui.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/imgui/imgui_demo.cpp

imgui_draw.o: include/imgui/imgui_draw.cpp include/imgui/imgui.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/imgui/imgui_draw.cpp

imgui_tables.o: include/imgui/imgui_tables.cpp include/imgui/imgui.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/imgui/imgui_tables.cpp

imgui_widgets.o: include/imgui/imgui_widgets.cpp include/imgui/imgui.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/imgui/imgui_widgets.cpp

imgui_impl_glfw.o: include/backends/imgui_impl_glfw.cpp include/backends/imgui_impl_glfw.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/backends/imgui_impl_glfw.cpp

imgui_impl_opengl3.o: include/backends/imgui_impl_opengl3.cpp include/backends/imgui_impl_opengl3.h
	$(CC) $(CFLAGS) $(INCFLAGS) -c include/backends/imgui_impl_opengl3.cpp

clean: 
	$(RM) *.o menv
