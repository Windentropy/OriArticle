
if __name__ =='__main__':
    with open('E:\Ori\OriArticle\风乱\程序\文章格式转换\Text.txt', 'r') as f:
        text = f.read()
    
    output = ""
    flag = 0
    print(text)
    for char in text:
        if (char == '\n'):
            if (flag == 0):
                flag = 1
                output+="  "+char
        else:
            flag = 0
            output+=char

    with open('E:\Ori\OriArticle\风乱\程序\文章格式转换\Output.txt', 'w') as f:
        f.write(output)

