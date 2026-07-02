PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
        7 GETIMPORT                        R5 K9 [UDim2.new]
        9 LOADN                            R6 0
       10 LOADN                            R7 100
       11 LOADN                            R8 0
       12 LOADN                            R9 50
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K5 ["Size"]
       16 DUPTABLE                         R5 K10 [{"Frame"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["createElement"]
       20 LOADK                            R7 K2 ["Frame"]
       21 DUPTABLE                         R8 K12 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
       22 GETIMPORT                        R9 K9 [UDim2.new]
       24 LOADN                            R10 1
       25 LOADN                            R11 -20
       26 LOADN                            R12 1
       27 LOADN                            R13 -20
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K5 ["Size"]
       31 GETIMPORT                        R9 K9 [UDim2.new]
       33 LOADN                            R10 0
       34 LOADN                            R11 10
       35 LOADN                            R12 0
       36 LOADN                            R13 10
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K11 ["Position"]
       40 DUPTABLE                         R9 K14 [{"Cursor"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K1 ["createElement"]
       44 GETUPVAL                         R11 1
       45 DUPTABLE                         R12 K20 [{["cornerRadius"], ["offset"], ["borderWidth"], ["isVisible"] = True}]
       46 GETIMPORT                        R13 K22 [UDim.new]
       48 LOADN                            R14 0
       49 GETTABLEKS                       R15 R1 K15 ["cornerRadius"]
       51 CALL                             R13 2 1
       52 SETTABLEKS                       R13 R12 K15 ["cornerRadius"]
       54 GETTABLEKS                       R13 R1 K16 ["offset"]
       56 SETTABLEKS                       R13 R12 K16 ["offset"]
       58 GETTABLEKS                       R13 R1 K17 ["borderWidth"]
       60 SETTABLEKS                       R13 R12 K17 ["borderWidth"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K13 ["Cursor"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R5 K2 ["Frame"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1

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
       20 GETTABLEKS                       R4 R4 K8 ["CursorComponent"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K13 [{["summary"] = "Selection cursors for different types of UI elements", ["story"], ["controls"]}]
       24 DUPCLOSURE                       R5 K14 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K11 ["story"]
       29 DUPTABLE                         R5 K21 [{["cornerRadius"] = 8, ["offset"] = 3, ["borderWidth"] = 2}]
       30 SETTABLEKS                       R5 R4 K12 ["controls"]
       32 RETURN                           R4 1
