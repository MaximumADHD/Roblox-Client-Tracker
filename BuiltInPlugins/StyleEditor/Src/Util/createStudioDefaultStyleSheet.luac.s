PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Size", "BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
        1 GETIMPORT                        R1 K7 [UDim2.fromOffset]
        3 LOADN                            R2 100
        4 LOADN                            R3 100
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETIMPORT                        R1 K10 [Color3.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
       16 GETIMPORT                        R1 K10 [Color3.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K2 ["BorderColor3"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K3 ["BorderSizePixel"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K11 ["Dictionary"]
       30 GETTABLEKS                       R1 R1 K12 ["join"]
       32 MOVE                             R2 R0
       33 DUPTABLE                         R3 K16 [{"Size", "FontFace", "TextSize", "TextColor3"}]
       34 GETIMPORT                        R4 K7 [UDim2.fromOffset]
       36 LOADN                            R5 200
       37 LOADN                            R6 50
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K0 ["Size"]
       41 GETIMPORT                        R4 K19 [Font.fromEnum]
       43 GETIMPORT                        R5 K22 [Enum.Font.SourceSans]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K13 ["FontFace"]
       48 LOADN                            R4 14
       49 SETTABLEKS                       R4 R3 K14 ["TextSize"]
       51 GETIMPORT                        R4 K10 [Color3.new]
       53 LOADN                            R5 0
       54 LOADN                            R6 0
       55 LOADN                            R7 0
       56 CALL                             R4 3 1
       57 SETTABLEKS                       R4 R3 K15 ["TextColor3"]
       59 CALL                             R1 2 1
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K11 ["Dictionary"]
       63 GETTABLEKS                       R2 R2 K12 ["join"]
       65 MOVE                             R3 R0
       66 DUPTABLE                         R4 K24 [{"Image"}]
       67 LOADK                            R5 K25 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       68 SETTABLEKS                       R5 R4 K23 ["Image"]
       70 CALL                             R2 2 1
       71 DUPTABLE                         R3 K27 [{"SortOrder"}]
       72 GETIMPORT                        R4 K29 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R4 R3 K26 ["SortOrder"]
       76 GETUPVAL                         R4 1
       77 LOADK                            R5 K30 ["BaseStyleSheet"]
       78 NEWTABLE                         R6 0 14
       80 GETUPVAL                         R7 2
       81 LOADK                            R8 K31 ["Frame"]
       82 MOVE                             R9 R0
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 2
       85 LOADK                            R9 K32 ["ScrollingFrame"]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K11 ["Dictionary"]
       89 GETTABLEKS                       R10 R10 K12 ["join"]
       91 MOVE                             R11 R0
       92 DUPTABLE                         R12 K35 [{"Active", "ScrollBarImageColor3"}]
       93 LOADB                            R13 1
       94 SETTABLEKS                       R13 R12 K33 ["Active"]
       96 GETIMPORT                        R13 K10 [Color3.new]
       98 LOADN                            R14 0
       99 LOADN                            R15 0
      100 LOADN                            R16 0
      101 CALL                             R13 3 1
      102 SETTABLEKS                       R13 R12 K34 ["ScrollBarImageColor3"]
      104 CALL                             R10 2 -1
      105 CALL                             R8 -1 1
      106 GETUPVAL                         R9 2
      107 LOADK                            R10 K36 ["TextLabel"]
      108 MOVE                             R11 R1
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 2
      111 LOADK                            R11 K37 ["TextButton"]
      112 MOVE                             R12 R1
      113 CALL                             R10 2 1
      114 GETUPVAL                         R11 2
      115 LOADK                            R12 K38 ["TextBox"]
      116 MOVE                             R13 R1
      117 CALL                             R11 2 1
      118 GETUPVAL                         R12 2
      119 LOADK                            R13 K39 ["ImageButton"]
      120 MOVE                             R14 R2
      121 CALL                             R12 2 1
      122 GETUPVAL                         R13 2
      123 LOADK                            R14 K40 ["ImageLabel"]
      124 MOVE                             R15 R2
      125 CALL                             R13 2 1
      126 GETUPVAL                         R14 2
      127 LOADK                            R15 K41 ["ViewportFrame"]
      128 MOVE                             R16 R0
      129 CALL                             R14 2 1
      130 GETUPVAL                         R15 2
      131 LOADK                            R16 K42 ["VideoFrame"]
      132 MOVE                             R17 R0
      133 CALL                             R15 2 1
      134 GETUPVAL                         R16 2
      135 LOADK                            R17 K43 ["CanvasGroup"]
      136 MOVE                             R18 R0
      137 CALL                             R16 2 1
      138 GETUPVAL                         R17 2
      139 LOADK                            R18 K44 ["UIListLayout"]
      140 MOVE                             R19 R3
      141 CALL                             R17 2 1
      142 GETUPVAL                         R18 2
      143 LOADK                            R19 K45 ["UIGridLayout"]
      144 MOVE                             R20 R3
      145 CALL                             R18 2 1
      146 GETUPVAL                         R19 2
      147 LOADK                            R20 K46 ["UIPageLayout"]
      148 MOVE                             R21 R3
      149 CALL                             R19 2 1
      150 GETUPVAL                         R20 2
      151 LOADK                            R21 K47 ["UITableLayout"]
      152 MOVE                             R22 R3
      153 CALL                             R20 2 -1
      154 SETLIST                          R6 R7 -1 [1]
      156 CALL                             R4 2 1
      157 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"Size", "BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
        1 GETIMPORT                        R1 K7 [UDim2.fromOffset]
        3 LOADN                            R2 100
        4 LOADN                            R3 100
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETIMPORT                        R1 K10 [Color3.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
       16 GETIMPORT                        R1 K10 [Color3.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K2 ["BorderColor3"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K3 ["BorderSizePixel"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K11 ["Dictionary"]
       30 GETTABLEKS                       R1 R1 K12 ["join"]
       32 MOVE                             R2 R0
       33 DUPTABLE                         R3 K16 [{"Size", "FontFace", "TextSize", "TextColor3"}]
       34 GETIMPORT                        R4 K7 [UDim2.fromOffset]
       36 LOADN                            R5 200
       37 LOADN                            R6 50
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K0 ["Size"]
       41 GETIMPORT                        R4 K19 [Font.fromEnum]
       43 GETIMPORT                        R5 K22 [Enum.Font.SourceSans]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K13 ["FontFace"]
       48 LOADN                            R4 14
       49 SETTABLEKS                       R4 R3 K14 ["TextSize"]
       51 GETIMPORT                        R4 K10 [Color3.new]
       53 LOADN                            R5 0
       54 LOADN                            R6 0
       55 LOADN                            R7 0
       56 CALL                             R4 3 1
       57 SETTABLEKS                       R4 R3 K15 ["TextColor3"]
       59 CALL                             R1 2 1
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K11 ["Dictionary"]
       63 GETTABLEKS                       R2 R2 K12 ["join"]
       65 MOVE                             R3 R0
       66 DUPTABLE                         R4 K24 [{"Image"}]
       67 LOADK                            R5 K25 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       68 SETTABLEKS                       R5 R4 K23 ["Image"]
       70 CALL                             R2 2 1
       71 DUPTABLE                         R3 K27 [{"SortOrder"}]
       72 GETIMPORT                        R4 K29 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R4 R3 K26 ["SortOrder"]
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K11 ["Dictionary"]
       79 GETTABLEKS                       R4 R4 K12 ["join"]
       81 MOVE                             R5 R0
       82 DUPTABLE                         R6 K32 [{"Active", "ScrollBarImageColor3"}]
       83 LOADB                            R7 1
       84 SETTABLEKS                       R7 R6 K30 ["Active"]
       86 GETIMPORT                        R7 K10 [Color3.new]
       88 LOADN                            R8 0
       89 LOADN                            R9 0
       90 LOADN                            R10 0
       91 CALL                             R7 3 1
       92 SETTABLEKS                       R7 R6 K31 ["ScrollBarImageColor3"]
       94 CALL                             R4 2 1
       95 DUPTABLE                         R5 K35 [{"BlurRadius", "Transparency"}]
       96 GETIMPORT                        R6 K37 [UDim.new]
       98 LOADN                            R7 0
       99 LOADN                            R8 20
      100 CALL                             R6 2 1
      101 SETTABLEKS                       R6 R5 K33 ["BlurRadius"]
      103 LOADK                            R6 K38 [0.5]
      104 SETTABLEKS                       R6 R5 K34 ["Transparency"]
      106 DUPTABLE                         R6 K53 [{"Frame", "ScrollingFrame", "TextLabel", "TextButton", "TextBox", "ImageButton", "ImageLabel", "ViewportFrame", "VideoFrame", "CanvasGroup", "UIListLayout", "UIGridLayout", "UIPageLayout", "UITableLayout"}]
      107 SETTABLEKS                       R0 R6 K39 ["Frame"]
      109 SETTABLEKS                       R4 R6 K40 ["ScrollingFrame"]
      111 SETTABLEKS                       R1 R6 K41 ["TextLabel"]
      113 SETTABLEKS                       R1 R6 K42 ["TextButton"]
      115 SETTABLEKS                       R1 R6 K43 ["TextBox"]
      117 SETTABLEKS                       R2 R6 K44 ["ImageButton"]
      119 SETTABLEKS                       R2 R6 K45 ["ImageLabel"]
      121 SETTABLEKS                       R0 R6 K46 ["ViewportFrame"]
      123 SETTABLEKS                       R0 R6 K47 ["VideoFrame"]
      125 SETTABLEKS                       R0 R6 K48 ["CanvasGroup"]
      127 SETTABLEKS                       R3 R6 K49 ["UIListLayout"]
      129 SETTABLEKS                       R3 R6 K50 ["UIGridLayout"]
      131 SETTABLEKS                       R3 R6 K51 ["UIPageLayout"]
      133 SETTABLEKS                       R3 R6 K52 ["UITableLayout"]
      135 GETUPVAL                         R7 1
      136 CALL                             R7 0 1
      137 JUMPIFNOT                        R7 ; [+2]
      138 SETTABLEKS                       R5 R6 K54 ["UIShadow"]
      140 RETURN                           R6 1

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
       23 GETUPVAL                         R1 3
       24 CALL                             R1 0 3
       25 FORGPREP                         R1
       26 GETTABLE                         R6 R0 R4
       27 JUMPIF                           R6 ; [+1]
       28 SETTABLE                         R5 R0 R4
       29 FORGLOOP                         R1 2 ; [-4]
       31 NEWTABLE                         R1 0 0
       33 MOVE                             R2 R0
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 MOVE                             R8 R1
       38 GETUPVAL                         R9 4
       39 MOVE                             R10 R5
       40 MOVE                             R11 R6
       41 CALL                             R9 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R7 K2 [table.insert]
       45 CALL                             R7 -1 0
       46 FORGLOOP                         R2 2 ; [-10]
       48 GETUPVAL                         R2 5
       49 LOADK                            R3 K3 ["BaseStyleSheet"]
       50 MOVE                             R4 R1
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1

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
       46 GETTABLEKS                       R7 R7 K14 ["getEngineFeatureUIShadow"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K15 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 DUPTABLE                         R8 K30 [{"BorderColor", "BackgroundColor", "TextColor", "FontSize", "Font", "Transparency", "TextWrap", "Video", "Image", "TopImage", "MidImage", "BottomImage", "HoverImage", "PressedImage"}]
       54 LOADB                            R9 1
       55 SETTABLEKS                       R9 R8 K16 ["BorderColor"]
       57 LOADB                            R9 1
       58 SETTABLEKS                       R9 R8 K17 ["BackgroundColor"]
       60 LOADB                            R9 1
       61 SETTABLEKS                       R9 R8 K18 ["TextColor"]
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R8 K19 ["FontSize"]
       66 LOADB                            R9 1
       67 SETTABLEKS                       R9 R8 K20 ["Font"]
       69 LOADB                            R9 1
       70 SETTABLEKS                       R9 R8 K21 ["Transparency"]
       72 LOADB                            R9 1
       73 SETTABLEKS                       R9 R8 K22 ["TextWrap"]
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K23 ["Video"]
       78 LOADB                            R9 1
       79 SETTABLEKS                       R9 R8 K24 ["Image"]
       81 LOADB                            R9 1
       82 SETTABLEKS                       R9 R8 K25 ["TopImage"]
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K26 ["MidImage"]
       87 LOADB                            R9 1
       88 SETTABLEKS                       R9 R8 K27 ["BottomImage"]
       90 LOADB                            R9 1
       91 SETTABLEKS                       R9 R8 K28 ["HoverImage"]
       93 LOADB                            R9 1
       94 SETTABLEKS                       R9 R8 K29 ["PressedImage"]
       96 DUPCLOSURE                       R9 K31 [PROTO_1]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 DUPCLOSURE                       R10 K32 [PROTO_2]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R4
      106 RETURN                           R10 1
