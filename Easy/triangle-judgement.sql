-- SQL solution for Triangle Judgement
-- Report for every three line segments whether they can form a triangle.
SELECT *, IF (x+z>y and y+z>x and x+y>z, 'Yes', 'No') as triangle
FROM Triangle;

