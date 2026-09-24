PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R2 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R2 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["fflagAddPlayTesterPermission"]
       12 JUMPIFNOT                        R3 ; [+34]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["UserSubjectKey"]
       16 GETTABLE                         R3 R2 R4
       17 JUMPIF                           R3 ; [+2]
       18 NEWTABLE                         R3 0 0
       20 GETTABLE                         R4 R3 R1
       21 JUMPIFEQKNIL                     R4 ; [+6]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["SubjectNameKey"]
       26 GETTABLE                         R5 R4 R6
       27 RETURN                           R5 1
       28 GETTABLEKS                       R6 R0 K0 ["Permissions"]
       30 GETTABLEKS                       R6 R6 K2 ["CurrentPermissions"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K4 ["UserSubjectKey"]
       35 GETTABLE                         R5 R6 R7
       36 JUMPIF                           R5 ; [+2]
       37 NEWTABLE                         R5 0 0
       39 GETTABLE                         R6 R5 R1
       40 MOVE                             R7 R6
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K5 ["SubjectNameKey"]
       45 GETTABLE                         R7 R6 R8
       46 RETURN                           R7 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K6 ["fflagFixMCSearchWidgetErrors"]
       50 JUMPIFNOT                        R3 ; [+14]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K4 ["UserSubjectKey"]
       54 GETTABLE                         R3 R2 R4
       55 MOVE                             R4 R3
       56 JUMPIFNOT                        R4 ; [+1]
       57 GETTABLE                         R4 R3 R1
       58 MOVE                             R5 R4
       59 JUMPIFNOT                        R5 ; [+4]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K5 ["SubjectNameKey"]
       63 GETTABLE                         R5 R4 R6
       64 RETURN                           R5 1
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K4 ["UserSubjectKey"]
       68 GETTABLE                         R4 R2 R5
       69 GETTABLE                         R3 R4 R1
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K5 ["SubjectNameKey"]
       73 GETTABLE                         R4 R3 R5
       74 RETURN                           R4 1

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
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Bin"]
       22 GETTABLEKS                       R3 R3 K9 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
