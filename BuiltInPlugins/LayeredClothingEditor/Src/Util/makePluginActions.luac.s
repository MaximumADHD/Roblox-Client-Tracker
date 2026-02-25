PROTO_0:
        0 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        2 MOVE                             R4 R3
        3 JUMPIF                           R4 ; [+1]
        4 LOADNIL                          R4
        5 MOVE                             R3 R4
        6 DUPTABLE                         R4 K5 [{"id", "text", "defaultShortcut", "allowBinding"}]
        7 SETTABLEKS                       R2 R4 K1 ["id"]
        9 LOADK                            R7 K6 ["Actions"]
       10 MOVE                             R8 R2
       11 NAMECALL                         R5 R1 K7 ["getText"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K2 ["text"]
       16 SETTABLEKS                       R3 R4 K3 ["defaultShortcut"]
       18 LOADB                            R5 0
       19 SETTABLEKS                       R5 R4 K4 ["allowBinding"]
       21 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 MOVE                             R9 R7
        8 JUMPIFEQKS                       R9 K2 [""] ; [+3]
       10 MOVE                             R10 R9
       11 JUMPIF                           R10 ; [+1]
       12 LOADNIL                          R10
       13 MOVE                             R9 R10
       14 DUPTABLE                         R8 K7 [{"id", "text", "defaultShortcut", "allowBinding"}]
       15 SETTABLEKS                       R6 R8 K3 ["id"]
       17 LOADK                            R12 K8 ["Actions"]
       18 MOVE                             R13 R6
       19 NAMECALL                         R10 R1 K9 ["getText"]
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R8 K4 ["text"]
       24 SETTABLEKS                       R9 R8 K5 ["defaultShortcut"]
       26 LOADB                            R10 0
       27 SETTABLEKS                       R10 R8 K6 ["allowBinding"]
       29 SETTABLE                         R8 R2 R6
       30 FORGLOOP                         R3 2 ; [-24]
       32 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"LockControl", "Undo", "Redo"}]
        2 LOADK                            R1 K4 ["R"]
        3 SETTABLEKS                       R1 R0 K0 ["LockControl"]
        5 LOADK                            R1 K5 ["Ctrl+Z"]
        6 SETTABLEKS                       R1 R0 K1 ["Undo"]
        8 LOADK                            R1 K6 ["Ctrl+Y"]
        9 SETTABLEKS                       R1 R0 K2 ["Redo"]
       11 DUPCLOSURE                       R1 K7 [PROTO_0]
       12 DUPCLOSURE                       R2 K8 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 RETURN                           R2 1
