echo "Running tests..."
echo

echo "*****"
echo
echo "Matrix mutliplication..."
output_mat_mul=$(./mat_mul <test/input_mat_mul)
echo $output_mat_mul
expected_output_mat_mul="
   7   10 
  15   22"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_mat_mul == *$expected_output_mat_mul* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_mat_mul' but got: $output_mat_mul"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0