PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 DUPTABLE                         R4 K4 [{"BackgroundTransparency", "Size"}]
        5 LOADN                            R5 1
        6 SETTABLEKS                       R5 R4 K2 ["BackgroundTransparency"]
        8 GETIMPORT                        R5 K7 [UDim2.fromOffset]
       10 LOADN                            R6 100
       11 LOADN                            R7 50
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K3 ["Size"]
       15 DUPTABLE                         R5 K8 [{"Frame"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["createElement"]
       19 LOADK                            R7 K1 ["Frame"]
       20 DUPTABLE                         R8 K10 [{"BackgroundTransparency", "Size", "Position"}]
       21 LOADN                            R9 1
       22 SETTABLEKS                       R9 R8 K2 ["BackgroundTransparency"]
       24 GETIMPORT                        R9 K12 [UDim2.new]
       26 LOADN                            R10 1
       27 LOADN                            R11 236
       28 LOADN                            R12 1
       29 LOADN                            R13 236
       30 CALL                             R9 4 1
       31 SETTABLEKS                       R9 R8 K3 ["Size"]
       33 GETIMPORT                        R9 K7 [UDim2.fromOffset]
       35 LOADN                            R10 10
       36 LOADN                            R11 10
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K9 ["Position"]
       40 DUPTABLE                         R9 K14 [{"Cursor"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K0 ["createElement"]
       44 GETUPVAL                         R11 1
       45 DUPTABLE                         R12 K18 [{"cursorType", "isVisible", "colorMode"}]
       46 SETTABLEKS                       R0 R12 K15 ["cursorType"]
       48 LOADB                            R13 1
       49 SETTABLEKS                       R13 R12 K16 ["isVisible"]
       51 GETTABLEKS                       R13 R1 K19 ["controls"]
       53 GETTABLEKS                       R13 R13 K17 ["colorMode"]
       55 SETTABLEKS                       R13 R12 K17 ["colorMode"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K13 ["Cursor"]
       60 CALL                             R6 3 1
       61 SETTABLEKS                       R6 R5 K1 ["Frame"]
       63 CALL                             R2 3 -1
       64 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["Cursor"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["CursorType"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K12 ["ColorMode"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K13 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 NEWTABLE                         R8 0 0
       47 MOVE                             R9 R5
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 FORGPREP                         R9
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R13
       54 SETTABLE                         R14 R8 R13
       55 FORGLOOP                         R9 2 ; [-5]
       57 DUPTABLE                         R9 K17 [{"summary", "stories", "controls"}]
       58 LOADK                            R10 K18 ["Selection cursors for different types of UI elements"]
       59 SETTABLEKS                       R10 R9 K14 ["summary"]
       61 SETTABLEKS                       R8 R9 K15 ["stories"]
       63 DUPTABLE                         R10 K20 [{"colorMode"}]
       64 GETTABLEKS                       R11 R2 K21 ["values"]
       66 MOVE                             R12 R6
       67 CALL                             R11 1 1
       68 SETTABLEKS                       R11 R10 K19 ["colorMode"]
       70 SETTABLEKS                       R10 R9 K16 ["controls"]
       72 RETURN                           R9 1
