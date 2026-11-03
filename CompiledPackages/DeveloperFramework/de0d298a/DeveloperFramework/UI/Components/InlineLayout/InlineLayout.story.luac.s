PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K11 [{["LayoutOrder"] = 2, ["Text"], ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETTABLEKS                       R7 R0 K12 ["controls"]
       13 GETTABLEKS                       R7 R7 K13 ["text"]
       15 SETTABLEKS                       R7 R6 K6 ["Text"]
       17 GETIMPORT                        R7 K16 [Enum.Font.BuilderSans]
       19 SETTABLEKS                       R7 R6 K9 ["Font"]
       21 GETTABLEKS                       R7 R0 K12 ["controls"]
       23 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       25 SETTABLEKS                       R7 R6 K10 ["SplitBy"]
       27 CALL                             R5 1 -1
       28 SETLIST                          R4 R5 -1 [1]
       30 SETTABLEKS                       R4 R3 K1 ["Elements"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K12 [{["LayoutOrder"] = 2, ["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K15 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K10 ["Font"]
       15 GETTABLEKS                       R7 R0 K16 ["controls"]
       17 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K11 ["SplitBy"]
       21 CALL                             R5 1 -1
       22 SETLIST                          R4 R5 -1 [1]
       24 SETTABLEKS                       R4 R3 K1 ["Elements"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K12 [{["LayoutOrder"] = 2, ["Text"] = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé", ["TextSize"] = 16, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K15 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K10 ["Font"]
       15 GETTABLEKS                       R7 R0 K16 ["controls"]
       17 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K11 ["SplitBy"]
       21 CALL                             R5 1 -1
       22 SETLIST                          R4 R5 -1 [1]
       24 SETTABLEKS                       R4 R3 K1 ["Elements"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K10 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K8 ["Font"]
       15 GETTABLEKS                       R7 R0 K14 ["controls"]
       17 GETTABLEKS                       R7 R7 K15 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K3 ["new"]
       25 DUPTABLE                         R7 K17 [{["Text"] = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       26 GETIMPORT                        R8 K13 [Enum.Font.BuilderSans]
       28 SETTABLEKS                       R8 R7 K8 ["Font"]
       30 GETTABLEKS                       R8 R0 K14 ["controls"]
       32 GETTABLEKS                       R8 R8 K15 ["splitBy"]
       34 SETTABLEKS                       R8 R7 K9 ["SplitBy"]
       36 CALL                             R6 1 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K3 ["new"]
       40 DUPTABLE                         R8 K19 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       41 GETIMPORT                        R9 K13 [Enum.Font.BuilderSans]
       43 SETTABLEKS                       R9 R8 K8 ["Font"]
       45 GETTABLEKS                       R9 R0 K14 ["controls"]
       47 GETTABLEKS                       R9 R9 K15 ["splitBy"]
       49 SETTABLEKS                       R9 R8 K9 ["SplitBy"]
       51 CALL                             R7 1 -1
       52 SETLIST                          R4 R5 -1 [1]
       54 SETTABLEKS                       R4 R3 K1 ["Elements"]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K10 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K8 ["Font"]
       15 GETTABLEKS                       R7 R0 K14 ["controls"]
       17 GETTABLEKS                       R7 R7 K15 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K3 ["new"]
       25 DUPTABLE                         R7 K18 [{["OnClick"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       26 DUPCLOSURE                       R8 K19 [PROTO_4]
       27 SETTABLEKS                       R8 R7 K16 ["OnClick"]
       29 GETIMPORT                        R8 K13 [Enum.Font.BuilderSans]
       31 SETTABLEKS                       R8 R7 K8 ["Font"]
       33 GETTABLEKS                       R8 R0 K14 ["controls"]
       35 GETTABLEKS                       R8 R8 K15 ["splitBy"]
       37 SETTABLEKS                       R8 R7 K9 ["SplitBy"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K3 ["new"]
       43 DUPTABLE                         R8 K21 [{["Text"] = "雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       44 GETIMPORT                        R9 K13 [Enum.Font.BuilderSans]
       46 SETTABLEKS                       R9 R8 K8 ["Font"]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K22 ["Symbol"]
       51 SETTABLEKS                       R9 R8 K9 ["SplitBy"]
       53 CALL                             R7 1 -1
       54 SETLIST                          R4 R5 -1 [1]
       56 SETTABLEKS                       R4 R3 K1 ["Elements"]
       58 CALL                             R1 2 -1
       59 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K11 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["TextSize"] = 18, ["Font"], ["TextStyle"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K14 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K8 ["Font"]
       15 DUPTABLE                         R7 K17 [{["Bold"] = True}]
       16 SETTABLEKS                       R7 R6 K9 ["TextStyle"]
       18 GETTABLEKS                       R7 R0 K18 ["controls"]
       20 GETTABLEKS                       R7 R7 K19 ["splitBy"]
       22 SETTABLEKS                       R7 R6 K10 ["SplitBy"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["new"]
       28 DUPTABLE                         R7 K22 [{["OnClick"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text.", ["TextSize"] = 18, ["Font"], ["TextStyle"], ["SplitBy"]}]
       29 DUPCLOSURE                       R8 K23 [PROTO_6]
       30 SETTABLEKS                       R8 R7 K20 ["OnClick"]
       32 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       34 SETTABLEKS                       R8 R7 K8 ["Font"]
       36 DUPTABLE                         R8 K25 [{["Italic"] = True}]
       37 SETTABLEKS                       R8 R7 K9 ["TextStyle"]
       39 GETTABLEKS                       R8 R0 K18 ["controls"]
       41 GETTABLEKS                       R8 R8 K19 ["splitBy"]
       43 SETTABLEKS                       R8 R7 K10 ["SplitBy"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K3 ["new"]
       49 DUPTABLE                         R8 K27 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ", ["TextSize"] = 18, ["Font"], ["TextStyle"], ["SplitBy"]}]
       50 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       52 SETTABLEKS                       R9 R8 K8 ["Font"]
       54 DUPTABLE                         R9 K29 [{["Strike"] = True}]
       55 SETTABLEKS                       R9 R8 K9 ["TextStyle"]
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K30 ["Symbol"]
       60 SETTABLEKS                       R9 R8 K10 ["SplitBy"]
       62 CALL                             R7 1 -1
       63 SETLIST                          R4 R5 -1 [1]
       65 SETTABLEKS                       R4 R3 K1 ["Elements"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K10 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K8 ["Font"]
       15 GETTABLEKS                       R7 R0 K14 ["controls"]
       17 GETTABLEKS                       R7 R7 K15 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K3 ["new"]
       25 DUPTABLE                         R7 K18 [{["OnClick"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       26 DUPCLOSURE                       R8 K19 [PROTO_8]
       27 SETTABLEKS                       R8 R7 K16 ["OnClick"]
       29 GETIMPORT                        R8 K13 [Enum.Font.BuilderSans]
       31 SETTABLEKS                       R8 R7 K8 ["Font"]
       33 GETTABLEKS                       R8 R0 K14 ["controls"]
       35 GETTABLEKS                       R8 R8 K15 ["splitBy"]
       37 SETTABLEKS                       R8 R7 K9 ["SplitBy"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K3 ["new"]
       43 DUPTABLE                         R8 K23 [{["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png", ["Size"], ["SplitBy"]}]
       44 GETIMPORT                        R9 K26 [UDim2.fromOffset]
       46 LOADN                            R10 100
       47 LOADN                            R11 100
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K22 ["Size"]
       51 GETTABLEKS                       R9 R0 K14 ["controls"]
       53 GETTABLEKS                       R9 R9 K15 ["splitBy"]
       55 SETTABLEKS                       R9 R8 K9 ["SplitBy"]
       57 CALL                             R7 1 1
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K3 ["new"]
       61 DUPTABLE                         R9 K28 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["TextSize"] = 18, ["Font"]}]
       62 GETIMPORT                        R10 K13 [Enum.Font.BuilderSans]
       64 SETTABLEKS                       R10 R9 K8 ["Font"]
       66 CALL                             R8 1 -1
       67 SETLIST                          R4 R5 -1 [1]
       69 SETTABLEKS                       R4 R3 K1 ["Elements"]
       71 CALL                             R1 2 -1
       72 RETURN                           R1 -1

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
       10 DUPTABLE                         R5 K9 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text", ["TextSize"] = 18, ["Font"]}]
       11 GETIMPORT                        R6 K12 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R6 R5 K8 ["Font"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K3 ["new"]
       20 DUPTABLE                         R7 K15 [{["OnClick"], ["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["TextSize"] = 18, ["Font"]}]
       21 DUPCLOSURE                       R8 K16 [PROTO_10]
       22 SETTABLEKS                       R8 R7 K13 ["OnClick"]
       24 GETIMPORT                        R8 K12 [Enum.Font.BuilderSans]
       26 SETTABLEKS                       R8 R7 K8 ["Font"]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 3
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K3 ["new"]
       33 DUPTABLE                         R9 K19 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       34 GETIMPORT                        R10 K12 [Enum.Font.BuilderSans]
       36 SETTABLEKS                       R10 R9 K8 ["Font"]
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R10 R10 K20 ["Symbol"]
       41 SETTABLEKS                       R10 R9 K18 ["SplitBy"]
       43 CALL                             R8 1 -1
       44 SETLIST                          R3 R4 -1 [1]
       46 SETTABLEKS                       R3 R2 K1 ["Elements"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K10 [{["Text"] = "Here goes some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word", ["TextSize"] = 18, ["Font"], ["SplitBy"]}]
       11 GETIMPORT                        R7 K13 [Enum.Font.BuilderSans]
       13 SETTABLEKS                       R7 R6 K8 ["Font"]
       15 GETTABLEKS                       R7 R0 K14 ["controls"]
       17 GETTABLEKS                       R7 R7 K15 ["splitBy"]
       19 SETTABLEKS                       R7 R6 K9 ["SplitBy"]
       21 CALL                             R5 1 -1
       22 SETLIST                          R4 R5 -1 [1]
       24 SETTABLEKS                       R4 R3 K1 ["Elements"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["InlineLayout"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["InlineLayout"]
       33 GETTABLEKS                       R4 R4 K11 ["TextElement"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K6 [require]
       38 GETTABLEKS                       R5 R0 K2 ["UI"]
       40 GETTABLEKS                       R5 R5 K9 ["Components"]
       42 GETTABLEKS                       R5 R5 K10 ["InlineLayout"]
       44 GETTABLEKS                       R5 R5 K12 ["LinkElement"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K6 [require]
       49 GETTABLEKS                       R6 R0 K2 ["UI"]
       51 GETTABLEKS                       R6 R6 K9 ["Components"]
       53 GETTABLEKS                       R6 R6 K10 ["InlineLayout"]
       55 GETTABLEKS                       R6 R6 K13 ["ImageElement"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K6 [require]
       60 GETTABLEKS                       R7 R0 K2 ["UI"]
       62 GETTABLEKS                       R7 R7 K9 ["Components"]
       64 GETTABLEKS                       R7 R7 K10 ["InlineLayout"]
       66 GETTABLEKS                       R7 R7 K14 ["HardBreakElement"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K6 [require]
       71 GETTABLEKS                       R8 R0 K2 ["UI"]
       73 GETTABLEKS                       R8 R8 K9 ["Components"]
       75 GETTABLEKS                       R8 R8 K10 ["InlineLayout"]
       77 GETTABLEKS                       R8 R8 K15 ["TextSplitByEnum"]
       79 CALL                             R7 1 1
       80 DUPTABLE                         R8 K18 [{"controls", "stories"}]
       81 DUPTABLE                         R9 K22 [{["splitBy"], ["text"] = "Any text you want"}]
       82 NEWTABLE                         R10 0 2
       84 GETTABLEKS                       R11 R7 K23 ["Word"]
       86 GETTABLEKS                       R12 R7 K24 ["Symbol"]
       88 SETLIST                          R10 R11 2 [1]
       90 SETTABLEKS                       R10 R9 K19 ["splitBy"]
       92 SETTABLEKS                       R9 R8 K16 ["controls"]
       94 DUPTABLE                         R9 K34 [{"CustomText", "Default", "DefaultUTF8", "SeveralTextElements", "WithLinks", "WithRichText", "WithImage", "WithHardBreak", "LongWord"}]
       95 DUPCLOSURE                       R10 K35 [PROTO_0]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R10 R9 K25 ["CustomText"]
      101 DUPCLOSURE                       R10 K36 [PROTO_1]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R10 R9 K26 ["Default"]
      107 DUPCLOSURE                       R10 K37 [PROTO_2]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R10 R9 K27 ["DefaultUTF8"]
      113 DUPCLOSURE                       R10 K38 [PROTO_3]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R10 R9 K28 ["SeveralTextElements"]
      119 DUPCLOSURE                       R10 K39 [PROTO_5]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R7
      125 SETTABLEKS                       R10 R9 K29 ["WithLinks"]
      127 DUPCLOSURE                       R10 K40 [PROTO_7]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R10 R9 K30 ["WithRichText"]
      135 DUPCLOSURE                       R10 K41 [PROTO_9]
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R10 R9 K31 ["WithImage"]
      143 DUPCLOSURE                       R10 K42 [PROTO_11]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R7
      150 SETTABLEKS                       R10 R9 K32 ["WithHardBreak"]
      152 DUPCLOSURE                       R10 K43 [PROTO_12]
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R10 R9 K33 ["LongWord"]
      158 SETTABLEKS                       R9 R8 K17 ["stories"]
      160 RETURN                           R8 1
