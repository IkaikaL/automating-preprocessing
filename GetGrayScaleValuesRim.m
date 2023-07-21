function averageGrayscaleValue = GetGrayScaleValuesRim(filePath, squareSize)

grayImage = imread(filePath);
%writematrix(grayImage,'output.txt','Delimiter','tab');
size(grayImage);
length = size(grayImage);
length = length(1,1);
halfWay = length/2;

sideSquareStartingPosition = round(halfWay - 10);
sideSquareStartingPosition = round(sideSquareStartingPosition(1,1));
threshold = 11000;

topLeft = [1, 2, 3];
topRight = [4, 5, 6];
bottomRight = [7, 8, 9];
bottomLeft = [10, 11, 12];

squareOne = zeros(4,2);

squareTwo = zeros(4,2);

squareThree = zeros(4,2);

squareFour = zeros(4,2);

squareFive = zeros(4,2);

squareSix = zeros(4,2);

squareSeven = zeros(4,2);

squareEight = zeros(4,2);

squareNine = zeros(4,2);

squareTen = zeros(4,2);

squareEleven = zeros(4,2);

squareTwelve = zeros(4,2);

squareOne = getStartingValues(grayImage, squareOne, 0, 1, 1, false, "down");
squareTwo = getStartingValues(grayImage, squareTwo, 1, 0, 1, false, "right");
squareThree = getStartingValues(grayImage, squareThree, 1, sideSquareStartingPosition, 1, true, "down");
squareFour = getStartingValues(grayImage, squareFour, 1, length, length, false, "left");
squareFive = getStartingValues(grayImage, squareFive, 1, length, 1, false, "down");
squareSix = getStartingValues(grayImage, squareSix, sideSquareStartingPosition, length, length, true, "left");
squareSeven = getStartingValues(grayImage, squareSeven, 0, length, length, false, "up");
squareEight = getStartingValues(grayImage, squareEight, length, 0, length, false, "left");
squareNine = getStartingValues(grayImage, squareNine, length, sideSquareStartingPosition, length, true, "up");
squareTen = getStartingValues(grayImage, squareTen, length, 0, 1, false, "right");
squareEleven = getStartingValues(grayImage, squareEleven, 0, 1, length, false, "up");
squareTwelve  = getStartingValues(grayImage, squareTwelve, sideSquareStartingPosition, sideSquareStartingPosition, 1, true, "right");

squareOne = getFirstPoint(grayImage, squareOne, squareOne(1, 1), 0, 1, false, squareSize);
squareTwo = getFirstPoint(grayImage, squareTwo, 0, squareTwo(1, 2), 1, false, squareSize);
squareThree = getFirstPoint(grayImage, squareThree, 1, sideSquareStartingPosition, 1, true, squareSize);
squareFour = getFirstPoint(grayImage, squareFour, 0, squareFour(1, 2), 1, false, squareSize);
squareFive = getFirstPoint(grayImage, squareFive, squareFive(1, 1), 0, length, false, squareSize);
squareSix = getFirstPoint(grayImage, squareSix, sideSquareStartingPosition, length, length, true, squareSize);
squareSeven = getFirstPoint(grayImage, squareSeven, squareSeven(1, 1), 0, length, false, squareSize);
squareEight = getFirstPoint(grayImage, squareEight, 0, squareEight(1, 2), length, false, squareSize);
squareNine = getFirstPoint(grayImage, squareNine, length, sideSquareStartingPosition, length, true, squareSize);
squareTen = getFirstPoint(grayImage, squareTen, 0, squareTen(1, 2), length, false, squareSize);
squareEleven = getFirstPoint(grayImage, squareEleven, squareEleven(1, 1), length, 1, false, squareSize);
squareTwelve  = getFirstPoint(grayImage, squareTwelve, sideSquareStartingPosition, 1, 1, true, squareSize);

squareOne = getRestOfPoints(grayImage, squareOne, 1, squareSize);
squareTwo = getRestOfPoints(grayImage, squareTwo, 2, squareSize);
squareThree = getRestOfPoints(grayImage, squareThree, 3, squareSize);
squareFour = getRestOfPoints(grayImage, squareFour, 4, squareSize);
squareFive = getRestOfPoints(grayImage, squareFive, 5, squareSize);
squareSix = getRestOfPoints(grayImage, squareSix, 6, squareSize);
squareSeven = getRestOfPoints(grayImage, squareSeven, 7, squareSize);
squareEight = getRestOfPoints(grayImage, squareEight, 8, squareSize);
squareNine = getRestOfPoints(grayImage, squareNine, 9, squareSize);
squareTen = getRestOfPoints(grayImage, squareTen, 10, squareSize);
squareEleven = getRestOfPoints(grayImage, squareEleven, 11, squareSize);
squareTwelve = getRestOfPoints(grayImage, squareTwelve, 12, squareSize);

