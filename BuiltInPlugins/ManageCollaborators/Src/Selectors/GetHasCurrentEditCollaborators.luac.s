PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentPermissions"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["UserSubjectKey"]
        7 GETTABLE                         R2 R1 R3
        8 JUMPIF                           R2 ; [+2]
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K3 ["ActionKey"]
       18 GETTABLE                         R8 R7 R9
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K4 ["EditKey"]
       22 JUMPIFNOTEQ                      R8 R9 ; [+13]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K5 ["SubjectIdKey"]
       27 GETTABLE                         R8 R7 R9
       28 GETTABLEKS                       R9 R0 K6 ["GameOwnerMetadata"]
       30 GETTABLEKS                       R9 R9 K7 ["creatorId"]
       32 JUMPIFEQ                         R8 R9 ; [+3]
       34 LOADB                            R8 1
       35 RETURN                           R8 1
       36 FORGLOOP                         R3 2 ; [-22]
       38 LOADB                            R3 0
       39 RETURN                           R3 1

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
