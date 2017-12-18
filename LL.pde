class linkedList<E>{
  private node head;
  private node tail;
  private int size;
  
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
  
  Object get(int index) throws IllegalArgumentException{
    if(index >= size || index < 0){
     throw new IllegalArgumentException("Array index out of bounds"); 
    }
    return getrec(index, head); 
  }
  
  private Object getrec(int left, node Current){
      
      if(left != 0){
        left--;
        getrec(left, Current.next);
      }
      return Current.next; 

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