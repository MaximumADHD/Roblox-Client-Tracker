PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["callbacks"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R7 R6
        6 MOVE                             R8 R1
        7 CALL                             R7 1 0
        8 FORGLOOP                         R2 2 ; [-4]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOTEQ                      R4 R5 ; [+6]
        7 GETIMPORT                        R5 K2 [table.remove]
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R3
       11 CALL                             R5 2 0
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["callbacks"]
        2 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        4 MOVE                             R4 R2
        5 MOVE                             R5 R1
        6 GETIMPORT                        R3 K3 [table.insert]
        8 CALL                             R3 2 0
        9 DUPTABLE                         R3 K5 [{"Disconnect"}]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R4 R3 K4 ["Disconnect"]
       15 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"callCallbacksWith", "callbacks", "Connect"}]
        1 DUPCLOSURE                       R2 K4 [PROTO_0]
        2 SETTABLEKS                       R2 R1 K0 ["callCallbacksWith"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["callbacks"]
        8 DUPCLOSURE                       R2 K5 [PROTO_2]
        9 SETTABLEKS                       R2 R1 K2 ["Connect"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_3]
        6 SETTABLEKS                       R1 R0 K2 ["new"]
        8 RETURN                           R0 1
