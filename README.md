## Using the 'p_any?' Method
----------------------------

  p_any?(X, symbol)

The p_any? method takes 2 parameters, a numeric value X and one of three
symbols, and returns a proc for comparing all values in an array to X.

The available symbols are:  
* :>  
* :<  
* :==  

They allow the user to select 'greater than', 'less than' and 'equals'

Example:

    any_less_than_3? = p_any?(3, :<)
    
    a = [4, 5, 6]  
    any_less_than_3?.call(a)  
    => false
    
    b = [1, 7, 8]  
    any_less_than_3?.call(b)  
    => true


The proc returned by p_any? is activated with the '.call' method. It will check
every element of an array against the set value and return true if one, some or
all of the elements in the array match the set conditions (greater than, less
than or equal to the set value X).


Remember that the conditions for comparison are set at the time the proc is
created. To do a different comparison you must create a different proc.




Copyright (c) <2016> <Christopher Soden, Chelsea Johnson, Aaron Careaga, et al>


Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
