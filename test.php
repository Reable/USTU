<?php 

class ListNode
{
    protected any $value;
    protected ListNode $next;

    public function __construct($value)
    {
        $this->value = $value;
        $this->next = null;
    }
}

class LinkedList
{
    private ListNode $head;
    private ListNode $current;

    public function __construct()
    {
        return $this;
    }

    public function append($value)
    {
        $node = new ListNode($value);

        if($this->head == null)
        {
            $this->head = $node;
            $this->current = $this->head;
        } else {
            $this->current->next = $node;
            $this->current = $this->current->next;
        }
    }

    public function printAll()
    {
        $temp = $this->head;
        while($temp->value != null){
            echo $temp->value . PHP_EOL;
            $temp = $temp->next;
        }
    }
}

$list = new LinkedList();
$list->append(12);
$list->append(14);
$list->append(16);
$list->append(18);
$list->append(20);
$list->append(22);
$list->append(24);

$list->printAll();
