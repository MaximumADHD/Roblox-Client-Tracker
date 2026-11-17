PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K1 ["PendingPlayTesters"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 2
       11 RETURN                           R3 1
       12 GETTABLEKS                       R2 R0 K2 ["Permissions"]
       14 GETTABLEKS                       R2 R2 K3 ["NewPermissions"]
       16 JUMPIF                           R2 ; [+4]
       17 GETTABLEKS                       R2 R0 K2 ["Permissions"]
       19 GETTABLEKS                       R2 R2 K4 ["CurrentPermissions"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["fflagFixMCSearchWidgetErrors"]
       24 JUMPIFNOT                        R3 ; [+14]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["UserSubjectKey"]
       28 GETTABLE                         R3 R2 R4
       29 MOVE                             R4 R3
       30 JUMPIFNOT                        R4 ; [+1]
       31 GETTABLE                         R4 R3 R1
       32 MOVE                             R5 R4
       33 JUMPIFNOT                        R5 ; [+4]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K7 ["ActionKey"]
       37 GETTABLE                         R5 R4 R6
       38 RETURN                           R5 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K6 ["UserSubjectKey"]
       42 GETTABLE                         R4 R2 R5
       43 GETTABLE                         R3 R4 R1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K7 ["ActionKey"]
       47 GETTABLE                         R4 R3 R5
       48 RETURN                           R4 1

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
       25 GETTABLEKS                       R4 R2 K10 ["fflagAddPlayTesterPermission"]
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETIMPORT                        R3 K4 [require]
       30 GETTABLEKS                       R4 R0 K5 ["Src"]
       32 GETTABLEKS                       R4 R4 K11 ["Selectors"]
       34 GETTABLEKS                       R4 R4 K12 ["GetAudienceRole"]
       36 CALL                             R3 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 DUPCLOSURE                       R4 K13 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R4 1
