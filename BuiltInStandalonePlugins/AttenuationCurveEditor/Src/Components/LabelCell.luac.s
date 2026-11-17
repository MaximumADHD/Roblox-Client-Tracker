PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 JUMPIFEQKNIL                     R2 ; [+41]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 NEWTABLE                         R4 8 0
       11 LOADN                            R5 2
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       16 LOADN                            R6 100
       17 LOADN                            R7 30
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K6 ["Size"]
       21 GETTABLEKS                       R5 R0 K7 ["Disabled"]
       23 SETTABLEKS                       R5 R4 K7 ["Disabled"]
       25 GETTABLEKS                       R5 R0 K8 ["Schema"]
       27 SETTABLEKS                       R5 R4 K8 ["Schema"]
       29 GETTABLEKS                       R5 R0 K0 ["Value"]
       31 SETTABLEKS                       R5 R4 K0 ["Value"]
       33 GETTABLEKS                       R5 R0 K9 ["OnChanged"]
       35 SETTABLEKS                       R5 R4 K9 ["OnChanged"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K10 ["Tag"]
       40 LOADK                            R6 K11 ["X-Stroke"]
       41 SETTABLE                         R6 R4 R5
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 JUMP                             ; [+14]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K1 ["createElement"]
       48 GETUPVAL                         R3 2
       49 DUPTABLE                         R4 K13 [{["LayoutOrder"] = 2, ["Size"]}]
       50 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       52 LOADN                            R6 100
       53 LOADN                            R7 30
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K6 ["Size"]
       57 CALL                             R2 2 1
       58 MOVE                             R1 R2
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K1 ["createElement"]
       62 GETUPVAL                         R3 2
       63 NEWTABLE                         R4 2 0
       65 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       67 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K10 ["Tag"]
       72 LOADK                            R6 K14 ["X-RowM X-FitX X-Middle LabelCell"]
       73 SETTABLE                         R6 R4 R5
       74 DUPTABLE                         R5 K17 [{"Label", "Cell"}]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K1 ["createElement"]
       78 GETUPVAL                         R7 3
       79 NEWTABLE                         R8 4 0
       81 LOADN                            R9 1
       82 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       84 GETTABLEKS                       R9 R0 K18 ["Text"]
       86 SETTABLEKS                       R9 R8 K18 ["Text"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K10 ["Tag"]
       91 LOADK                            R10 K19 ["X-Fit"]
       92 SETTABLE                         R10 R8 R9
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K15 ["Label"]
       96 SETTABLEKS                       R1 R5 K16 ["Cell"]
       98 CALL                             R2 3 -1
       99 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
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
