PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K10 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 1, ["TextSize"] = 16, ["Text"], ["TextXAlignment"], ["TextColor3"]}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["Font"]
        8 SETTABLEKS                       R3 R2 K3 ["Font"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K7 ["Text"]
       13 GETIMPORT                        R3 K13 [Enum.TextXAlignment.Left]
       15 SETTABLEKS                       R3 R2 K8 ["TextXAlignment"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K14 ["TextColor"]
       20 SETTABLEKS                       R3 R2 K9 ["TextColor3"]
       22 CALL                             R0 2 -1
       23 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["description"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["LayoutOrder"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["title"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["titleWidth"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Stylizer"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K8 [{"LayoutOrder", "renderContent", "title", "titleWidth"}]
       25 SETTABLEKS                       R2 R8 K2 ["LayoutOrder"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R9 R8 K7 ["renderContent"]
       34 SETTABLEKS                       R3 R8 K3 ["title"]
       36 SETTABLEKS                       R4 R8 K4 ["titleWidth"]
       38 CALL                             R6 2 -1
       39 RETURN                           R6 -1

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
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Packages"]
       31 GETTABLEKS                       R4 R4 K10 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R3 R3 K11 ["ContextServices"]
       36 GETTABLEKS                       R4 R3 K12 ["withContext"]
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K7 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Components"]
       44 GETTABLEKS                       R6 R6 K14 ["PluginDetails"]
       46 GETTABLEKS                       R6 R6 K15 ["ListItem"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K7 ["Src"]
       53 GETTABLEKS                       R7 R7 K13 ["Components"]
       55 GETTABLEKS                       R7 R7 K16 ["FluidFitTextLabel"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R1 K17 ["Component"]
       60 LOADK                            R9 K18 ["ListTextItem"]
       61 NAMECALL                         R7 R7 K19 ["extend"]
       63 CALL                             R7 2 1
       64 DUPTABLE                         R8 K24 [{["description"] = "", ["title"] = "", ["titleWidth"]}]
       65 GETTABLEKS                       R9 R2 K25 ["LIST_ITEM_TITLE_WIDTH"]
       67 SETTABLEKS                       R9 R8 K23 ["titleWidth"]
       69 SETTABLEKS                       R8 R7 K26 ["defaultProps"]
       71 DUPCLOSURE                       R8 K27 [PROTO_1]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R8 R7 K28 ["render"]
       77 MOVE                             R8 R4
       78 DUPTABLE                         R9 K30 [{"Stylizer"}]
       79 GETTABLEKS                       R10 R3 K29 ["Stylizer"]
       81 SETTABLEKS                       R10 R9 K29 ["Stylizer"]
       83 CALL                             R8 1 1
       84 MOVE                             R9 R7
       85 CALL                             R8 1 1
       86 MOVE                             R7 R8
       87 RETURN                           R7 1
