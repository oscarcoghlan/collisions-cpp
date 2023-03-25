OBJS = main.o glad.o
CFLAGS = -Wall
INCLUDES = -I./glad/include/ -I./glfw/include/
LIBS = -L./glfw/lib-mingw-w64/ -lopengl32 -lglu32 -lglfw3 -lgdi32
CC = g++

main:${OBJS}
	${CC} ${CFLAGS} ${INCLUDES} -o $@ ${OBJS} ${LIBS}
	
clean:
	-rm -f *.o core *.core
	
.cpp.o:
	${CC} ${CFLAGS} ${INCLUDES} -c $< ${LIBS}

.c.o:
	${CC} ${CFLAGS} ${INCLUDES} -c $< ${LIBS}