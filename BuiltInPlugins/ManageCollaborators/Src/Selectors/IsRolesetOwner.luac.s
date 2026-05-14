PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R2 R2 K1 ["creatorId"]
        4 GETTABLEKS                       R3 R0 K0 ["GameOwnerMetadata"]
        6 GETTABLEKS                       R3 R3 K2 ["creatorType"]
        8 GETTABLEKS                       R4 R0 K3 ["Permissions"]
       10 GETTABLEKS                       R4 R4 K4 ["NewPermissions"]
       12 JUMPIF                           R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K3 ["Permissions"]
       15 GETTABLEKS                       R4 R4 K5 ["CurrentPermissions"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["RoleSubjectKey"]
       20 GETTABLE                         R6 R4 R7
       21 GETTABLE                         R5 R6 R1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K7 ["GroupIdKey"]
       25 GETTABLE                         R6 R5 R7
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K8 ["SubjectRankKey"]
       29 GETTABLE                         R7 R5 R8
       30 LOADB                            R8 0
       31 GETIMPORT                        R9 K12 [Enum.CreatorType.Group]
       33 JUMPIFNOTEQ                      R3 R9 ; [+8]
       35 LOADB                            R8 0
       36 JUMPIFNOTEQ                      R2 R6 ; [+5]
       38 JUMPIFEQKN                       R7 K13 [255] ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 RETURN                           R8 1

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
