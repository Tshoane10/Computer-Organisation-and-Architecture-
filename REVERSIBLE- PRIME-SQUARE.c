/*
PROGRAM NAME: REVERSIBLE PRIME SQUARE.cpp
FUNCTION:
 program that determines and prints the first 10 reversible prime squares.
 We call a number a reversible prime square if:
• It is not a palindrome, and
• It is the square of a prime, and Its reverse is also the square of a prime.

(C) Tsóanelo Raneno; October 2022

*/
#include <stdio.h>
#include<math.h>

 void is_prime(int n){		//checks if a number is a prime number
    double squareroot = sqrt (n);
    
    if(squareroot-(int)squareroot == 0){

    
     int n, i, flag = 0;
     for (i = 2; i <= squareroot / 2; ++i) {

    
    if ((int)squareroot % i == 0) {
      flag = 1;
      break;
    }
  }

  
  if (flag == 0)
    printf("%0.1f\n ", squareroot*squareroot);
    }
 

}


void isPalindrome(int n){	//funtion that checkes if the reversed squares are palindromes or not
     int reversed = 0, remainder, original;

    original = n;

    // reversed integer is stored in reversed variable
    while (n != 0) {
        remainder = n % 10;
        reversed = reversed * 10 + remainder;
        n /= 10;
    }

    // palindrome if orignal and reversed are equal
    if (original != reversed)  

      is_prime(original);



}


void reverseDigits(int num) //fuction that reverses squares of prime numbers
{
	int rev_num = 0;
	while (num > 0) {
		rev_num = rev_num * 10 + num % 10;
		num = num / 10;
	}

    isPalindrome(rev_num);
}

int list_prime(int num) //fuction to list prime numbers up to a given range and squares them
{
 int i, count=0, j,square = 0;

    for(i=1; i<=num; i++)
    {
        for(j=2; j<i; j++)
        {
           if(i%j==0)
           {
               count++;
               break;
           }
        }
        if(count==0 && i!=1)

          {  square = i*i;
             reverseDigits(square); //reverseDigits funtion call
          }
        count = 0;
    }
}


#include<stdio.h>

int main() //Main fuction
{
    list_prime(4000); //list_prime fuction call
  
    return 0;
}

