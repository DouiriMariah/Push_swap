# Push_swap

This project is a program called push_swap which takes the stack in the form of a list of integers. The first parameter is at the top of the stack (so pay attention to the order).
The program must display a program made up of the shortest possible sequence of instructions to sort the stack a, with the smallest number at the top of the stack.
The aim is to sort the integers with as few operations as possible.

## Explanation
The game consists of 2 stacks named a and b.
    At the start, stack a contains a random quantity of negative and/or positive numbers which cannot be duplicated and pile b is empty.

The aim of the game is to sort the numbers in pile a in ascending order using the following instructions:

-sa (swap a): Swaps the first 2 elements at the top of stack a.
    Does nothing if there is only one or none.
    
-sb (swap b ): Swaps the first 2 elements at the top of stack b.
    Does nothing if there is only one or none.

-ss : sa and sb at the same time.

-pa (push a): Takes the first element at the top of b and puts it on a.
    Does nothing if b is empty.

-pb (push b): Takes the first element on top of a and sets it to b.
    Does nothing if a is empty.

-ra (rotate a): Shifts all elements in stack a upwards by one position.
    The first element becomes the last.

-rb (rotate b): Shifts all elements in stack b up one position.
    The first element becomes the last.

-rr: ra and rb at the same time.

-rra (reverse rotate a): Shifts all stack elements down one position.
    a stack. The last element becomes the first.

-rrb (reverse rotate b): Shifts all stack elements b down one position.
    b stack. The last element becomes the first.

-rrr: rra and rrb at the same time.

### Usage

    make 
    ./push_swap 985 89 -84 2 9865 482
    Put the list of int/number of your choice without "" 
    if you want to print the sorted list, uncomment the line 109 from the file init.c and uncomment the print_list function above 

