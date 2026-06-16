PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagOwnerRolesetDeprecation2"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K1 ["GameOwnerMetadata"]
        8 GETTABLEKS                       R2 R2 K2 ["creatorId"]
       10 GETTABLEKS                       R3 R0 K1 ["GameOwnerMetadata"]
       12 GETTABLEKS                       R3 R3 K3 ["creatorType"]
       14 GETTABLEKS                       R4 R0 K4 ["Permissions"]
       16 GETTABLEKS                       R4 R4 K5 ["NewPermissions"]
       18 JUMPIF                           R4 ; [+4]
       19 GETTABLEKS                       R4 R0 K4 ["Permissions"]
       21 GETTABLEKS                       R4 R4 K6 ["CurrentPermissions"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K7 ["RoleSubjectKey"]
       26 GETTABLE                         R6 R4 R7
       27 GETTABLE                         R5 R6 R1
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K8 ["GroupIdKey"]
       31 GETTABLE                         R6 R5 R7
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K9 ["SubjectRankKey"]
       35 GETTABLE                         R7 R5 R8
       36 LOADB                            R8 0
       37 GETIMPORT                        R9 K13 [Enum.CreatorType.Group]
       39 JUMPIFNOTEQ                      R3 R9 ; [+8]
       41 LOADB                            R8 0
       42 JUMPIFNOTEQ                      R2 R6 ; [+5]
       44 JUMPIFEQKN                       R7 K14 [255] ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["PermissionsConstants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
