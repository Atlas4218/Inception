NAME=inception
PATH_YML=./srcs/docker-compose.yml
VOLUMES_PATH=/home/rastie/data/*

all: $(NAME)

$(NAME):
		docker compose -f $(PATH_YML) up -d --build && \
		docker compose -f $(PATH_YML) logs -f


clean:
		docker compose -f $(PATH_YML) down -v

fclean:		clean
		docker system prune -af && \
		sudo rm -rf $(VOLUMES_PATH)

re:		fclean all

.PHONY : all clean fclean re