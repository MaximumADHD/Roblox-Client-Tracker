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
       28 NEWTABLE                         R7 0 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K3 ["new"]
       33 DUPTABLE                         R9 K20 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       34 DUPTABLE                         R10 K12 [{["Font"], ["FontSize"] = 18}]
       35 GETIMPORT                        R11 K15 [Enum.Font.BuilderSans]
       37 SETTABLEKS                       R11 R10 K9 ["Font"]
       39 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       41 NEWTABLE                         R10 0 1
       43 DUPTABLE                         R11 K23 [{"name", "attributes"}]
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K24 ["FONT"]
       47 SETTABLEKS                       R12 R11 K21 ["name"]
       49 DUPTABLE                         R12 K27 [{["color"] = "#0000FF"}]
       50 SETTABLEKS                       R12 R11 K22 ["attributes"]
       52 SETLIST                          R10 R11 1 [1]
       54 SETTABLEKS                       R10 R9 K19 ["EngineTags"]
       56 GETTABLEKS                       R10 R0 K16 ["controls"]
       58 GETTABLEKS                       R10 R10 K17 ["splitBy"]
       60 SETTABLEKS                       R10 R9 K7 ["SplitBy"]
       62 CALL                             R8 1 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 DUPTABLE                         R8 K29 [{"onActivated"}]
       66 DUPCLOSURE                       R9 K30 [PROTO_4]
       67 SETTABLEKS                       R9 R8 K28 ["onActivated"]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K3 ["new"]
       73 DUPTABLE                         R8 K32 [{["Text"] = "雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["fontStyle"], ["SplitBy"]}]
       74 DUPTABLE                         R9 K12 [{["Font"], ["FontSize"] = 18}]
       75 GETIMPORT                        R10 K15 [Enum.Font.BuilderSans]
       77 SETTABLEKS                       R10 R9 K9 ["Font"]
       79 SETTABLEKS                       R9 R8 K6 ["fontStyle"]
       81 GETUPVAL                         R9 5
       82 GETTABLEKS                       R9 R9 K33 ["Symbol"]
       84 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       86 CALL                             R7 1 -1
       87 SETLIST                          R4 R5 -1 [1]
       89 SETTABLEKS                       R4 R3 K1 ["Elements"]
       91 CALL                             R1 2 -1
       92 RETURN                           R1 -1

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
       28 NEWTABLE                         R7 0 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K3 ["new"]
       33 DUPTABLE                         R9 K20 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       34 DUPTABLE                         R10 K12 [{["Font"], ["FontSize"] = 18}]
       35 GETIMPORT                        R11 K22 [Enum.Font.BuilderSans]
       37 SETTABLEKS                       R11 R10 K9 ["Font"]
       39 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       41 NEWTABLE                         R10 0 1
       43 DUPTABLE                         R11 K25 [{"name", "attributes"}]
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K26 ["FONT"]
       47 SETTABLEKS                       R12 R11 K23 ["name"]
       49 DUPTABLE                         R12 K29 [{["color"] = "#0000FF"}]
       50 SETTABLEKS                       R12 R11 K24 ["attributes"]
       52 SETLIST                          R10 R11 1 [1]
       54 SETTABLEKS                       R10 R9 K19 ["EngineTags"]
       56 GETTABLEKS                       R10 R0 K16 ["controls"]
       58 GETTABLEKS                       R10 R10 K17 ["splitBy"]
       60 SETTABLEKS                       R10 R9 K7 ["SplitBy"]
       62 CALL                             R8 1 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 DUPTABLE                         R8 K31 [{"onActivated"}]
       66 DUPCLOSURE                       R9 K32 [PROTO_6]
       67 SETTABLEKS                       R9 R8 K30 ["onActivated"]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K3 ["new"]
       73 DUPTABLE                         R8 K34 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       74 DUPTABLE                         R9 K12 [{["Font"], ["FontSize"] = 18}]
       75 GETIMPORT                        R10 K22 [Enum.Font.BuilderSans]
       77 SETTABLEKS                       R10 R9 K9 ["Font"]
       79 SETTABLEKS                       R9 R8 K6 ["fontStyle"]
       81 NEWTABLE                         R9 0 1
       83 DUPTABLE                         R10 K25 [{"name", "attributes"}]
       84 GETUPVAL                         R11 4
       85 GETTABLEKS                       R11 R11 K35 ["STRIKE"]
       87 SETTABLEKS                       R11 R10 K23 ["name"]
       89 NEWTABLE                         R11 0 0
       91 SETTABLEKS                       R11 R10 K24 ["attributes"]
       93 SETLIST                          R9 R10 1 [1]
       95 SETTABLEKS                       R9 R8 K19 ["EngineTags"]
       97 GETUPVAL                         R9 5
       98 GETTABLEKS                       R9 R9 K36 ["Symbol"]
      100 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
      102 CALL                             R7 1 -1
      103 SETLIST                          R4 R5 -1 [1]
      105 SETTABLEKS                       R4 R3 K1 ["Elements"]
      107 CALL                             R1 2 -1
      108 RETURN                           R1 -1

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
       28 NEWTABLE                         R7 0 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K3 ["new"]
       33 DUPTABLE                         R9 K20 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       34 DUPTABLE                         R10 K12 [{["Font"], ["FontSize"] = 18}]
       35 GETIMPORT                        R11 K15 [Enum.Font.BuilderSans]
       37 SETTABLEKS                       R11 R10 K9 ["Font"]
       39 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       41 NEWTABLE                         R10 0 1
       43 DUPTABLE                         R11 K23 [{"name", "attributes"}]
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K24 ["FONT"]
       47 SETTABLEKS                       R12 R11 K21 ["name"]
       49 DUPTABLE                         R12 K27 [{["color"] = "#0000FF"}]
       50 SETTABLEKS                       R12 R11 K22 ["attributes"]
       52 SETLIST                          R10 R11 1 [1]
       54 SETTABLEKS                       R10 R9 K19 ["EngineTags"]
       56 GETTABLEKS                       R10 R0 K16 ["controls"]
       58 GETTABLEKS                       R10 R10 K17 ["splitBy"]
       60 SETTABLEKS                       R10 R9 K7 ["SplitBy"]
       62 CALL                             R8 1 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 DUPTABLE                         R8 K29 [{"onActivated"}]
       66 DUPCLOSURE                       R9 K30 [PROTO_8]
       67 SETTABLEKS                       R9 R8 K28 ["onActivated"]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R7 R7 K3 ["new"]
       73 DUPTABLE                         R8 K34 [{["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png", ["Size"], ["SplitBy"]}]
       74 GETIMPORT                        R9 K37 [UDim2.fromOffset]
       76 LOADN                            R10 100
       77 LOADN                            R11 100
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K33 ["Size"]
       81 GETTABLEKS                       R9 R0 K16 ["controls"]
       83 GETTABLEKS                       R9 R9 K17 ["splitBy"]
       85 SETTABLEKS                       R9 R8 K7 ["SplitBy"]
       87 CALL                             R7 1 1
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R8 R8 K3 ["new"]
       91 DUPTABLE                         R9 K39 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨", ["fontStyle"]}]
       92 DUPTABLE                         R10 K12 [{["Font"], ["FontSize"] = 18}]
       93 GETIMPORT                        R11 K15 [Enum.Font.BuilderSans]
       95 SETTABLEKS                       R11 R10 K9 ["Font"]
       97 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       99 CALL                             R8 1 -1
      100 SETLIST                          R4 R5 -1 [1]
      102 SETTABLEKS                       R4 R3 K1 ["Elements"]
      104 CALL                             R1 2 -1
      105 RETURN                           R1 -1

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
       23 NEWTABLE                         R7 0 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K3 ["new"]
       28 DUPTABLE                         R9 K17 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text", ["fontStyle"], ["EngineTags"]}]
       29 DUPTABLE                         R10 K11 [{["Font"], ["FontSize"] = 18}]
       30 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       32 SETTABLEKS                       R11 R10 K8 ["Font"]
       34 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       36 NEWTABLE                         R10 0 1
       38 DUPTABLE                         R11 K20 [{"name", "attributes"}]
       39 GETUPVAL                         R12 5
       40 GETTABLEKS                       R12 R12 K21 ["FONT"]
       42 SETTABLEKS                       R12 R11 K18 ["name"]
       44 DUPTABLE                         R12 K24 [{["color"] = "#0000FF"}]
       45 SETTABLEKS                       R12 R11 K19 ["attributes"]
       47 SETLIST                          R10 R11 1 [1]
       49 SETTABLEKS                       R10 R9 K16 ["EngineTags"]
       51 CALL                             R8 1 -1
       52 SETLIST                          R7 R8 -1 [1]
       54 DUPTABLE                         R8 K26 [{"onActivated"}]
       55 DUPCLOSURE                       R9 K27 [PROTO_10]
       56 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 3
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K3 ["new"]
       63 DUPTABLE                         R9 K30 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ", ["fontStyle"], ["SplitBy"]}]
       64 DUPTABLE                         R10 K11 [{["Font"], ["FontSize"] = 18}]
       65 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       67 SETTABLEKS                       R11 R10 K8 ["Font"]
       69 SETTABLEKS                       R10 R9 K6 ["fontStyle"]
       71 GETUPVAL                         R10 6
       72 GETTABLEKS                       R10 R10 K31 ["Symbol"]
       74 SETTABLEKS                       R10 R9 K29 ["SplitBy"]
       76 CALL                             R8 1 -1
       77 SETLIST                          R3 R4 -1 [1]
       79 SETTABLEKS                       R3 R2 K1 ["Elements"]
       81 CALL                             R0 2 -1
       82 RETURN                           R0 -1

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

PROTO_13:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"VerticalPadding", "HorizontalAlignment", "Elements"}]
        5 GETIMPORT                        R4 K7 [UDim.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 20
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["VerticalPadding"]
       12 GETIMPORT                        R4 K10 [Enum.HorizontalAlignment.Center]
       14 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       16 NEWTABLE                         R4 0 3
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K6 ["new"]
       21 DUPTABLE                         R6 K15 [{["Text"] = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ", ["fontStyle"], ["SplitBy"]}]
       22 DUPTABLE                         R7 K19 [{["Font"], ["FontSize"] = 18}]
       23 GETIMPORT                        R8 K21 [Enum.Font.BuilderSansBold]
       25 SETTABLEKS                       R8 R7 K16 ["Font"]
       27 SETTABLEKS                       R7 R6 K13 ["fontStyle"]
       29 GETTABLEKS                       R7 R0 K22 ["controls"]
       31 GETTABLEKS                       R7 R7 K23 ["splitBy"]
       33 SETTABLEKS                       R7 R6 K14 ["SplitBy"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K6 ["new"]
       39 NEWTABLE                         R7 0 1
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K6 ["new"]
       44 DUPTABLE                         R9 K26 [{["Text"] = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       45 DUPTABLE                         R10 K19 [{["Font"], ["FontSize"] = 18}]
       46 GETIMPORT                        R11 K28 [Enum.Font.BuilderSans]
       48 SETTABLEKS                       R11 R10 K16 ["Font"]
       50 SETTABLEKS                       R10 R9 K13 ["fontStyle"]
       52 NEWTABLE                         R10 0 1
       54 DUPTABLE                         R11 K31 [{"name", "attributes"}]
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K32 ["FONT"]
       58 SETTABLEKS                       R12 R11 K29 ["name"]
       60 DUPTABLE                         R12 K35 [{["color"] = "#0000FF"}]
       61 SETTABLEKS                       R12 R11 K30 ["attributes"]
       63 SETLIST                          R10 R11 1 [1]
       65 SETTABLEKS                       R10 R9 K25 ["EngineTags"]
       67 GETTABLEKS                       R10 R0 K22 ["controls"]
       69 GETTABLEKS                       R10 R10 K23 ["splitBy"]
       71 SETTABLEKS                       R10 R9 K14 ["SplitBy"]
       73 CALL                             R8 1 -1
       74 SETLIST                          R7 R8 -1 [1]
       76 DUPTABLE                         R8 K37 [{"onActivated"}]
       77 DUPCLOSURE                       R9 K38 [PROTO_13]
       78 SETTABLEKS                       R9 R8 K36 ["onActivated"]
       80 CALL                             R6 2 1
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K6 ["new"]
       84 DUPTABLE                         R8 K40 [{["Text"] = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ", ["fontStyle"], ["EngineTags"], ["SplitBy"]}]
       85 DUPTABLE                         R9 K19 [{["Font"], ["FontSize"] = 18}]
       86 GETIMPORT                        R10 K28 [Enum.Font.BuilderSans]
       88 SETTABLEKS                       R10 R9 K16 ["Font"]
       90 SETTABLEKS                       R9 R8 K13 ["fontStyle"]
       92 NEWTABLE                         R9 0 1
       94 DUPTABLE                         R10 K31 [{"name", "attributes"}]
       95 GETUPVAL                         R11 4
       96 GETTABLEKS                       R11 R11 K41 ["STRIKE"]
       98 SETTABLEKS                       R11 R10 K29 ["name"]
      100 NEWTABLE                         R11 0 0
      102 SETTABLEKS                       R11 R10 K30 ["attributes"]
      104 SETLIST                          R9 R10 1 [1]
      106 SETTABLEKS                       R9 R8 K25 ["EngineTags"]
      108 GETUPVAL                         R9 5
      109 GETTABLEKS                       R9 R9 K42 ["Symbol"]
      111 SETTABLEKS                       R9 R8 K14 ["SplitBy"]
      113 CALL                             R7 1 -1
      114 SETLIST                          R4 R5 -1 [1]
      116 SETTABLEKS                       R4 R3 K3 ["Elements"]
      118 CALL                             R1 2 -1
      119 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K8 ["InlineLayoutElements"]
       24 GETTABLEKS                       R4 R4 K9 ["TextElement"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R5 R5 K4 ["Parent"]
       33 GETTABLEKS                       R5 R5 K8 ["InlineLayoutElements"]
       35 GETTABLEKS                       R5 R5 K10 ["LinkElement"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETIMPORT                        R6 K1 [script]
       42 GETTABLEKS                       R6 R6 K4 ["Parent"]
       44 GETTABLEKS                       R6 R6 K8 ["InlineLayoutElements"]
       46 GETTABLEKS                       R6 R6 K11 ["ImageElement"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K6 [require]
       51 GETIMPORT                        R7 K1 [script]
       53 GETTABLEKS                       R7 R7 K4 ["Parent"]
       55 GETTABLEKS                       R7 R7 K8 ["InlineLayoutElements"]
       57 GETTABLEKS                       R7 R7 K12 ["HardBreakElement"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K6 [require]
       62 GETTABLEKS                       R8 R0 K13 ["Enums"]
       64 GETTABLEKS                       R8 R8 K14 ["TextSplitBy"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K6 [require]
       69 GETTABLEKS                       R9 R0 K2 ["Components"]
       71 GETTABLEKS                       R9 R9 K15 ["InlineLayout"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K6 [require]
       76 GETTABLEKS                       R10 R1 K16 ["MarkdownCore"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R9 K13 ["Enums"]
       81 GETTABLEKS                       R10 R10 K17 ["InlineEngineTag"]
       83 DUPTABLE                         R11 K22 [{["summary"] = "A component that lays out inline elements such as text, links, and images.", ["controls"], ["stories"]}]
       84 DUPTABLE                         R12 K26 [{["splitBy"], ["text"] = "Any text you want"}]
       85 NEWTABLE                         R13 0 2
       87 GETTABLEKS                       R14 R7 K27 ["Word"]
       89 GETTABLEKS                       R15 R7 K28 ["Symbol"]
       91 SETLIST                          R13 R14 2 [1]
       93 SETTABLEKS                       R13 R12 K23 ["splitBy"]
       95 SETTABLEKS                       R12 R11 K20 ["controls"]
       97 NEWTABLE                         R12 0 10
       99 DUPTABLE                         R13 K33 [{["name"] = "CustomText", ["summary"] = "Type a custom text and choice split mode.", ["story"]}]
      100 DUPCLOSURE                       R14 K34 [PROTO_0]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R14 R13 K32 ["story"]
      106 DUPTABLE                         R14 K37 [{["name"] = "Default", ["summary"] = "InlineLayout can render a single TextElement with a long English text", ["story"]}]
      107 DUPCLOSURE                       R15 K38 [PROTO_1]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R15 R14 K32 ["story"]
      113 DUPTABLE                         R15 K41 [{["name"] = "DefaultUTF8", ["summary"] = "InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)", ["story"]}]
      114 DUPCLOSURE                       R16 K42 [PROTO_2]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R16 R15 K32 ["story"]
      120 DUPTABLE                         R16 K45 [{["name"] = "SeveralTextElements", ["summary"] = "InlineLayout can render a multiple TextElements in different languages.", ["story"]}]
      121 DUPCLOSURE                       R17 K46 [PROTO_3]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R17 R16 K32 ["story"]
      127 DUPTABLE                         R17 K49 [{["name"] = "WithLinks", ["summary"] = "InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting.", ["story"]}]
      128 DUPCLOSURE                       R18 K50 [PROTO_5]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R7
      135 SETTABLEKS                       R18 R17 K32 ["story"]
      137 DUPTABLE                         R18 K53 [{["name"] = "WithRichText", ["summary"] = "InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough).", ["story"]}]
      138 DUPCLOSURE                       R19 K54 [PROTO_7]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R19 R18 K32 ["story"]
      147 DUPTABLE                         R19 K57 [{["name"] = "WithImage", ["summary"] = "InlineLayout can render Images with TextElements, LinkElements", ["story"]}]
      148 DUPCLOSURE                       R20 K58 [PROTO_9]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R20 R19 K32 ["story"]
      157 DUPTABLE                         R20 K61 [{["name"] = "WithHardBreak", ["summary"] = "Elements can be separated by hard breaks to force line breaks in specific places.", ["story"]}]
      158 DUPCLOSURE                       R21 K62 [PROTO_11]
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R7
      166 SETTABLEKS                       R21 R20 K32 ["story"]
      168 DUPTABLE                         R21 K65 [{["name"] = "LongWord", ["summary"] = "InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries", ["story"]}]
      169 DUPCLOSURE                       R22 K66 [PROTO_12]
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R22 R21 K32 ["story"]
      175 DUPTABLE                         R22 K69 [{["name"] = "With Custom Padding and Alignment", ["summary"] = "InlineLayout can render elements with custom vertical padding and horizontal alignment.", ["story"]}]
      176 DUPCLOSURE                       R23 K70 [PROTO_14]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R7
      183 SETTABLEKS                       R23 R22 K32 ["story"]
      185 SETLIST                          R12 R13 10 [1]
      187 SETTABLEKS                       R12 R11 K21 ["stories"]
      189 RETURN                           R11 1
