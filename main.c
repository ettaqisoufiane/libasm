/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: settaqi <settaqi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/17 21:09:31 by settaqi           #+#    #+#             */
/*   Updated: 2020/01/18 21:48:36 by settaqi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_libasm.h"

int		main(void)
{
	char	*str1;
	char	str2[50];
	char	*str3;

	str1 = "Hello";
	printf("Length: %zu\n", ft_strlen("Hello World"));


	ft_strcpy(str2, str1);
	printf("New Str: %s, %p - Old Str: %s, %p\n", str2, str2, str1, str1);

	ft_read(0, str2, 12);
	printf("Your input: %s\n", str2);

	ft_write(1, "Hello World\n", 12);

	printf("Compare text: %d\n", ft_strcmp("a", "b"));

	str3 = ft_strdup(str1);
	printf("New str: %s, %p - %s, %p\n", str3, str3, str1, str1);
	return (0);
}
