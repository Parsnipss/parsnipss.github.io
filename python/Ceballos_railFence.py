"""
Two-rail cipher to encrypt and decrypt basic strings.
Sources:

profecali's youtube video 'Rail fence cipher'
https://www.youtube.com/watch?v=qOlJwi9mu2Q

"""

def railEncr(plainText):

    oddRail = ''
    evenRail = ''

    charCount = 0
    for ch in plainText:
        if charCount % 2 is 0:
            #Even
            evenRail = evenRail + ch
        else:
            #odd
            oddRail = oddRail + ch
        charCount = charCount + 1
        
    cipher = oddRail + evenRail #Full encrypted statement
    print (cipher)
    return cipher

def decryptMessage(cipherText):
    evenChar = ''
    oddChar = ''
    decryptCipher = ''  #Sets up for split and re-concantination

    half = (len(cipherText)//2)
    
    charCount = 0
    for ch in cipherText:
        count = True
        while charCount < (half) and (count == True): #Checks for which half of the text it is on and places it in the appropriate string
            oddChar = oddChar + ch
            charCount = charCount + 1
            count = False 
        while charCount >= (half) and (count == True):
            evenChar = evenChar + ch
            charCount = charCount + 1
            count = False
    
    for i in range(half):
        decryptCipher = decryptCipher + evenChar[i]
        decryptCipher = decryptCipher + oddChar[i]

    if len(evenChar) > len(oddChar): #Contingency for when the oddChar is smaller (which is often)
        decryptCipher = decryptCipher + evenChar[-i]
    return(decryptCipher)
    print(decryptCipher)

def main(): #User-Friendliness w/ exit option
    choice = input("Do you wish to encrypt or decrypt a statement? (e or d) ('exit' to exit): ")
    if (choice == "e") or (choice == "E"):
        text = input("Please type something to be encrypted: ")
        msg = railEncr(text)
        main()
    elif (choice == "d") or (choice == "D"):
        cipher = input("Please type something to be decrypted: ")
        decrypt = decryptMessage(cipher)
        print(decrypt)
        main()
    elif (choice == "exit"):
        print("Goodbye!")

main()



