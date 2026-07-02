PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K9 [{["fontStyle"], ["LayoutOrder"] = 2, ["Text"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K13 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K16 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K10 ["Font"]
       16 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K17 ["controls"]
       20 GETTABLEKS                       R7 R7 K18 ["text"]
       22 SETTABLEKS                       R7 R6 K7 ["Text"]
       24 GETTABLEKS                       R7 R0 K17 ["controls"]
       26 GETTABLEKS                       R7 R7 K19 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K8 ["SplitBy"]
       30 CALL                             R5 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["Elements"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K10 [{["fontStyle"], ["LayoutOrder"] = 2, ["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text", ["SplitBy"]}]
       11 DUPTABLE                         R7 K14 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K17 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K11 ["Font"]
       16 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K18 ["controls"]
       20 GETTABLEKS                       R7 R7 K19 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       24 CALL                             R5 1 -1
       25 SETLIST                          R4 R5 -1 [1]
       27 SETTABLEKS                       R4 R3 K1 ["Elements"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K10 [{["fontStyle"], ["LayoutOrder"] = 2, ["Text"] = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé", ["SplitBy"]}]
       11 DUPTABLE                         R7 K14 [{["Font"], ["FontSize"] = 16}]
       12 GETIMPORT                        R8 K17 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K11 ["Font"]
       16 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K18 ["controls"]
       20 GETTABLEKS                       R7 R7 K19 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       24 CALL                             R5 1 -1
       25 SETLIST                          R4 R5 -1 [1]
       27 SETTABLEKS                       R4 R3 K1 ["Elements"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["fontStyle"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K12 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K15 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K16 ["controls"]
       20 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["new"]
       28 DUPTABLE                         R7 K19 [{["Text"] = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. ", ["fontStyle"], ["SplitBy"]}]
       29 DUPTABLE                         R8 K12 [{["Font"], ["FontSize"] = 18}]
       30 GETIMPORT                        R9 K15 [Enum.Font.BuilderSans]
       32 SETTABLEKS                       R9 R8 K9 ["Font"]
       34 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
       36 GETTABLEKS                       R8 R0 K16 ["controls"]
       38 GETTABLEKS                       R8 R8 K17 ["splitBy"]
       40 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K3 ["new"]
       46 DUPTABLE                         R8 K21 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["fontStyle"], ["SplitBy"]}]
       47 DUPTABLE                         R9 K12 [{["Font"], ["FontSize"] = 18}]
       48 GETIMPORT                        R10 K15 [Enum.Font.BuilderSans]
       50 SETTABLEKS                       R10 R9 K9 ["Font"]
       52 SETTABLEKS                       R9 R8 K6 ["fontStyle"]
       54 GETTABLEKS                       R9 R0 K16 ["controls"]
       56 GETTABLEKS                       R9 R9 K17 ["splitBy"]
       58 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       60 CALL                             R7 1 -1
       61 SETLIST                          R4 R5 -1 [1]
       63 SETTABLEKS                       R4 R3 K1 ["Elements"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["fontStyle"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K12 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K15 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K16 ["controls"]
       20 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["new"]
       28 DUPTABLE                         R7 K20 [{["OnActivated"], ["fontStyle"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["SplitBy"]}]
       29 DUPCLOSURE                       R8 K21 [PROTO_4]
       30 SETTABLEKS                       R8 R7 K18 ["OnActivated"]
       32 DUPTABLE                         R8 K12 [{["Font"], ["FontSize"] = 18}]
       33 GETIMPORT                        R9 K15 [Enum.Font.BuilderSans]
       35 SETTABLEKS                       R9 R8 K9 ["Font"]
       37 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
       39 GETTABLEKS                       R8 R0 K16 ["controls"]
       41 GETTABLEKS                       R8 R8 K17 ["splitBy"]
       43 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K3 ["new"]
       49 DUPTABLE                         R8 K23 [{["Text"] = "雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["fontStyle"], ["SplitBy"]}]
       50 DUPTABLE                         R9 K12 [{["Font"], ["FontSize"] = 18}]
       51 GETIMPORT                        R10 K15 [Enum.Font.BuilderSans]
       53 SETTABLEKS                       R10 R9 K9 ["Font"]
       55 SETTABLEKS                       R9 R8 K6 ["fontStyle"]
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K24 ["Symbol"]
       60 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       62 CALL                             R7 1 -1
       63 SETLIST                          R4 R5 -1 [1]
       65 SETTABLEKS                       R4 R3 K1 ["Elements"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["fontStyle"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K12 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K15 [Enum.Font.BuilderSansBold]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K16 ["controls"]
       20 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["new"]
       28 DUPTABLE                         R7 K20 [{["OnActivated"], ["fontStyle"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["SplitBy"]}]
       29 DUPCLOSURE                       R8 K21 [PROTO_6]
       30 SETTABLEKS                       R8 R7 K18 ["OnActivated"]
       32 DUPTABLE                         R8 K12 [{["Font"], ["FontSize"] = 18}]
       33 GETIMPORT                        R9 K23 [Enum.Font.SourceSansItalic]
       35 SETTABLEKS                       R9 R8 K9 ["Font"]
       37 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
       39 GETTABLEKS                       R8 R0 K16 ["controls"]
       41 GETTABLEKS                       R8 R8 K17 ["splitBy"]
       43 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K3 ["new"]
       49 DUPTABLE                         R8 K26 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ", ["fontStyle"], ["TextVariant"], ["SplitBy"]}]
       50 DUPTABLE                         R9 K12 [{["Font"], ["FontSize"] = 18}]
       51 GETIMPORT                        R10 K28 [Enum.Font.BuilderSans]
       53 SETTABLEKS                       R10 R9 K9 ["Font"]
       55 SETTABLEKS                       R9 R8 K6 ["fontStyle"]
       57 DUPTABLE                         R9 K31 [{["Strike"] = True}]
       58 SETTABLEKS                       R9 R8 K25 ["TextVariant"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R9 R9 K32 ["Symbol"]
       63 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       65 CALL                             R7 1 -1
       66 SETLIST                          R4 R5 -1 [1]
       68 SETTABLEKS                       R4 R3 K1 ["Elements"]
       70 CALL                             R1 2 -1
       71 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 4
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ", ["fontStyle"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K12 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K15 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K16 ["controls"]
       20 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["new"]
       28 DUPTABLE                         R7 K20 [{["OnActivated"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["fontStyle"], ["SplitBy"]}]
       29 DUPCLOSURE                       R8 K21 [PROTO_8]
       30 SETTABLEKS                       R8 R7 K18 ["OnActivated"]
       32 DUPTABLE                         R8 K12 [{["Font"], ["FontSize"] = 18}]
       33 GETIMPORT                        R9 K15 [Enum.Font.BuilderSans]
       35 SETTABLEKS                       R9 R8 K9 ["Font"]
       37 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
       39 GETTABLEKS                       R8 R0 K16 ["controls"]
       41 GETTABLEKS                       R8 R8 K17 ["splitBy"]
       43 SETTABLEKS                       R8 R7 K7 ["SplitBy"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K3 ["new"]
       49 DUPTABLE                         R8 K25 [{["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png", ["Size"], ["SplitBy"]}]
       50 GETIMPORT                        R9 K28 [UDim2.fromOffset]
       52 LOADN                            R10 100
       53 LOADN                            R11 100
       54 CALL                             R9 2 1
       55 SETTABLEKS                       R9 R8 K24 ["Size"]
       57 GETTABLEKS                       R9 R0 K16 ["controls"]
       59 GETTABLEKS                       R9 R9 K17 ["splitBy"]
       61 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       63 CALL                             R7 1 1
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K3 ["new"]
       67 DUPTABLE                         R9 K30 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["fontStyle"]}]
       68 DUPTABLE                         R10 K12 [{["Font"], ["FontSize"] = 18}]
       69 GETIMPORT                        R11 K15 [Enum.Font.BuilderSans]
       71 SETTABLEKS                       R11 R10 K9 ["Font"]
       73 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       75 CALL                             R8 1 -1
       76 SETLIST                          R4 R5 -1 [1]
       78 SETTABLEKS                       R4 R3 K1 ["Elements"]
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Elements"}]
        5 NEWTABLE                         R3 0 5
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K3 ["new"]
       10 DUPTABLE                         R5 K7 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text", ["fontStyle"]}]
       11 DUPTABLE                         R6 K11 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R7 K14 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R7 R6 K8 ["Font"]
       16 SETTABLEKS                       R6 R5 K6 ["fontStyle"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K3 ["new"]
       23 DUPTABLE                         R7 K17 [{["OnActivated"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["fontStyle"]}]
       24 DUPCLOSURE                       R8 K18 [PROTO_10]
       25 SETTABLEKS                       R8 R7 K15 ["OnActivated"]
       27 DUPTABLE                         R8 K11 [{["Font"], ["FontSize"] = 18}]
       28 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       30 SETTABLEKS                       R9 R8 K8 ["Font"]
       32 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 3
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K3 ["new"]
       39 DUPTABLE                         R9 K21 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ", ["fontStyle"], ["SplitBy"]}]
       40 DUPTABLE                         R10 K11 [{["Font"], ["FontSize"] = 18}]
       41 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R11 R10 K8 ["Font"]
       45 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R10 R10 K22 ["Symbol"]
       50 SETTABLEKS                       R10 R9 K20 ["SplitBy"]
       52 CALL                             R8 1 -1
       53 SETLIST                          R3 R4 -1 [1]
       55 SETTABLEKS                       R3 R2 K1 ["Elements"]
       57 CALL                             R0 2 -1
       58 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{["Text"] = "Here goes some some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word", ["fontStyle"], ["SplitBy"]}]
       11 DUPTABLE                         R7 K12 [{["Font"], ["FontSize"] = 18}]
       12 GETIMPORT                        R8 K15 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 SETTABLEKS                       R7 R6 K6 ["fontStyle"]
       18 GETTABLEKS                       R7 R0 K16 ["controls"]
       20 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       24 CALL                             R5 1 -1
       25 SETLIST                          R4 R5 -1 [1]
       27 SETTABLEKS                       R4 R3 K1 ["Elements"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
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
       48 GETTABLEKS                       R9 R0 K14 ["Utils"]
       50 GETTABLEKS                       R9 R9 K15 ["TextSplitByEnum"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R10 R0 K2 ["Components"]
       57 GETTABLEKS                       R10 R10 K6 ["InlineLayout"]
       59 CALL                             R9 1 1
       60 DUPTABLE                         R10 K20 [{["summary"] = "A component that lays out inline elements such as text, links, and images.", ["controls"], ["stories"]}]
       61 DUPTABLE                         R11 K24 [{["splitBy"], ["text"] = "Any text you want"}]
       62 NEWTABLE                         R12 0 2
       64 GETTABLEKS                       R13 R8 K25 ["Word"]
       66 GETTABLEKS                       R14 R8 K26 ["Symbol"]
       68 SETLIST                          R12 R13 2 [1]
       70 SETTABLEKS                       R12 R11 K21 ["splitBy"]
       72 SETTABLEKS                       R11 R10 K18 ["controls"]
       74 NEWTABLE                         R11 0 9
       76 DUPTABLE                         R12 K31 [{["name"] = "CustomText", ["summary"] = "Type a custom text and choice split mode.", ["story"]}]
       77 DUPCLOSURE                       R13 K32 [PROTO_0]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R13 R12 K30 ["story"]
       83 DUPTABLE                         R13 K35 [{["name"] = "Default", ["summary"] = "InlineLayout can render a single TextElement with a long English text", ["story"]}]
       84 DUPCLOSURE                       R14 K36 [PROTO_1]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R14 R13 K30 ["story"]
       90 DUPTABLE                         R14 K39 [{["name"] = "DefaultUTF8", ["summary"] = "InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)", ["story"]}]
       91 DUPCLOSURE                       R15 K40 [PROTO_2]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R15 R14 K30 ["story"]
       97 DUPTABLE                         R15 K43 [{["name"] = "SeveralTextElements", ["summary"] = "InlineLayout can render a multiple TextElements in different languages.", ["story"]}]
       98 DUPCLOSURE                       R16 K44 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R4
      102 SETTABLEKS                       R16 R15 K30 ["story"]
      104 DUPTABLE                         R16 K47 [{["name"] = "WithLinks", ["summary"] = "InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting.", ["story"]}]
      105 DUPCLOSURE                       R17 K48 [PROTO_5]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R8
      111 SETTABLEKS                       R17 R16 K30 ["story"]
      113 DUPTABLE                         R17 K51 [{["name"] = "WithRichText", ["summary"] = "InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough).", ["story"]}]
      114 DUPCLOSURE                       R18 K52 [PROTO_7]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R18 R17 K30 ["story"]
      122 DUPTABLE                         R18 K55 [{["name"] = "WithImage", ["summary"] = "InlineLayout can render Images with TextElements, LinkElements", ["story"]}]
      123 DUPCLOSURE                       R19 K56 [PROTO_9]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R19 R18 K30 ["story"]
      131 DUPTABLE                         R19 K59 [{["name"] = "WithHardBreak", ["summary"] = "Elements can be separated by hard breaks to force line breaks in specific places.", ["story"]}]
      132 DUPCLOSURE                       R20 K60 [PROTO_11]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R8
      139 SETTABLEKS                       R20 R19 K30 ["story"]
      141 DUPTABLE                         R20 K63 [{["name"] = "LongWord", ["summary"] = "InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries", ["story"]}]
      142 DUPCLOSURE                       R21 K64 [PROTO_12]
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R21 R20 K30 ["story"]
      148 SETLIST                          R11 R12 9 [1]
      150 SETTABLEKS                       R11 R10 K19 ["stories"]
      152 RETURN                           R10 1
