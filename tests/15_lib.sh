

@lib
  f1 () {
    echo "Hello $1"
  }

@goal g1
@use_lib
f1 World

@goal g2
@use_lib lib_name
f2 World

@lib lib_name
  f2 () {
    echo "Hello lib_name $1"
  }

@goal g5
@use_lib
@reached_if [ "$(f1 World)" = "Hello World" ]
echo "Should not see this"
