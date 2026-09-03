MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["enumerate"]
       13 CALL                             R2 1 1
       14 MOVE                             R3 R2
       15 LOADK                            R4 K6 ["MaterialPreviewGeometryType"]
       16 NEWTABLE                         R5 0 5
       18 LOADK                            R6 K7 ["Cube"]
       19 LOADK                            R7 K8 ["CubeCornerOn"]
       20 LOADK                            R8 K9 ["Dominus"]
       21 LOADK                            R9 K10 ["Plane"]
       22 LOADK                            R10 K11 ["Sphere"]
       23 SETLIST                          R5 R6 5 [1]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
