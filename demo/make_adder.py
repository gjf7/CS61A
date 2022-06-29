# high order function that return a function
def make_adder(n):
    def adder(x):
        return x + n
    return adder


# High order function
#  - Express general methods of computation
#  - Remove repetition from programs
#  - Separate concerns among functions
