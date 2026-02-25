PROTO_0:
        0 JUMPIFEQKS                       R3 K0 [""] ; [+2]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K5 [{"id", "text", "defaultShortcut", "allowBinding"}]
        5 SETTABLEKS                       R2 R4 K1 ["id"]
        7 LOADK                            R7 K6 ["Actions"]
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R1 K7 ["getText"]
       11 CALL                             R5 3 1
       12 SETTABLEKS                       R5 R4 K2 ["text"]
       14 SETTABLEKS                       R3 R4 K3 ["defaultShortcut"]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K4 ["allowBinding"]
       19 RETURN                           R4 1

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
       11 DUPTABLE                         R8 K5 [{"id", "text", "defaultShortcut", "allowBinding"}]
       12 SETTABLEKS                       R6 R8 K1 ["id"]
       14 LOADK                            R12 K6 ["Actions"]
       15 MOVE                             R13 R6
       16 NAMECALL                         R10 R1 K7 ["getText"]
       18 CALL                             R10 3 1
       19 SETTABLEKS                       R10 R8 K2 ["text"]
       21 SETTABLEKS                       R9 R8 K3 ["defaultShortcut"]
       23 LOADB                            R10 0
       24 SETTABLEKS                       R10 R8 K4 ["allowBinding"]
       26 SETTABLE                         R8 R2 R6
       27 FORGLOOP                         R3 2 ; [-22]
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Undo", "Redo"}]
        2 LOADK                            R1 K3 ["Ctrl+Z"]
        3 SETTABLEKS                       R1 R0 K0 ["Undo"]
        5 LOADK                            R1 K4 ["Ctrl+Y"]
        6 SETTABLEKS                       R1 R0 K1 ["Redo"]
        8 DUPCLOSURE                       R1 K5 [PROTO_0]
        9 DUPCLOSURE                       R2 K6 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1
