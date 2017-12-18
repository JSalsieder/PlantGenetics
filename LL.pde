class linkedList<E>{
  node head;
  node tail;
  
  linkedList(node head){
    this.head = head;
    this.tail = head;
    head.next = tail;
    head.previous= head;
  }
  
  void add(node element){
   node lastTail = tail;
   tail = element;
   tail.previous = lastTail;
   lastTail.next = tail;
  }
  
  
  class node{
    E element;
    node previous, next;
    node(E o, node previous, node next){
      element = o;
      this.previous = previous;
      this.next = next;
    }
    
  }
  
  
}