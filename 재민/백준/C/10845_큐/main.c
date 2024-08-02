#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define COMMAND_COUNT 6
#define MAX_COMMAND_LEGTH 5

typedef struct Node
{
    int data;
    struct Node* next;
}Node;

void ExecuteCommand(const char* command);
void Push(int data);
int Pop();
int Size();
int Empty();
int Front();
int Back();

Node* queueHead;
Node* queueTail;
int queueSize;
char* queueCommandWithOutPush[COMMAND_COUNT - 1] = {
        "pop",
        "size",
        "empty",
        "front",
        "back"
};
int (*queueFuncsWithOutPush[COMMAND_COUNT - 1])() = {
        Pop,
        Size,
        Empty,
        Front,
        Back
};

int main()
{
    int n = 0;
    char command[MAX_COMMAND_LEGTH] = "";

    scanf("%d", &n);
    
    for(int i = 0; i < n; i++)
    {
        scanf("%s", command);
        ExecuteCommand(command);
    }
    
    return 0;
}

void ExecuteCommand(const char* command)
{
    if(!strcmp(command, "push"))
    {
        int data = 0;
        scanf("%d", &data);

        Push(data);
    }
    else
    {
        for(int i = 0; i < COMMAND_COUNT - 1; i++)
        {
            if(!strcmp(command, queueCommandWithOutPush[i]))
            {
                int returnValue = queueFuncsWithOutPush[i]();
                printf("%d\n", returnValue);
                
                break;
            }
        }
    }
}

void Push(int data)
{
    Node* node = (Node*)malloc(sizeof(Node));
    node->data = data;
    node->next = NULL;

    if(queueHead == NULL)
    {
        queueHead = node;
    }
    else
    {
        queueTail->next = node;
    }
    
    queueTail = node;
    queueSize++;
}

int Pop()
{
    if(queueHead == NULL) return -1;

    Node* nextHead = queueHead->next;
    int currHeadData = queueHead->data;

    free(queueHead);
    
    queueHead = nextHead;
    queueSize--;
    
    return currHeadData;
}

int Size()
{
    return queueSize;
}

int Empty()
{
    return queueSize < 1;
}

int Front()
{
    if(queueHead == NULL) return -1;
    
    return queueHead->data;
}

int Back()
{
    if(queueHead == NULL) return -1;
    
    return queueTail->data;
}
