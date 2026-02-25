PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R4 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R4 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["ComponentSymbols"]
       24 LOADK                            R7 K11 ["AlertDialog"]
       25 NAMECALL                         R5 R4 K12 ["add"]
       27 CALL                             R5 2 0
       28 NEWTABLE                         R5 1 0
       30 GETTABLEKS                       R6 R4 K11 ["AlertDialog"]
       32 DUPTABLE                         R7 K15 [{"PopupMessageSize", "TextSize"}]
       33 GETIMPORT                        R8 K18 [Vector2.new]
       35 LOADN                            R9 144
       36 LOADN                            R10 60
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K13 ["PopupMessageSize"]
       40 LOADN                            R8 18
       41 SETTABLEKS                       R8 R7 K14 ["TextSize"]
       43 SETTABLE                         R7 R5 R6
       44 DUPCLOSURE                       R6 K19 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
