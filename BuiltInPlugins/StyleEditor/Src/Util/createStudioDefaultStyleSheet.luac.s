PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 0}]
        1 GETIMPORT                        R1 K8 [UDim2.fromOffset]
        3 LOADN                            R2 100
        4 LOADN                            R3 100
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETIMPORT                        R1 K11 [Color3.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
       16 GETIMPORT                        R1 K11 [Color3.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K2 ["BorderColor3"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K12 ["Dictionary"]
       27 GETTABLEKS                       R1 R1 K13 ["join"]
       29 MOVE                             R2 R0
       30 DUPTABLE                         R3 K18 [{[1], ["FontFace"], ["TextSize"] = 14, ["TextColor3"]}]
       31 GETIMPORT                        R4 K8 [UDim2.fromOffset]
       33 LOADN                            R5 200
       34 LOADN                            R6 50
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K0 ["Size"]
       38 GETIMPORT                        R4 K21 [Font.fromEnum]
       40 GETIMPORT                        R5 K24 [Enum.Font.SourceSans]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K14 ["FontFace"]
       45 GETIMPORT                        R4 K11 [Color3.new]
       47 LOADN                            R5 0
       48 LOADN                            R6 0
       49 LOADN                            R7 0
       50 CALL                             R4 3 1
       51 SETTABLEKS                       R4 R3 K17 ["TextColor3"]
       53 CALL                             R1 2 1
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K12 ["Dictionary"]
       57 GETTABLEKS                       R2 R2 K13 ["join"]
       59 MOVE                             R3 R0
       60 DUPTABLE                         R4 K27 [{["Image"] = "rbxasset://textures/ui/GuiImagePlaceholder.png"}]
       61 CALL                             R2 2 1
       62 DUPTABLE                         R3 K29 [{"SortOrder"}]
       63 GETIMPORT                        R4 K31 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R4 R3 K28 ["SortOrder"]
       67 GETUPVAL                         R4 1
       68 LOADK                            R5 K32 ["BaseStyleSheet"]
       69 NEWTABLE                         R6 0 14
       71 GETUPVAL                         R7 2
       72 LOADK                            R8 K33 ["Frame"]
       73 MOVE                             R9 R0
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 2
       76 LOADK                            R9 K34 ["ScrollingFrame"]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K12 ["Dictionary"]
       80 GETTABLEKS                       R10 R10 K13 ["join"]
       82 MOVE                             R11 R0
       83 DUPTABLE                         R12 K38 [{["Active"] = True, ["ScrollBarImageColor3"]}]
       84 GETIMPORT                        R13 K11 [Color3.new]
       86 LOADN                            R14 0
       87 LOADN                            R15 0
       88 LOADN                            R16 0
       89 CALL                             R13 3 1
       90 SETTABLEKS                       R13 R12 K37 ["ScrollBarImageColor3"]
       92 CALL                             R10 2 -1
       93 CALL                             R8 -1 1
       94 GETUPVAL                         R9 2
       95 LOADK                            R10 K39 ["TextLabel"]
       96 MOVE                             R11 R1
       97 CALL                             R9 2 1
       98 GETUPVAL                         R10 2
       99 LOADK                            R11 K40 ["TextButton"]
      100 MOVE                             R12 R1
      101 CALL                             R10 2 1
      102 GETUPVAL                         R11 2
      103 LOADK                            R12 K41 ["TextBox"]
      104 MOVE                             R13 R1
      105 CALL                             R11 2 1
      106 GETUPVAL                         R12 2
      107 LOADK                            R13 K42 ["ImageButton"]
      108 MOVE                             R14 R2
      109 CALL                             R12 2 1
      110 GETUPVAL                         R13 2
      111 LOADK                            R14 K43 ["ImageLabel"]
      112 MOVE                             R15 R2
      113 CALL                             R13 2 1
      114 GETUPVAL                         R14 2
      115 LOADK                            R15 K44 ["ViewportFrame"]
      116 MOVE                             R16 R0
      117 CALL                             R14 2 1
      118 GETUPVAL                         R15 2
      119 LOADK                            R16 K45 ["VideoFrame"]
      120 MOVE                             R17 R0
      121 CALL                             R15 2 1
      122 GETUPVAL                         R16 2
      123 LOADK                            R17 K46 ["CanvasGroup"]
      124 MOVE                             R18 R0
      125 CALL                             R16 2 1
      126 GETUPVAL                         R17 2
      127 LOADK                            R18 K47 ["UIListLayout"]
      128 MOVE                             R19 R3
      129 CALL                             R17 2 1
      130 GETUPVAL                         R18 2
      131 LOADK                            R19 K48 ["UIGridLayout"]
      132 MOVE                             R20 R3
      133 CALL                             R18 2 1
      134 GETUPVAL                         R19 2
      135 LOADK                            R20 K49 ["UIPageLayout"]
      136 MOVE                             R21 R3
      137 CALL                             R19 2 1
      138 GETUPVAL                         R20 2
      139 LOADK                            R21 K50 ["UITableLayout"]
      140 MOVE                             R22 R3
      141 CALL                             R20 2 -1
      142 SETLIST                          R6 R7 -1 [1]
      144 CALL                             R4 2 1
      145 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R0 K5 [{[1], ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 0}]
        1 GETIMPORT                        R1 K8 [UDim2.fromOffset]
        3 LOADN                            R2 100
        4 LOADN                            R3 100
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETIMPORT                        R1 K11 [Color3.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
       16 GETIMPORT                        R1 K11 [Color3.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K2 ["BorderColor3"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K12 ["Dictionary"]
       27 GETTABLEKS                       R1 R1 K13 ["join"]
       29 MOVE                             R2 R0
       30 DUPTABLE                         R3 K18 [{[1], ["FontFace"], ["TextSize"] = 14, ["TextColor3"]}]
       31 GETIMPORT                        R4 K8 [UDim2.fromOffset]
       33 LOADN                            R5 200
       34 LOADN                            R6 50
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K0 ["Size"]
       38 GETIMPORT                        R4 K21 [Font.fromEnum]
       40 GETIMPORT                        R5 K24 [Enum.Font.SourceSans]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K14 ["FontFace"]
       45 GETIMPORT                        R4 K11 [Color3.new]
       47 LOADN                            R5 0
       48 LOADN                            R6 0
       49 LOADN                            R7 0
       50 CALL                             R4 3 1
       51 SETTABLEKS                       R4 R3 K17 ["TextColor3"]
       53 CALL                             R1 2 1
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K12 ["Dictionary"]
       57 GETTABLEKS                       R2 R2 K13 ["join"]
       59 MOVE                             R3 R0
       60 DUPTABLE                         R4 K27 [{["Image"] = "rbxasset://textures/ui/GuiImagePlaceholder.png"}]
       61 CALL                             R2 2 1
       62 DUPTABLE                         R3 K29 [{"SortOrder"}]
       63 GETIMPORT                        R4 K31 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R4 R3 K28 ["SortOrder"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K12 ["Dictionary"]
       70 GETTABLEKS                       R4 R4 K13 ["join"]
       72 MOVE                             R5 R0
       73 DUPTABLE                         R6 K35 [{["Active"] = True, ["ScrollBarImageColor3"]}]
       74 GETIMPORT                        R7 K11 [Color3.new]
       76 LOADN                            R8 0
       77 LOADN                            R9 0
       78 LOADN                            R10 0
       79 CALL                             R7 3 1
       80 SETTABLEKS                       R7 R6 K34 ["ScrollBarImageColor3"]
       82 CALL                             R4 2 1
       83 DUPTABLE                         R5 K39 [{["BlurRadius"], ["Transparency"] = 0.5}]
       84 GETIMPORT                        R6 K41 [UDim.new]
       86 LOADN                            R7 0
       87 LOADN                            R8 20
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R5 K36 ["BlurRadius"]
       91 DUPTABLE                         R6 K44 [{["AutomaticSize"], [2], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["TextColor3"], ["TextSize"] = 14, ["FontFace"], ["ImageColor3"]}]
       92 GETIMPORT                        R7 K46 [Enum.AutomaticSize.X]
       94 SETTABLEKS                       R7 R6 K42 ["AutomaticSize"]
       96 GETIMPORT                        R7 K8 [UDim2.fromOffset]
       98 LOADN                            R8 0
       99 LOADN                            R9 36
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K0 ["Size"]
      103 GETIMPORT                        R7 K48 [Color3.fromRGB]
      105 LOADN                            R8 255
      106 LOADN                            R9 255
      107 LOADN                            R10 255
      108 CALL                             R7 3 1
      109 SETTABLEKS                       R7 R6 K1 ["BackgroundColor3"]
      111 GETIMPORT                        R7 K48 [Color3.fromRGB]
      113 LOADN                            R8 0
      114 LOADN                            R9 0
      115 LOADN                            R10 0
      116 CALL                             R7 3 1
      117 SETTABLEKS                       R7 R6 K17 ["TextColor3"]
      119 GETIMPORT                        R7 K21 [Font.fromEnum]
      121 GETIMPORT                        R8 K24 [Enum.Font.SourceSans]
      123 CALL                             R7 1 1
      124 SETTABLEKS                       R7 R6 K14 ["FontFace"]
      126 GETIMPORT                        R7 K48 [Color3.fromRGB]
      128 LOADN                            R8 0
      129 LOADN                            R9 0
      130 LOADN                            R10 0
      131 CALL                             R7 3 1
      132 SETTABLEKS                       R7 R6 K43 ["ImageColor3"]
      134 DUPTABLE                         R7 K64 [{"Frame", "ScrollingFrame", "TextLabel", "TextButton", "TextBox", "ImageButton", "ImageLabel", "ViewportFrame", "VideoFrame", "CanvasGroup", "UIListLayout", "UIGridLayout", "UIPageLayout", "UITableLayout", "UIShadow"}]
      135 SETTABLEKS                       R0 R7 K49 ["Frame"]
      137 SETTABLEKS                       R4 R7 K50 ["ScrollingFrame"]
      139 SETTABLEKS                       R1 R7 K51 ["TextLabel"]
      141 SETTABLEKS                       R1 R7 K52 ["TextButton"]
      143 SETTABLEKS                       R1 R7 K53 ["TextBox"]
      145 SETTABLEKS                       R2 R7 K54 ["ImageButton"]
      147 SETTABLEKS                       R2 R7 K55 ["ImageLabel"]
      149 SETTABLEKS                       R0 R7 K56 ["ViewportFrame"]
      151 SETTABLEKS                       R0 R7 K57 ["VideoFrame"]
      153 SETTABLEKS                       R0 R7 K58 ["CanvasGroup"]
      155 SETTABLEKS                       R3 R7 K59 ["UIListLayout"]
      157 SETTABLEKS                       R3 R7 K60 ["UIGridLayout"]
      159 SETTABLEKS                       R3 R7 K61 ["UIPageLayout"]
      161 SETTABLEKS                       R3 R7 K62 ["UITableLayout"]
      163 SETTABLEKS                       R5 R7 K63 ["UIShadow"]
      165 GETUPVAL                         R8 1
      166 CALL                             R8 0 1
      167 JUMPIFNOT                        R8 ; [+2]
      168 SETTABLEKS                       R6 R7 K65 ["InputActionLabel"]
      170 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 RETURN                           R1 1
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 MOVE                             R6 R5
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 GETUPVAL                         R12 2
       15 GETTABLE                         R11 R12 R9
       16 JUMPIFNOT                        R11 ; [+2]
       17 LOADNIL                          R11
       18 SETTABLE                         R11 R5 R9
       19 FORGLOOP                         R6 2 ; [-6]
       21 FORGLOOP                         R1 2 ; [-12]
       23 GETUPVAL                         R4 3
       24 CALL                             R4 0 1
       25 MOVE                             R1 R4
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 GETTABLE                         R6 R0 R4
       30 JUMPIF                           R6 ; [+1]
       31 SETTABLE                         R5 R0 R4
       32 FORGLOOP                         R1 2 ; [-4]
       34 NEWTABLE                         R1 0 0
       36 MOVE                             R2 R0
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 MOVE                             R8 R1
       41 GETUPVAL                         R9 4
       42 MOVE                             R10 R5
       43 MOVE                             R11 R6
       44 CALL                             R9 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R7 K2 [table.insert]
       48 CALL                             R7 -1 0
       49 FORGLOOP                         R2 2 ; [-10]
       51 GETUPVAL                         R2 5
       52 LOADK                            R3 K3 ["BaseStyleSheet"]
       53 MOVE                             R4 R1
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Styling"]
       25 GETTABLEKS                       R3 R3 K9 ["createStyleRule"]
       27 GETTABLEKS                       R4 R1 K8 ["Styling"]
       29 GETTABLEKS                       R4 R4 K10 ["createStyleSheet"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R6 K12 ["Flags"]
       37 GETTABLEKS                       R6 R6 K13 ["getEngineFeatureCustomizedDefaultInstances"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Src"]
       44 GETTABLEKS                       R7 R7 K12 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getEngineFeatureInputActionLabel"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K15 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 DUPTABLE                         R8 K31 [{["BorderColor"] = True, ["BackgroundColor"] = True, ["TextColor"] = True, ["FontSize"] = True, ["Font"] = True, ["Transparency"] = True, ["TextWrap"] = True, ["Video"] = True, ["Image"] = True, ["TopImage"] = True, ["MidImage"] = True, ["BottomImage"] = True, ["HoverImage"] = True, ["PressedImage"] = True}]
       54 DUPCLOSURE                       R9 K32 [PROTO_1]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R10 K33 [PROTO_2]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 RETURN                           R10 1
