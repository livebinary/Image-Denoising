
k=rgb2gray(imread('test.png'));
J = imnoise(k,'salt & pepper',0.2);
figure,imshow(k)
figure,imshow(J)
im=zeros(size(k)+2);
B=zeros(size(k));
 
        for x=1:size(k,1)
            for y=1:size(k,2)
                im(x+1,y+1)=J(x,y);
            end
        end
        
        fid=fopen('image.txt','w')
         for x=1:size(im,1)
            for y=1:size(im,2)
                
                fprintf(fid,'%s',dec2bin(im(x,y)));
                fprintf(fid,'\n');   

                
            end
         end
        fclose(fid);