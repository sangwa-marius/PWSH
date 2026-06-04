#Logical operators

# -and
(3 -eq 4) -and (3 -eq 3)

# -or
(3 -eq 4) -or(3 -eq 3)

# -not
-not((3 -eq 4) -and (3 -eq 3))

# ! same as -not
!((3 -eq 4) -and (3 -eq 3))