squareOneTrimmed = getTrimmedMatrices(grayImage, squareOne(1,1), squareOne(2,1), squareOne(2,2), squareOne(3,2));
squareTwoTrimmed = getTrimmedMatrices(grayImage, squareTwo(1,1), squareTwo(2,1), squareTwo(2,2), squareTwo(3,2));
squareThreeTrimmed = getTrimmedMatrices(grayImage, squareThree(1,1), squareThree(2,1), squareThree(2,2), squareThree(3,2));
squareFourTrimmed = getTrimmedMatrices(grayImage, squareFour(1,1), squareFour(2,1), squareFour(3,2), squareFour(2,2));
squareFiveTrimmed = getTrimmedMatrices(grayImage, squareFive(1,1), squareFive(2,1), squareFive(3,2), squareFive(2,2));
squareSixTrimmed = getTrimmedMatrices(grayImage, squareSix(1,1), squareSix(2,1), squareSix(3,2), squareSix(2,2));
squareSevenTrimmed = getTrimmedMatrices(grayImage, squareSeven(2,1), squareSeven(1,1), squareSeven(3,2), squareSeven(2,2));
squareEightTrimmed = getTrimmedMatrices(grayImage, squareEight(2,1), squareEight(1,1), squareEight(3,2), squareEight(2,2));
squareNineTrimmed = getTrimmedMatrices(grayImage, squareNine(2,1), squareNine(1,1), squareNine(3,2), squareNine(2,2));
squareTenTrimmed = getTrimmedMatrices(grayImage, squareTen(2,1), squareTen(1,1), squareTen(1,2), squareTen(3,2));
squareElevenTrimmed = getTrimmedMatrices(grayImage, squareEleven(2,1), squareEleven(1,1), squareEleven(1,2), squareEleven(3,2));
squareTwelveTrimmed = getTrimmedMatrices(grayImage, squareTwelve(2,1), squareTwelve(1,1), squareTwelve(1,2), squareTwelve(3,2));


averageGrayscaleValue = mean(squareOneTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareTwoTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareThreeTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareFourTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareFiveTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareSixTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareSevenTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareEightTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareNineTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareTenTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareElevenTrimmed, "all");
averageGrayScaleValue = averageGrayscaleValue + mean(squareTwelveTrimmed, "all");

