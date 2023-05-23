path = 'D:\Work\Mohamed\coreA\Corrected-All';
name = 'C-coreA_300um_';

for m = 500
    if m<10
        %MultiIntensityBlobsDemo(path, strcat(name, '000', num2str(m), '.tif'))
        AAMask(path, strcat(name, '000', num2str(m), '.tif'), 268, 280, 212);
    elseif m<100
        %MultiIntensityBlobsDemo(path, strcat(name, '000', num2str(m), '.tif'))
        AAMask(path, strcat(name, '00', num2str(m), '.tif'), 268, 280, 212);
    elseif m<1000
        %MultiIntensityBlobsDemo(path, strcat(name, '000', num2str(m), '.tif'))
        AAMask(path, strcat(name, '0', num2str(m), '.tif'), 268, 280, 212);
    else
        %MultiIntensityBlobsDemo(path, strcat(name, '000', num2str(m), '.tif'))
        AAMask(path, strcat(name, num2str(m), '.tif'), 268, 280, 212);
    end
end


%212 inner diameter
%100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900

%C-300um_core2_0061