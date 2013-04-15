#include "gtest/gtest.h"

#include "fact.h"

TEST(factorial, Positive)
{
  EXPECT_EQ(1, factorial(1));
  EXPECT_EQ(2, factorial(2));
  EXPECT_EQ(6, factorial(3));
  EXPECT_EQ(40320, factorial(8));
}

TEST(factorial, Zero)
{
  EXPECT_EQ(1, factorial(0));
}

TEST(factorial, Negative)
{
  EXPECT_EQ(1, factorial(-5));
  EXPECT_EQ(1, factorial(-1));
  EXPECT_GT(factorial(-10), 0);

  //EXPECT_LT
  //EXPECT_TRUE
}


