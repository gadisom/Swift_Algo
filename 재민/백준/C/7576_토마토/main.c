#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

#define COL 0 //세로
#define ROW 1 //가로

typedef struct Node
{
    int col;
    int row;
    struct Node* next;
}Node;

void FindShortestDay(int tomatoCount, int m, int n);
void PushDataAndSetVisited(int col, int row, int depth, int visitedIndex);
void Push(int col, int row);
void Pop(int* posArr);
int Empty();

Node* queueHead;
Node* queueTail;
int queueSize;
int** graph;
int* visited;

int main()
{
    int m = 0, n = 0;
    int tomatoCount = 0;

    scanf("%d %d", &m, &n);

    graph = (int**)malloc(sizeof(int*) * n);
    for(int i = 0; i < n; i++)
    {
        graph[i] = (int*)malloc(sizeof(int) * m);

        for(int j = 0; j < m; j++)
        {
            scanf("%d", &graph[i][j]);

            if(graph[i][j] == 1)
            {
                Push(i, j);
                Push(0, 0);
            }
            if(graph[i][j] != -1)
            {
                tomatoCount++;
            }
        }
    }

    FindShortestDay(tomatoCount, m, n);

    return 0;
}

void FindShortestDay(int tomatoCount, int m, int n)
{
    visited = (int*)malloc(sizeof(int) * (m * n));
    int posArr[2] = { 0, };
    int answer = 0;
    int visitedCount = 0;

    memset(visited, 0, sizeof(int) * (m * n));

    while(!Empty())
    {
        int col = 0;
        int row = 0;
        int depth = 0;
        int left = 0, right = 0, top = 0, bottom = 0;
        int canGoToLeft = 0, canGoToRight = 0, canGoToTop = 0, canGoToBottom = 0;

        visitedCount++;

        Pop(posArr);
        col = posArr[COL];
        row = posArr[ROW];

        Pop(posArr);
        depth = posArr[COL];
        answer = depth;

        left = row - 1;
        right = row + 1;
        top = col - 1;
        bottom = col + 1;

        canGoToLeft = left > -1 && graph[col][left] == 0 && visited[(m * col) + left] == 0;
        canGoToRight = right < m && graph[col][right] == 0 && visited[(m * col) + right] == 0;
        canGoToTop = top > -1 && graph[top][row] == 0 && visited[(m * top) + row] == 0;
        canGoToBottom = bottom < n && graph[bottom][row] == 0 && visited[(m * bottom) + row] == 0;

        if(canGoToLeft)
        {
            PushDataAndSetVisited(col, left, depth + 1, (m * col) + left);
        }
        if(canGoToRight)
        {
            PushDataAndSetVisited(col, right, depth + 1, (m * col) + right);
        }
        if(canGoToTop)
        {
            PushDataAndSetVisited(top, row, depth + 1, (m * top) + row);
        }
        if(canGoToBottom)
        {
            PushDataAndSetVisited(bottom, row, depth + 1, (m * bottom) + row);
        }
    }

    printf("%d", visitedCount == tomatoCount ? answer : -1);
}

void PushDataAndSetVisited(int col, int row, int depth, int visitedIndex)
{
    Push(col, row);
    Push(depth, depth);

    visited[visitedIndex] = 1;
}

void Push(int col, int row)
{
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->row = row;
    newNode->col = col;
    newNode->next = NULL;

    if(queueHead == NULL)
    {
        queueHead = newNode;
    }
    else
    {
        queueTail->next = newNode;
    }

    queueTail = newNode;
    queueSize++;
}

void Pop(int* posArr)
{
    if(queueSize < 1) return;

    posArr[COL] = queueHead->col;
    posArr[ROW] = queueHead->row;
    Node* nextHead = queueHead->next;

    free(queueHead);

    queueHead = nextHead;
    queueSize--;
}

int Empty()
{
    return queueSize < 1;
}