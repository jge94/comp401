project 01: Binomial Heap
==========================

Explanation of Data Structure
-----------
A binomial heap is implemented as a collection of binomial trees (compare with a binary heap, which has a shape of a single binary tree). A binomial tree is defined recursively:

* A binomial tree of order 0 is a single node
* A binomial tree of order k has a root node whose children are roots of binomial trees of orders k−1, k−2, ..., 2, 1, 0 (in this order).

![Image Of Binomial Heap](/wiki_binomialTree_pic.svg)

A binomial tree of order k has 2k nodes, height k.

Because of its unique structure, a binomial tree of order k can be constructed from two trees of order k−1 trivially by attaching one of them as the leftmost child of the root of the other tree. This feature is central to the merge operation of a binomial heap, which is its major advantage over other conventional heaps.


Functionality
-------------------
1. Read From a File
	In the program, the "data.txt" file
2. Find Minimum key node
	Find the node that has minimal value, for integers
3. Delete a node
	Enter the node value, then delete it
4. Display Heap
	only displays the head nodes


Complexity Analysis
-------------------

###Read From a File - O(1)

Directly read from a file, named "data.txt".

###Find minimum key node: O(log n)

The binomial heap is still a niary heap, which takes the big O of the binary data structure of a binary searching, O(log n).

###Delete a node: O(log n)

It finds the node that is being deleted, decrease the key to the minimum node, and delete this node.



Contents
--------
Containing the following files:


1. driver.cpp -- compile and runs the program, includes all class and method definitions of the binomial heap
2. ReadMe.md -- this file
3. data.txt -- a file containing integers, the data file that is being read in to form into binomial heap


References
----------

1. [Binomial Heap Definition](http://en.wikipedia.org/wiki/Binomial_heap)
2. [Binomial Queue Visualization](http://www.cs.usfca.edu/~galles/visualization/BinomialQueue.html)
