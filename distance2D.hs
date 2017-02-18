sqr :: Float -> Float
sqr x = x*x

type Point2D = (Float, Float)

distance :: Point2D -> Point2D -> Float
distance (x1, y1) (x2, y2) = sqrt(sqr(x2 - x1) + sqr(y2 - y1))

type Point3D = (Float, Float, Float)

distance :: Point3D -> Point3D -> Point3D
distance (x1, y1, z1) (x2, y2, z2) = sqrt(sqr(x2 - x1) + sqr(y2 - y1) + sqr(z2-z1))