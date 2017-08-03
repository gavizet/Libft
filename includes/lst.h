/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lst.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/02 11:20:22 by gavizet           #+#    #+#             */
/*   Updated: 2017/06/08 14:36:57 by argirin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LINKED_LIST_H
# define LINKED_LIST_H

# include "libft.h"

typedef struct		s_list
{
	void			*content;
	size_t			content_size;
	struct	s_list	*next;
}					t_list;

void				ft_lstrev(t_list **liste);
void				ft_lstprint(t_list **list);
void				ft_lstclear(t_list **liste);
size_t				ft_lstsize(t_list *begin_list);
void				ft_lstaddback(t_list **alst, t_list *new);
void				ft_lstadd(t_list **alst, t_list *new);
void				ft_lstiter(t_list *lst, void (*f) (t_list *elem));
t_list				*ft_lstmap(t_list *lst, t_list *(*f) (t_list *elem));
t_list				*ft_lstnew(void const *content, size_t content_size);
void				ft_lstdel(t_list **alst, void (*del) (void *, size_t));
void				ft_lstdelone(t_list **alst, void (*del) (void *, size_t));

#endif
