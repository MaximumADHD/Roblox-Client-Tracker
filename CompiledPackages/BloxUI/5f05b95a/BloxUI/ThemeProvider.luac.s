PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+3]
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 LOADK                            R2 K3 ["Dark"]
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K2 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+3]
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R3
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 ["Dark"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R0 R0 K4 ["Connect"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["createSignal"]
        2 DUPCLOSURE                       R4 K1 [PROTO_0]
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R3 K3 [pcall]
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+3]
        8 JUMPIFNOT                        R4 ; [+2]
        9 MOVE                             R2 R4
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K4 ["Dark"]
       12 CALL                             R1 1 2
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R3 K3 [pcall]
       18 CALL                             R3 1 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createProvider"]
       16 LOADK                            R4 K9 ["Dark"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K10 [PROTO_1]
       19 DUPCLOSURE                       R5 K11 [PROTO_4]
       20 DUPTABLE                         R6 K14 [{"token", "connectStudioTheme"}]
       21 SETTABLEKS                       R3 R6 K12 ["token"]
       23 SETTABLEKS                       R5 R6 K13 ["connectStudioTheme"]
       25 RETURN                           R6 1
