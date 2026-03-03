MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETIMPORT                        R1 K1 [ipairs]
        5 GETIMPORT                        R2 K3 [script]
        7 NAMECALL                         R2 R2 K4 ["GetChildren"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 3
       11 FORGPREP_INEXT                   R1
       12 GETTABLEKS                       R6 R5 K5 ["Name"]
       14 GETIMPORT                        R7 K7 [require]
       16 MOVE                             R8 R5
       17 CALL                             R7 1 1
       18 SETTABLE                         R7 R0 R6
       19 FORGLOOP                         R1 2 [inext] ; [-8]
       21 RETURN                           R0 1
