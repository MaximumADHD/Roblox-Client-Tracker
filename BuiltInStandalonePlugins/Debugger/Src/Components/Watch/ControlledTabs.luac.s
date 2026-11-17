PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K8 [{"Tabs", "SelectedTab", "OnTabSelected", "LayoutOrder", "Size", "AutomaticSize"}]
        7 GETTABLEKS                       R5 R1 K2 ["Tabs"]
        9 SETTABLEKS                       R5 R4 K2 ["Tabs"]
       11 GETTABLEKS                       R5 R1 K9 ["selectedTab"]
       13 SETTABLEKS                       R5 R4 K3 ["SelectedTab"]
       15 GETTABLEKS                       R5 R1 K10 ["onTabSelected"]
       17 SETTABLEKS                       R5 R4 K4 ["OnTabSelected"]
       19 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       21 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       23 GETTABLEKS                       R5 R1 K6 ["Size"]
       25 SETTABLEKS                       R5 R4 K6 ["Size"]
       27 GETIMPORT                        R5 K13 [Enum.AutomaticSize.X]
       29 SETTABLEKS                       R5 R4 K7 ["AutomaticSize"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Watch"]
        2 GETTABLEKS                       R2 R2 K1 ["currentTab"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Variables"]
        7 JUMPIFNOTEQ                      R2 R4 ; [+5]
        9 GETTABLEKS                       R4 R1 K3 ["Tabs"]
       11 GETTABLEN                        R3 R4 1
       12 JUMPIF                           R3 ; [+3]
       13 GETTABLEKS                       R4 R1 K3 ["Tabs"]
       15 GETTABLEN                        R3 R4 2
       16 DUPTABLE                         R4 K5 [{"selectedTab"}]
       17 SETTABLEKS                       R3 R4 K4 ["selectedTab"]
       19 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Key"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"onTabSelected"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onTabSelected"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["UI"]
       34 GETTABLEKS                       R5 R4 K10 ["Tabs"]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Models"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R6 K13 ["Watch"]
       44 GETTABLEKS                       R8 R8 K14 ["TableTab"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Actions"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R8 K13 ["Watch"]
       55 GETTABLEKS                       R10 R10 K16 ["SetTab"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       60 LOADK                            R12 K10 ["Tabs"]
       61 NAMECALL                         R10 R10 K18 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K19 [PROTO_0]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R11 R10 K20 ["render"]
       69 GETTABLEKS                       R11 R2 K21 ["connect"]
       71 DUPCLOSURE                       R12 K22 [PROTO_1]
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R13 K23 [PROTO_3]
       74 CAPTURE                          VAL R9
       75 CALL                             R11 2 1
       76 MOVE                             R12 R10
       77 CALL                             R11 1 1
       78 MOVE                             R10 R11
       79 RETURN                           R10 1
