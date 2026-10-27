PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+3]
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADK                            R2 K3 ["Dark"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+3]
        6 JUMPIFNOT                        R3 ; [+2]
        7 MOVE                             R1 R3
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K3 ["Dark"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

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
        2 GETIMPORT                        R3 K2 [pcall]
        4 DUPCLOSURE                       R4 K3 [PROTO_0]
        5 CALL                             R3 1 2
        6 JUMPIFNOT                        R3 ; [+3]
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R4
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K4 ["Dark"]
       11 CALL                             R1 1 2
       12 GETIMPORT                        R3 K2 [pcall]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R2
       16 CALL                             R3 1 0
       17 RETURN                           R1 1

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
