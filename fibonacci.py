def fibo(n):
  # Add the last two values together recursively to gain the next
  # start at 1

  if n in [1,2]:
    return 1
  
  return fibo(n-1) + fibo(n-2)


if __name__ == "__main__":
  for i in range(1,15):
    print(fibo(i))
