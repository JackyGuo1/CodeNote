def printdebug(func):
    def __decorator(user):    
        print('enter the login')
        result = func(user) 
        print('exit the login')
        return result      
    return __decorator  

def login(user):
    print('in login:' + user)
    msg = validate(user)  #exact to a method
    return msg  

@printdebug  #apply the decorator for exacted method
def validate(user):
    msg = "success" if user == "jatsz" else "fail" 
    return msg

result1 = login('jatsz');
print result1 
