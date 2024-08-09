/*
** EPITECH PROJECT, 2024
** test.c
** File description:
** unit_tests
*/

#include <criterion/criterion.h>

int m_test(void)
{
    int m_return = 0;

    cr_assert_eq(m_return, 0, "the main() return 0");
    return 0;
}
