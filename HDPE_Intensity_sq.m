path = 'E:\Work\Mohamed\automating grey scale\16bitTIFF\';
name = 'coreA_150um';

i = 1;
pix = zeros(10000,1);

for m = 900
    if m<10
        img_HDPE = imread(strcat(path, name, '_000', num2str(m), '.tif'));
        AvgpixelUn_HDPE = HDPEsq_updated(img_HDPE, strcat(path, name, '_000', num2str(m), '.tif'), 40);
    elseif m<100
        img_HDPE = imread(strcat(path, name, '_00', num2str(m), '.tif'));
        AvgpixelUn_HDPE = HDPEsq_updated(img_HDPE, strcat(path, name, '_00', num2str(m), '.tif'), 40);
    elseif m<1000
        img_HDPE = imread(strcat(path, name, '_0', num2str(m), '.tif'));
        AvgpixelUn_HDPE = HDPEsq_updated(img_HDPE, strcat(path, name, '_0', num2str(m), '.tif'), 40);
        disp(AvgpixelUn_HDPE)
    else
        img_HDPE = imread(strcat(path, name, '_', num2str(m), '.tif'));
        AvgpixelUn_HDPE = HDPEsq_updated(img_HDPE, strcat(path, name, '_', num2str(m), '.tif'), 40);
    end
    pix(i, 1)= AvgpixelUn_HDPE;
    i = i+1;
end

Overall_Avg = mean(pix((1:i-1), 1));

disp(Overall_Avg)

