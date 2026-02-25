PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["addOnInvokeConnection"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["addRBXScriptConnection"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K0 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 GETIMPORT                        R0 K3 [table.clear]
       20 GETUPVAL                         R1 0
       21 CALL                             R0 1 0
       22 GETIMPORT                        R0 K3 [table.clear]
       24 GETUPVAL                         R1 1
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 4 0
        7 DUPCLOSURE                       R3 K0 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["addOnInvokeConnection"]
       11 DUPCLOSURE                       R3 K2 [PROTO_1]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R3 R2 K3 ["addRBXScriptConnection"]
       15 DUPCLOSURE                       R3 K4 [PROTO_2]
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R2 K5 ["addConnections"]
       19 DUPCLOSURE                       R3 K6 [PROTO_3]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K7 ["clearConnections"]
       24 RETURN                           R2 1
