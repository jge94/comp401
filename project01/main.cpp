#include <iostream>
#include <cstdlib>
#include "binomialHeap.h"

using namespace std;

int main()
{
    int n, m, l, i;
    BinomialHeap bh;
    node* p;
    node *H;
    H = bh.Initializeheap();
    char ch;
    while (1)
    {
        cout<<"----------------------------"<<endl;
        cout<<"Operations on Binomial heap"<<endl;
        cout<<"----------------------------"<<endl;
        cout<<"1)Insert Element in the heap"<<endl;
        cout<<"2)Extract Minimum key node"<<endl;
        cout<<"3)Decrease key of a node"<<endl;
        cout<<"4)Delete a node"<<endl;
        cout<<"5)Display Heap"<<endl;
        cout<<"6)Exit"<<endl;
        cout<<"Enter Your Choice: ";
        cin>>l;
        switch(l)
        {
        case 1:
            cout<<"Enter the element to be inserted: ";
            cin>>m;
            p = bh.Create_node(m);
            H = bh.Insert(H, p);
            break;
        case 2:
            p = bh.Extract_Min(H);
            if (p != NULL)
                cout<<"The node with minimum key: "<<p->n<<endl;
            else
                cout<<"Heap is empty"<<endl;
            break;
        case 3:
            cout<<"Enter the key to be decreased: ";
            cin>>m;
            cout<<"Enter new key value: ";
            cin>>l;
            bh.Decrease_key(H, m, l);
            break;
        case 4:
            cout<<"Enter the key to be deleted: ";
            cin>>m;
            bh.Delete(H, m);
            break;
        case 5:
            cout<<"The Heap is: "<<endl;
            bh.Display(H);
            break;
        case 6:
            exit(1);
        default:
            cout<<"Wrong Choice";
	  }
    }
    return 0;
}