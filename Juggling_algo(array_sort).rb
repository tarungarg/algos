a,b = 25,3
arr = [1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5]
def gcd(a, b)
  b == 0 ? a : gcd(b, a%b)
end
g_c_d =  gcd(25, 3)

for (i=0;i<g_c_d;i++)
  
end