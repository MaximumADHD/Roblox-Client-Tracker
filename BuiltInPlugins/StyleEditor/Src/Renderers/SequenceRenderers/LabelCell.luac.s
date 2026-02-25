PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Tag"]
       13 LOADK                            R5 K3 ["X-RowM X-FitX X-Middle X-Stroke LabelCell"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K6 [{"Label", "Cell"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 NEWTABLE                         R7 4 0
       22 LOADN                            R8 1
       23 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       25 GETTABLEKS                       R8 R0 K7 ["Text"]
       27 SETTABLEKS                       R8 R7 K7 ["Text"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K2 ["Tag"]
       32 LOADK                            R9 K8 ["X-Fit"]
       33 SETTABLE                         R9 R7 R8
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K4 ["Label"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K0 ["createElement"]
       40 GETUPVAL                         R6 3
       41 DUPTABLE                         R7 K15 [{"LayoutOrder", "Size", "Disabled", "Schema", "Value", "OnChanged", "Renderers"}]
       42 LOADN                            R8 2
       43 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       45 GETIMPORT                        R8 K18 [UDim2.fromOffset]
       47 LOADN                            R9 100
       48 LOADN                            R10 30
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K9 ["Size"]
       52 GETTABLEKS                       R8 R0 K10 ["Disabled"]
       54 SETTABLEKS                       R8 R7 K10 ["Disabled"]
       56 GETTABLEKS                       R8 R0 K11 ["Schema"]
       58 SETTABLEKS                       R8 R7 K11 ["Schema"]
       60 GETTABLEKS                       R8 R0 K12 ["Value"]
       62 SETTABLEKS                       R8 R7 K12 ["Value"]
       64 GETTABLEKS                       R8 R0 K13 ["OnChanged"]
       66 SETTABLEKS                       R8 R7 K13 ["OnChanged"]
       68 DUPTABLE                         R8 K20 [{"Color"}]
       69 GETTABLEKS                       R9 R0 K21 ["Renderer"]
       71 SETTABLEKS                       R9 R8 K19 ["Color"]
       73 SETTABLEKS                       R8 R7 K14 ["Renderers"]
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K5 ["Cell"]
       78 CALL                             R1 3 -1
       79 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R2 K8 ["UI"]
       27 GETTABLEKS                       R3 R4 K9 ["TextLabel"]
       29 GETTABLEKS                       R5 R2 K8 ["UI"]
       31 GETTABLEKS                       R4 R5 K10 ["PropertyCell"]
       33 GETTABLEKS                       R6 R2 K8 ["UI"]
       35 GETTABLEKS                       R5 R6 K11 ["Pane"]
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
