PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["InputLabelSize"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETTABLEKS                       R4 R1 K9 ["Large"]
       25 GETTABLEKS                       R5 R2 K9 ["Large"]
       27 SETTABLE                         R5 R3 R4
       28 GETTABLEKS                       R4 R1 K10 ["Medium"]
       30 GETTABLEKS                       R5 R2 K10 ["Medium"]
       32 SETTABLE                         R5 R3 R4
       33 GETTABLEKS                       R4 R1 K11 ["Small"]
       35 GETTABLEKS                       R5 R2 K11 ["Small"]
       37 SETTABLE                         R5 R3 R4
       38 GETTABLEKS                       R4 R1 K12 ["XSmall"]
       40 GETTABLEKS                       R5 R2 K11 ["Small"]
       42 SETTABLE                         R5 R3 R4
       43 DUPCLOSURE                       R4 K13 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 RETURN                           R4 1
