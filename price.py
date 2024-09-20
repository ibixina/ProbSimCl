n=0
t=0
for i in range(1,7):
  for j in range(1,7):
    for k in range(1,7):
      t+=1
      price = max(i,j,k)*10 + min(i,j,k)
      if (price <= 50):
        n+=1
        print(i,j,k,price)
        
print(n,t)
      
