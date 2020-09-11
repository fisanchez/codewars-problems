# 1337 Classes

https://www.codewars.com/kata/53ab2721283d237fee00017f/train/ruby
Define 1,337 classes, each of which need to have 1 unique class method and 1 unique public instance method, that each return unique values. The names of the methods and the return values can be whatever you wish, so long as they are unique.

Use the `leet_classes` method to return all of the classes in an array.

An example creating only 2 classes:

```
lc = leet_classes
#=> [Klass_0, Klass_1]

klass_0 = lc[0]
#=> Klass_0

klass_0.unique_class_method
#=> 'c0'

klass_0.new.unique_instance_method
#=> 'i0'

klass_1 = lc[1]
#=> Klass_1

klass_1.unique_class_method
#=> 'c1'

klass_1.new.unique_instance_method
#=> 'i1'
```

