PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["BackgroundTransparency"] = 1, ["Size"]}]
        5 GETIMPORT                        R4 K8 [UDim2.fromOffset]
        7 LOADN                            R5 100
        8 LOADN                            R6 50
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K4 ["Size"]
       12 DUPTABLE                         R4 K9 [{"Frame"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 LOADK                            R6 K1 ["Frame"]
       17 DUPTABLE                         R7 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
       18 GETIMPORT                        R8 K13 [UDim2.new]
       20 LOADN                            R9 1
       21 LOADN                            R10 -20
       22 LOADN                            R11 1
       23 LOADN                            R12 -20
       24 CALL                             R8 4 1
       25 SETTABLEKS                       R8 R7 K4 ["Size"]
       27 GETIMPORT                        R8 K8 [UDim2.fromOffset]
       29 LOADN                            R9 10
       30 LOADN                            R10 10
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K10 ["Position"]
       34 DUPTABLE                         R8 K15 [{"Cursor"}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K0 ["createElement"]
       38 GETUPVAL                         R10 1
       39 DUPTABLE                         R11 K19 [{["cursorType"], ["isVisible"] = True}]
       40 SETTABLEKS                       R0 R11 K16 ["cursorType"]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K14 ["Cursor"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K1 ["Frame"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["Cursor"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Enums"]
       27 GETTABLEKS                       R5 R5 K10 ["CursorType"]
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
       45 DUPTABLE                         R7 K15 [{["summary"] = "Selection cursors for different types of UI elements", ["stories"]}]
       46 SETTABLEKS                       R6 R7 K14 ["stories"]
       48 RETURN                           R7 1
