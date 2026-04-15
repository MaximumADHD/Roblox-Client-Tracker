PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K9 [{"LayoutOrder", "Text", "TextSize", "Font", "SplitBy"}]
       11 LOADN                            R7 2
       12 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R0 K10 ["controls"]
       16 GETTABLEKS                       R7 R8 K11 ["text"]
       18 SETTABLEKS                       R7 R6 K5 ["Text"]
       20 LOADN                            R7 18
       21 SETTABLEKS                       R7 R6 K6 ["TextSize"]
       23 GETIMPORT                        R7 K14 [Enum.Font.BuilderSans]
       25 SETTABLEKS                       R7 R6 K7 ["Font"]
       27 GETTABLEKS                       R8 R0 K10 ["controls"]
       29 GETTABLEKS                       R7 R8 K15 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K8 ["SplitBy"]
       33 CALL                             R5 1 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 SETTABLEKS                       R4 R3 K1 ["Elements"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K9 [{"LayoutOrder", "Text", "TextSize", "Font", "SplitBy"}]
       11 LOADN                            R7 2
       12 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       14 LOADK                            R7 K10 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
       15 SETTABLEKS                       R7 R6 K5 ["Text"]
       17 LOADN                            R7 18
       18 SETTABLEKS                       R7 R6 K6 ["TextSize"]
       20 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       22 SETTABLEKS                       R7 R6 K7 ["Font"]
       24 GETTABLEKS                       R8 R0 K14 ["controls"]
       26 GETTABLEKS                       R7 R8 K15 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K8 ["SplitBy"]
       30 CALL                             R5 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["Elements"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K9 [{"LayoutOrder", "Text", "TextSize", "Font", "SplitBy"}]
       11 LOADN                            R7 2
       12 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       14 LOADK                            R7 K10 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé"]
       15 SETTABLEKS                       R7 R6 K5 ["Text"]
       17 LOADN                            R7 16
       18 SETTABLEKS                       R7 R6 K6 ["TextSize"]
       20 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       22 SETTABLEKS                       R7 R6 K7 ["Font"]
       24 GETTABLEKS                       R8 R0 K14 ["controls"]
       26 GETTABLEKS                       R7 R8 K15 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K8 ["SplitBy"]
       30 CALL                             R5 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["Elements"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       11 LOADK                            R7 K9 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 LOADN                            R7 18
       15 SETTABLEKS                       R7 R6 K5 ["TextSize"]
       17 GETIMPORT                        R7 K12 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K6 ["Font"]
       21 GETTABLEKS                       R8 R0 K13 ["controls"]
       23 GETTABLEKS                       R7 R8 K14 ["splitBy"]
       25 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K3 ["new"]
       31 DUPTABLE                         R7 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       32 LOADK                            R8 K15 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. "]
       33 SETTABLEKS                       R8 R7 K4 ["Text"]
       35 LOADN                            R8 18
       36 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       38 GETIMPORT                        R8 K12 [Enum.Font.BuilderSans]
       40 SETTABLEKS                       R8 R7 K6 ["Font"]
       42 GETTABLEKS                       R9 R0 K13 ["controls"]
       44 GETTABLEKS                       R8 R9 K14 ["splitBy"]
       46 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       48 CALL                             R6 1 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R7 R8 K3 ["new"]
       52 DUPTABLE                         R8 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       53 LOADK                            R9 K16 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       54 SETTABLEKS                       R9 R8 K4 ["Text"]
       56 LOADN                            R9 18
       57 SETTABLEKS                       R9 R8 K5 ["TextSize"]
       59 GETIMPORT                        R9 K12 [Enum.Font.BuilderSans]
       61 SETTABLEKS                       R9 R8 K6 ["Font"]
       63 GETTABLEKS                       R10 R0 K13 ["controls"]
       65 GETTABLEKS                       R9 R10 K14 ["splitBy"]
       67 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       69 CALL                             R7 1 -1
       70 SETLIST                          R4 R5 -1 [1]
       72 SETTABLEKS                       R4 R3 K1 ["Elements"]
       74 CALL                             R1 2 -1
       75 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       11 LOADK                            R7 K9 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 LOADN                            R7 18
       15 SETTABLEKS                       R7 R6 K5 ["TextSize"]
       17 GETIMPORT                        R7 K12 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K6 ["Font"]
       21 GETTABLEKS                       R8 R0 K13 ["controls"]
       23 GETTABLEKS                       R7 R8 K14 ["splitBy"]
       25 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K3 ["new"]
       31 DUPTABLE                         R7 K16 [{"OnClick", "Text", "TextSize", "Font", "SplitBy"}]
       32 DUPCLOSURE                       R8 K17 [PROTO_4]
       33 SETTABLEKS                       R8 R7 K15 ["OnClick"]
       35 LOADK                            R8 K18 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       36 SETTABLEKS                       R8 R7 K4 ["Text"]
       38 LOADN                            R8 18
       39 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       41 GETIMPORT                        R8 K12 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R8 R7 K6 ["Font"]
       45 GETTABLEKS                       R9 R0 K13 ["controls"]
       47 GETTABLEKS                       R8 R9 K14 ["splitBy"]
       49 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       51 CALL                             R6 1 1
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R7 R8 K3 ["new"]
       55 DUPTABLE                         R8 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       56 LOADK                            R9 K19 ["雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
       57 SETTABLEKS                       R9 R8 K4 ["Text"]
       59 LOADN                            R9 18
       60 SETTABLEKS                       R9 R8 K5 ["TextSize"]
       62 GETIMPORT                        R9 K12 [Enum.Font.BuilderSans]
       64 SETTABLEKS                       R9 R8 K6 ["Font"]
       66 GETUPVAL                         R10 4
       67 GETTABLEKS                       R9 R10 K20 ["Symbol"]
       69 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       71 CALL                             R7 1 -1
       72 SETLIST                          R4 R5 -1 [1]
       74 SETTABLEKS                       R4 R3 K1 ["Elements"]
       76 CALL                             R1 2 -1
       77 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K9 [{"Text", "TextSize", "Font", "TextStyle", "SplitBy"}]
       11 LOADK                            R7 K10 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 LOADN                            R7 18
       15 SETTABLEKS                       R7 R6 K5 ["TextSize"]
       17 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K6 ["Font"]
       21 DUPTABLE                         R7 K15 [{"Bold"}]
       22 LOADB                            R8 1
       23 SETTABLEKS                       R8 R7 K14 ["Bold"]
       25 SETTABLEKS                       R7 R6 K7 ["TextStyle"]
       27 GETTABLEKS                       R8 R0 K16 ["controls"]
       29 GETTABLEKS                       R7 R8 K17 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K8 ["SplitBy"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R6 R7 K3 ["new"]
       37 DUPTABLE                         R7 K19 [{"OnClick", "Text", "TextSize", "Font", "TextStyle", "SplitBy"}]
       38 DUPCLOSURE                       R8 K20 [PROTO_6]
       39 SETTABLEKS                       R8 R7 K18 ["OnClick"]
       41 LOADK                            R8 K21 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text."]
       42 SETTABLEKS                       R8 R7 K4 ["Text"]
       44 LOADN                            R8 18
       45 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       47 GETIMPORT                        R8 K13 [Enum.Font.BuilderSans]
       49 SETTABLEKS                       R8 R7 K6 ["Font"]
       51 DUPTABLE                         R8 K23 [{"Italic"}]
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K22 ["Italic"]
       55 SETTABLEKS                       R8 R7 K7 ["TextStyle"]
       57 GETTABLEKS                       R9 R0 K16 ["controls"]
       59 GETTABLEKS                       R8 R9 K17 ["splitBy"]
       61 SETTABLEKS                       R8 R7 K8 ["SplitBy"]
       63 CALL                             R6 1 1
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R7 R8 K3 ["new"]
       67 DUPTABLE                         R8 K9 [{"Text", "TextSize", "Font", "TextStyle", "SplitBy"}]
       68 LOADK                            R9 K24 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
       69 SETTABLEKS                       R9 R8 K4 ["Text"]
       71 LOADN                            R9 18
       72 SETTABLEKS                       R9 R8 K5 ["TextSize"]
       74 GETIMPORT                        R9 K13 [Enum.Font.BuilderSans]
       76 SETTABLEKS                       R9 R8 K6 ["Font"]
       78 DUPTABLE                         R9 K26 [{"Strike"}]
       79 LOADB                            R10 1
       80 SETTABLEKS                       R10 R9 K25 ["Strike"]
       82 SETTABLEKS                       R9 R8 K7 ["TextStyle"]
       84 GETUPVAL                         R10 4
       85 GETTABLEKS                       R9 R10 K27 ["Symbol"]
       87 SETTABLEKS                       R9 R8 K8 ["SplitBy"]
       89 CALL                             R7 1 -1
       90 SETLIST                          R4 R5 -1 [1]
       92 SETTABLEKS                       R4 R3 K1 ["Elements"]
       94 CALL                             R1 2 -1
       95 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 4
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       11 LOADK                            R7 K9 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 LOADN                            R7 18
       15 SETTABLEKS                       R7 R6 K5 ["TextSize"]
       17 GETIMPORT                        R7 K12 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K6 ["Font"]
       21 GETTABLEKS                       R8 R0 K13 ["controls"]
       23 GETTABLEKS                       R7 R8 K14 ["splitBy"]
       25 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K3 ["new"]
       31 DUPTABLE                         R7 K16 [{"OnClick", "Text", "TextSize", "Font", "SplitBy"}]
       32 DUPCLOSURE                       R8 K17 [PROTO_8]
       33 SETTABLEKS                       R8 R7 K15 ["OnClick"]
       35 LOADK                            R8 K18 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       36 SETTABLEKS                       R8 R7 K4 ["Text"]
       38 LOADN                            R8 18
       39 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       41 GETIMPORT                        R8 K12 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R8 R7 K6 ["Font"]
       45 GETTABLEKS                       R9 R0 K13 ["controls"]
       47 GETTABLEKS                       R8 R9 K14 ["splitBy"]
       49 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       51 CALL                             R6 1 1
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R7 R8 K3 ["new"]
       55 DUPTABLE                         R8 K21 [{"Image", "Size", "SplitBy"}]
       56 LOADK                            R9 K22 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       57 SETTABLEKS                       R9 R8 K19 ["Image"]
       59 GETIMPORT                        R9 K25 [UDim2.fromOffset]
       61 LOADN                            R10 100
       62 LOADN                            R11 100
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K20 ["Size"]
       66 GETTABLEKS                       R10 R0 K13 ["controls"]
       68 GETTABLEKS                       R9 R10 K14 ["splitBy"]
       70 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       72 CALL                             R7 1 1
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R8 R9 K3 ["new"]
       76 DUPTABLE                         R9 K26 [{"Text", "TextSize", "Font"}]
       77 LOADK                            R10 K27 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
       78 SETTABLEKS                       R10 R9 K4 ["Text"]
       80 LOADN                            R10 18
       81 SETTABLEKS                       R10 R9 K5 ["TextSize"]
       83 GETIMPORT                        R10 K12 [Enum.Font.BuilderSans]
       85 SETTABLEKS                       R10 R9 K6 ["Font"]
       87 CALL                             R8 1 -1
       88 SETLIST                          R4 R5 -1 [1]
       90 SETTABLEKS                       R4 R3 K1 ["Elements"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Elements"}]
        5 NEWTABLE                         R3 0 5
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K3 ["new"]
       10 DUPTABLE                         R5 K7 [{"Text", "TextSize", "Font"}]
       11 LOADK                            R6 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
       12 SETTABLEKS                       R6 R5 K4 ["Text"]
       14 LOADN                            R6 18
       15 SETTABLEKS                       R6 R5 K5 ["TextSize"]
       17 GETIMPORT                        R6 K11 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R6 R5 K6 ["Font"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 3
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R6 R7 K3 ["new"]
       26 DUPTABLE                         R7 K13 [{"OnClick", "Text", "TextSize", "Font"}]
       27 DUPCLOSURE                       R8 K14 [PROTO_10]
       28 SETTABLEKS                       R8 R7 K12 ["OnClick"]
       30 LOADK                            R8 K15 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       31 SETTABLEKS                       R8 R7 K4 ["Text"]
       33 LOADN                            R8 18
       34 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       36 GETIMPORT                        R8 K11 [Enum.Font.BuilderSans]
       38 SETTABLEKS                       R8 R7 K6 ["Font"]
       40 CALL                             R6 1 1
       41 GETUPVAL                         R7 3
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R8 R9 K3 ["new"]
       45 DUPTABLE                         R9 K17 [{"Text", "TextSize", "Font", "SplitBy"}]
       46 LOADK                            R10 K18 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       47 SETTABLEKS                       R10 R9 K4 ["Text"]
       49 LOADN                            R10 18
       50 SETTABLEKS                       R10 R9 K5 ["TextSize"]
       52 GETIMPORT                        R10 K11 [Enum.Font.BuilderSans]
       54 SETTABLEKS                       R10 R9 K6 ["Font"]
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R10 R11 K19 ["Symbol"]
       59 SETTABLEKS                       R10 R9 K16 ["SplitBy"]
       61 CALL                             R8 1 -1
       62 SETLIST                          R3 R4 -1 [1]
       64 SETTABLEKS                       R3 R2 K1 ["Elements"]
       66 CALL                             R0 2 -1
       67 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"Text", "TextSize", "Font", "SplitBy"}]
       11 LOADK                            R7 K9 ["Here goes some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word"]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 LOADN                            R7 18
       15 SETTABLEKS                       R7 R6 K5 ["TextSize"]
       17 GETIMPORT                        R7 K12 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K6 ["Font"]
       21 GETTABLEKS                       R8 R0 K13 ["controls"]
       23 GETTABLEKS                       R7 R8 K14 ["splitBy"]
       25 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       27 CALL                             R5 1 -1
       28 SETLIST                          R4 R5 -1 [1]
       30 SETTABLEKS                       R4 R3 K1 ["Elements"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["InlineLayout"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K9 ["Components"]
       31 GETTABLEKS                       R5 R6 K10 ["InlineLayout"]
       33 GETTABLEKS                       R4 R5 K11 ["TextElement"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K6 [require]
       38 GETTABLEKS                       R8 R0 K2 ["UI"]
       40 GETTABLEKS                       R7 R8 K9 ["Components"]
       42 GETTABLEKS                       R6 R7 K10 ["InlineLayout"]
       44 GETTABLEKS                       R5 R6 K12 ["LinkElement"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K6 [require]
       49 GETTABLEKS                       R9 R0 K2 ["UI"]
       51 GETTABLEKS                       R8 R9 K9 ["Components"]
       53 GETTABLEKS                       R7 R8 K10 ["InlineLayout"]
       55 GETTABLEKS                       R6 R7 K13 ["ImageElement"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K6 [require]
       60 GETTABLEKS                       R10 R0 K2 ["UI"]
       62 GETTABLEKS                       R9 R10 K9 ["Components"]
       64 GETTABLEKS                       R8 R9 K10 ["InlineLayout"]
       66 GETTABLEKS                       R7 R8 K14 ["HardBreakElement"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K6 [require]
       71 GETTABLEKS                       R11 R0 K2 ["UI"]
       73 GETTABLEKS                       R10 R11 K9 ["Components"]
       75 GETTABLEKS                       R9 R10 K10 ["InlineLayout"]
       77 GETTABLEKS                       R8 R9 K15 ["TextSplitByEnum"]
       79 CALL                             R7 1 1
       80 DUPTABLE                         R8 K18 [{"controls", "stories"}]
       81 DUPTABLE                         R9 K21 [{"splitBy", "text"}]
       82 NEWTABLE                         R10 0 2
       84 GETTABLEKS                       R11 R7 K22 ["Word"]
       86 GETTABLEKS                       R12 R7 K23 ["Symbol"]
       88 SETLIST                          R10 R11 2 [1]
       90 SETTABLEKS                       R10 R9 K19 ["splitBy"]
       92 LOADK                            R10 K24 ["Any text you want"]
       93 SETTABLEKS                       R10 R9 K20 ["text"]
       95 SETTABLEKS                       R9 R8 K16 ["controls"]
       97 DUPTABLE                         R9 K34 [{"CustomText", "Default", "DefaultUTF8", "SeveralTextElements", "WithLinks", "WithRichText", "WithImage", "WithHardBreak", "LongWord"}]
       98 DUPCLOSURE                       R10 K35 [PROTO_0]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R10 R9 K25 ["CustomText"]
      104 DUPCLOSURE                       R10 K36 [PROTO_1]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R10 R9 K26 ["Default"]
      110 DUPCLOSURE                       R10 K37 [PROTO_2]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R10 R9 K27 ["DefaultUTF8"]
      116 DUPCLOSURE                       R10 K38 [PROTO_3]
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R10 R9 K28 ["SeveralTextElements"]
      122 DUPCLOSURE                       R10 K39 [PROTO_5]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R10 R9 K29 ["WithLinks"]
      130 DUPCLOSURE                       R10 K40 [PROTO_7]
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R7
      136 SETTABLEKS                       R10 R9 K30 ["WithRichText"]
      138 DUPCLOSURE                       R10 K41 [PROTO_9]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R10 R9 K31 ["WithImage"]
      146 DUPCLOSURE                       R10 K42 [PROTO_11]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R10 R9 K32 ["WithHardBreak"]
      155 DUPCLOSURE                       R10 K43 [PROTO_12]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R10 R9 K33 ["LongWord"]
      161 SETTABLEKS                       R9 R8 K17 ["stories"]
      163 RETURN                           R8 1
