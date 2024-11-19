from abc import ABC, abstractmethod
import math

# Abstract base class `Shape` (equivalent to Fortran's abstract `shape`)
class Shape(ABC):
    
    # Abstract method (equivalent to deferred procedure in Fortran)
    @abstractmethod
    def area(self):
        pass

# Concrete derived class `Circle` (equivalent to Fortran's `circle`)
class Circle(Shape):
    
    def __init__(self, radius):
        self.radius = radius
        
    def area(self):
        # Circle's specific implementation of the `area` method
        return math.pi * self.radius ** 2

# Concrete derived class `Rectangle` (equivalent to Fortran's `rectangle`)
class Rectangle(Shape):
    
    def __init__(self, length, width):
        self.length = length
        self.width = width
    
    def area(self):
        # Rectangle's specific implementation of the `area` method
        return self.length * self.width

# Main program demonstrating polymorphism
def main():
    # Create instances of Circle and Rectangle
    circle = Circle(radius=5.0)
    rectangle = Rectangle(length=4.0, width=3.0)
    
    # Store them in a list of `Shape` objects (polymorphism)
    shapes = [circle, rectangle]
    
    # Calculate and print the area for each shape using polymorphism
    for shape in shapes:
        print(f"Area of {shape.__class__.__name__}: {shape.area()}")

# Run the main program
if __name__ == "__main__":
    main()

