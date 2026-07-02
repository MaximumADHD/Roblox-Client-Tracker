PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K4 [{["backgroundStyle"], ["tag"] = "col gap-large auto-xy padding-small"}]
        7 DUPTABLE                         R4 K7 [{["Transparency"] = 0.5}]
        8 SETTABLEKS                       R4 R3 K1 ["backgroundStyle"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 3
       14 DUPTABLE                         R6 K11 [{["Image"] = "rbxassetid://7229442422", ["backgroundStyle"], ["tag"] = "size-2800"}]
       15 GETTABLEKS                       R7 R0 K12 ["Color"]
       17 GETTABLEKS                       R7 R7 K13 ["Extended"]
       19 GETTABLEKS                       R7 R7 K14 ["White"]
       21 GETTABLEKS                       R7 R7 K15 ["White_100"]
       23 SETTABLEKS                       R7 R6 K1 ["backgroundStyle"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 3
       30 DUPTABLE                         R7 K19 [{["Image"] = "component_assets/circle_22_stroke_3", ["slice"], ["backgroundStyle"], ["tag"] = "col align-x-center align-y-center size-2800-800"}]
       31 DUPTABLE                         R8 K21 [{"center"}]
       32 GETIMPORT                        R9 K24 [Rect.new]
       34 LOADN                            R10 11
       35 LOADN                            R11 11
       36 LOADN                            R12 12
       37 LOADN                            R13 12
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K20 ["center"]
       41 SETTABLEKS                       R8 R7 K17 ["slice"]
       43 GETTABLEKS                       R8 R0 K12 ["Color"]
       45 GETTABLEKS                       R8 R8 K13 ["Extended"]
       47 GETTABLEKS                       R8 R8 K14 ["White"]
       49 GETTABLEKS                       R8 R8 K25 ["White_0"]
       51 SETTABLEKS                       R8 R7 K1 ["backgroundStyle"]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K0 ["createElement"]
       56 GETUPVAL                         R9 4
       57 DUPTABLE                         R10 K30 [{["Text"] = "Slice Center", ["AutomaticSize"], ["textStyle"]}]
       58 GETIMPORT                        R11 K33 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R11 R10 K28 ["AutomaticSize"]
       62 GETTABLEKS                       R11 R0 K12 ["Color"]
       64 GETTABLEKS                       R11 R11 K34 ["Content"]
       66 GETTABLEKS                       R11 R11 K35 ["Emphasis"]
       68 SETTABLEKS                       R11 R10 K29 ["textStyle"]
       70 CALL                             R8 2 -1
       71 CALL                             R5 -1 -1
       72 CALL                             R1 -1 -1
       73 RETURN                           R1 -1

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
       15 DUPTABLE                         R6 K8 [{["Image"], ["backgroundStyle"], ["tag"] = "col align-x-center align-y-center size-2800", ["onStateChanged"]}]
       16 DUPCLOSURE                       R9 K9 [PROTO_2]
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NAMECALL                         R7 R0 K10 ["map"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K3 ["Image"]
       26 GETTABLEKS                       R7 R2 K11 ["Color"]
       28 GETTABLEKS                       R7 R7 K12 ["Extended"]
       30 GETTABLEKS                       R7 R7 K13 ["Purple"]
       32 GETTABLEKS                       R7 R7 K14 ["Purple_500"]
       34 SETTABLEKS                       R7 R6 K4 ["backgroundStyle"]
       36 SETTABLEKS                       R3 R6 K7 ["onStateChanged"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K8 [{["tag"] = "auto-xy", ["slice"], ["backgroundStyle"], ["Image"] = "rbxassetid://78323814447735", ["ScaleType"]}]
        7 DUPTABLE                         R4 K12 [{["center"], ["scale"] = 1}]
        8 GETIMPORT                        R5 K15 [Rect.new]
       10 LOADN                            R6 52
       11 LOADN                            R7 24
       12 LOADN                            R8 66
       13 LOADN                            R9 32
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K9 ["center"]
       17 SETTABLEKS                       R4 R3 K3 ["slice"]
       19 DUPTABLE                         R4 K17 [{["Transparency"] = 1}]
       20 SETTABLEKS                       R4 R3 K4 ["backgroundStyle"]
       22 GETIMPORT                        R4 K20 [Enum.ScaleType.Slice]
       24 SETTABLEKS                       R4 R3 K7 ["ScaleType"]
       26 DUPTABLE                         R4 K22 [{"DialogueSpeechBubbleInner"}]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 GETUPVAL                         R6 3
       31 DUPTABLE                         R7 K25 [{["tag"] = "gap-large auto-xy", ["padding"]}]
       32 DUPTABLE                         R8 K30 [{"top", "bottom", "left", "right"}]
       33 GETIMPORT                        R9 K32 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 30
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K26 ["top"]
       40 GETIMPORT                        R9 K32 [UDim.new]
       42 LOADN                            R10 0
       43 LOADN                            R11 40
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K27 ["bottom"]
       47 GETIMPORT                        R9 K32 [UDim.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 64
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K28 ["left"]
       54 GETIMPORT                        R9 K32 [UDim.new]
       56 LOADN                            R10 0
       57 LOADN                            R11 32
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K29 ["right"]
       61 SETTABLEKS                       R8 R7 K24 ["padding"]
       63 DUPTABLE                         R8 K34 [{"SpeakerContainer"}]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K0 ["createElement"]
       67 GETUPVAL                         R10 3
       68 DUPTABLE                         R11 K37 [{["tag"] = "size-1500", ["LayoutOrder"] = 1}]
       69 DUPTABLE                         R12 K41 [{"Outer", "Inner", "SpeakerIcon"}]
       70 GETUPVAL                         R13 1
       71 GETTABLEKS                       R13 R13 K0 ["createElement"]
       73 GETUPVAL                         R14 2
       74 DUPTABLE                         R15 K48 [{["tag"] = "position-center-center anchor-center-center", ["Image"] = "component_assets/circle_36", ["Size"], ["imageStyle"], ["ZIndex"] = 0}]
       75 GETIMPORT                        R16 K51 [UDim2.fromOffset]
       77 LOADN                            R17 60
       78 LOADN                            R18 60
       79 CALL                             R16 2 1
       80 SETTABLEKS                       R16 R15 K44 ["Size"]
       82 GETTABLEKS                       R16 R0 K52 ["Color"]
       84 GETTABLEKS                       R16 R16 K53 ["None"]
       86 SETTABLEKS                       R16 R15 K45 ["imageStyle"]
       88 CALL                             R13 2 1
       89 SETTABLEKS                       R13 R12 K38 ["Outer"]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K0 ["createElement"]
       94 GETUPVAL                         R14 2
       95 DUPTABLE                         R15 K54 [{["tag"] = "position-center-center anchor-center-center", ["Image"] = "component_assets/circle_36", ["Size"], ["scale"] = 1, ["imageStyle"], ["ZIndex"] = 1}]
       96 GETIMPORT                        R16 K51 [UDim2.fromOffset]
       98 LOADN                            R17 60
       99 LOADN                            R18 60
      100 CALL                             R16 2 1
      101 SETTABLEKS                       R16 R15 K44 ["Size"]
      103 GETTABLEKS                       R16 R0 K52 ["Color"]
      105 GETTABLEKS                       R16 R16 K53 ["None"]
      107 SETTABLEKS                       R16 R15 K45 ["imageStyle"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K39 ["Inner"]
      112 GETUPVAL                         R13 1
      113 GETTABLEKS                       R13 R13 K0 ["createElement"]
      115 GETUPVAL                         R14 2
      116 DUPTABLE                         R15 K57 [{["tag"] = "position-center-center anchor-center-center", ["Image"] = "icons/controls/speaker", ["Size"], ["imageStyle"], ["ZIndex"] = 2}]
      117 GETIMPORT                        R16 K51 [UDim2.fromOffset]
      119 LOADN                            R17 32
      120 LOADN                            R18 32
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K44 ["Size"]
      124 GETTABLEKS                       R16 R0 K52 ["Color"]
      126 GETTABLEKS                       R16 R16 K58 ["Extended"]
      128 GETTABLEKS                       R16 R16 K59 ["Gray"]
      130 GETTABLEKS                       R16 R16 K60 ["Gray_300"]
      132 SETTABLEKS                       R16 R15 K45 ["imageStyle"]
      134 CALL                             R13 2 1
      135 SETTABLEKS                       R13 R12 K40 ["SpeakerIcon"]
      137 CALL                             R9 3 1
      138 SETTABLEKS                       R9 R8 K33 ["SpeakerContainer"]
      140 CALL                             R5 3 1
      141 SETTABLEKS                       R5 R4 K21 ["DialogueSpeechBubbleInner"]
      143 CALL                             R1 3 -1
      144 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "auto-xy row gap-xlarge"}]
        5 DUPTABLE                         R3 K6 [{"NoBinding", "WithBinding"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K8 [{["tag"] = "auto-xy col gap-small"}]
       11 DUPTABLE                         R7 K11 [{"Text", "Image"}]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K0 ["createElement"]
       15 GETUPVAL                         R9 2
       16 DUPTABLE                         R10 K17 [{["tag"] = "text-body-small text-align-x-center content-emphasis self-center", ["Text"] = "No Image binding", ["AutomaticSize"], ["LayoutOrder"] = 1}]
       17 GETIMPORT                        R11 K20 [Enum.AutomaticSize.XY]
       19 SETTABLEKS                       R11 R10 K14 ["AutomaticSize"]
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K9 ["Text"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K0 ["createElement"]
       27 GETUPVAL                         R9 3
       28 DUPTABLE                         R10 K24 [{["Image"] = "icons/graphic/success_xlarge", ["tag"] = "size-2800", ["LayoutOrder"] = 2}]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K10 ["Image"]
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K4 ["NoBinding"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K0 ["createElement"]
       38 GETUPVAL                         R5 1
       39 DUPTABLE                         R6 K8 [{["tag"] = "auto-xy col gap-small"}]
       40 DUPTABLE                         R7 K11 [{"Text", "Image"}]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K0 ["createElement"]
       44 GETUPVAL                         R9 2
       45 DUPTABLE                         R10 K26 [{["tag"] = "text-body-small text-align-x-center content-emphasis self-center", ["Text"] = "With Image binding", ["AutomaticSize"], ["LayoutOrder"] = 1}]
       46 GETIMPORT                        R11 K20 [Enum.AutomaticSize.XY]
       48 SETTABLEKS                       R11 R10 K14 ["AutomaticSize"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K9 ["Text"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K0 ["createElement"]
       56 GETUPVAL                         R9 3
       57 DUPTABLE                         R10 K27 [{["Image"], ["tag"] = "size-2800", ["LayoutOrder"] = 2}]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K28 ["createBinding"]
       61 LOADK                            R12 K21 ["icons/graphic/success_xlarge"]
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K10 ["Image"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K10 ["Image"]
       68 CALL                             R4 3 1
       69 SETTABLEKS                       R4 R3 K5 ["WithBinding"]
       71 CALL                             R0 3 -1
       72 RETURN                           R0 -1

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
        4 DUPTABLE                         R3 K5 [{["Image"], ["Size"], ["tag"] = "content-emphasis"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K7 ["cloudAsset"]
        9 SETTABLEKS                       R4 R3 K1 ["Image"]
       11 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       13 LOADN                            R5 300
       14 LOADN                            R6 300
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["Size"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

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
      103 DUPTABLE                         R16 K30 [{["summary"] = "Image", ["stories"], ["controls"]}]
      104 NEWTABLE                         R17 0 5
      106 DUPTABLE                         R18 K34 [{["name"] = "Basic Image", ["story"]}]
      107 DUPCLOSURE                       R19 K35 [PROTO_5]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R19 R18 K33 ["story"]
      114 DUPTABLE                         R19 K37 [{["name"] = "Basic Asset Use", ["story"]}]
      115 SETTABLEKS                       R13 R19 K33 ["story"]
      117 DUPTABLE                         R20 K39 [{["name"] = "GUI State Use", ["story"]}]
      118 SETTABLEKS                       R14 R20 K33 ["story"]
      120 DUPTABLE                         R21 K41 [{["name"] = "Custom 9-slice Image", ["story"]}]
      121 DUPCLOSURE                       R22 K42 [PROTO_6]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R15
      124 SETTABLEKS                       R22 R21 K33 ["story"]
      126 DUPTABLE                         R22 K44 [{["name"] = "Cloud Asset", ["story"]}]
      127 DUPCLOSURE                       R23 K45 [PROTO_7]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R23 R22 K33 ["story"]
      132 SETLIST                          R17 R18 5 [1]
      134 SETTABLEKS                       R17 R16 K28 ["stories"]
      136 DUPTABLE                         R17 K47 [{"cloudAsset"}]
      137 GETTABLEKS                       R18 R2 K48 ["keys"]
      139 MOVE                             R19 R4
      140 CALL                             R18 1 1
      141 SETTABLEKS                       R18 R17 K46 ["cloudAsset"]
      143 SETTABLEKS                       R17 R16 K29 ["controls"]
      145 RETURN                           R16 1
