PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
        7 GETIMPORT                        R5 K9 [UDim2.fromOffset]
        9 LOADN                            R6 100
       10 LOADN                            R7 50
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K5 ["Size"]
       14 DUPTABLE                         R5 K10 [{"Frame"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["createElement"]
       18 LOADK                            R7 K2 ["Frame"]
       19 DUPTABLE                         R8 K12 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
       20 GETIMPORT                        R9 K14 [UDim2.new]
       22 LOADN                            R10 1
       23 LOADN                            R11 -20
       24 LOADN                            R12 1
       25 LOADN                            R13 -20
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K5 ["Size"]
       29 GETIMPORT                        R9 K9 [UDim2.fromOffset]
       31 LOADN                            R10 10
       32 LOADN                            R11 10
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K11 ["Position"]
       36 DUPTABLE                         R9 K16 [{"Cursor"}]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K1 ["createElement"]
       40 GETUPVAL                         R11 1
       41 DUPTABLE                         R12 K22 [{["cornerRadius"], ["offset"], ["borderWidth"], ["isVisible"] = True}]
       42 GETIMPORT                        R13 K24 [UDim.new]
       44 LOADN                            R14 0
       45 GETTABLEKS                       R15 R1 K17 ["cornerRadius"]
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K17 ["cornerRadius"]
       50 GETTABLEKS                       R13 R1 K18 ["offset"]
       52 SETTABLEKS                       R13 R12 K18 ["offset"]
       54 GETTABLEKS                       R13 R1 K19 ["borderWidth"]
       56 SETTABLEKS                       R13 R12 K19 ["borderWidth"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K15 ["Cursor"]
       61 CALL                             R6 3 1
       62 SETTABLEKS                       R6 R5 K2 ["Frame"]
       64 CALL                             R2 3 -1
       65 RETURN                           R2 -1

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
