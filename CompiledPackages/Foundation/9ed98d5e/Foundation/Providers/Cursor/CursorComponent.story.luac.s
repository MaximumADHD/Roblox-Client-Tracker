PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K5 [{"BackgroundTransparency", "Size"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["BackgroundTransparency"]
       10 GETIMPORT                        R5 K8 [UDim2.fromOffset]
       12 LOADN                            R6 100
       13 LOADN                            R7 50
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 DUPTABLE                         R5 K9 [{"Frame"}]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K1 ["createElement"]
       21 LOADK                            R7 K2 ["Frame"]
       22 DUPTABLE                         R8 K11 [{"BackgroundTransparency", "Size", "Position"}]
       23 LOADN                            R9 1
       24 SETTABLEKS                       R9 R8 K3 ["BackgroundTransparency"]
       26 GETIMPORT                        R9 K13 [UDim2.new]
       28 LOADN                            R10 1
       29 LOADN                            R11 236
       30 LOADN                            R12 1
       31 LOADN                            R13 236
       32 CALL                             R9 4 1
       33 SETTABLEKS                       R9 R8 K4 ["Size"]
       35 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       37 LOADN                            R10 10
       38 LOADN                            R11 10
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K10 ["Position"]
       42 DUPTABLE                         R9 K15 [{"Cursor"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K1 ["createElement"]
       46 GETUPVAL                         R11 1
       47 DUPTABLE                         R12 K21 [{"cornerRadius", "offset", "borderWidth", "isVisible", "colorMode"}]
       48 GETIMPORT                        R13 K23 [UDim.new]
       50 LOADN                            R14 0
       51 GETTABLEKS                       R15 R1 K16 ["cornerRadius"]
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K16 ["cornerRadius"]
       56 GETTABLEKS                       R13 R1 K17 ["offset"]
       58 SETTABLEKS                       R13 R12 K17 ["offset"]
       60 GETTABLEKS                       R13 R1 K18 ["borderWidth"]
       62 SETTABLEKS                       R13 R12 K18 ["borderWidth"]
       64 LOADB                            R13 1
       65 SETTABLEKS                       R13 R12 K19 ["isVisible"]
       67 GETTABLEKS                       R13 R1 K20 ["colorMode"]
       69 SETTABLEKS                       R13 R12 K20 ["colorMode"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K14 ["Cursor"]
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K2 ["Frame"]
       77 CALL                             R2 3 -1
       78 RETURN                           R2 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["ColorMode"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K11 ["CursorComponent"]
       34 CALL                             R5 1 1
       35 DUPTABLE                         R6 K15 [{"summary", "story", "controls"}]
       36 LOADK                            R7 K16 ["Selection cursors for different types of UI elements"]
       37 SETTABLEKS                       R7 R6 K12 ["summary"]
       39 DUPCLOSURE                       R7 K17 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R7 R6 K13 ["story"]
       44 DUPTABLE                         R7 K22 [{"cornerRadius", "offset", "borderWidth", "colorMode"}]
       45 LOADN                            R8 8
       46 SETTABLEKS                       R8 R7 K18 ["cornerRadius"]
       48 LOADN                            R8 3
       49 SETTABLEKS                       R8 R7 K19 ["offset"]
       51 LOADN                            R8 2
       52 SETTABLEKS                       R8 R7 K20 ["borderWidth"]
       54 GETTABLEKS                       R8 R2 K23 ["values"]
       56 MOVE                             R9 R4
       57 CALL                             R8 1 1
       58 SETTABLEKS                       R8 R7 K21 ["colorMode"]
       60 SETTABLEKS                       R7 R6 K14 ["controls"]
       62 RETURN                           R6 1
