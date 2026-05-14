PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["dragInsert"]
        2 NAMECALL                         R2 R2 K1 ["report"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K2 ["getState"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K3 ["AssetManagerReducer"]
       11 GETTABLEKS                       R3 R3 K4 ["searchTerm"]
       13 GETIMPORT                        R4 K7 [utf8.len]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 JUMPIFEQKN                       R4 K8 [0] ; [+6]
       19 GETUPVAL                         R4 0
       20 LOADK                            R6 K9 ["insertAfterSearch"]
       21 NAMECALL                         R4 R4 K1 ["report"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Status"]
        3 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["cancelDragInsert"]
        9 NAMECALL                         R1 R1 K3 ["report"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ClassName"]
        3 JUMPIFEQKS                       R2 K1 ["Folder"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Cannot drag a folder"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["id"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["name"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["assetType"]
       22 GETIMPORT                        R6 K11 [Enum.AssetType.Package]
       24 JUMPIFEQ                         R4 R6 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 JUMPIFNOT                        R5 ; [+2]
       29 GETIMPORT                        R4 K13 [Enum.AssetType.Model]
       31 GETUPVAL                         R6 1
       32 MOVE                             R8 R2
       33 MOVE                             R9 R3
       34 MOVE                             R10 R4
       35 MOVE                             R11 R5
       36 NAMECALL                         R6 R6 K14 ["beginDragInsert"]
       38 CALL                             R6 5 1
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R6 R6 K15 ["andThen"]
       44 CALL                             R6 2 1
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 NAMECALL                         R6 R6 K17 ["catch"]
       48 CALL                             R6 2 1
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U2
       52 NAMECALL                         R6 R6 K18 ["finally"]
       54 CALL                             R6 2 0
       55 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Promise"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_4]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
