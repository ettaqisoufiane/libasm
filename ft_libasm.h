/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_libasm.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: settaqi <settaqi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/17 21:07:16 by settaqi           #+#    #+#             */
/*   Updated: 2020/01/18 21:09:17 by settaqi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_LIBASM_H

# define FT_LIBASM_H

# include <stdio.h>
# include <stdlib.h>

size_t		ft_strlen(char *str);
char		*ft_strcpy(char *dest, char *src);
ssize_t		ft_write(int fd, const char *buf, size_t buffer_size);
ssize_t		ft_read(int fd, void *buf, size_t buffer_size);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s1);

#endif
