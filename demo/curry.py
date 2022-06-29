# Currying: Transforming a multi-argument function into a single-argument function that can be called repeatedly with a single argument.

def curry2(f):
    def g(x):
        def h(y):
            return f(x,y)
        return h
    return g

from operator import add

m = curry2(add)

addFive = m(5)
print(addFive(10))
print(addFive(20))

print(addFive(2020))
