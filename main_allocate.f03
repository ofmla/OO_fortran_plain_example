program test_abstract
    use shape_module
    implicit none

    ! Declare objects of type shape
    class(shape), allocatable :: s1, s2
    real :: area1, area2

    ! Create a circle object and assign a radius
    allocate(s1, source=circle(color='Red',radius=5.0))  ! Create a circle with radius 5
    ! Create a rectangle object and assign length and width
    allocate(s2, source=rectangle(color='Blue', height=3.0, width=4.0))  ! Create a rectangle with length 4 and width 3

    ! Call the `area` method for each shape and print the areas
    area1 = s1%get_area()  ! Polymorphic call to `circle_area`
    area2 = s2%get_area()  ! Polymorphic call to `rectangle_area`

    print *, 'Area of circle: ', area1
    print *, 'Area of rectangle: ', area2

end program test_abstract
