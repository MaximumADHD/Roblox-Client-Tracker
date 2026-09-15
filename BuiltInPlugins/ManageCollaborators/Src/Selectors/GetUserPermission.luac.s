PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R2 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R2 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["fflagFixMCSearchWidgetErrors"]
       12 JUMPIFNOT                        R3 ; [+14]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["UserSubjectKey"]
       16 GETTABLE                         R3 R2 R4
       17 MOVE                             R4 R3
       18 JUMPIFNOT                        R4 ; [+1]
       19 GETTABLE                         R4 R3 R1
       20 MOVE                             R5 R4
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K5 ["ActionKey"]
       25 GETTABLE                         R5 R4 R6
       26 RETURN                           R5 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K4 ["UserSubjectKey"]
       30 GETTABLE                         R4 R2 R5
       31 GETTABLE                         R3 R4 R1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K5 ["ActionKey"]
       35 GETTABLE                         R4 R3 R5
       36 RETURN                           R4 1

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
