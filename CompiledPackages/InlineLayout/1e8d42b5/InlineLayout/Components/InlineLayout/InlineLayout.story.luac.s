PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
       11 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       12 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       14 SETTABLEKS                       R8 R7 K9 ["Font"]
       16 LOADN                            R8 18
       17 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       19 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       21 LOADN                            R7 2
       22 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["text"]
       28 SETTABLEKS                       R7 R6 K6 ["Text"]
       30 GETTABLEKS                       R7 R0 K15 ["controls"]
       32 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       34 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       36 CALL                             R5 1 -1
       37 SETLIST                          R4 R5 -1 [1]
       39 SETTABLEKS                       R4 R3 K1 ["Elements"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
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
       27 GETTABLEKS                       R7 R0 K16 ["controls"]
       29 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       33 CALL                             R5 1 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 SETTABLEKS                       R4 R3 K1 ["Elements"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
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
       27 GETTABLEKS                       R7 R0 K16 ["controls"]
       29 GETTABLEKS                       R7 R7 K17 ["splitBy"]
       31 SETTABLEKS                       R7 R6 K7 ["SplitBy"]
       33 CALL                             R5 1 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 SETTABLEKS                       R4 R3 K1 ["Elements"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K3 ["new"]
       34 DUPTABLE                         R7 K7 [{"Text", "fontStyle", "SplitBy"}]
       35 LOADK                            R8 K17 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. "]
       36 SETTABLEKS                       R8 R7 K4 ["Text"]
       38 DUPTABLE                         R8 K11 [{"Font", "FontSize"}]
       39 GETIMPORT                        R9 K14 [Enum.Font.BuilderSans]
       41 SETTABLEKS                       R9 R8 K9 ["Font"]
       43 LOADN                            R9 18
       44 SETTABLEKS                       R9 R8 K10 ["FontSize"]
       46 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       48 GETTABLEKS                       R8 R0 K15 ["controls"]
       50 GETTABLEKS                       R8 R8 K16 ["splitBy"]
       52 SETTABLEKS                       R8 R7 K6 ["SplitBy"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K3 ["new"]
       58 DUPTABLE                         R8 K7 [{"Text", "fontStyle", "SplitBy"}]
       59 LOADK                            R9 K18 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       60 SETTABLEKS                       R9 R8 K4 ["Text"]
       62 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       63 GETIMPORT                        R10 K14 [Enum.Font.BuilderSans]
       65 SETTABLEKS                       R10 R9 K9 ["Font"]
       67 LOADN                            R10 18
       68 SETTABLEKS                       R10 R9 K10 ["FontSize"]
       70 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
       72 GETTABLEKS                       R9 R0 K15 ["controls"]
       74 GETTABLEKS                       R9 R9 K16 ["splitBy"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 3
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K3 ["new"]
       34 NEWTABLE                         R7 0 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K3 ["new"]
       39 DUPTABLE                         R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
       40 LOADK                            R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       41 SETTABLEKS                       R10 R9 K4 ["Text"]
       43 DUPTABLE                         R10 K11 [{"Font", "FontSize"}]
       44 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       46 SETTABLEKS                       R11 R10 K9 ["Font"]
       48 LOADN                            R11 18
       49 SETTABLEKS                       R11 R10 K10 ["FontSize"]
       51 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       53 NEWTABLE                         R10 0 1
       55 DUPTABLE                         R11 K22 [{"name", "attributes"}]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K23 ["FONT"]
       59 SETTABLEKS                       R12 R11 K20 ["name"]
       61 DUPTABLE                         R12 K25 [{"color"}]
       62 LOADK                            R13 K26 ["#0000FF"]
       63 SETTABLEKS                       R13 R12 K24 ["color"]
       65 SETTABLEKS                       R12 R11 K21 ["attributes"]
       67 SETLIST                          R10 R11 1 [1]
       69 SETTABLEKS                       R10 R9 K17 ["EngineTags"]
       71 GETTABLEKS                       R10 R0 K15 ["controls"]
       73 GETTABLEKS                       R10 R10 K16 ["splitBy"]
       75 SETTABLEKS                       R10 R9 K6 ["SplitBy"]
       77 CALL                             R8 1 -1
       78 SETLIST                          R7 R8 -1 [1]
       80 DUPTABLE                         R8 K28 [{"onActivated"}]
       81 DUPCLOSURE                       R9 K29 [PROTO_4]
       82 SETTABLEKS                       R9 R8 K27 ["onActivated"]
       84 CALL                             R6 2 1
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K3 ["new"]
       88 DUPTABLE                         R8 K7 [{"Text", "fontStyle", "SplitBy"}]
       89 LOADK                            R9 K30 ["雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
       90 SETTABLEKS                       R9 R8 K4 ["Text"]
       92 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       93 GETIMPORT                        R10 K14 [Enum.Font.BuilderSans]
       95 SETTABLEKS                       R10 R9 K9 ["Font"]
       97 LOADN                            R10 18
       98 SETTABLEKS                       R10 R9 K10 ["FontSize"]
      100 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K31 ["Symbol"]
      105 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
      107 CALL                             R7 1 -1
      108 SETLIST                          R4 R5 -1 [1]
      110 SETTABLEKS                       R4 R3 K1 ["Elements"]
      112 CALL                             R1 2 -1
      113 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSansBold]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K3 ["new"]
       34 NEWTABLE                         R7 0 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K3 ["new"]
       39 DUPTABLE                         R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
       40 LOADK                            R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       41 SETTABLEKS                       R10 R9 K4 ["Text"]
       43 DUPTABLE                         R10 K11 [{"Font", "FontSize"}]
       44 GETIMPORT                        R11 K21 [Enum.Font.BuilderSans]
       46 SETTABLEKS                       R11 R10 K9 ["Font"]
       48 LOADN                            R11 18
       49 SETTABLEKS                       R11 R10 K10 ["FontSize"]
       51 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       53 NEWTABLE                         R10 0 1
       55 DUPTABLE                         R11 K24 [{"name", "attributes"}]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K25 ["FONT"]
       59 SETTABLEKS                       R12 R11 K22 ["name"]
       61 DUPTABLE                         R12 K27 [{"color"}]
       62 LOADK                            R13 K28 ["#0000FF"]
       63 SETTABLEKS                       R13 R12 K26 ["color"]
       65 SETTABLEKS                       R12 R11 K23 ["attributes"]
       67 SETLIST                          R10 R11 1 [1]
       69 SETTABLEKS                       R10 R9 K17 ["EngineTags"]
       71 GETTABLEKS                       R10 R0 K15 ["controls"]
       73 GETTABLEKS                       R10 R10 K16 ["splitBy"]
       75 SETTABLEKS                       R10 R9 K6 ["SplitBy"]
       77 CALL                             R8 1 -1
       78 SETLIST                          R7 R8 -1 [1]
       80 DUPTABLE                         R8 K30 [{"onActivated"}]
       81 DUPCLOSURE                       R9 K31 [PROTO_6]
       82 SETTABLEKS                       R9 R8 K29 ["onActivated"]
       84 CALL                             R6 2 1
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K3 ["new"]
       88 DUPTABLE                         R8 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
       89 LOADK                            R9 K32 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
       90 SETTABLEKS                       R9 R8 K4 ["Text"]
       92 DUPTABLE                         R9 K11 [{"Font", "FontSize"}]
       93 GETIMPORT                        R10 K21 [Enum.Font.BuilderSans]
       95 SETTABLEKS                       R10 R9 K9 ["Font"]
       97 LOADN                            R10 18
       98 SETTABLEKS                       R10 R9 K10 ["FontSize"]
      100 SETTABLEKS                       R9 R8 K5 ["fontStyle"]
      102 NEWTABLE                         R9 0 1
      104 DUPTABLE                         R10 K24 [{"name", "attributes"}]
      105 GETUPVAL                         R11 4
      106 GETTABLEKS                       R11 R11 K33 ["STRIKE"]
      108 SETTABLEKS                       R11 R10 K22 ["name"]
      110 NEWTABLE                         R11 0 0
      112 SETTABLEKS                       R11 R10 K23 ["attributes"]
      114 SETLIST                          R9 R10 1 [1]
      116 SETTABLEKS                       R9 R8 K17 ["EngineTags"]
      118 GETUPVAL                         R9 5
      119 GETTABLEKS                       R9 R9 K34 ["Symbol"]
      121 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
      123 CALL                             R7 1 -1
      124 SETLIST                          R4 R5 -1 [1]
      126 SETTABLEKS                       R4 R3 K1 ["Elements"]
      128 CALL                             R1 2 -1
      129 RETURN                           R1 -1

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
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K3 ["new"]
       34 NEWTABLE                         R7 0 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K3 ["new"]
       39 DUPTABLE                         R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
       40 LOADK                            R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       41 SETTABLEKS                       R10 R9 K4 ["Text"]
       43 DUPTABLE                         R10 K11 [{"Font", "FontSize"}]
       44 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
       46 SETTABLEKS                       R11 R10 K9 ["Font"]
       48 LOADN                            R11 18
       49 SETTABLEKS                       R11 R10 K10 ["FontSize"]
       51 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       53 NEWTABLE                         R10 0 1
       55 DUPTABLE                         R11 K22 [{"name", "attributes"}]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K23 ["FONT"]
       59 SETTABLEKS                       R12 R11 K20 ["name"]
       61 DUPTABLE                         R12 K25 [{"color"}]
       62 LOADK                            R13 K26 ["#0000FF"]
       63 SETTABLEKS                       R13 R12 K24 ["color"]
       65 SETTABLEKS                       R12 R11 K21 ["attributes"]
       67 SETLIST                          R10 R11 1 [1]
       69 SETTABLEKS                       R10 R9 K17 ["EngineTags"]
       71 GETTABLEKS                       R10 R0 K15 ["controls"]
       73 GETTABLEKS                       R10 R10 K16 ["splitBy"]
       75 SETTABLEKS                       R10 R9 K6 ["SplitBy"]
       77 CALL                             R8 1 -1
       78 SETLIST                          R7 R8 -1 [1]
       80 DUPTABLE                         R8 K28 [{"onActivated"}]
       81 DUPCLOSURE                       R9 K29 [PROTO_8]
       82 SETTABLEKS                       R9 R8 K27 ["onActivated"]
       84 CALL                             R6 2 1
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K3 ["new"]
       88 DUPTABLE                         R8 K32 [{"Image", "Size", "SplitBy"}]
       89 LOADK                            R9 K33 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       90 SETTABLEKS                       R9 R8 K30 ["Image"]
       92 GETIMPORT                        R9 K36 [UDim2.fromOffset]
       94 LOADN                            R10 100
       95 LOADN                            R11 100
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K31 ["Size"]
       99 GETTABLEKS                       R9 R0 K15 ["controls"]
      101 GETTABLEKS                       R9 R9 K16 ["splitBy"]
      103 SETTABLEKS                       R9 R8 K6 ["SplitBy"]
      105 CALL                             R7 1 1
      106 GETUPVAL                         R8 2
      107 GETTABLEKS                       R8 R8 K3 ["new"]
      109 DUPTABLE                         R9 K37 [{"Text", "fontStyle"}]
      110 LOADK                            R10 K38 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
      111 SETTABLEKS                       R10 R9 K4 ["Text"]
      113 DUPTABLE                         R10 K11 [{"Font", "FontSize"}]
      114 GETIMPORT                        R11 K14 [Enum.Font.BuilderSans]
      116 SETTABLEKS                       R11 R10 K9 ["Font"]
      118 LOADN                            R11 18
      119 SETTABLEKS                       R11 R10 K10 ["FontSize"]
      121 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
      123 CALL                             R8 1 -1
      124 SETLIST                          R4 R5 -1 [1]
      126 SETTABLEKS                       R4 R3 K1 ["Elements"]
      128 CALL                             R1 2 -1
      129 RETURN                           R1 -1

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
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K3 ["new"]
       29 NEWTABLE                         R7 0 1
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K3 ["new"]
       34 DUPTABLE                         R9 K15 [{"Text", "fontStyle", "EngineTags"}]
       35 LOADK                            R10 K16 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
       36 SETTABLEKS                       R10 R9 K4 ["Text"]
       38 DUPTABLE                         R10 K10 [{"Font", "FontSize"}]
       39 GETIMPORT                        R11 K13 [Enum.Font.BuilderSans]
       41 SETTABLEKS                       R11 R10 K8 ["Font"]
       43 LOADN                            R11 18
       44 SETTABLEKS                       R11 R10 K9 ["FontSize"]
       46 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       48 NEWTABLE                         R10 0 1
       50 DUPTABLE                         R11 K19 [{"name", "attributes"}]
       51 GETUPVAL                         R12 5
       52 GETTABLEKS                       R12 R12 K20 ["FONT"]
       54 SETTABLEKS                       R12 R11 K17 ["name"]
       56 DUPTABLE                         R12 K22 [{"color"}]
       57 LOADK                            R13 K23 ["#0000FF"]
       58 SETTABLEKS                       R13 R12 K21 ["color"]
       60 SETTABLEKS                       R12 R11 K18 ["attributes"]
       62 SETLIST                          R10 R11 1 [1]
       64 SETTABLEKS                       R10 R9 K14 ["EngineTags"]
       66 CALL                             R8 1 -1
       67 SETLIST                          R7 R8 -1 [1]
       69 DUPTABLE                         R8 K25 [{"onActivated"}]
       70 DUPCLOSURE                       R9 K26 [PROTO_10]
       71 SETTABLEKS                       R9 R8 K24 ["onActivated"]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R7 3
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K3 ["new"]
       78 DUPTABLE                         R9 K28 [{"Text", "fontStyle", "SplitBy"}]
       79 LOADK                            R10 K29 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
       80 SETTABLEKS                       R10 R9 K4 ["Text"]
       82 DUPTABLE                         R10 K10 [{"Font", "FontSize"}]
       83 GETIMPORT                        R11 K13 [Enum.Font.BuilderSans]
       85 SETTABLEKS                       R11 R10 K8 ["Font"]
       87 LOADN                            R11 18
       88 SETTABLEKS                       R11 R10 K9 ["FontSize"]
       90 SETTABLEKS                       R10 R9 K5 ["fontStyle"]
       92 GETUPVAL                         R10 6
       93 GETTABLEKS                       R10 R10 K30 ["Symbol"]
       95 SETTABLEKS                       R10 R9 K27 ["SplitBy"]
       97 CALL                             R8 1 -1
       98 SETLIST                          R3 R4 -1 [1]
      100 SETTABLEKS                       R3 R2 K1 ["Elements"]
      102 CALL                             R0 2 -1
      103 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Elements"}]
        5 NEWTABLE                         R4 0 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["new"]
       10 DUPTABLE                         R6 K7 [{"Text", "fontStyle", "SplitBy"}]
       11 LOADK                            R7 K8 ["Here goes some some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word"]
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 DUPTABLE                         R7 K11 [{"Font", "FontSize"}]
       15 GETIMPORT                        R8 K14 [Enum.Font.BuilderSans]
       17 SETTABLEKS                       R8 R7 K9 ["Font"]
       19 LOADN                            R8 18
       20 SETTABLEKS                       R8 R7 K10 ["FontSize"]
       22 SETTABLEKS                       R7 R6 K5 ["fontStyle"]
       24 GETTABLEKS                       R7 R0 K15 ["controls"]
       26 GETTABLEKS                       R7 R7 K16 ["splitBy"]
       28 SETTABLEKS                       R7 R6 K6 ["SplitBy"]
       30 CALL                             R5 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["Elements"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

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
       21 DUPTABLE                         R6 K14 [{"Text", "fontStyle", "SplitBy"}]
       22 LOADK                            R7 K15 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
       23 SETTABLEKS                       R7 R6 K11 ["Text"]
       25 DUPTABLE                         R7 K18 [{"Font", "FontSize"}]
       26 GETIMPORT                        R8 K20 [Enum.Font.BuilderSansBold]
       28 SETTABLEKS                       R8 R7 K16 ["Font"]
       30 LOADN                            R8 18
       31 SETTABLEKS                       R8 R7 K17 ["FontSize"]
       33 SETTABLEKS                       R7 R6 K12 ["fontStyle"]
       35 GETTABLEKS                       R7 R0 K21 ["controls"]
       37 GETTABLEKS                       R7 R7 K22 ["splitBy"]
       39 SETTABLEKS                       R7 R6 K13 ["SplitBy"]
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K6 ["new"]
       45 NEWTABLE                         R7 0 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K6 ["new"]
       50 DUPTABLE                         R9 K24 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
       51 LOADK                            R10 K25 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
       52 SETTABLEKS                       R10 R9 K11 ["Text"]
       54 DUPTABLE                         R10 K18 [{"Font", "FontSize"}]
       55 GETIMPORT                        R11 K27 [Enum.Font.BuilderSans]
       57 SETTABLEKS                       R11 R10 K16 ["Font"]
       59 LOADN                            R11 18
       60 SETTABLEKS                       R11 R10 K17 ["FontSize"]
       62 SETTABLEKS                       R10 R9 K12 ["fontStyle"]
       64 NEWTABLE                         R10 0 1
       66 DUPTABLE                         R11 K30 [{"name", "attributes"}]
       67 GETUPVAL                         R12 4
       68 GETTABLEKS                       R12 R12 K31 ["FONT"]
       70 SETTABLEKS                       R12 R11 K28 ["name"]
       72 DUPTABLE                         R12 K33 [{"color"}]
       73 LOADK                            R13 K34 ["#0000FF"]
       74 SETTABLEKS                       R13 R12 K32 ["color"]
       76 SETTABLEKS                       R12 R11 K29 ["attributes"]
       78 SETLIST                          R10 R11 1 [1]
       80 SETTABLEKS                       R10 R9 K23 ["EngineTags"]
       82 GETTABLEKS                       R10 R0 K21 ["controls"]
       84 GETTABLEKS                       R10 R10 K22 ["splitBy"]
       86 SETTABLEKS                       R10 R9 K13 ["SplitBy"]
       88 CALL                             R8 1 -1
       89 SETLIST                          R7 R8 -1 [1]
       91 DUPTABLE                         R8 K36 [{"onActivated"}]
       92 DUPCLOSURE                       R9 K37 [PROTO_13]
       93 SETTABLEKS                       R9 R8 K35 ["onActivated"]
       95 CALL                             R6 2 1
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K6 ["new"]
       99 DUPTABLE                         R8 K24 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
      100 LOADK                            R9 K38 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
      101 SETTABLEKS                       R9 R8 K11 ["Text"]
      103 DUPTABLE                         R9 K18 [{"Font", "FontSize"}]
      104 GETIMPORT                        R10 K27 [Enum.Font.BuilderSans]
      106 SETTABLEKS                       R10 R9 K16 ["Font"]
      108 LOADN                            R10 18
      109 SETTABLEKS                       R10 R9 K17 ["FontSize"]
      111 SETTABLEKS                       R9 R8 K12 ["fontStyle"]
      113 NEWTABLE                         R9 0 1
      115 DUPTABLE                         R10 K30 [{"name", "attributes"}]
      116 GETUPVAL                         R11 4
      117 GETTABLEKS                       R11 R11 K39 ["STRIKE"]
      119 SETTABLEKS                       R11 R10 K28 ["name"]
      121 NEWTABLE                         R11 0 0
      123 SETTABLEKS                       R11 R10 K29 ["attributes"]
      125 SETLIST                          R9 R10 1 [1]
      127 SETTABLEKS                       R9 R8 K23 ["EngineTags"]
      129 GETUPVAL                         R9 5
      130 GETTABLEKS                       R9 R9 K40 ["Symbol"]
      132 SETTABLEKS                       R9 R8 K13 ["SplitBy"]
      134 CALL                             R7 1 -1
      135 SETLIST                          R4 R5 -1 [1]
      137 SETTABLEKS                       R4 R3 K3 ["Elements"]
      139 CALL                             R1 2 -1
      140 RETURN                           R1 -1

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
       83 DUPTABLE                         R11 K21 [{"summary", "controls", "stories"}]
       84 LOADK                            R12 K22 ["A component that lays out inline elements such as text, links, and images."]
       85 SETTABLEKS                       R12 R11 K18 ["summary"]
       87 DUPTABLE                         R12 K25 [{"splitBy", "text"}]
       88 NEWTABLE                         R13 0 2
       90 GETTABLEKS                       R14 R7 K26 ["Word"]
       92 GETTABLEKS                       R15 R7 K27 ["Symbol"]
       94 SETLIST                          R13 R14 2 [1]
       96 SETTABLEKS                       R13 R12 K23 ["splitBy"]
       98 LOADK                            R13 K28 ["Any text you want"]
       99 SETTABLEKS                       R13 R12 K24 ["text"]
      101 SETTABLEKS                       R12 R11 K19 ["controls"]
      103 NEWTABLE                         R12 0 10
      105 DUPTABLE                         R13 K31 [{"name", "summary", "story"}]
      106 LOADK                            R14 K32 ["CustomText"]
      107 SETTABLEKS                       R14 R13 K29 ["name"]
      109 LOADK                            R14 K33 ["Type a custom text and choice split mode."]
      110 SETTABLEKS                       R14 R13 K18 ["summary"]
      112 DUPCLOSURE                       R14 K34 [PROTO_0]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R14 R13 K30 ["story"]
      118 DUPTABLE                         R14 K31 [{"name", "summary", "story"}]
      119 LOADK                            R15 K35 ["Default"]
      120 SETTABLEKS                       R15 R14 K29 ["name"]
      122 LOADK                            R15 K36 ["InlineLayout can render a single TextElement with a long English text"]
      123 SETTABLEKS                       R15 R14 K18 ["summary"]
      125 DUPCLOSURE                       R15 K37 [PROTO_1]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R15 R14 K30 ["story"]
      131 DUPTABLE                         R15 K31 [{"name", "summary", "story"}]
      132 LOADK                            R16 K38 ["DefaultUTF8"]
      133 SETTABLEKS                       R16 R15 K29 ["name"]
      135 LOADK                            R16 K39 ["InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)"]
      136 SETTABLEKS                       R16 R15 K18 ["summary"]
      138 DUPCLOSURE                       R16 K40 [PROTO_2]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R16 R15 K30 ["story"]
      144 DUPTABLE                         R16 K31 [{"name", "summary", "story"}]
      145 LOADK                            R17 K41 ["SeveralTextElements"]
      146 SETTABLEKS                       R17 R16 K29 ["name"]
      148 LOADK                            R17 K42 ["InlineLayout can render a multiple TextElements in different languages."]
      149 SETTABLEKS                       R17 R16 K18 ["summary"]
      151 DUPCLOSURE                       R17 K43 [PROTO_3]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R17 R16 K30 ["story"]
      157 DUPTABLE                         R17 K31 [{"name", "summary", "story"}]
      158 LOADK                            R18 K44 ["WithLinks"]
      159 SETTABLEKS                       R18 R17 K29 ["name"]
      161 LOADK                            R18 K45 ["InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting."]
      162 SETTABLEKS                       R18 R17 K18 ["summary"]
      164 DUPCLOSURE                       R18 K46 [PROTO_5]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R18 R17 K30 ["story"]
      173 DUPTABLE                         R18 K31 [{"name", "summary", "story"}]
      174 LOADK                            R19 K47 ["WithRichText"]
      175 SETTABLEKS                       R19 R18 K29 ["name"]
      177 LOADK                            R19 K48 ["InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough)."]
      178 SETTABLEKS                       R19 R18 K18 ["summary"]
      180 DUPCLOSURE                       R19 K49 [PROTO_7]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R7
      187 SETTABLEKS                       R19 R18 K30 ["story"]
      189 DUPTABLE                         R19 K31 [{"name", "summary", "story"}]
      190 LOADK                            R20 K50 ["WithImage"]
      191 SETTABLEKS                       R20 R19 K29 ["name"]
      193 LOADK                            R20 K51 ["InlineLayout can render Images with TextElements, LinkElements"]
      194 SETTABLEKS                       R20 R19 K18 ["summary"]
      196 DUPCLOSURE                       R20 K52 [PROTO_9]
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R5
      203 SETTABLEKS                       R20 R19 K30 ["story"]
      205 DUPTABLE                         R20 K31 [{"name", "summary", "story"}]
      206 LOADK                            R21 K53 ["WithHardBreak"]
      207 SETTABLEKS                       R21 R20 K29 ["name"]
      209 LOADK                            R21 K54 ["Elements can be separated by hard breaks to force line breaks in specific places."]
      210 SETTABLEKS                       R21 R20 K18 ["summary"]
      212 DUPCLOSURE                       R21 K55 [PROTO_11]
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R7
      220 SETTABLEKS                       R21 R20 K30 ["story"]
      222 DUPTABLE                         R21 K31 [{"name", "summary", "story"}]
      223 LOADK                            R22 K56 ["LongWord"]
      224 SETTABLEKS                       R22 R21 K29 ["name"]
      226 LOADK                            R22 K57 ["InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries"]
      227 SETTABLEKS                       R22 R21 K18 ["summary"]
      229 DUPCLOSURE                       R22 K58 [PROTO_12]
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R3
      233 SETTABLEKS                       R22 R21 K30 ["story"]
      235 DUPTABLE                         R22 K31 [{"name", "summary", "story"}]
      236 LOADK                            R23 K59 ["With Custom Padding and Alignment"]
      237 SETTABLEKS                       R23 R22 K29 ["name"]
      239 LOADK                            R23 K60 ["InlineLayout can render elements with custom vertical padding and horizontal alignment."]
      240 SETTABLEKS                       R23 R22 K18 ["summary"]
      242 DUPCLOSURE                       R23 K61 [PROTO_14]
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R7
      249 SETTABLEKS                       R23 R22 K30 ["story"]
      251 SETLIST                          R12 R13 10 [1]
      253 SETTABLEKS                       R12 R11 K20 ["stories"]
      255 RETURN                           R11 1
