PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Tag"]
       13 LOADK                            R5 K3 ["X-RowM X-FitX X-Middle X-Stroke LabelCell"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K6 [{"Label", "Cell"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 NEWTABLE                         R7 4 0
       22 LOADN                            R8 1
       23 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       25 GETTABLEKS                       R8 R0 K7 ["Text"]
       27 SETTABLEKS                       R8 R7 K7 ["Text"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K2 ["Tag"]
       32 LOADK                            R9 K8 ["X-Fit"]
       33 SETTABLE                         R9 R7 R8
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K4 ["Label"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["createElement"]
       40 GETUPVAL                         R6 3
       41 DUPTABLE                         R7 K16 [{["LayoutOrder"] = 2, ["Size"], ["Disabled"], ["Schema"], ["Value"], ["OnChanged"], ["Renderers"]}]
       42 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       44 LOADN                            R9 100
       45 LOADN                            R10 30
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K10 ["Size"]
       49 GETTABLEKS                       R8 R0 K11 ["Disabled"]
       51 SETTABLEKS                       R8 R7 K11 ["Disabled"]
       53 GETTABLEKS                       R8 R0 K12 ["Schema"]
       55 SETTABLEKS                       R8 R7 K12 ["Schema"]
       57 GETTABLEKS                       R8 R0 K13 ["Value"]
       59 SETTABLEKS                       R8 R7 K13 ["Value"]
       61 GETTABLEKS                       R8 R0 K14 ["OnChanged"]
       63 SETTABLEKS                       R8 R7 K14 ["OnChanged"]
       65 DUPTABLE                         R8 K21 [{"Color"}]
       66 GETTABLEKS                       R9 R0 K22 ["Renderer"]
       68 SETTABLEKS                       R9 R8 K20 ["Color"]
       70 SETTABLEKS                       R8 R7 K15 ["Renderers"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K5 ["Cell"]
       75 CALL                             R1 3 -1
       76 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["UI"]
       27 GETTABLEKS                       R3 R3 K9 ["TextLabel"]
       29 GETTABLEKS                       R4 R2 K8 ["UI"]
       31 GETTABLEKS                       R4 R4 K10 ["PropertyCell"]
       33 GETTABLEKS                       R5 R2 K8 ["UI"]
       35 GETTABLEKS                       R5 R5 K11 ["Pane"]
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
