def gcd(a, b):
  if b == 0:
    return a
  return gcd(b, a % b)

print(gcd(12, 18))
print(gcd(12, 0))
print(gcd(10, 5))
