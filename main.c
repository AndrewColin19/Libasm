/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acolin <acolin@student.42nice.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/05 12:41:21 by acolin            #+#    #+#             */
/*   Updated: 2023/08/05 18:25:20 by acolin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
    printf("-----ft_strlen-----\n");
    char *word = "toto";
    printf("word:[%s]\n", word);
    printf("ft:[%lu]\norigin:[%lu]\n", ft_strlen(word), strlen(word));
    printf("-------------------\n");
    printf("-----ft_strcpy-----\n");
    char *src = "je suis une copie!!!";
    char *ft_dest = malloc(strlen(src) + 1);
    char *dest = malloc(strlen(src) + 1);
    printf("ft:[%s]\norigin:[%s]\n", ft_strcpy(ft_dest, src), strcpy(dest, src));
    printf("ft dest:[%s]\norigin dest:[%s]\n", ft_dest, dest);
    free(ft_dest);
    free(dest);
    printf("-------------------\n");
    printf("-----ft_strcmp-----\n");
    char *s1 = "salut";
    char *s2 = "salle";
    printf("s1:[%s] s2:[%s]\n", s1, s2);
    printf("ft:[%d]\norigin:[%d]\n", ft_strcmp(s1, s2), strcmp(s1, s2));
    printf("-------------------\n");
    printf("-----ft_write------\n");
    printf("ft:[%lu]\norigin:[%lu]\n", ft_write(1, "hello word !\n", 13), write(1, "hello word !\n", 13));
    printf("-------------------\n");
    printf("-----ft_read-------\n");
    int fd = open("ft_strlen.s", O_RDONLY);
    char ft_buf[1000] = {0};
    int ft_size = ft_read(fd, ft_buf, 1000);
    close(fd);
    fd = open("ft_strlen.s", O_RDONLY);
    char buf[1000] = {0};
    int size = read(fd, buf, 1000);
    close(fd);
    printf("ft size:[%d]\norigin size:[%d]\n", ft_size, size);
    printf("ft buf:[%s]\norigin buf:[%s]\n", ft_buf, buf);
    printf("-------------------\n");
    printf("-----ft_strdup-----\n");
    printf("ft:[%s]\norigin:[%s]\n", ft_strdup(src), strdup(src));
    printf("-------------------\n");
    return (1);
}
