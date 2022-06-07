1. If you were writing software for a call center that places callers on hold and then assigns them to “the next
   available representative,” would you use a stack or a queue?
   A queue
2. If you pushed numbers onto a stack in the following order: 1, 2, 3, 4, 5, 6, and then popped two items, which number
   would you be able to read from the stack?
   4
3. If you inserted numbers into a queue in the following order: 1, 2, 3, 4, 5, 6, and then dequeued two items, which
   number would you be able to read from the queue?
   3
4. Write a function that uses a stack to reverse a string. (For example, "abcde" would become "edcba".) You can work
   with our earlier implementation of the Stack class.

```ruby

def reverse_string(word)
  stack = Stack.new
  word.each_char do |c|
    stack.push(c)
  end
  word = ''
  word << stack.pop while stack.read
  word
end
```
