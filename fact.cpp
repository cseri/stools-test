#include "fact.h"

/**
 * Calculates the factorial of a number
 */
int factorial(int number)
{
  int result = 1;
  for (int i = 1; i <= number; ++i)
  {
    result *= i;
  }
  return result;
}

