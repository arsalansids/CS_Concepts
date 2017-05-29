#This is an example of using a Queue. It is a First In First Out datastructure (FIFO)

#Creates a queue with 5 objects
Q = Queue.new 
#Enqueues five objects into the queue Q 
Q.enq(2) #first object in the queue Q
Q.enq(9) #second object in the queue Q
Q.enq(13)
Q.enq(3)
Q.enq(4)

p Q.length #shows length of total 5 in the queue

Q.deq #dequeues the first object in the queue, which is the 2

p Q #the 2 is no longer in the queueu

Q.deq #again, dequeues the first object in the queue, now it is the 9

p Q #the 9 is no longer in the queue

p Q.length #shows length of 3 in the queue, since the 2 and 9 were dequeued