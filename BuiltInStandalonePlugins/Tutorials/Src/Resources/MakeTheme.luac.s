PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R2 R1 K2 ["extend"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R4 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R4 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["StyleKey"]
       24 DUPTABLE                         R5 K25 [{"ContentHeight", "SelectedTopicTextColor", "TopicTextColor", "CircleColor", "CircleSize", "HintKeyBorder", "HintKeyBackground", "HintKeyBorderPressed", "HintKeyBackgroundPressed", "HintKeyTextColor", "HintKeyTextColorPressed", "IconSize", "Padding", "PaddingSmall"}]
       25 GETIMPORT                        R6 K28 [UDim2.new]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 LOADN                            R9 1
       30 LOADN                            R10 126
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K11 ["ContentHeight"]
       34 GETTABLEKS                       R6 R4 K29 ["MainText"]
       36 SETTABLEKS                       R6 R5 K12 ["SelectedTopicTextColor"]
       38 GETTABLEKS                       R6 R4 K30 ["SubText"]
       40 SETTABLEKS                       R6 R5 K13 ["TopicTextColor"]
       42 GETTABLEKS                       R6 R4 K31 ["ForegroundContrast"]
       44 SETTABLEKS                       R6 R5 K14 ["CircleColor"]
       46 LOADN                            R6 24
       47 SETTABLEKS                       R6 R5 K15 ["CircleSize"]
       49 GETTABLEKS                       R6 R4 K30 ["SubText"]
       51 SETTABLEKS                       R6 R5 K16 ["HintKeyBorder"]
       53 GETTABLEKS                       R6 R4 K31 ["ForegroundContrast"]
       55 SETTABLEKS                       R6 R5 K17 ["HintKeyBackground"]
       57 GETTABLEKS                       R6 R4 K29 ["MainText"]
       59 SETTABLEKS                       R6 R5 K18 ["HintKeyBorderPressed"]
       61 GETTABLEKS                       R6 R4 K30 ["SubText"]
       63 SETTABLEKS                       R6 R5 K19 ["HintKeyBackgroundPressed"]
       65 GETTABLEKS                       R6 R4 K29 ["MainText"]
       67 SETTABLEKS                       R6 R5 K20 ["HintKeyTextColor"]
       69 GETTABLEKS                       R6 R4 K32 ["TextContrast"]
       71 SETTABLEKS                       R6 R5 K21 ["HintKeyTextColorPressed"]
       73 GETIMPORT                        R6 K34 [UDim2.fromOffset]
       75 LOADN                            R7 16
       76 LOADN                            R8 16
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K22 ["IconSize"]
       80 LOADN                            R6 15
       81 SETTABLEKS                       R6 R5 K23 ["Padding"]
       83 LOADN                            R6 5
       84 SETTABLEKS                       R6 R5 K24 ["PaddingSmall"]
       86 DUPTABLE                         R6 K39 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
       87 LOADK                            R7 K40 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Checkmark.png"]
       88 SETTABLEKS                       R7 R6 K35 ["CheckmarkImage"]
       90 LOADK                            R7 K41 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List-Selected.png"]
       91 SETTABLEKS                       R7 R6 K36 ["ListSelectedImage"]
       93 LOADK                            R7 K42 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List.png"]
       94 SETTABLEKS                       R7 R6 K37 ["ListImage"]
       96 LOADK                            R7 K43 ["rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"]
       97 SETTABLEKS                       R7 R6 K38 ["CloseImage"]
       99 DUPTABLE                         R7 K39 [{"CheckmarkImage", "ListSelectedImage", "ListImage", "CloseImage"}]
      100 LOADK                            R8 K44 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png"]
      101 SETTABLEKS                       R8 R7 K35 ["CheckmarkImage"]
      103 LOADK                            R8 K45 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List-Selected.png"]
      104 SETTABLEKS                       R8 R7 K36 ["ListSelectedImage"]
      106 LOADK                            R8 K46 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List.png"]
      107 SETTABLEKS                       R8 R7 K37 ["ListImage"]
      109 LOADK                            R8 K47 ["rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"]
      110 SETTABLEKS                       R8 R7 K38 ["CloseImage"]
      112 DUPCLOSURE                       R8 K48 [PROTO_0]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R5
      117 RETURN                           R8 1
