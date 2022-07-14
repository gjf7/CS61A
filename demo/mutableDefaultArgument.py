def f(s=[]):
    s.append(5)
    return len(s)

print(f()) # 1
print(f()) # 2
print(f()) # 3
