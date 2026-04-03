MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["enumerate"]
       13 CALL                             R2 1 1
       14 MOVE                             R3 R2
       15 LOADK                            R4 K6 ["MaterialPreviewGeometryType"]
       16 NEWTABLE                         R5 0 4
       18 LOADK                            R6 K7 ["Cube"]
       19 LOADK                            R7 K8 ["Dominus"]
       20 LOADK                            R8 K9 ["Plane"]
       21 LOADK                            R9 K10 ["Sphere"]
       22 SETLIST                          R5 R6 4 [1]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
