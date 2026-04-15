MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETIMPORT                        R1 K1 [script]
        5 NAMECALL                         R1 R1 K2 ["GetChildren"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 GETIMPORT                        R7 K5 [require]
       13 MOVE                             R8 R5
       14 CALL                             R7 1 1
       15 SETTABLE                         R7 R0 R6
       16 FORGLOOP                         R1 2 ; [-8]
       18 RETURN                           R0 1
