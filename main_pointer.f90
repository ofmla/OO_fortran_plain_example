program test_polymorphism
  use shape_module
  implicit none

  class(shape), pointer :: sh  ! Polymorphic variable
  type(Rectangle), target :: rect
  type(Circle), target :: circ
  real :: area_value

  ! Initialize Rectangle
  rect%color = "Red"
  rect%width = 4.0
  rect%height = 3.0

  ! Initialize Circle
  circ%color = "Blue"
  circ%radius = 5.0

  ! Assign the Rectangle to the polymorphic variable 'shape'
  sh => rect
  area_value = sh%get_area()  ! Call area for Rectangle
  print *, "Area of Rectangle: ", area_value

  ! Assign the Circle to the polymorphic variable 'shape'
  sh => circ
  area_value = sh%get_area()  ! Call area for Circle
  print *, "Area of Circle: ", area_value

end program test_polymorphism

