#include <iostream>
#include <cstdlib>
using namespace std;

struct node
{
    int n;
    int degree;
    node* parent;
    node* child;
    node* sibling;
};

class BinomialHeap
{
    private:
        node *H;
        node *Hr;
        int count;

    public:
        node* Initializeheap();
        int Binomial_link(node*, node*);
        node* Create_node(int);
        node* Union(node*, node*);
        node* Insert(node*, node*);
        node* Merge(node*, node*);
        node* Extract_Min(node*);
        int Revert_list(node*);
        int Display(node*);
        node* Search(node*, int);
        int Decrease_key(node*, int, int);
        int Delete(node*, int);
        BinomialHeap()
        {
            H = Initializeheap();
            Hr = Initializeheap();
            int count = 1;
        }
};