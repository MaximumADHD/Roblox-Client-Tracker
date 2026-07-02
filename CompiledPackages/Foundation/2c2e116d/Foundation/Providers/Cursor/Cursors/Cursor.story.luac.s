PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 DUPTABLE                         R4 K5 [{["BackgroundTransparency"] = 1, ["Size"]}]
        5 GETIMPORT                        R5 K8 [UDim2.fromOffset]
        7 LOADN                            R6 100
        8 LOADN                            R7 50
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K4 ["Size"]
       12 DUPTABLE                         R5 K9 [{"Frame"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K0 ["createElement"]
       16 LOADK                            R7 K1 ["Frame"]
       17 DUPTABLE                         R8 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
       18 GETIMPORT                        R9 K13 [UDim2.new]
       20 LOADN                            R10 1
       21 LOADN                            R11 -20
       22 LOADN                            R12 1
       23 LOADN                            R13 -20
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K4 ["Size"]
       27 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       29 LOADN                            R10 10
       30 LOADN                            R11 10
       31 CALL                             R9 2 1
       32 SETTABLEKS                       R9 R8 K10 ["Position"]
       34 DUPTABLE                         R9 K15 [{"Cursor"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K0 ["createElement"]
       38 GETUPVAL                         R11 1
       39 DUPTABLE                         R12 K20 [{["cursorType"], ["isVisible"] = True, ["colorMode"]}]
       40 SETTABLEKS                       R0 R12 K16 ["cursorType"]
       42 GETTABLEKS                       R13 R1 K21 ["controls"]
       44 GETTABLEKS                       R13 R13 K19 ["colorMode"]
       46 SETTABLEKS                       R13 R12 K19 ["colorMode"]
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K14 ["Cursor"]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K1 ["Frame"]
       54 CALL                             R2 3 -1
       55 RETURN                           R2 -1

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
       57 DUPTABLE                         R9 K18 [{["summary"] = "Selection cursors for different types of UI elements", ["stories"], ["controls"]}]
       58 SETTABLEKS                       R8 R9 K16 ["stories"]
       60 DUPTABLE                         R10 K20 [{"colorMode"}]
       61 GETTABLEKS                       R11 R2 K21 ["values"]
       63 MOVE                             R12 R6
       64 CALL                             R11 1 1
       65 SETTABLEKS                       R11 R10 K19 ["colorMode"]
       67 SETTABLEKS                       R10 R9 K17 ["controls"]
       69 RETURN                           R9 1
