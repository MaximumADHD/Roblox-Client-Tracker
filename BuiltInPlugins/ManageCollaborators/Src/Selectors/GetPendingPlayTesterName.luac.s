PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["PendingPlayTesters"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R2 K1 ["NewPlayTesters"]
        8 JUMPIF                           R3 ; [+5]
        9 GETTABLEKS                       R3 R2 K2 ["CurrentPlayTesters"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R2 K2 ["CurrentPlayTesters"]
       16 JUMPIF                           R4 ; [+2]
       17 NEWTABLE                         R4 0 0
       19 GETTABLE                         R5 R3 R1
       20 JUMPIF                           R5 ; [+1]
       21 GETTABLE                         R5 R4 R1
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R6 R5 K3 ["Name"]
       25 RETURN                           R6 1
       26 GETTABLEKS                       R6 R0 K4 ["Permissions"]
       28 GETTABLEKS                       R6 R6 K5 ["NewPermissions"]
       30 JUMPIF                           R6 ; [+4]
       31 GETTABLEKS                       R6 R0 K4 ["Permissions"]
       33 GETTABLEKS                       R6 R6 K6 ["CurrentPermissions"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K7 ["UserSubjectKey"]
       38 GETTABLE                         R7 R6 R8
       39 JUMPIF                           R7 ; [+2]
       40 NEWTABLE                         R7 0 0
       42 GETTABLE                         R8 R7 R1
       43 JUMPIFNOT                        R8 ; [+5]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K8 ["SubjectNameKey"]
       47 GETTABLE                         R9 R8 R10
       48 RETURN                           R9 1
       49 LOADNIL                          R9
       50 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
