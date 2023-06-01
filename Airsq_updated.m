function avg_Air = Airsq_updated(img_Air, filePath, squareSize)
blackMaskedImage = img_Air;
o_1=1;
pix_1 = zeros(1100,1100);

averageGrayscaleValue = GetGrayScaleValues(filePath, squareSize);


averageGrayscaleValue

for xi_1 = 122:139
    for yi_1 = 116:133
        intensity_value_1 = blackMaskedImage(yi_1, xi_1);
        pix_1(yi_1, xi_1)= intensity_value_1;
        
    end
    o_1=o_1+1;
end
    avg_pix1= mean(mean(pix_1((116:133),(122:139))));
%-----------------------------------------------------------------------
o_2=1;
pix_2 = zeros(1100,1100);
for xi_2 = 962:981
    for yi_2 = 133:152
        intensity_value_2 = blackMaskedImage(yi_2, xi_2);
        pix_2(yi_2, xi_2)= intensity_value_2;
        
    end
    o_2=o_2+1;
end
    avg_pix2= mean(mean(pix_2((133:152),(962:981))));
%-----------------------------------------------------------------------
o_3=1;
pix_3 = zeros(1100,1100);
for xi_3 = 116:121
    for yi_3 = 971:976
        intensity_value_3 = blackMaskedImage(yi_3, xi_3);
        pix_3(yi_3, xi_3)= intensity_value_3;
        
    end
    o_3=o_3+1;
end
    avg_pix3= mean(mean(pix_3((971:976),(116:121))));
%-----------------------------------------------------------------------
o_4=1;
pix_4 = zeros(1100,1100);
for xi_4 = 976:993
    for yi_4 = 944:961
        intensity_value_4 = blackMaskedImage(yi_4, xi_4);
        pix_4(yi_4, xi_4)= intensity_value_4;
        
    end
    o_4=o_4+1;
end
    avg_pix4= mean(mean(pix_4((944:961),(976:993))));
%-----------------------------------------------------------------------
o_5=1;
pix_5 = zeros(1100,1100);
for xi_5 = 22:36
    for yi_5 = 243:255
        intensity_value_5 = blackMaskedImage(yi_5, xi_5);
        pix_5(yi_5, xi_5)= intensity_value_5;
        
    end
    o_5=o_5+1;
end
    avg_pix5= mean(mean(pix_5((243:255),(22:36))));
%-----------------------------------------------------------------------
o_6=1;
pix_6 = zeros(1100,1100);
for xi_6 = 233:248
    for yi_6 = 41:54
        intensity_value_6 = blackMaskedImage(yi_6, xi_6);
        pix_6(yi_6, xi_6)= intensity_value_6;
        
    end
    o_6=o_6+1;
end
    avg_pix6= mean(mean(pix_6((41:54),(233:248))));
%-----------------------------------------------------------------------
o_7=1;
pix_7 = zeros(1100,1100);
for xi_7 = 1063:1075
    for yi_7 = 275:287
        intensity_value_7 = blackMaskedImage(yi_7, xi_7);
        pix_7(yi_7, xi_7)= intensity_value_7;
        
    end
    o_7=o_7+1;
end
    avg_pix7= mean(mean(pix_7((275:287),(1063:1075))));
%-----------------------------------------------------------------------
o_8=1;
pix_8 = zeros(1100,1100);
for xi_8 = 797:808
    for yi_8 = 14:26
        intensity_value_8 = blackMaskedImage(yi_8, xi_8);
        pix_8(yi_8, xi_8)= intensity_value_8;
        
    end
    o_8=o_8+1;
end
    avg_pix8= mean(mean(pix_8((14:26),(797:808))));
%-----------------------------------------------------------------------
o_9=1;
pix_9 = zeros(1100,1100);
for xi_9 = 247:253
    for yi_9 = 1071:1076
        intensity_value_9 = blackMaskedImage(yi_9, xi_9);
        pix_9(yi_9, xi_9)= intensity_value_9;
        
    end
    o_9=o_9+1;
end
    avg_pix9= mean(mean(pix_9((1071:1076),(247:253))));
%-----------------------------------------------------------------------
o_10=1;
pix_10 = zeros(1100,1100);
for xi_10 = 3:8
    for yi_10 = 810:816
        intensity_value_10 = blackMaskedImage(yi_10, xi_10);
        pix_10(yi_10, xi_10)= intensity_value_10;
        
    end
    o_10=o_10+1;
end
    avg_pix10= mean(mean(pix_10((810:816),(3:8))));
%-----------------------------------------------------------------------
o_11=1;
pix_11 = zeros(1100,1100);
for xi_11 = 822:836
    for yi_11 = 1070:1082
        intensity_value_11 = blackMaskedImage(yi_11, xi_11);
        pix_11(yi_11, xi_11)= intensity_value_11;
        
    end
    o_11=o_11+1;
end
    avg_pix11= mean(mean(pix_11((1070:1082),(822:836))));
%-----------------------------------------------------------------------
o_12=1;
pix_12 = zeros(1100,1100);
for xi_12 = 1068:1082
    for yi_12 = 813:826
        intensity_value_12 = blackMaskedImage(yi_12, xi_12);
        pix_12(yi_12, xi_12)= intensity_value_12;
        
    end
    o_12=o_12+1;
end
    avg_pix12= mean(mean(pix_12((813:826),(1068:1082))));
%-----------------------------------------------------------------------
avg_Air= mean([avg_pix1, avg_pix2, avg_pix3, avg_pix4, avg_pix5, avg_pix6, avg_pix7, avg_pix8, avg_pix9, avg_pix10, avg_pix11, avg_pix12]);
