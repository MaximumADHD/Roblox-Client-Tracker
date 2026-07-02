PROTO_0:
        0 JUMPIF                           R0 ; [+7]
        1 GETIMPORT                        R2 K1 [warn]
        3 LOADK                            R4 K2 ["Error on request: "]
        4 MOVE                             R5 R1
        5 CONCAT                           R3 R4 R5
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K3 ["Success"]
       10 JUMPIF                           R2 ; [+14]
       11 GETIMPORT                        R2 K1 [warn]
       13 LOADK                            R4 K4 ["Error returned: "]
       14 GETTABLEKS                       R5 R1 K5 ["StatusCode"]
       16 LOADK                            R6 K6 [" "]
       17 GETTABLEKS                       R7 R1 K7 ["StatusMessage"]
       19 LOADK                            R8 K6 [" "]
       20 GETTABLEKS                       R9 R1 K8 ["Body"]
       22 CONCAT                           R3 R4 R9
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K6 [{[1] = "https://apis.sitetest1.robloxlabs.com/image-localization-api/v1/image-localization/ingest", ["Method"] = "POST", ["Headers"], ["Body"]}]
        2 NEWTABLE                         R4 1 0
        4 LOADK                            R5 K7 ["application/json"]
        5 SETTABLEKS                       R5 R4 K8 ["Content-Type"]
        7 SETTABLEKS                       R4 R3 K4 ["Headers"]
        9 SETTABLEKS                       R0 R3 K5 ["Body"]
       11 NAMECALL                         R1 R1 K9 ["RequestInternal"]
       13 CALL                             R1 2 1
       14 DUPCLOSURE                       R4 K10 [PROTO_0]
       15 NAMECALL                         R2 R1 K11 ["Start"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"assetIds", "universeId"}]
        2 SETTABLEKS                       R0 R3 K0 ["assetIds"]
        4 GETIMPORT                        R4 K4 [game]
        6 GETTABLEKS                       R4 R4 K5 ["GameId"]
        8 SETTABLEKS                       R4 R3 K1 ["universeId"]
       10 NAMECALL                         R1 R1 K6 ["JSONEncode"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETIMPORT                        R2 K3 [workspace]
        6 NAMECALL                         R2 R2 K4 ["GetDescendants"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_NEXT                    R1
       11 LOADK                            R8 K5 ["ImageLabel"]
       12 NAMECALL                         R6 R5 K6 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIF                           R6 ; [+5]
       16 LOADK                            R8 K7 ["ImageButton"]
       17 NAMECALL                         R6 R5 K6 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+8]
       21 GETTABLEKS                       R8 R5 K8 ["Image"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K11 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-19]
       31 LENGTH                           R1 R0
       32 LOADN                            R2 0
       33 JUMPIFNOTLT                      R2 R1 ; [+17]
       35 GETUPVAL                         R1 0
       36 DUPTABLE                         R3 K14 [{"assetIds", "universeId"}]
       37 SETTABLEKS                       R0 R3 K12 ["assetIds"]
       39 GETIMPORT                        R4 K16 [game]
       41 GETTABLEKS                       R4 R4 K17 ["GameId"]
       43 SETTABLEKS                       R4 R3 K13 ["universeId"]
       45 NAMECALL                         R1 R1 K18 ["JSONEncode"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 1
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 SETTABLEKS                       R1 R0 K1 ["uploadImageAssetIds"]
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["ImageLocalizationFeatureEnabled"]
        3 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K4 ["props"]
       10 GETTABLEKS                       R2 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R3 R1 K6 ["Localization"]
       14 GETTABLEKS                       R4 R1 K7 ["LayoutOrder"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Padding"]}]
       21 GETIMPORT                        R8 K15 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R8 R7 K10 ["AutomaticSize"]
       25 DUPTABLE                         R8 K18 [{"Top", "Left"}]
       26 GETTABLEKS                       R9 R2 K19 ["PaddingTop"]
       28 SETTABLEKS                       R9 R8 K16 ["Top"]
       30 GETTABLEKS                       R9 R2 K20 ["LeftIndent"]
       32 SETTABLEKS                       R9 R8 K17 ["Left"]
       34 SETTABLEKS                       R8 R7 K11 ["Padding"]
       36 DUPTABLE                         R8 K22 [{"Upload"}]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K8 ["createElement"]
       40 GETUPVAL                         R10 2
       41 DUPTABLE                         R11 K25 [{"Title", "TitleWidth"}]
       42 LOADK                            R14 K26 ["ImageLocalizationSection"]
       43 LOADK                            R15 K27 ["UploadButtonLabel"]
       44 NAMECALL                         R12 R3 K28 ["getText"]
       46 CALL                             R12 3 1
       47 SETTABLEKS                       R12 R11 K23 ["Title"]
       49 GETTABLEKS                       R12 R2 K29 ["LabelWidth"]
       51 SETTABLEKS                       R12 R11 K24 ["TitleWidth"]
       53 DUPTABLE                         R12 K31 [{"ButtonContainer"}]
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R13 R13 K8 ["createElement"]
       57 LOADK                            R14 K32 ["Frame"]
       58 DUPTABLE                         R15 K36 [{["BackgroundTransparency"] = 1, ["Size"]}]
       59 GETIMPORT                        R16 K39 [UDim2.new]
       61 LOADN                            R17 0
       62 GETTABLEKS                       R18 R2 K40 ["ButtonWidth"]
       64 LOADN                            R19 1
       65 LOADN                            R20 0
       66 CALL                             R16 4 1
       67 SETTABLEKS                       R16 R15 K35 ["Size"]
       69 DUPTABLE                         R16 K42 [{"Button"}]
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R17 R17 K8 ["createElement"]
       73 GETUPVAL                         R18 3
       74 DUPTABLE                         R19 K49 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "TextButton", ["Text"]}]
       75 GETIMPORT                        R20 K51 [Vector2.new]
       77 LOADK                            R21 K52 [0.5]
       78 LOADK                            R22 K52 [0.5]
       79 CALL                             R20 2 1
       80 SETTABLEKS                       R20 R19 K43 ["AnchorPoint"]
       82 GETTABLEKS                       R20 R0 K53 ["uploadImageAssetIds"]
       84 SETTABLEKS                       R20 R19 K44 ["OnClick"]
       86 GETIMPORT                        R20 K39 [UDim2.new]
       88 LOADK                            R21 K52 [0.5]
       89 LOADN                            R22 0
       90 LOADK                            R23 K52 [0.5]
       91 LOADN                            R24 0
       92 CALL                             R20 4 1
       93 SETTABLEKS                       R20 R19 K45 ["Position"]
       95 GETIMPORT                        R20 K39 [UDim2.new]
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 LOADN                            R23 0
      100 GETTABLEKS                       R24 R2 K54 ["ButtonHeight"]
      102 CALL                             R20 4 1
      103 SETTABLEKS                       R20 R19 K35 ["Size"]
      105 LOADK                            R22 K26 ["ImageLocalizationSection"]
      106 LOADK                            R23 K55 ["UploadButton"]
      107 NAMECALL                         R20 R3 K28 ["getText"]
      109 CALL                             R20 3 1
      110 SETTABLEKS                       R20 R19 K48 ["Text"]
      112 NEWTABLE                         R20 0 1
      114 GETUPVAL                         R21 0
      115 GETTABLEKS                       R21 R21 K8 ["createElement"]
      117 GETUPVAL                         R22 4
      118 DUPTABLE                         R23 K58 [{["Cursor"] = "PointingHand"}]
      119 CALL                             R21 2 -1
      120 SETLIST                          R20 R21 -1 [1]
      122 CALL                             R17 3 1
      123 SETTABLEKS                       R17 R16 K41 ["Button"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K30 ["ButtonContainer"]
      128 CALL                             R9 3 1
      129 SETTABLEKS                       R9 R8 K21 ["Upload"]
      131 CALL                             R5 3 1
      132 GETUPVAL                         R6 0
      133 GETTABLEKS                       R6 R6 K8 ["createElement"]
      135 GETUPVAL                         R7 1
      136 DUPTABLE                         R8 K60 [{"LayoutOrder", "AutomaticSize", "Padding", "Spacing"}]
      137 SETTABLEKS                       R4 R8 K7 ["LayoutOrder"]
      139 GETIMPORT                        R9 K15 [Enum.AutomaticSize.XY]
      141 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
      143 DUPTABLE                         R9 K61 [{"Top"}]
      144 GETTABLEKS                       R10 R2 K19 ["PaddingTop"]
      146 SETTABLEKS                       R10 R9 K16 ["Top"]
      148 SETTABLEKS                       R9 R8 K11 ["Padding"]
      150 GETTABLEKS                       R9 R2 K59 ["Spacing"]
      152 SETTABLEKS                       R9 R8 K59 ["Spacing"]
      154 DUPTABLE                         R9 K64 [{"SectionLabel", "Content"}]
      155 GETUPVAL                         R10 0
      156 GETTABLEKS                       R10 R10 K8 ["createElement"]
      158 GETUPVAL                         R11 5
      159 DUPTABLE                         R12 K66 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Style"] = "Label", ["Text"]}]
      160 GETIMPORT                        R13 K15 [Enum.AutomaticSize.XY]
      162 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      164 LOADK                            R15 K26 ["ImageLocalizationSection"]
      165 LOADK                            R16 K62 ["SectionLabel"]
      166 NAMECALL                         R13 R3 K28 ["getText"]
      168 CALL                             R13 3 1
      169 SETTABLEKS                       R13 R12 K48 ["Text"]
      171 CALL                             R10 2 1
      172 SETTABLEKS                       R10 R9 K62 ["SectionLabel"]
      174 SETTABLEKS                       R5 R9 K63 ["Content"]
      176 CALL                             R6 3 -1
      177 RETURN                           R6 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"IsBusy"}]
        1 GETTABLEKS                       R3 R0 K2 ["CloudTable"]
        3 GETTABLEKS                       R3 R3 K0 ["IsBusy"]
        5 SETTABLEKS                       R3 R2 K0 ["IsBusy"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Pane"]
       38 GETTABLEKS                       R8 R6 K13 ["Button"]
       40 GETTABLEKS                       R9 R6 K14 ["HoverArea"]
       42 GETTABLEKS                       R10 R6 K15 ["TextLabel"]
       44 GETTABLEKS                       R11 R6 K16 ["TitledFrame"]
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R13 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R13 K9 ["ContextServices"]
       52 GETTABLEKS                       R13 R13 K18 ["AnalyticsContext"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R13 R1 K19 ["PureComponent"]
       57 LOADK                            R15 K20 ["ImageLocalizationSection"]
       58 NAMECALL                         R13 R13 K21 ["extend"]
       60 CALL                             R13 2 1
       61 GETIMPORT                        R14 K23 [game]
       63 LOADK                            R16 K24 ["HttpService"]
       64 NAMECALL                         R14 R14 K25 ["GetService"]
       66 CALL                             R14 2 1
       67 DUPCLOSURE                       R15 K26 [PROTO_1]
       68 CAPTURE                          VAL R14
       69 DUPCLOSURE                       R16 K27 [PROTO_2]
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R15
       72 DUPCLOSURE                       R17 K28 [PROTO_3]
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R15
       75 DUPCLOSURE                       R18 K29 [PROTO_5]
       76 CAPTURE                          VAL R17
       77 SETTABLEKS                       R18 R13 K30 ["init"]
       79 DUPCLOSURE                       R18 K31 [PROTO_6]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 SETTABLEKS                       R18 R13 K32 ["render"]
       88 DUPCLOSURE                       R18 K33 [PROTO_7]
       89 MOVE                             R19 R5
       90 DUPTABLE                         R20 K38 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
       91 GETTABLEKS                       R21 R4 K34 ["Plugin"]
       93 SETTABLEKS                       R21 R20 K34 ["Plugin"]
       95 GETTABLEKS                       R21 R4 K35 ["Stylizer"]
       97 SETTABLEKS                       R21 R20 K35 ["Stylizer"]
       99 GETTABLEKS                       R21 R4 K36 ["Localization"]
      101 SETTABLEKS                       R21 R20 K36 ["Localization"]
      103 SETTABLEKS                       R12 R20 K37 ["Analytics"]
      105 CALL                             R19 1 1
      106 MOVE                             R20 R13
      107 CALL                             R19 1 1
      108 MOVE                             R13 R19
      109 GETTABLEKS                       R19 R2 K39 ["connect"]
      111 MOVE                             R20 R18
      112 CALL                             R19 1 1
      113 MOVE                             R20 R13
      114 CALL                             R19 1 -1
      115 RETURN                           R19 -1
