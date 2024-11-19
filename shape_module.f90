module shape_module
  implicit none

  ! Base class: shape (abstract class)
  type, abstract :: shape
    character(len=100) :: color
  contains
    procedure(area), deferred :: get_area  ! Abstract method to calculate area
  end type Shape

  ! Derived type: Rectangle (inherits from Shape)
  type, extends(shape) :: Rectangle
    real :: width, height
  contains
    procedure :: get_area => rectangle_area
  end type Rectangle

  ! Derived type: Circle (inherits from Shape)
  type, extends(shape) :: Circle
    real :: radius
  contains
    procedure :: get_area => circle_area
  end type Circle

  ! Abstract method for area (to be implemented by derived types)
  abstract interface
  function area(this) result(res)
    import shape
    class(shape), intent(in) :: this
    real :: res
  end function area
  end interface

  contains

  ! Rectangle implementation of area
  function rectangle_area(this) result(res)
    class(Rectangle), intent(in) :: this
    real :: res
    res = this%width * this%height  ! Area of rectangle
  end function rectangle_area

  ! Circle implementation of area
  function circle_area(this) result(res)
    class(Circle), intent(in) :: this
    real :: res
    res = 3.14159265358979 * this%radius**2  ! Area of circle
  end function circle_area

end module shape_module

