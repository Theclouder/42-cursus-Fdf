/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vduchi <vduchi@student.42barcelon>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/13 18:08:54 by vduchi            #+#    #+#             */
/*   Updated: 2022/06/18 17:14:45 by vduchi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fdf.h"
#include "libft.h"

int	main(void)
{
	char	*str = "Test";

	printf("Test is %s, and the length is %zu\n", str, ft_strlen(str));
	return (0);
}
