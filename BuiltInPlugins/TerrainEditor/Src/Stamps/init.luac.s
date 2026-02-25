MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 7
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["ArcticStamp"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K5 ["CraterStamp"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K1 [require]
       19 GETIMPORT                        R5 K3 [script]
       21 GETTABLEKS                       R4 R5 K6 ["DesertStamp"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETIMPORT                        R6 K3 [script]
       28 GETTABLEKS                       R5 R6 K7 ["LakeStamp"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K1 [require]
       33 GETIMPORT                        R7 K3 [script]
       35 GETTABLEKS                       R6 R7 K8 ["MesaStamp"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K1 [require]
       40 GETIMPORT                        R8 K3 [script]
       42 GETTABLEKS                       R7 R8 K9 ["MountainStamp"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K1 [require]
       47 GETIMPORT                        R9 K3 [script]
       49 GETTABLEKS                       R8 R9 K10 ["PlainStamp"]
       51 CALL                             R7 1 -1
       52 SETLIST                          R0 R1 -1 [1]
       54 RETURN                           R0 1
