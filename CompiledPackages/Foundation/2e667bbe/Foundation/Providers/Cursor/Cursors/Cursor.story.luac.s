PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"BackgroundTransparency", "Size"}]
        5 LOADN                            R4 1
        6 SETTABLEKS                       R4 R3 K2 ["BackgroundTransparency"]
        8 GETIMPORT                        R4 K7 [UDim2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 100
       12 LOADN                            R7 0
       13 LOADN                            R8 50
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K3 ["Size"]
       17 DUPTABLE                         R4 K8 [{"Frame"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 LOADK                            R6 K1 ["Frame"]
       22 DUPTABLE                         R7 K10 [{"BackgroundTransparency", "Size", "Position"}]
       23 LOADN                            R8 1
       24 SETTABLEKS                       R8 R7 K2 ["BackgroundTransparency"]
       26 GETIMPORT                        R8 K7 [UDim2.new]
       28 LOADN                            R9 1
       29 LOADN                            R10 236
       30 LOADN                            R11 1
       31 LOADN                            R12 236
       32 CALL                             R8 4 1
       33 SETTABLEKS                       R8 R7 K3 ["Size"]
       35 GETIMPORT                        R8 K7 [UDim2.new]
       37 LOADN                            R9 0
       38 LOADN                            R10 10
       39 LOADN                            R11 0
       40 LOADN                            R12 10
       41 CALL                             R8 4 1
       42 SETTABLEKS                       R8 R7 K9 ["Position"]
       44 DUPTABLE                         R8 K12 [{"Cursor"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K0 ["createElement"]
       48 GETUPVAL                         R10 1
       49 DUPTABLE                         R11 K15 [{"cursorType", "isVisible"}]
       50 SETTABLEKS                       R0 R11 K13 ["cursorType"]
       52 LOADB                            R12 1
       53 SETTABLEKS                       R12 R11 K14 ["isVisible"]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K11 ["Cursor"]
       58 CALL                             R5 3 1
       59 SETTABLEKS                       R5 R4 K1 ["Frame"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1

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
       20 GETTABLEKS                       R4 R5 K8 ["Cursor"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Enums"]
       27 GETTABLEKS                       R5 R6 K10 ["CursorType"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R6 0 0
       35 MOVE                             R7 R4
       36 LOADNIL                          R8
       37 LOADNIL                          R9
       38 FORGPREP                         R7
       39 MOVE                             R12 R5
       40 MOVE                             R13 R11
       41 CALL                             R12 1 1
       42 SETTABLE                         R12 R6 R11
       43 FORGLOOP                         R7 2 ; [-5]
       45 DUPTABLE                         R7 K14 [{"summary", "stories"}]
       46 LOADK                            R8 K15 ["Selection cursors for different types of UI elements"]
       47 SETTABLEKS                       R8 R7 K12 ["summary"]
       49 SETTABLEKS                       R6 R7 K13 ["stories"]
       51 RETURN                           R7 1
