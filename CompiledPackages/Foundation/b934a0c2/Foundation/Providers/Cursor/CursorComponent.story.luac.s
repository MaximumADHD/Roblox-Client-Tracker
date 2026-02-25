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
       47 DUPTABLE                         R12 K20 [{"cornerRadius", "offset", "borderWidth", "isVisible"}]
       48 GETIMPORT                        R13 K22 [UDim.new]
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
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K14 ["Cursor"]
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K2 ["Frame"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["CursorComponent"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{"summary", "story", "controls"}]
       24 LOADK                            R5 K13 ["Selection cursors for different types of UI elements"]
       25 SETTABLEKS                       R5 R4 K9 ["summary"]
       27 DUPCLOSURE                       R5 K14 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K10 ["story"]
       32 DUPTABLE                         R5 K18 [{"cornerRadius", "offset", "borderWidth"}]
       33 LOADN                            R6 8
       34 SETTABLEKS                       R6 R5 K15 ["cornerRadius"]
       36 LOADN                            R6 3
       37 SETTABLEKS                       R6 R5 K16 ["offset"]
       39 LOADN                            R6 2
       40 SETTABLEKS                       R6 R5 K17 ["borderWidth"]
       42 SETTABLEKS                       R5 R4 K11 ["controls"]
       44 RETURN                           R4 1
