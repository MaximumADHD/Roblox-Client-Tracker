PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 JUMPIFEQKNIL                     R2 ; [+32]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K8 [{["LayoutOrder"] = 2, ["Size"], ["Disabled"], ["Schema"], [5], ["OnChanged"]}]
       10 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       12 LOADN                            R6 150
       13 LOADN                            R7 30
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 GETTABLEKS                       R5 R0 K5 ["Disabled"]
       19 SETTABLEKS                       R5 R4 K5 ["Disabled"]
       21 GETTABLEKS                       R5 R0 K6 ["Schema"]
       23 SETTABLEKS                       R5 R4 K6 ["Schema"]
       25 GETTABLEKS                       R5 R0 K0 ["Value"]
       27 SETTABLEKS                       R5 R4 K0 ["Value"]
       29 GETTABLEKS                       R5 R0 K7 ["OnChanged"]
       31 SETTABLEKS                       R5 R4 K7 ["OnChanged"]
       33 CALL                             R2 2 1
       34 MOVE                             R1 R2
       35 JUMP                             ; [+14]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["createElement"]
       39 GETUPVAL                         R3 2
       40 DUPTABLE                         R4 K12 [{["LayoutOrder"] = 2, ["Size"]}]
       41 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       43 LOADN                            R6 150
       44 LOADN                            R7 30
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K4 ["Size"]
       48 CALL                             R2 2 1
       49 MOVE                             R1 R2
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K1 ["createElement"]
       53 GETUPVAL                         R3 2
       54 NEWTABLE                         R4 2 0
       56 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       58 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K13 ["Tag"]
       63 LOADK                            R6 K14 ["X-RowM X-FitX X-Middle X-Stroke LabelCell"]
       64 SETTABLE                         R6 R4 R5
       65 DUPTABLE                         R5 K17 [{"Label", "Cell"}]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K1 ["createElement"]
       69 GETUPVAL                         R7 3
       70 NEWTABLE                         R8 4 0
       72 LOADN                            R9 1
       73 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       75 GETTABLEKS                       R9 R0 K18 ["Text"]
       77 SETTABLEKS                       R9 R8 K18 ["Text"]
       79 GETIMPORT                        R9 K20 [UDim2.fromScale]
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K4 ["Size"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K13 ["Tag"]
       89 LOADK                            R10 K21 ["X-Fit"]
       90 SETTABLE                         R10 R8 R9
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K15 ["Label"]
       94 SETTABLEKS                       R1 R5 K16 ["Cell"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["TextLabel"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["PropertyCell"]
       29 GETTABLEKS                       R5 R2 K9 ["UI"]
       31 GETTABLEKS                       R5 R5 K12 ["Pane"]
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 RETURN                           R6 1
