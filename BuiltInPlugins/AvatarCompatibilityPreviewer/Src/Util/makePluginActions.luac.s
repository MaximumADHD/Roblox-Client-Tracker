PROTO_0:
        0 JUMPIFEQKS                       R3 K0 [""] ; [+2]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K6 [{["id"], ["text"], ["defaultShortcut"], ["allowBinding"] = False}]
        5 SETTABLEKS                       R2 R4 K1 ["id"]
        7 LOADK                            R7 K7 ["Actions"]
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R1 K8 ["getText"]
       11 CALL                             R5 3 1
       12 SETTABLEKS                       R5 R4 K2 ["text"]
       14 SETTABLEKS                       R3 R4 K3 ["defaultShortcut"]
       16 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R9 R7
        7 JUMPIFEQKS                       R9 K0 [""] ; [+2]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R9
       11 DUPTABLE                         R8 K6 [{["id"], ["text"], ["defaultShortcut"], ["allowBinding"] = False}]
       12 SETTABLEKS                       R6 R8 K1 ["id"]
       14 LOADK                            R12 K7 ["Actions"]
       15 MOVE                             R13 R6
       16 NAMECALL                         R10 R1 K8 ["getText"]
       18 CALL                             R10 3 1
       19 SETTABLEKS                       R10 R8 K2 ["text"]
       21 SETTABLEKS                       R9 R8 K3 ["defaultShortcut"]
       23 SETTABLE                         R8 R2 R6
       24 FORGLOOP                         R3 2 ; [-19]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "Ctrl+Z", ["Redo"] = "Ctrl+Y"}]
        2 DUPCLOSURE                       R1 K5 [PROTO_0]
        3 DUPCLOSURE                       R2 K6 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1
