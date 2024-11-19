# Fortran OOP Plain Example: Abstract Types and Deferred Procedures

This repository provides a simple example demonstrating object-oriented programming (OOP) concepts in Fortran, specifically focusing on **abstract types** and **deferred bindings**. It also includes 
the equivalent implementation in Python for comparison.

The example calculates the area of different geometric shapes, specifically `Circle` and `Rectangle`, using OOP principles.

## How to Run the Examples

### Fortran Example

1. Compile the Fortran codes using a 2003 Fortran standard compliant Fortran compiler:
   ```bash
   gfortran shape_module.f90 main_pointer.f90 -o exe1
   gfortran shape_module.f90 main_allocate.f90 -o exe2 
   ```

2. Run the compiled program:
   ```bash
   ./exe1
    Area of circle:    78.5398178    
    Area of rectangle:    12.0000000
   ./exe2
    Area of Rectangle:    12.0000000    
    Area of Circle:    78.5398178
   ```

### Python Example

1. Ensure you have Python 3.x installed.

2. Run the Python script:
   ```bash
   python3 main.py
   ```

