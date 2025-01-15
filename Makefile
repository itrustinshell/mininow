CLIENT = client
SERVER = server

CLIENT_BONUS = client_bonus
SERVER_BONUS = server_bonus

CLIENT_SRC = client.c ft_atoi.c ft_isdigit.c utils.c
SERVER_SRC = server.c ft_itoa.c ft_isdigit.c ft_strlcpy.c ft_calloc.c ft_memset.c utils.c

CLIENT_BONUS_SRC = client_bonus.c ft_atoi.c ft_isdigit.c utils.c

SERVER_BONUS_SRC = server_bonus.c ft_itoa.c ft_isdigit.c ft_strlcpy.c ft_calloc.c ft_memset.c utils.c

CLIENT_OBJ = $(CLIENT_SRC:.c=.o)
SERVER_OBJ = $(SERVER_SRC:.c=.o)
CLIENT_BONUS_OBJ = $(CLIENT_BONUS_SRC:.c=.o)
SERVER_BONUS_OBJ = $(SERVER_BONUS_SRC:.c=.o)

CFLAGS = -Wall -Wextra -Werror
CC = gcc


all: $(CLIENT) $(SERVER)

bonus: $(CLIENT_BONUS) $(SERVER_BONUS)

$(CLIENT): $(CLIENT_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(CLIENT_BONUS): $(CLIENT_BONUS_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ 

$(SERVER): $(SERVER_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(SERVER_BONUS): $(SERVER_BONUS_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ 

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(CLIENT_OBJ) $(SERVER_OBJ) $(CLIENT_BONUS_OBJ) $(SERVER_BONUS_OBJ)

fclean: clean
	rm -f $(CLIENT) $(SERVER) $(CLIENT_BONUS) $(SERVER_BONUS)

re: fclean all

.PHONY: all clean fclean re
