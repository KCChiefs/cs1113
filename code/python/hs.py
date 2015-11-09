def py(n):
    if (n != 1):
        print (n)

        amt = 1
        while (n > 1):
            
            if (n % 2 == 0):
                n = n // 2
            else:
                n = 3*n + 1
                
            print (n)
            amt = (amt + 1)

        print (amt)

    else:
        print (n)
        print (1)

    return None

py(1)
