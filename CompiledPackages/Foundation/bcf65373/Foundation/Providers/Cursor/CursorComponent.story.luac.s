PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K5 [{"BackgroundTransparency", "Size"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["BackgroundTransparency"]
       10 GETIMPORT                        R5 K8 [UDim2.new]
       12 LOADN                            R6 0
       13 LOADN                            R7 100
       14 LOADN                            R8 0
       15 LOADN                            R9 50
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K4 ["Size"]
       19 DUPTABLE                         R5 K9 [{"Frame"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K1 ["createElement"]
       23 LOADK                            R7 K2 ["Frame"]
       24 DUPTABLE                         R8 K11 [{"BackgroundTransparency", "Size", "Position"}]
       25 LOADN                            R9 1
       26 SETTABLEKS                       R9 R8 K3 ["BackgroundTransparency"]
       28 GETIMPORT                        R9 K8 [UDim2.new]
       30 LOADN                            R10 1
       31 LOADN                            R11 236
       32 LOADN                            R12 1
       33 LOADN                            R13 236
       34 CALL                             R9 4 1
       35 SETTABLEKS                       R9 R8 K4 ["Size"]
       37 GETIMPORT                        R9 K8 [UDim2.new]
       39 LOADN                            R10 0
       40 LOADN                            R11 10
       41 LOADN                            R12 0
       42 LOADN                            R13 10
       43 CALL                             R9 4 1
       44 SETTABLEKS                       R9 R8 K10 ["Position"]
       46 DUPTABLE                         R9 K13 [{"Cursor"}]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K1 ["createElement"]
       50 GETUPVAL                         R11 1
       51 DUPTABLE                         R12 K18 [{"cornerRadius", "offset", "borderWidth", "isVisible"}]
       52 GETIMPORT                        R13 K20 [UDim.new]
       54 LOADN                            R14 0
       55 GETTABLEKS                       R15 R1 K14 ["cornerRadius"]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K14 ["cornerRadius"]
       60 GETTABLEKS                       R13 R1 K15 ["offset"]
       62 SETTABLEKS                       R13 R12 K15 ["offset"]
       64 GETTABLEKS                       R13 R1 K16 ["borderWidth"]
       66 SETTABLEKS                       R13 R12 K16 ["borderWidth"]
       68 LOADB                            R13 1
       69 SETTABLEKS                       R13 R12 K17 ["isVisible"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K12 ["Cursor"]
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
