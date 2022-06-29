def square(x):
    return x * x

def triple(x):
    return 3 * x

def componse(f, g):
    def h(x):
        return f(g(x))
    return h

print(componse(square, triple)(5))
