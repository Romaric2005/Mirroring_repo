##
## EPITECH PROJECT, 2024
## makefile
## File description:
## compilations
##

SRC =   src/main.c\

NAME =  binary

OBJ =   $(SRC:.c=.o)

all :   $(OBJ)
	gcc -c $(SRC)

clean :
	rm -f *#
	rm -f *~
	rm -f *.gcno
	rm -f *.gcda

fclean : clean
	rm -f $(OBJ)
	rm -f $(NAME)
	rm -f unit_tests

re : fclean all

unit_tests : fclean
	gcc -o unit_tests $(SRC) tests/test.c -lcriterion --coverage

tests_run : unit_tests
	./unit_tests
