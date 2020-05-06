function f {
  typeset A
  A=1
  echo "Inside the functions"
  echo "A is $A"
}
A=2
f
echo "Outside the functions"
echo "A is $A"

A=10
echo "A is $A"