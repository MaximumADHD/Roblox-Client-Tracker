PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
       11 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       12 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 LOADN                            R8 18
       17 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       19 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       21 LOADN                            R7 2
       22 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["text"]
       28 SETTABLEKS                       R7 R6 K6 ["Text"]
       30 GETTABLEKS                       R8 R0 K15 ["controls"]
       32 GETTABLEKS                       R7 R8 K17 ["splitBy"]
       34 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       36 CALL                             R5 1 -1
       37 SETLIST                          R4 R5 -1 [1]
       39 SETTABLEKS                       R4 R3 K1 ["Elements"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
       11 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       12 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 LOADN                            R8 18
       17 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       19 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       21 LOADN                            R7 2
       22 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       24 LOADK                            R7 K15 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
       25 SETTABLEKS                       R7 R6 K6 ["Text"]
       27 GETTABLEKS                       R8 R0 K16 ["controls"]
       29 GETTABLEKS                       R7 R8 K17 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       33 CALL                             R5 1 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 SETTABLEKS                       R4 R3 K1 ["Elements"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
       11 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       12 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 LOADN                            R8 16
       17 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       19 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       21 LOADN                            R7 2
       22 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       24 LOADK                            R7 K15 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé"]
       25 SETTABLEKS                       R7 R6 K6 ["Text"]
       27 GETTABLEKS                       R8 R0 K16 ["controls"]
       29 GETTABLEKS                       R7 R8 K17 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       33 CALL                             R5 1 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 SETTABLEKS                       R4 R3 K1 ["Elements"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K3 ["new"]
       34 DUPTABLE                         R7 K7 [{"Text", "fontStyle", "SplitBy"}]
       35 LOADK                            R8 K17 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. "]
       36 SETTABLEKS                       R8 R7 K4 ["Text"]
       38 DUPTABLE                         R8 K11 [{"Font", "FontSize"}]
       39 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       41 SETTABLEKS                       R9 R8 K9 ["Font"]
       43 LOADN                            R9 18
       44 SETTABLEKS                       R9 R8 K10 ["FontSize"]
       46 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       48 GETTABLEKS                       R9 R0 K15 ["controls"]
       50 GETTABLEKS                       R8 R9 K16 ["splitBy"]
       52 SETTABLEKS                       R8 R7 K6 ["SplitBy"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K3 ["new"]
       58 DUPTABLE                         R8 K7 [{"Text", "fontStyle", "SplitBy"}]
       59 LOADK                            R9 K18 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       60 SETTABLEKS                       R9 R8 K4 ["Text"]
       62 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       63 GETIMPORT                        R10 K14 [Enum.Font.BuilderSans]
       65 SETTABLEKS                       R10 R9 K9 ["Font"]
       67 LOADN                            R10 18
       68 SETTABLEKS                       R10 R9 K10 ["FontSize"]
       70 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
       72 GETTABLEKS                       R10 R0 K15 ["controls"]
       74 GETTABLEKS                       R9 R10 K16 ["splitBy"]
       76 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
       78 CALL                             R7 1 -1
       79 SETLIST                          R4 R5 -1 [1]
       81 SETTABLEKS                       R4 R3 K1 ["Elements"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K3 ["new"]
       34 DUPTABLE                         R7 K18 [{"OnActivated", "fontStyle", "Text", "SplitBy"}]
       35 DUPCLOSURE                       R8 K19 [PROTO_4]
       36 SETTABLEKS                       R8 R7 K17 ["OnActivated"]
       38 DUPTABLE                         R8 K11 [{"Font", "FontSize"}]
       39 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       41 SETTABLEKS                       R9 R8 K9 ["Font"]
       43 LOADN                            R9 18
       44 SETTABLEKS                       R9 R8 K10 ["FontSize"]
       46 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       48 LOADK                            R8 K20 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       49 SETTABLEKS                       R8 R7 K4 ["Text"]
       51 GETTABLEKS                       R9 R0 K15 ["controls"]
       53 GETTABLEKS                       R8 R9 K16 ["splitBy"]
       55 SETTABLEKS                       R8 R7 K6 ["SplitBy"]
       57 CALL                             R6 1 1
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K3 ["new"]
       61 DUPTABLE                         R8 K7 [{"Text", "fontStyle", "SplitBy"}]
       62 LOADK                            R9 K21 ["雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
       63 SETTABLEKS                       R9 R8 K4 ["Text"]
       65 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       66 GETIMPORT                        R10 K14 [Enum.Font.BuilderSans]
       68 SETTABLEKS                       R10 R9 K9 ["Font"]
       70 LOADN                            R10 18
       71 SETTABLEKS                       R10 R9 K10 ["FontSize"]
       73 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R9 R10 K22 ["Symbol"]
       78 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
       80 CALL                             R7 1 -1
       81 SETLIST                          R4 R5 -1 [1]
       83 SETTABLEKS                       R4 R3 K1 ["Elements"]
       85 CALL                             R1 2 -1
       86 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSansBold]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K3 ["new"]
       34 DUPTABLE                         R7 K18 [{"OnActivated", "fontStyle", "Text", "SplitBy"}]
       35 DUPCLOSURE                       R8 K19 [PROTO_6]
       36 SETTABLEKS                       R8 R7 K17 ["OnActivated"]
       38 DUPTABLE                         R8 K11 [{"Font", "FontSize"}]
       39 GETIMPORT                        R9 K21 [Enum.Font.SourceSansItalic]
       41 SETTABLEKS                       R9 R8 K9 ["Font"]
       43 LOADN                            R9 18
       44 SETTABLEKS                       R9 R8 K10 ["FontSize"]
       46 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       48 LOADK                            R8 K22 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       49 SETTABLEKS                       R8 R7 K4 ["Text"]
       51 GETTABLEKS                       R9 R0 K15 ["controls"]
       53 GETTABLEKS                       R8 R9 K16 ["splitBy"]
       55 SETTABLEKS                       R8 R7 K6 ["SplitBy"]
       57 CALL                             R6 1 1
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K3 ["new"]
       61 DUPTABLE                         R8 K24 [{"Text", "fontStyle", "TextVariant", "SplitBy"}]
       62 LOADK                            R9 K25 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
       63 SETTABLEKS                       R9 R8 K4 ["Text"]
       65 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       66 GETIMPORT                        R10 K27 [Enum.Font.BuilderSans]
       68 SETTABLEKS                       R10 R9 K9 ["Font"]
       70 LOADN                            R10 18
       71 SETTABLEKS                       R10 R9 K10 ["FontSize"]
       73 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
       75 DUPTABLE                         R9 K29 [{"Strike"}]
       76 LOADB                            R10 1
       77 SETTABLEKS                       R10 R9 K28 ["Strike"]
       79 SETTABLEKS                       R9 R8 K23 ["TextVariant"]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R9 R10 K30 ["Symbol"]
       84 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
       86 CALL                             R7 1 -1
       87 SETLIST                          R4 R5 -1 [1]
       89 SETTABLEKS                       R4 R3 K1 ["Elements"]
       91 CALL                             R1 2 -1
       92 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K3 ["new"]
       34 DUPTABLE                         R7 K18 [{"OnActivated", "Text", "fontStyle", "SplitBy"}]
       35 DUPCLOSURE                       R8 K19 [PROTO_8]
       36 SETTABLEKS                       R8 R7 K17 ["OnActivated"]
       38 LOADK                            R8 K20 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       39 SETTABLEKS                       R8 R7 K4 ["Text"]
       41 DUPTABLE                         R8 K11 [{"Font", "FontSize"}]
       42 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       44 SETTABLEKS                       R9 R8 K9 ["Font"]
       46 LOADN                            R9 18
       47 SETTABLEKS                       R9 R8 K10 ["FontSize"]
       49 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       51 GETTABLEKS                       R9 R0 K15 ["controls"]
       53 GETTABLEKS                       R8 R9 K16 ["splitBy"]
       55 SETTABLEKS                       R8 R7 K6 ["SplitBy"]
       57 CALL                             R6 1 1
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R7 R8 K3 ["new"]
       61 DUPTABLE                         R8 K23 [{"Image", "Size", "SplitBy"}]
       62 LOADK                            R9 K24 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       63 SETTABLEKS                       R9 R8 K21 ["Image"]
       65 GETIMPORT                        R9 K27 [UDim2.fromOffset]
       67 LOADN                            R10 100
       68 LOADN                            R11 100
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K22 ["Size"]
       72 GETTABLEKS                       R10 R0 K15 ["controls"]
       74 GETTABLEKS                       R9 R10 K16 ["splitBy"]
       76 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
       78 CALL                             R7 1 1
       79 GETUPVAL                         R9 2
       80 GETTABLEKS                       R8 R9 K3 ["new"]
       82 DUPTABLE                         R9 K28 [{"Text", "fontStyle"}]
       83 LOADK                            R10 K29 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
       84 SETTABLEKS                       R10 R9 K4 ["Text"]
       86 DUPTABLE                         R10 K11 [{"Font", "FontSize"}]
       87 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       89 SETTABLEKS                       R11 R10 K9 ["Font"]
       91 LOADN                            R11 18
       92 SETTABLEKS                       R11 R10 K10 ["FontSize"]
       94 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       96 CALL                             R8 1 -1
       97 SETLIST                          R4 R5 -1 [1]
       99 SETTABLEKS                       R4 R3 K1 ["Elements"]
      101 CALL                             R1 2 -1
      102 RETURN                           R1 -1

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
       10 DUPTABLE                         R5 K6 [{"Text", "fontStyle"}]
       11 LOADK                            R6 K7 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
       12 SETTABLEKS                       R6 R5 K4 ["Text"]
       14 DUPTABLE                         R6 K10 [{"Font", "FontSize"}]
       15 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R7 R6 K8 ["Font"]
       19 LOADN                            R7 18
       20 SETTABLEKS                       R7 R6 K9 ["FontSize"]
       22 SETTABLEKS                       R6 R5 K5 ["fontStyle"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K3 ["new"]
       29 DUPTABLE                         R7 K15 [{"OnActivated", "Text", "fontStyle"}]
       30 DUPCLOSURE                       R8 K16 [PROTO_10]
       31 SETTABLEKS                       R8 R7 K14 ["OnActivated"]
       33 LOADK                            R8 K17 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       34 SETTABLEKS                       R8 R7 K4 ["Text"]
       36 DUPTABLE                         R8 K10 [{"Font", "FontSize"}]
       37 GETIMPORT                        R9 K13 [Enum.Font.BuilderSans]
       39 SETTABLEKS                       R9 R8 K8 ["Font"]
       41 LOADN                            R9 18
       42 SETTABLEKS                       R9 R8 K9 ["FontSize"]
       44 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 3
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K3 ["new"]
       51 DUPTABLE                         R9 K19 [{"Text", "fontStyle", "SplitBy"}]
       52 LOADK                            R10 K20 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       53 SETTABLEKS                       R10 R9 K4 ["Text"]
       55 DUPTABLE                         R10 K10 [{"Font", "FontSize"}]
       56 GETIMPORT                        R11 K13 [Enum.Font.BuilderSans]
       58 SETTABLEKS                       R11 R10 K8 ["Font"]
       60 LOADN                            R11 18
       61 SETTABLEKS                       R11 R10 K9 ["FontSize"]
       63 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R10 R11 K21 ["Symbol"]
       68 SETTABLEKS                       R10 R9 K18 ["SplitBy"]
       70 CALL                             R8 1 -1
       71 SETLIST                          R3 R4 -1 [1]
       73 SETTABLEKS                       R3 R2 K1 ["Elements"]
       75 CALL                             R0 2 -1
       76 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K3 ["new"]
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Here goes some some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word"]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R8 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R8 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["Elements"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Components"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K1 [script]
       17 LOADK                            R4 K6 ["InlineLayout"]
       18 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K8 [require]
       23 GETTABLEKS                       R4 R1 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R2 K10 ["TextElement"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R6 R2 K11 ["LinkElement"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K8 [require]
       38 GETTABLEKS                       R7 R2 K12 ["ImageElement"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K8 [require]
       43 GETTABLEKS                       R8 R2 K13 ["HardBreakElement"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K8 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Utils"]
       50 GETTABLEKS                       R9 R10 K15 ["TextSplitByEnum"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R11 R0 K2 ["Components"]
       57 GETTABLEKS                       R10 R11 K6 ["InlineLayout"]
       59 CALL                             R9 1 1
       60 DUPTABLE                         R10 K19 [{"summary", "controls", "stories"}]
       61 LOADK                            R11 K20 ["A component that lays out inline elements such as text, links, and images."]
       62 SETTABLEKS                       R11 R10 K16 ["summary"]
       64 DUPTABLE                         R11 K23 [{"splitBy", "text"}]
       65 NEWTABLE                         R12 0 2
       67 GETTABLEKS                       R13 R8 K24 ["Word"]
       69 GETTABLEKS                       R14 R8 K25 ["Symbol"]
       71 SETLIST                          R12 R13 2 [1]
       73 SETTABLEKS                       R12 R11 K21 ["splitBy"]
       75 LOADK                            R12 K26 ["Any text you want"]
       76 SETTABLEKS                       R12 R11 K22 ["text"]
       78 SETTABLEKS                       R11 R10 K17 ["controls"]
       80 NEWTABLE                         R11 0 9
       82 DUPTABLE                         R12 K29 [{"name", "summary", "story"}]
       83 LOADK                            R13 K30 ["CustomText"]
       84 SETTABLEKS                       R13 R12 K27 ["name"]
       86 LOADK                            R13 K31 ["Type a custom text and choice split mode."]
       87 SETTABLEKS                       R13 R12 K16 ["summary"]
       89 DUPCLOSURE                       R13 K32 [PROTO_0]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R13 R12 K28 ["story"]
       95 DUPTABLE                         R13 K29 [{"name", "summary", "story"}]
       96 LOADK                            R14 K33 ["Default"]
       97 SETTABLEKS                       R14 R13 K27 ["name"]
       99 LOADK                            R14 K34 ["InlineLayout can render a single TextElement with a long English text"]
      100 SETTABLEKS                       R14 R13 K16 ["summary"]
      102 DUPCLOSURE                       R14 K35 [PROTO_1]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R14 R13 K28 ["story"]
      108 DUPTABLE                         R14 K29 [{"name", "summary", "story"}]
      109 LOADK                            R15 K36 ["DefaultUTF8"]
      110 SETTABLEKS                       R15 R14 K27 ["name"]
      112 LOADK                            R15 K37 ["InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)"]
      113 SETTABLEKS                       R15 R14 K16 ["summary"]
      115 DUPCLOSURE                       R15 K38 [PROTO_2]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R15 R14 K28 ["story"]
      121 DUPTABLE                         R15 K29 [{"name", "summary", "story"}]
      122 LOADK                            R16 K39 ["SeveralTextElements"]
      123 SETTABLEKS                       R16 R15 K27 ["name"]
      125 LOADK                            R16 K40 ["InlineLayout can render a multiple TextElements in different languages."]
      126 SETTABLEKS                       R16 R15 K16 ["summary"]
      128 DUPCLOSURE                       R16 K41 [PROTO_3]
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R16 R15 K28 ["story"]
      134 DUPTABLE                         R16 K29 [{"name", "summary", "story"}]
      135 LOADK                            R17 K42 ["WithLinks"]
      136 SETTABLEKS                       R17 R16 K27 ["name"]
      138 LOADK                            R17 K43 ["InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting."]
      139 SETTABLEKS                       R17 R16 K16 ["summary"]
      141 DUPCLOSURE                       R17 K44 [PROTO_5]
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R8
      147 SETTABLEKS                       R17 R16 K28 ["story"]
      149 DUPTABLE                         R17 K29 [{"name", "summary", "story"}]
      150 LOADK                            R18 K45 ["WithRichText"]
      151 SETTABLEKS                       R18 R17 K27 ["name"]
      153 LOADK                            R18 K46 ["InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough)."]
      154 SETTABLEKS                       R18 R17 K16 ["summary"]
      156 DUPCLOSURE                       R18 K47 [PROTO_7]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R18 R17 K28 ["story"]
      164 DUPTABLE                         R18 K29 [{"name", "summary", "story"}]
      165 LOADK                            R19 K48 ["WithImage"]
      166 SETTABLEKS                       R19 R18 K27 ["name"]
      168 LOADK                            R19 K49 ["InlineLayout can render Images with TextElements, LinkElements"]
      169 SETTABLEKS                       R19 R18 K16 ["summary"]
      171 DUPCLOSURE                       R19 K50 [PROTO_9]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R6
      177 SETTABLEKS                       R19 R18 K28 ["story"]
      179 DUPTABLE                         R19 K29 [{"name", "summary", "story"}]
      180 LOADK                            R20 K51 ["WithHardBreak"]
      181 SETTABLEKS                       R20 R19 K27 ["name"]
      183 LOADK                            R20 K52 ["Elements can be separated by hard breaks to force line breaks in specific places."]
      184 SETTABLEKS                       R20 R19 K16 ["summary"]
      186 DUPCLOSURE                       R20 K53 [PROTO_11]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R8
      193 SETTABLEKS                       R20 R19 K28 ["story"]
      195 DUPTABLE                         R20 K29 [{"name", "summary", "story"}]
      196 LOADK                            R21 K54 ["LongWord"]
      197 SETTABLEKS                       R21 R20 K27 ["name"]
      199 LOADK                            R21 K55 ["InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries"]
      200 SETTABLEKS                       R21 R20 K16 ["summary"]
      202 DUPCLOSURE                       R21 K56 [PROTO_12]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R4
      206 SETTABLEKS                       R21 R20 K28 ["story"]
      208 SETLIST                          R11 R12 9 [1]
      210 SETTABLEKS                       R11 R10 K18 ["stories"]
      212 RETURN                           R10 1
