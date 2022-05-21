/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cfabian <cfabian@student.42wolfsburg.de>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/16 14:41:02 by cfabian           #+#    #+#             */
/*   Updated: 2022/05/21 13:45:31 by cfabian          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

int	main(int argc, char **argv)
{
	int	i;

	i = 0;
	printf("arg -1 is %s \n", argv[-1]);
	while (i <= argc)
	{
		printf("arg %i is %s \n", i, argv[i]);
	}
	return (0);
}
