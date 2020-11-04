#Euclidean algorithm
#####################################
# Step 1
# a=25 b=3
# 25 = 3(8) + 1

# Step 2
# a=3 b=1
# 3 = 1(3) + 0

# Step 3
# a=1 b=0
#####################################
a,b = 25,3

def gcd(a, b)
  print a, b
  b == 0 ? a : gcd(b, a%b)
end

print gcd(25, 3)
