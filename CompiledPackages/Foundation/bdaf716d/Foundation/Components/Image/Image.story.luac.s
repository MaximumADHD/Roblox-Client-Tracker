PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K3 [{"backgroundStyle", "tag"}]
        7 DUPTABLE                         R4 K5 [{"Transparency"}]
        8 LOADK                            R5 K6 [0.5]
        9 SETTABLEKS                       R5 R4 K4 ["Transparency"]
       11 SETTABLEKS                       R4 R3 K1 ["backgroundStyle"]
       13 LOADK                            R4 K7 ["col gap-large auto-xy padding-small"]
       14 SETTABLEKS                       R4 R3 K2 ["tag"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 3
       20 DUPTABLE                         R6 K9 [{"Image", "backgroundStyle", "tag"}]
       21 LOADK                            R7 K10 ["rbxassetid://7229442422"]
       22 SETTABLEKS                       R7 R6 K8 ["Image"]
       24 GETTABLEKS                       R7 R0 K11 ["Color"]
       26 GETTABLEKS                       R7 R7 K12 ["Extended"]
       28 GETTABLEKS                       R7 R7 K13 ["White"]
       30 GETTABLEKS                       R7 R7 K14 ["White_100"]
       32 SETTABLEKS                       R7 R6 K1 ["backgroundStyle"]
       34 LOADK                            R7 K15 ["size-2800"]
       35 SETTABLEKS                       R7 R6 K2 ["tag"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["createElement"]
       41 GETUPVAL                         R6 3
       42 DUPTABLE                         R7 K17 [{"Image", "slice", "backgroundStyle", "tag"}]
       43 LOADK                            R8 K18 ["component_assets/circle_22_stroke_3"]
       44 SETTABLEKS                       R8 R7 K8 ["Image"]
       46 DUPTABLE                         R8 K20 [{"center"}]
       47 GETIMPORT                        R9 K23 [Rect.new]
       49 LOADN                            R10 11
       50 LOADN                            R11 11
       51 LOADN                            R12 12
       52 LOADN                            R13 12
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K19 ["center"]
       56 SETTABLEKS                       R8 R7 K16 ["slice"]
       58 GETTABLEKS                       R8 R0 K11 ["Color"]
       60 GETTABLEKS                       R8 R8 K12 ["Extended"]
       62 GETTABLEKS                       R8 R8 K13 ["White"]
       64 GETTABLEKS                       R8 R8 K24 ["White_0"]
       66 SETTABLEKS                       R8 R7 K1 ["backgroundStyle"]
       68 LOADK                            R8 K25 ["size-2800-800 col align-x-center align-y-center"]
       69 SETTABLEKS                       R8 R7 K2 ["tag"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K0 ["createElement"]
       74 GETUPVAL                         R9 4
       75 DUPTABLE                         R10 K29 [{"Text", "AutomaticSize", "textStyle"}]
       76 LOADK                            R11 K30 ["Slice Center"]
       77 SETTABLEKS                       R11 R10 K26 ["Text"]
       79 GETIMPORT                        R11 K33 [Enum.AutomaticSize.XY]
       81 SETTABLEKS                       R11 R10 K27 ["AutomaticSize"]
       83 GETTABLEKS                       R11 R0 K11 ["Color"]
       85 GETTABLEKS                       R11 R11 K34 ["Content"]
       87 GETTABLEKS                       R11 R11 K35 ["Emphasis"]
       89 SETTABLEKS                       R11 R10 K28 ["textStyle"]
       91 CALL                             R8 2 -1
       92 CALL                             R5 -1 -1
       93 CALL                             R1 -1 -1
       94 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Default"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+11]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Asset"]
        9 LOADK                            R3 K2 [23155839]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["Large"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["Hover"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+11]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K1 ["Asset"]
       24 LOADK                            R3 K5 [23155842]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K3 ["Large"]
       28 CALL                             R1 3 -1
       29 RETURN                           R1 -1
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K6 ["Pressed"]
       33 JUMPIFNOTEQ                      R0 R1 ; [+11]
       35 GETUPVAL                         R1 1
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K1 ["Asset"]
       39 LOADK                            R3 K7 [23155847]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K3 ["Large"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1
       45 GETUPVAL                         R1 1
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K1 ["Asset"]
       49 LOADK                            R3 K8 [23155833]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K3 ["Large"]
       53 CALL                             R1 3 -1
       54 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Initialize"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K7 [{"Image", "backgroundStyle", "tag", "onStateChanged"}]
       16 DUPCLOSURE                       R9 K8 [PROTO_2]
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NAMECALL                         R7 R0 K9 ["map"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K3 ["Image"]
       26 GETTABLEKS                       R7 R2 K10 ["Color"]
       28 GETTABLEKS                       R7 R7 K11 ["Extended"]
       30 GETTABLEKS                       R7 R7 K12 ["Purple"]
       32 GETTABLEKS                       R7 R7 K13 ["Purple_500"]
       34 SETTABLEKS                       R7 R6 K4 ["backgroundStyle"]
       36 LOADK                            R7 K14 ["col align-x-center align-y-center size-2800"]
       37 SETTABLEKS                       R7 R6 K5 ["tag"]
       39 SETTABLEKS                       R3 R6 K6 ["onStateChanged"]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K6 [{"tag", "slice", "backgroundStyle", "Image", "ScaleType"}]
        7 LOADK                            R4 K7 ["auto-xy"]
        8 SETTABLEKS                       R4 R3 K1 ["tag"]
       10 DUPTABLE                         R4 K10 [{"center", "scale"}]
       11 GETIMPORT                        R5 K13 [Rect.new]
       13 LOADN                            R6 52
       14 LOADN                            R7 24
       15 LOADN                            R8 66
       16 LOADN                            R9 32
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K8 ["center"]
       20 LOADN                            R5 1
       21 SETTABLEKS                       R5 R4 K9 ["scale"]
       23 SETTABLEKS                       R4 R3 K2 ["slice"]
       25 DUPTABLE                         R4 K15 [{"Transparency"}]
       26 LOADN                            R5 1
       27 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       29 SETTABLEKS                       R4 R3 K3 ["backgroundStyle"]
       31 LOADK                            R4 K16 ["rbxassetid://78323814447735"]
       32 SETTABLEKS                       R4 R3 K4 ["Image"]
       34 GETIMPORT                        R4 K19 [Enum.ScaleType.Slice]
       36 SETTABLEKS                       R4 R3 K5 ["ScaleType"]
       38 DUPTABLE                         R4 K21 [{"DialogueSpeechBubbleInner"}]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K0 ["createElement"]
       42 GETUPVAL                         R6 3
       43 DUPTABLE                         R7 K23 [{"tag", "padding"}]
       44 LOADK                            R8 K24 ["auto-xy gap-large"]
       45 SETTABLEKS                       R8 R7 K1 ["tag"]
       47 DUPTABLE                         R8 K29 [{"top", "bottom", "left", "right"}]
       48 GETIMPORT                        R9 K31 [UDim.new]
       50 LOADN                            R10 0
       51 LOADN                            R11 30
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K25 ["top"]
       55 GETIMPORT                        R9 K31 [UDim.new]
       57 LOADN                            R10 0
       58 LOADN                            R11 40
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K26 ["bottom"]
       62 GETIMPORT                        R9 K31 [UDim.new]
       64 LOADN                            R10 0
       65 LOADN                            R11 64
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K27 ["left"]
       69 GETIMPORT                        R9 K31 [UDim.new]
       71 LOADN                            R10 0
       72 LOADN                            R11 32
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K28 ["right"]
       76 SETTABLEKS                       R8 R7 K22 ["padding"]
       78 DUPTABLE                         R8 K33 [{"SpeakerContainer"}]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K0 ["createElement"]
       82 GETUPVAL                         R10 3
       83 DUPTABLE                         R11 K35 [{"tag", "LayoutOrder"}]
       84 LOADK                            R12 K36 ["size-1500"]
       85 SETTABLEKS                       R12 R11 K1 ["tag"]
       87 LOADN                            R12 1
       88 SETTABLEKS                       R12 R11 K34 ["LayoutOrder"]
       90 DUPTABLE                         R12 K40 [{"Outer", "Inner", "SpeakerIcon"}]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K0 ["createElement"]
       94 GETUPVAL                         R14 2
       95 DUPTABLE                         R15 K44 [{"tag", "Image", "Size", "imageStyle", "ZIndex"}]
       96 LOADK                            R16 K45 ["anchor-center-center position-center-center"]
       97 SETTABLEKS                       R16 R15 K1 ["tag"]
       99 LOADK                            R16 K46 ["component_assets/circle_36"]
      100 SETTABLEKS                       R16 R15 K4 ["Image"]
      102 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      104 LOADN                            R17 60
      105 LOADN                            R18 60
      106 CALL                             R16 2 1
      107 SETTABLEKS                       R16 R15 K41 ["Size"]
      109 GETTABLEKS                       R16 R0 K50 ["Color"]
      111 GETTABLEKS                       R16 R16 K51 ["None"]
      113 SETTABLEKS                       R16 R15 K42 ["imageStyle"]
      115 LOADN                            R16 0
      116 SETTABLEKS                       R16 R15 K43 ["ZIndex"]
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K37 ["Outer"]
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R13 R13 K0 ["createElement"]
      124 GETUPVAL                         R14 2
      125 DUPTABLE                         R15 K52 [{"tag", "Image", "Size", "scale", "imageStyle", "ZIndex"}]
      126 LOADK                            R16 K45 ["anchor-center-center position-center-center"]
      127 SETTABLEKS                       R16 R15 K1 ["tag"]
      129 LOADK                            R16 K46 ["component_assets/circle_36"]
      130 SETTABLEKS                       R16 R15 K4 ["Image"]
      132 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      134 LOADN                            R17 60
      135 LOADN                            R18 60
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K41 ["Size"]
      139 LOADN                            R16 1
      140 SETTABLEKS                       R16 R15 K9 ["scale"]
      142 GETTABLEKS                       R16 R0 K50 ["Color"]
      144 GETTABLEKS                       R16 R16 K51 ["None"]
      146 SETTABLEKS                       R16 R15 K42 ["imageStyle"]
      148 LOADN                            R16 1
      149 SETTABLEKS                       R16 R15 K43 ["ZIndex"]
      151 CALL                             R13 2 1
      152 SETTABLEKS                       R13 R12 K38 ["Inner"]
      154 GETUPVAL                         R13 1
      155 GETTABLEKS                       R13 R13 K0 ["createElement"]
      157 GETUPVAL                         R14 2
      158 DUPTABLE                         R15 K44 [{"tag", "Image", "Size", "imageStyle", "ZIndex"}]
      159 LOADK                            R16 K45 ["anchor-center-center position-center-center"]
      160 SETTABLEKS                       R16 R15 K1 ["tag"]
      162 LOADK                            R16 K53 ["icons/controls/speaker"]
      163 SETTABLEKS                       R16 R15 K4 ["Image"]
      165 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      167 LOADN                            R17 32
      168 LOADN                            R18 32
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K41 ["Size"]
      172 GETTABLEKS                       R16 R0 K50 ["Color"]
      174 GETTABLEKS                       R16 R16 K54 ["Extended"]
      176 GETTABLEKS                       R16 R16 K55 ["Gray"]
      178 GETTABLEKS                       R16 R16 K56 ["Gray_300"]
      180 SETTABLEKS                       R16 R15 K42 ["imageStyle"]
      182 LOADN                            R16 2
      183 SETTABLEKS                       R16 R15 K43 ["ZIndex"]
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K39 ["SpeakerIcon"]
      188 CALL                             R9 3 1
      189 SETTABLEKS                       R9 R8 K32 ["SpeakerContainer"]
      191 CALL                             R5 3 1
      192 SETTABLEKS                       R5 R4 K20 ["DialogueSpeechBubbleInner"]
      194 CALL                             R1 3 -1
      195 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Image", "tag"}]
        5 LOADK                            R3 K4 ["icons/graphic/success_xlarge"]
        6 SETTABLEKS                       R3 R2 K1 ["Image"]
        8 LOADK                            R3 K5 ["size-2800"]
        9 SETTABLEKS                       R3 R2 K2 ["tag"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Image", "Size", "tag"}]
        5 GETTABLEKS                       R4 R0 K5 ["controls"]
        7 GETTABLEKS                       R4 R4 K6 ["cloudAsset"]
        9 SETTABLEKS                       R4 R3 K1 ["Image"]
       11 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       13 LOADN                            R5 44
       14 LOADN                            R6 44
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["Size"]
       18 LOADK                            R4 K10 ["content-emphasis"]
       19 SETTABLEKS                       R4 R3 K3 ["tag"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["FoundationCloudAssets"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R4 R4 K10 ["Assets"]
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Image"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Providers"]
       51 GETTABLEKS                       R9 R9 K16 ["Style"]
       53 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Enums"]
       60 GETTABLEKS                       R10 R10 K19 ["ThumbnailSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["ThumbnailType"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K21 ["Utility"]
       74 GETTABLEKS                       R12 R12 K22 ["getRbxThumb"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K18 ["Enums"]
       81 GETTABLEKS                       R13 R13 K23 ["ControlState"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K24 [PROTO_0]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 DUPCLOSURE                       R14 K25 [PROTO_3]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R15 K26 [PROTO_4]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R7
      103 DUPTABLE                         R16 K30 [{"summary", "stories", "controls"}]
      104 LOADK                            R17 K12 ["Image"]
      105 SETTABLEKS                       R17 R16 K27 ["summary"]
      107 NEWTABLE                         R17 0 5
      109 DUPTABLE                         R18 K33 [{"name", "story"}]
      110 LOADK                            R19 K34 ["Basic Image"]
      111 SETTABLEKS                       R19 R18 K31 ["name"]
      113 DUPCLOSURE                       R19 K35 [PROTO_5]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R19 R18 K32 ["story"]
      118 DUPTABLE                         R19 K33 [{"name", "story"}]
      119 LOADK                            R20 K36 ["Basic Asset Use"]
      120 SETTABLEKS                       R20 R19 K31 ["name"]
      122 SETTABLEKS                       R13 R19 K32 ["story"]
      124 DUPTABLE                         R20 K33 [{"name", "story"}]
      125 LOADK                            R21 K37 ["GUI State Use"]
      126 SETTABLEKS                       R21 R20 K31 ["name"]
      128 SETTABLEKS                       R14 R20 K32 ["story"]
      130 DUPTABLE                         R21 K33 [{"name", "story"}]
      131 LOADK                            R22 K38 ["Custom 9-slice Image"]
      132 SETTABLEKS                       R22 R21 K31 ["name"]
      134 DUPCLOSURE                       R22 K39 [PROTO_6]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R15
      137 SETTABLEKS                       R22 R21 K32 ["story"]
      139 DUPTABLE                         R22 K33 [{"name", "story"}]
      140 LOADK                            R23 K40 ["Cloud Asset"]
      141 SETTABLEKS                       R23 R22 K31 ["name"]
      143 DUPCLOSURE                       R23 K41 [PROTO_7]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R23 R22 K32 ["story"]
      148 SETLIST                          R17 R18 5 [1]
      150 SETTABLEKS                       R17 R16 K28 ["stories"]
      152 DUPTABLE                         R17 K43 [{"cloudAsset"}]
      153 GETTABLEKS                       R18 R2 K44 ["keys"]
      155 MOVE                             R19 R4
      156 CALL                             R18 1 1
      157 SETTABLEKS                       R18 R17 K42 ["cloudAsset"]
      159 SETTABLEKS                       R17 R16 K29 ["controls"]
      161 RETURN                           R16 1
