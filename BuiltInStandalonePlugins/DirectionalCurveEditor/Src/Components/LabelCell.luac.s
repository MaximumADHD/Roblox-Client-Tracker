PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 JUMPIFEQKNIL                     R2 ; [+35]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K7 [{"LayoutOrder", "Size", "Disabled", "Schema", "Value", "OnChanged"}]
       10 LOADN                            R5 2
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 GETIMPORT                        R5 K10 [UDim2.fromOffset]
       15 LOADN                            R6 150
       16 LOADN                            R7 30
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K3 ["Size"]
       20 GETTABLEKS                       R5 R0 K4 ["Disabled"]
       22 SETTABLEKS                       R5 R4 K4 ["Disabled"]
       24 GETTABLEKS                       R5 R0 K5 ["Schema"]
       26 SETTABLEKS                       R5 R4 K5 ["Schema"]
       28 GETTABLEKS                       R5 R0 K0 ["Value"]
       30 SETTABLEKS                       R5 R4 K0 ["Value"]
       32 GETTABLEKS                       R5 R0 K6 ["OnChanged"]
       34 SETTABLEKS                       R5 R4 K6 ["OnChanged"]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 JUMP                             ; [+17]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K1 ["createElement"]
       42 GETUPVAL                         R3 2
       43 DUPTABLE                         R4 K11 [{"LayoutOrder", "Size"}]
       44 LOADN                            R5 2
       45 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       47 GETIMPORT                        R5 K10 [UDim2.fromOffset]
       49 LOADN                            R6 150
       50 LOADN                            R7 30
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K3 ["Size"]
       54 CALL                             R2 2 1
       55 MOVE                             R1 R2
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K1 ["createElement"]
       59 GETUPVAL                         R3 2
       60 NEWTABLE                         R4 2 0
       62 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       64 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K12 ["Tag"]
       69 LOADK                            R6 K13 ["X-RowM X-FitX X-Middle X-Stroke LabelCell"]
       70 SETTABLE                         R6 R4 R5
       71 DUPTABLE                         R5 K16 [{"Label", "Cell"}]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K1 ["createElement"]
       75 GETUPVAL                         R7 3
       76 NEWTABLE                         R8 4 0
       78 LOADN                            R9 1
       79 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       81 GETTABLEKS                       R9 R0 K17 ["Text"]
       83 SETTABLEKS                       R9 R8 K17 ["Text"]
       85 GETIMPORT                        R9 K19 [UDim2.fromScale]
       87 LOADN                            R10 0
       88 LOADN                            R11 0
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K3 ["Size"]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K12 ["Tag"]
       95 LOADK                            R10 K20 ["X-Fit"]
       96 SETTABLE                         R10 R8 R9
       97 CALL                             R6 2 1
       98 SETTABLEKS                       R6 R5 K14 ["Label"]
      100 SETTABLEKS                       R1 R5 K15 ["Cell"]
      102 CALL                             R2 3 -1
      103 RETURN                           R2 -1

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
