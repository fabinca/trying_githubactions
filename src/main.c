/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cfabian <cfabian@student.42wolfsburg.de>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/16 14:41:02 by cfabian           #+#    #+#             */
/*   Updated: 2022/05/16 14:53:19 by cfabian          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	main(int argc, char **argv)
{
	int	i;

	i = 0;
	while (i < argc)
	{
		printf("arg %i is %s \n", i, argv[i]);
		i++; 
	}
	return (0);
}