editedImage = getImageWithSquares(filePath, squareOne, squareTwo, squareThree, squareFour, squareFive, squareSix, squareSeven, squareEight, squareNine, squareTen, squareEleven, squareTwelve)


    function imageWithSquares = getImageWithSquares(filePath, squareOne, squareTwo, squareThree, squareFour, squareFive, squareSix, squareSeven, squareEight, squareNine, squareTen, squareEleven, squareTwelve)
        img = imread(filePath);
        fh = figure;
        imshow(img)
        hold on;
        squareOneRectangle = rectangle('Position',[squareOne(1,2) squareOne(1,1) (squareOne(2,1) - squareOne(1,1)) (squareOne(3,2) - squareOne(1,2))]);
        squareOneRectangle.FaceColor = [1 1 1];

        squareTwoRectangle = rectangle('Position',[squareTwo(1,2) squareTwo(1,1) (squareTwo(2,1) - squareTwo(1,1)) (squareTwo(3,2) - squareTwo(1,2))]);
        squareTwoRectangle.FaceColor = [1 1 1];

        squareThreeRectangle = rectangle('Position',[squareThree(1,2) squareThree(1,1) (squareThree(2,1) - squareThree(1,1)) (squareThree(3,2) - squareThree(1,2))]);
        squareThreeRectangle.FaceColor = [1 1 1];

        squareFourRectangle = rectangle('Position',[squareFour(3,2) squareFour(3,1) (squareFour(2,1) - squareFour(1,1)) (squareFour(1,2) - squareFour(3,2))]);
        squareFourRectangle.FaceColor = [1 1 1];

        squareFiveRectangle = rectangle('Position',[squareFive(3,2) squareFive(3,1) (squareFive(2,1) - squareFive(1,1)) (squareFive(1,2) - squareFive(3,2))]);
        squareFiveRectangle.FaceColor = [1 1 1];

        squareSixRectangle = rectangle('Position',[squareSix(3,2) squareSix(3,1) (squareSix(2,1) - squareSix(1,1)) (squareSix(1,2) - squareSix(3,2))]);
        squareSixRectangle.FaceColor = [1 1 1];

        squareSevenRectangle = rectangle('Position',[squareSeven(4,2) squareSeven(4,1) (squareSeven(2,2) - squareSeven(3,2)) (squareSeven(1,1) - squareSeven(2,1))]);
        squareSevenRectangle.FaceColor = [1 1 1];

        squareEightRectangle = rectangle('Position',[squareEight(4,2) squareEight(4,1) (squareEight(2,2) - squareEight(3,2)) (squareEight(1,1) - squareEight(2,1))]);
        squareEightRectangle.FaceColor = [1 1 1];

        squareNineRectangle = rectangle('Position',[squareNine(4,2) squareNine(4,1) (squareNine(2,2) - squareNine(3,2)) (squareNine(1,1) - squareNine(2,1))]);
        squareNineRectangle.FaceColor = [1 1 1];
        
        squareTenRectangle = rectangle('Position',[squareTen(2,2) squareTen(2,1) (squareTen(3,2) - squareTen(2,2)) (squareTen(1,1) - squareTen(2,1))]);
        squareTenRectangle.FaceColor = [1 1 1];

        squareElevenRectangle = rectangle('Position',[squareEleven(2,2) squareEleven(2,1) (squareEleven(3,2) - squareEleven(2,2)) (squareEleven(1,1) - squareEleven(2,1))]);
        squareElevenRectangle.FaceColor = [1 1 1];

        squareTwelveRectangle = rectangle('Position',[squareTwelve(2,2) squareTwelve(2,1) (squareTwelve(3,2) - squareTwelve(2,2)) (squareTwelve(1,1) - squareTwelve(2,1))]);
        squareTwelveRectangle.FaceColor = [1 1 1];

        frame = getframe(fh);
        imwrite(frame.cdata, "imageWithSquares.png")
        imageWithSquares = "output to imageWithSquares.png";

    end
    function trimmedMatrix = getTrimmedMatrices(matrix, xMinLimit, xMaxLimit, yMinLimit, yMaxLimit)
        trimmedMatrix = matrix(xMinLimit : xMaxLimit, yMinLimit : yMaxLimit);
    end

    function newStartMatrix = getStartingValues(matrix, newMatrix, startXPosition, startYPosition, startIndex, sideSquare, direction)
        if (direction == "up" || direction == "down") && sideSquare == 0
            currentIndex = startIndex;
            while  newMatrix(1,1) == 0
                if (direction == "down")
                    currentIndex = currentIndex + 1;
                else
                    currentIndex = currentIndex - 1;
                end
                
                if matrix(currentIndex, startYPosition) > threshold
                    newMatrix(1,1) = currentIndex;
                end
            end

            newStartMatrix = newMatrix;

        elseif (direction == "left" || direction == "right") && sideSquare == 0
            currentIndex = startIndex;
            while newMatrix(1,2) == 0
                if(direction == "right")
                    currentIndex = currentIndex + 1;
                else
                    currentIndex = currentIndex - 1;
                end
                if matrix(startXPosition, currentIndex) > threshold
                    newMatrix(1,2) = currentIndex;
                end
            end

            newStartMatrix = newMatrix;
        
        elseif (sideSquare == 1 && direction == "down" || direction == "up")
            currentIndex = startIndex;
            while newMatrix(1,1) == 0
                if(startIndex == 1)
                    currentIndex = currentIndex + 1;
                else
                    currentIndex = currentIndex - 1;
                end
                if grayImage(currentIndex, startYPosition) > threshold
                    newMatrix(1,1) = currentIndex;
                end
            end

            newStartMatrix = newMatrix;

        elseif (sideSquare == 1 && direction == "right" || direction == "left")
            currentIndex = startIndex;
            while newMatrix(1,2) == 0
                if(startIndex == 1)
                    currentIndex = currentIndex + 1;
                else
                    currentIndex = currentIndex - 1;
                end
                if grayImage(startXPosition, currentIndex) > threshold
                    newMatrix(1,2) = currentIndex;
                end
            end
            newStartMatrix = newMatrix;
        end
            
        newStartMatrix = newMatrix;

    end

    function matrixWithFirstPoint = getFirstPoint(matrix, newMatrix, startXPosition, startYPosition, startIndex, sideSquare, squareSize)
        if (sideSquare == 1)
            if (newMatrix(1, 1) == 0)
                reachedRim = false;
                currentIndex = startIndex;
                while reachedRim == false
                    if(startIndex == 1)
                        currentIndex = currentIndex + 1;
                        if matrix(startXPosition, currentIndex) > threshold || currentIndex > squareSize
                            reachedRim = true;
                            newMatrix(1, 1) = startXPosition;
                            newMatrix(1, 2) = currentIndex;
                        end
                    else
                        currentIndex = currentIndex - 1;
                        if matrix(startXPosition, currentIndex) > threshold || currentIndex < length - squareSize
                            reachedRim = true;
                            newMatrix(1, 1) = startXPosition;
                            newMatrix(1, 2) = currentIndex;
                        end
                    end
                end
                matrixWithFirstPoint = newMatrix;

            elseif (newMatrix(1, 2) == 0)
                reachedRim = false;
                currentIndex = startIndex;
                while reachedRim == false
                    if(startIndex == 1)
                        currentIndex = currentIndex + 1;
                        if matrix(currentIndex, startYPosition) > threshold || currentIndex > squareSize
                            reachedRim = true;
                            newMatrix(1, 1) = currentIndex;
                            newMatrix(1, 2) = startYPosition;
                        end
                    else
                        currentIndex = currentIndex - 1;
                        if matrix(currentIndex, startYPosition) > threshold || currentIndex < length - squareSize
                            reachedRim = true;
                            newMatrix(1, 1) = currentIndex;
                            newMatrix(1, 2) = startYPosition;
                        end
                    end
                end
                matrixWithFirstPoint = newMatrix;

            end
        else
            if (newMatrix(1, 2) == 0)
                reachedRim = false;
                currentIndex = startIndex;
                while reachedRim == false
                    if(startIndex == 1)
                        currentIndex = currentIndex + 1;
                        if matrix(startXPosition, currentIndex) < threshold  && matrix(startXPosition, currentIndex + 1) > threshold
                            reachedRim = true;
                            newMatrix(1,2) = currentIndex;
                        end
                    else
                        currentIndex = currentIndex - 1;
                        if matrix(startXPosition, currentIndex) < threshold && matrix(startXPosition, currentIndex - 1) > threshold
                            reachedRim = true;
                            newMatrix(1,2) = currentIndex;
                        end
                    end
                end
                matrixWithFirstPoint = newMatrix;

            elseif (newMatrix(1, 1) == 0)
                reachedRim = false;
                currentIndex = startIndex;
                while reachedRim == false
                    if(startIndex == 1)
                        currentIndex = currentIndex + 1;
                        if matrix(currentIndex, startYPosition) < threshold && matrix(currentIndex + 1, startYPosition) > threshold
                            reachedRim = true;
                            newMatrix(1,1) = currentIndex;
                        end
                    else
                        currentIndex = currentIndex - 1;
                        if matrix(currentIndex, startYPosition) < threshold && matrix(currentIndex - 1, startYPosition) > threshold
                            reachedRim = true;
                            newMatrix(1,1) = currentIndex;
                        end
                    end
                end
                matrixWithFirstPoint = newMatrix;

            end
        end

    end

    function matrixWithPoints = getRestOfPoints(matrix, newMatrix, squareNumber, squareSize)
        if (ismember(squareNumber, topLeft))
            currentIndex = newMatrix(1,1) + 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(2,1) == 0
                currentIndex = currentIndex + 1;
                matrix(currentIndex, newMatrix(1,2))
                if matrix(currentIndex, newMatrix(1,2)) < threshold || lengthOfRim > squareSize
                    newMatrix(2,1) = heightOfSquare + newMatrix(1,1);
                    newMatrix(2,2) = newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(2,2) + 1;
            lengthOfRim = 0;
            lengthOfSquare = 0;
            while newMatrix(3,1) == 0
                currentIndex = currentIndex + 1;
                if matrix(newMatrix(1,1), currentIndex) < threshold || lengthOfRim > squareSize
                    newMatrix(3,1) = newMatrix(1,1);
                    newMatrix(3,2) = lengthOfSquare + newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                lengthOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(3,1) + 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(4,1) == 0
                currentIndex = currentIndex + 1;
                matrix(currentIndex, newMatrix(3,2))
                if matrix(currentIndex, newMatrix(3,2)) < threshold || lengthOfRim > squareSize
                    newMatrix(4,1) = heightOfSquare + newMatrix(3,1);
                    newMatrix(4,2) = newMatrix(3,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;

            end


            % changed because of random light values
            if newMatrix(2,1) < newMatrix(4,1)
                newMatrix(2,1) = newMatrix(4,1);
            else
                newMatrix(4,1) = newMatrix(2,1);
            end

            matrixWithPoints = newMatrix;


        elseif (ismember(squareNumber, topRight))
            currentIndex = newMatrix(1,1) + 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(2,1) == 0
                currentIndex = currentIndex + 1;
                if (matrix(currentIndex, newMatrix(1,2)) < threshold || lengthOfRim > squareSize)
                    newMatrix(2,1) = heightOfSquare + newMatrix(1,1);
                    newMatrix(2,2) = newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(2,2) - 1;
            lengthOfRim = 0;
            lengthOfSquare = 0;
            while newMatrix(3,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(newMatrix(1,1), currentIndex) < threshold || lengthOfRim > squareSize)
                    newMatrix(3,1) = newMatrix(1,1);
                    newMatrix(3,2) = newMatrix(1,2) - lengthOfSquare;
                end
                lengthOfRim = lengthOfRim + 1;
                lengthOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(3,1) + 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(4,1) == 0
                currentIndex = currentIndex + 1;
                if (matrix(currentIndex, newMatrix(3,2)) < threshold || lengthOfRim > squareSize)
                    newMatrix(4,1) = heightOfSquare + newMatrix(3,1);
                    newMatrix(4,2) = newMatrix(3,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;

            end


            if newMatrix(2,1) < newMatrix(4,1)
                newMatrix(2,1) = newMatrix(4,1);
            else
                newMatrix(4,1) = newMatrix(2,1);
            end

            matrixWithPoints = newMatrix;


        elseif (ismember(squareNumber, bottomRight))
            currentIndex = newMatrix(1,1) - 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(2,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(currentIndex, newMatrix(1,2)) < threshold  || lengthOfRim > squareSize)
                    newMatrix(2,1) = newMatrix(1,1) - heightOfSquare;
                    newMatrix(2,2) = newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(2,2) - 1;
            lengthOfRim = 0;
            lengthOfSquare = 0;
            while newMatrix(3,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(newMatrix(1,1), currentIndex) < threshold || lengthOfRim > squareSize)
                    newMatrix(3,1) = newMatrix(1,1);
                    newMatrix(3,2) = newMatrix(1,2) - lengthOfSquare;
                end
                lengthOfRim = lengthOfRim + 1;
                lengthOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(3,1) - 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(4,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(currentIndex, newMatrix(3,2)) < threshold || lengthOfRim > squareSize)
                    newMatrix(4,1) = newMatrix(3,1) - heightOfSquare;
                    newMatrix(4,2) = newMatrix(3,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;

            end


            if newMatrix(2,1) < newMatrix(4,1)
                newMatrix(2,1) = newMatrix(4,1);
            else
                newMatrix(4,1) = newMatrix(2,1);
            end

            matrixWithPoints = newMatrix;


        elseif (ismember(squareNumber, bottomLeft))
            currentIndex = newMatrix(1,1) - 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(2,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(currentIndex, newMatrix(1,2)) < threshold  || lengthOfRim > squareSize)
                    newMatrix(2,1) = newMatrix(1,1) - heightOfSquare;
                    newMatrix(2,2) = newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(2,2) + 1;
            lengthOfRim = 0;
            lengthOfSquare = 0;
            while newMatrix(3,1) == 0
                currentIndex = currentIndex + 1;
                if (matrix(newMatrix(1,1), currentIndex) < threshold  || lengthOfRim > squareSize)
                    newMatrix(3,1) = newMatrix(1,1);
                    newMatrix(3,2) = lengthOfSquare + newMatrix(1,2);
                end
                lengthOfRim = lengthOfRim + 1;
                lengthOfSquare = lengthOfRim;
            end

            currentIndex = newMatrix(3,1) - 1;
            lengthOfRim = 0;
            heightOfSquare = 0;
            while newMatrix(4,1) == 0
                currentIndex = currentIndex - 1;
                if (matrix(currentIndex, newMatrix(3,2)) < threshold || lengthOfRim > squareSize)
                    newMatrix(4,1) = newMatrix(3,1) - heightOfSquare;
                    newMatrix(4,2) = newMatrix(3,2);
                end
                lengthOfRim = lengthOfRim + 1;
                heightOfSquare = lengthOfRim;

            end


            if newMatrix(2,1) < newMatrix(4,1)
                newMatrix(2,1) = newMatrix(4,1);
            else
                newMatrix(4,1) = newMatrix(2,1);
            end

            matrixWithPoints = newMatrix;
        end
        matrixWithPoints = newMatrix;
    end
        
end