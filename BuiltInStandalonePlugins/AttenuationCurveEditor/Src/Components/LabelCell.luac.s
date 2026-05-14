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
       44 JUMP                             ; [+17]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K1 ["createElement"]
       48 GETUPVAL                         R3 2
       49 DUPTABLE                         R4 K12 [{"LayoutOrder", "Size"}]
       50 LOADN                            R5 2
       51 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       53 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       55 LOADN                            R6 100
       56 LOADN                            R7 30
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K6 ["Size"]
       60 CALL                             R2 2 1
       61 MOVE                             R1 R2
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K1 ["createElement"]
       65 GETUPVAL                         R3 2
       66 NEWTABLE                         R4 2 0
       68 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       70 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R5 R5 K10 ["Tag"]
       75 LOADK                            R6 K13 ["X-RowM X-FitX X-Middle LabelCell"]
       76 SETTABLE                         R6 R4 R5
       77 DUPTABLE                         R5 K16 [{"Label", "Cell"}]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K1 ["createElement"]
       81 GETUPVAL                         R7 3
       82 NEWTABLE                         R8 4 0
       84 LOADN                            R9 1
       85 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       87 GETTABLEKS                       R9 R0 K17 ["Text"]
       89 SETTABLEKS                       R9 R8 K17 ["Text"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K10 ["Tag"]
       94 LOADK                            R10 K18 ["X-Fit"]
       95 SETTABLE                         R10 R8 R9
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K14 ["Label"]
       99 SETTABLEKS                       R1 R5 K15 ["Cell"]
      101 CALL                             R2 3 -1
      102 RETURN                           R2 -1

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
