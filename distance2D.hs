sqr :: Float -> Float
sqr x = x*x

type Point2D = (Float, Float)

distance :: Point2D -> Point2D -> Float
distance (x1, y1) (x2, y2) = sqrt(sqr(x2 - x1) + sqr(y2 - y1))