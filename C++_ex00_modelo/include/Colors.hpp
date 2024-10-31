/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Colors.hpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: macarval <macarval@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/19 18:21:54 by macarval          #+#    #+#             */
/*   Updated: 2024/09/19 18:22:19 by macarval         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef COLORS_HPP
# define COLORS_HPP

# include <iostream>

// Color codes as global variables
const std::string RESET = "\033[0m";
const std::string RED = "\033[31;1m";
const std::string GREEN = "\033[32;1m";
const std::string YELLOW = "\033[33;1m";
const std::string BLUE = "\033[34;1m";
const std::string PURPLE = "\033[35;1m";
const std::string CYAN = "\033[36;1m";
const std::string GRAY = "\033[37;1m";

// Bold Colors
const std::string BRED = "\033[1;31m";
const std::string BGREEN = "\033[1;32m";
const std::string BYELLOW = "\033[1;33m";
const std::string BBLUE = "\033[1;34m";
const std::string BPURPLE = "\033[1;35m";
const std::string BCYAN = "\033[1;36m";
const std::string BWHITE = "\033[1;37m";

#endif
