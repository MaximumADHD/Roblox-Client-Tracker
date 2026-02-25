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
        1 DUPTABLE                         R3 K4 [{"Url", "Method", "Headers", "Body"}]
        2 LOADK                            R4 K5 ["https://apis.sitetest1.robloxlabs.com/image-localization-api/v1/image-localization/ingest"]
        3 SETTABLEKS                       R4 R3 K0 ["Url"]
        5 LOADK                            R4 K6 ["POST"]
        6 SETTABLEKS                       R4 R3 K1 ["Method"]
        8 NEWTABLE                         R4 1 0
       10 LOADK                            R5 K7 ["application/json"]
       11 SETTABLEKS                       R5 R4 K8 ["Content-Type"]
       13 SETTABLEKS                       R4 R3 K2 ["Headers"]
       15 SETTABLEKS                       R0 R3 K3 ["Body"]
       17 NAMECALL                         R1 R1 K9 ["RequestInternal"]
       19 CALL                             R1 2 1
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 NAMECALL                         R2 R1 K11 ["Start"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"assetIds", "universeId"}]
        2 SETTABLEKS                       R0 R3 K0 ["assetIds"]
        4 GETIMPORT                        R5 K4 [game]
        6 GETTABLEKS                       R4 R5 K5 ["GameId"]
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
       39 GETIMPORT                        R5 K16 [game]
       41 GETTABLEKS                       R4 R5 K17 ["GameId"]
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
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K8 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K11 [{"LayoutOrder", "AutomaticSize", "Padding"}]
       21 LOADN                            R8 2
       22 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       24 GETIMPORT                        R8 K14 [Enum.AutomaticSize.XY]
       26 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       28 DUPTABLE                         R8 K17 [{"Top", "Left"}]
       29 GETTABLEKS                       R9 R2 K18 ["PaddingTop"]
       31 SETTABLEKS                       R9 R8 K15 ["Top"]
       33 GETTABLEKS                       R9 R2 K19 ["LeftIndent"]
       35 SETTABLEKS                       R9 R8 K16 ["Left"]
       37 SETTABLEKS                       R8 R7 K10 ["Padding"]
       39 DUPTABLE                         R8 K21 [{"Upload"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K8 ["createElement"]
       43 GETUPVAL                         R10 2
       44 DUPTABLE                         R11 K24 [{"Title", "TitleWidth"}]
       45 LOADK                            R14 K25 ["ImageLocalizationSection"]
       46 LOADK                            R15 K26 ["UploadButtonLabel"]
       47 NAMECALL                         R12 R3 K27 ["getText"]
       49 CALL                             R12 3 1
       50 SETTABLEKS                       R12 R11 K22 ["Title"]
       52 GETTABLEKS                       R12 R2 K28 ["LabelWidth"]
       54 SETTABLEKS                       R12 R11 K23 ["TitleWidth"]
       56 DUPTABLE                         R12 K30 [{"ButtonContainer"}]
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R13 R14 K8 ["createElement"]
       60 LOADK                            R14 K31 ["Frame"]
       61 DUPTABLE                         R15 K34 [{"BackgroundTransparency", "Size"}]
       62 LOADN                            R16 1
       63 SETTABLEKS                       R16 R15 K32 ["BackgroundTransparency"]
       65 GETIMPORT                        R16 K37 [UDim2.new]
       67 LOADN                            R17 0
       68 GETTABLEKS                       R18 R2 K38 ["ButtonWidth"]
       70 LOADN                            R19 1
       71 LOADN                            R20 0
       72 CALL                             R16 4 1
       73 SETTABLEKS                       R16 R15 K33 ["Size"]
       75 DUPTABLE                         R16 K40 [{"Button"}]
       76 GETUPVAL                         R18 0
       77 GETTABLEKS                       R17 R18 K8 ["createElement"]
       79 GETUPVAL                         R18 3
       80 DUPTABLE                         R19 K46 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
       81 GETIMPORT                        R20 K48 [Vector2.new]
       83 LOADK                            R21 K49 [0.5]
       84 LOADK                            R22 K49 [0.5]
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K41 ["AnchorPoint"]
       88 GETTABLEKS                       R20 R0 K50 ["uploadImageAssetIds"]
       90 SETTABLEKS                       R20 R19 K42 ["OnClick"]
       92 GETIMPORT                        R20 K37 [UDim2.new]
       94 LOADK                            R21 K49 [0.5]
       95 LOADN                            R22 0
       96 LOADK                            R23 K49 [0.5]
       97 LOADN                            R24 0
       98 CALL                             R20 4 1
       99 SETTABLEKS                       R20 R19 K43 ["Position"]
      101 GETIMPORT                        R20 K37 [UDim2.new]
      103 LOADN                            R21 1
      104 LOADN                            R22 0
      105 LOADN                            R23 0
      106 GETTABLEKS                       R24 R2 K51 ["ButtonHeight"]
      108 CALL                             R20 4 1
      109 SETTABLEKS                       R20 R19 K33 ["Size"]
      111 LOADK                            R20 K52 ["TextButton"]
      112 SETTABLEKS                       R20 R19 K44 ["Style"]
      114 LOADK                            R22 K25 ["ImageLocalizationSection"]
      115 LOADK                            R23 K53 ["UploadButton"]
      116 NAMECALL                         R20 R3 K27 ["getText"]
      118 CALL                             R20 3 1
      119 SETTABLEKS                       R20 R19 K45 ["Text"]
      121 NEWTABLE                         R20 0 1
      123 GETUPVAL                         R22 0
      124 GETTABLEKS                       R21 R22 K8 ["createElement"]
      126 GETUPVAL                         R22 4
      127 DUPTABLE                         R23 K55 [{"Cursor"}]
      128 LOADK                            R24 K56 ["PointingHand"]
      129 SETTABLEKS                       R24 R23 K54 ["Cursor"]
      131 CALL                             R21 2 -1
      132 SETLIST                          R20 R21 -1 [1]
      134 CALL                             R17 3 1
      135 SETTABLEKS                       R17 R16 K39 ["Button"]
      137 CALL                             R13 3 1
      138 SETTABLEKS                       R13 R12 K29 ["ButtonContainer"]
      140 CALL                             R9 3 1
      141 SETTABLEKS                       R9 R8 K20 ["Upload"]
      143 CALL                             R5 3 1
      144 GETUPVAL                         R7 0
      145 GETTABLEKS                       R6 R7 K8 ["createElement"]
      147 GETUPVAL                         R7 1
      148 DUPTABLE                         R8 K58 [{"LayoutOrder", "AutomaticSize", "Padding", "Spacing"}]
      149 SETTABLEKS                       R4 R8 K7 ["LayoutOrder"]
      151 GETIMPORT                        R9 K14 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
      155 DUPTABLE                         R9 K59 [{"Top"}]
      156 GETTABLEKS                       R10 R2 K18 ["PaddingTop"]
      158 SETTABLEKS                       R10 R9 K15 ["Top"]
      160 SETTABLEKS                       R9 R8 K10 ["Padding"]
      162 GETTABLEKS                       R9 R2 K57 ["Spacing"]
      164 SETTABLEKS                       R9 R8 K57 ["Spacing"]
      166 DUPTABLE                         R9 K62 [{"SectionLabel", "Content"}]
      167 GETUPVAL                         R11 0
      168 GETTABLEKS                       R10 R11 K8 ["createElement"]
      170 GETUPVAL                         R11 5
      171 DUPTABLE                         R12 K63 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      172 GETIMPORT                        R13 K14 [Enum.AutomaticSize.XY]
      174 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
      176 LOADN                            R13 1
      177 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      179 LOADK                            R13 K64 ["Label"]
      180 SETTABLEKS                       R13 R12 K44 ["Style"]
      182 LOADK                            R15 K25 ["ImageLocalizationSection"]
      183 LOADK                            R16 K60 ["SectionLabel"]
      184 NAMECALL                         R13 R3 K27 ["getText"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K45 ["Text"]
      189 CALL                             R10 2 1
      190 SETTABLEKS                       R10 R9 K60 ["SectionLabel"]
      192 SETTABLEKS                       R5 R9 K61 ["Content"]
      194 CALL                             R6 3 -1
      195 RETURN                           R6 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"IsBusy"}]
        1 GETTABLEKS                       R4 R0 K2 ["CloudTable"]
        3 GETTABLEKS                       R3 R4 K0 ["IsBusy"]
        5 SETTABLEKS                       R3 R2 K0 ["IsBusy"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
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
       48 GETTABLEKS                       R15 R0 K17 ["Src"]
       50 GETTABLEKS                       R14 R15 K9 ["ContextServices"]
       52 GETTABLEKS                       R13 R14 K18 ["AnalyticsContext"]
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
