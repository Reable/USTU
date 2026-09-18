#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node* next;
} Node;

typedef struct LinkedList
{
    Node* head;
} LinkedList;

void LinkedListAdd(LinkedList* list, int data)
{
    Node* node = malloc(sizeof(Node));
    if (node == NULL) return;

    node->data = data;
    node->next = NULL;

    if(list->head == NULL)
    {
        list->head = node;
        return;
    }

    Node* current = list->head;

    while(current->next != NULL)
    {
        current = current->next;
    }

    current->next = node;
}

void LinkedListUpdate(LinkedList* list, int findValue, int newValue)
{
    Node* current = list->head;

    while(current != NULL){
        if(current->data == findValue) break;
        current = current->next;
    }

    if(current == NULL) return;

    current->data = newValue;
}

void LinkedListAddInPos(LinkedList* list, int pos, int data)
{
    Node* current = list->head;
    Node* before = list->head;

    while(current != NULL)
    {
        if(pos == current->data) break;
        before = current;
        current = current->next;
    }

    if(current == NULL) return;

    Node* newNode = malloc(sizeof(Node));
    if (newNode == NULL) return;

    newNode->data = data;

    if(current == list->head)
    {
        newNode->next = list->head;
        list->head = newNode;
    } else {
        newNode->next = current;
        before->next = newNode;
    }

}

void LinkedListAddAfterPos(LinkedList* list, int pos, int data)
{
    Node* current = list->head;

    while(current != NULL)
    {
        if(pos == current->data) break;
        current = current->next;
    }

    if(current == NULL) return;

    Node* newNode = malloc(sizeof(Node));
    if (newNode == NULL) return;

    newNode->data = data;

    newNode->next = current->next;
    current->next = newNode;
}

void LinkedListDelete(LinkedList* list, int data)
{
    Node* current = list->head;
    Node* before = list->head;

    while(current != NULL)
    {
        if(current->data == data) break;
        before = current;
        current = current->next;
    }

    if(current == NULL) return;

    if(current = list->head){
        list->head = current->next;
    } else {
        before->next = current->next;
    }

    free(current);
}

void LinkedListGetALl(LinkedList* list)
{
    Node* current = list->head;
    while(current != NULL)
    {
        printf("Data = %d\n", current->data);
        current = current->next;
    }
    printf("NULL\n");
}


int main()
{
    LinkedList list = { NULL };

    LinkedListAdd(&list, 10);
    LinkedListAdd(&list, 20);
    LinkedListAdd(&list, 30);

    LinkedListGetALl(&list);

    LinkedListAddInPos(&list, 10, 40);
    LinkedListAddInPos(&list, 40, 2);
    LinkedListAddInPos(&list, 2, 222);

    LinkedListGetALl(&list);

    return 0;
}