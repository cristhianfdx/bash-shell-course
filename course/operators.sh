# ! bin/bash
# operators type in bash shell
# author: Cristhian Forero

numA=10
numB=4

echo "A = $numA"
echo "B = $numB"

echo "\nAritmethics operators"
echo "A + B =" $((numA + numB)) 
echo "A - B =" $((numA - numB)) 
echo "A * B =" $((numA * numB))
echo "A / B =" $((numA / numB))

echo "\nRelationals operators"
echo "A > B =" $((numA > numB)) 
echo "A < B =" $((numA < numB)) 
echo "A >= B =" $((numA >= numB)) 
echo "A <= B =" $((numA <= numB))
echo "A == B" $((numA == numB))
echo "A != B" $((numA != numB))

echo "\nAssing operators"
echo "A += B =" $((numA += numB))
echo "A -= B =" $((numA -= numB))
echo "A *= B =" $((numA *= numB))
echo "A /= B =" $((numA /= numB))



