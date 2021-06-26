clear all
clc
text = fileread("Text.txt");
output = "";
i = 1;
while( i <= length(text))
    if text(i) == 13
        if flag == 0
            %flag = 1;
            output = output + " ";
            output = output + " ";
            output = output + text(i);
            output = output + text(i+1);
            i = i + 1;
        else
            i = i + 1;
        end
    else
        flag = 0;
        output = output + text(i);
    end
    i = i + 1;
end

fid = fopen("output.txt",'w');
fprintf(fid,"%s",output);
fclose(fid);