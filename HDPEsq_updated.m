function avg_HDPE = HDPEsq_updated(img_HDPE, filePath, squareSize)
blackMaskedImage = img_HDPE;
o_1=1;
pix_1 = zeros(1100,1100);

averageGrayscaleValue = GetGrayScaleValuesRim(filePath, squareSize);


averageGrayscaleValue

for xi_1 = 156:192
    for yi_1 = 154:190
        intensity_value_1 = blackMaskedImage(yi_1, xi_1);
        pix_1(yi_1, xi_1)= intensity_value_1;
        
    end
    o_1=o_1+1;
end
    avg_pix1= mean(mean(pix_1((154:190),(156:192))));
%3m elgoo negm elgeel, wlkn zebak 6 m
%-----------------------------------------------------------------------
o_2=1;
pix_2 = zeros(1100,1100);
for xi_2 = 855:893
    for yi_2 = 151:189
        intensity_value_2 = blackMaskedImage(yi_2, xi_2);
        pix_2(yi_2, xi_2)= intensity_value_2;
        
    end
    o_2=o_2+1;
end
    avg_pix2= mean(mean(pix_2((151:189),(855:893))));
%-----------------------------------------------------------------------
o_3=1;
pix_3 = zeros(1100,1100);
for xi_3 = 148:186
    for yi_3 = 909:947
        intensity_value_3 = blackMaskedImage(yi_3, xi_3);
        pix_3(yi_3, xi_3)= intensity_value_3;
        
    end
    o_3=o_3+1;
end
    avg_pix3= mean(mean(pix_3((909:947),(148:186))));
%-----------------------------------------------------------------------
o_4=1;
pix_4 = zeros(1100,1100);
for xi_4 = 918:962
    for yi_4 = 920:964
        intensity_value_4 = blackMaskedImage(yi_4, xi_4);
        pix_4(yi_4, xi_4)= intensity_value_4;
        
    end
    o_4=o_4+1;
end
    avg_pix4= mean(mean(pix_4((920:964),(918:962))));
%-----------------------------------------------------------------------
o_5=1;
pix_5 = zeros(1100,1100);
for xi_5 = 6:53
    for yi_5 = 386:433
        intensity_value_5 = blackMaskedImage(yi_5, xi_5);
        pix_5(yi_5, xi_5)= intensity_value_5;
        
    end
    o_5=o_5+1;
end
    avg_pix5= mean(mean(pix_5((386:433),(6:53))));
%-----------------------------------------------------------------------
o_6=1;
pix_6 = zeros(1100,1100);
for xi_6 = 243:282
    for yi_6 = 91:131
        intensity_value_6 = blackMaskedImage(yi_6, xi_6);
        pix_6(yi_6, xi_6)= intensity_value_6;
        
    end
    o_6=o_6+1;
end
    avg_pix6= mean(mean(pix_6((91:131),(243:282))));
%-----------------------------------------------------------------------
o_7=1;
pix_7 = zeros(1100,1100);
for xi_7 = 991:1029
    for yi_7 = 331:373
        intensity_value_7 = blackMaskedImage(yi_7, xi_7);
        pix_7(yi_7, xi_7)= intensity_value_7;
        
    end
    o_7=o_7+1;
end
    avg_pix7= mean(mean(pix_7((331:373),(991:1029))));
%-----------------------------------------------------------------------
o_8=1;
pix_8 = zeros(1100,1100);
for xi_8 = 701:740
    for yi_8 = 57:98
        intensity_value_8 = blackMaskedImage(yi_8, xi_8);
        pix_8(yi_8, xi_8)= intensity_value_8;
        
    end
    o_8=o_8+1;
end
    avg_pix8= mean(mean(pix_8((57:98),(701:740))));
%-----------------------------------------------------------------------
o_9=1;
pix_9 = zeros(1100,1100);
for xi_9 = 53:93
    for yi_9 = 794:834
        intensity_value_9 = blackMaskedImage(yi_9, xi_9);
        pix_9(yi_9, xi_9)= intensity_value_9;
        
    end
    o_9=o_9+1;
end
    avg_pix9= mean(mean(pix_9((794:834),(53:93))));
%-----------------------------------------------------------------------
o_10=1;
pix_10 = zeros(1100,1100);
for xi_10 = 253:291
    for yi_10 = 991:1032
        intensity_value_10 = blackMaskedImage(yi_10, xi_10);
        pix_10(yi_10, xi_10)= intensity_value_10;
        
    end
    o_10=o_10+1;
end
    avg_pix10= mean(mean(pix_10((991:1032),(253:291))));
%-----------------------------------------------------------------------
o_11=1;
pix_11 = zeros(1100,1100);
for xi_11 = 802:841
    for yi_11 = 977:1019
        intensity_value_11 = blackMaskedImage(yi_11, xi_11);
        pix_11(yi_11, xi_11)= intensity_value_11;
        
    end
    o_11=o_11+1;
end
    avg_pix11= mean(mean(pix_11((977:1019),(802:841))));
%-----------------------------------------------------------------------
o_12=1;
pix_12 = zeros(1100,1100);
for xi_12 = 996:1036
    for yi_12 = 756:797
        intensity_value_12 = blackMaskedImage(yi_12, xi_12);
        pix_12(yi_12, xi_12)= intensity_value_12;
        
    end
    o_12=o_12+1;
end
    avg_pix12= mean(mean(pix_12((756:797),(996:1036))));
%-----------------------------------------------------------------------
o_13=1;
pix_13 = zeros(1100,1100);
for xi_13 = 502:541
    for yi_13 = 17:58
        intensity_value_13 = blackMaskedImage(yi_13, xi_13);
        pix_13(yi_13, xi_13)= intensity_value_13;
        
    end
    o_13=o_13+1;
end
    avg_pix13= mean(mean(pix_13((17:58),(502:541))));
%-----------------------------------------------------------------------
o_14=1;
pix_14 = zeros(1100,1100);
for xi_14 = 509:549
    for yi_14 = 1059:1087
        intensity_value_14 = blackMaskedImage(yi_14, xi_14);
        pix_14(yi_14, xi_14)= intensity_value_14;
        
    end
    o_14=o_14+1;
end
    avg_pix14= mean(mean(pix_14((1059:1087),(509:549))));
%-----------------------------------------------------------------------
o_15=1;
pix_15 = zeros(1100,1100);
for xi_15 = 7:39
    for yi_15 = 534:562
        intensity_value_15 = blackMaskedImage(yi_15, xi_15);
        pix_15(yi_15, xi_15)= intensity_value_15;
        
    end
    o_15=o_15+1;
end
    avg_pix15= mean(mean(pix_15((534:562),(7:39))));
%-----------------------------------------------------------------------
o_16=1;
pix_16 = zeros(1100,1100);
for xi_16 = 1047:1080
    for yi_16 = 554:582
        intensity_value_16 = blackMaskedImage(yi_16, xi_16);
        pix_16(yi_16, xi_16)= intensity_value_16;
        
    end
    o_16=o_16+1;
end
    avg_pix16= mean(mean(pix_16((554:582),(1047:1080))));
%-----------------------------------------------------------------------
avg_HDPE= mean([avg_pix1, avg_pix2, avg_pix3, avg_pix4, avg_pix5, avg_pix6, avg_pix7, avg_pix8, avg_pix9, avg_pix10, avg_pix11, avg_pix12, avg_pix13, avg_pix14, avg_pix15, avg_pix16]);