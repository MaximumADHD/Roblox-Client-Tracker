PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 LOADK                            R8 K1 ["MaterialVariant"]
        8 NAMECALL                         R6 R5 K2 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R5
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-13]
       21 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getAll"]
        5 CALL                             R2 0 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["BaseMaterial"]
        9 JUMPIFNOTEQ                      R7 R0 ; [+8]
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K4 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaterialService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["getAll"]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R1 K7 ["getByBaseMaterial"]
       17 RETURN                           R1 1
