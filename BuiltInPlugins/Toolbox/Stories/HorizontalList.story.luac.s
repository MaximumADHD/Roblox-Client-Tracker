PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextLabel"]
        4 DUPTABLE                         R4 K5 [{"Size", "Text", "LayoutOrder"}]
        5 GETIMPORT                        R5 K8 [UDim2.new]
        7 LOADN                            R6 0
        8 LOADN                            R7 50
        9 LOADN                            R8 0
       10 LOADN                            R9 50
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K2 ["Size"]
       14 SETTABLEKS                       R1 R4 K3 ["Text"]
       16 SETTABLEKS                       R0 R4 K4 ["LayoutOrder"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
       12 GETIMPORT                        R7 K9 [UDim2.new]
       14 LOADN                            R8 0
       15 LOADN                            R9 600
       16 LOADN                            R10 0
       17 LOADN                            R11 60
       18 CALL                             R7 4 1
       19 SETTABLEKS                       R7 R6 K5 ["Size"]
       21 DUPTABLE                         R7 K11 [{"List"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K0 ["createElement"]
       25 GETUPVAL                         R9 2
       26 DUPTABLE                         R10 K16 [{["DefaultHeight"] = 50, ["Data"], ["OnRenderItem"]}]
       27 NEWTABLE                         R11 0 4
       29 LOADK                            R12 K17 ["This"]
       30 LOADK                            R13 K18 ["is"]
       31 LOADK                            R14 K19 ["a"]
       32 LOADK                            R15 K20 ["test"]
       33 SETLIST                          R11 R12 4 [1]
       35 SETTABLEKS                       R11 R10 K14 ["Data"]
       37 DUPCLOSURE                       R11 K21 [PROTO_0]
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R11 R10 K15 ["OnRenderItem"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K10 ["List"]
       44 CALL                             R4 3 1
       45 SETTABLEKS                       R4 R3 K1 ["Frame"]
       47 CALL                             R0 3 -1
       48 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Stories"]
       18 GETTABLEKS                       R3 R3 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Categorization"]
       29 GETTABLEKS                       R4 R4 K12 ["HorizontalList"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K17 [{["name"] = "HorizontalList", ["summary"] = "A generic horizontal list that sizes itself to the size of its content", ["story"]}]
       33 DUPCLOSURE                       R5 K18 [PROTO_1]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K16 ["story"]
       39 RETURN                           R4 1
