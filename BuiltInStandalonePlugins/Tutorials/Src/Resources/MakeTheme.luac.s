PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R3 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["StyleKey"]
       24 DUPTABLE                         R5 K28 [{["ContentHeight"], ["SelectedTopicTextColor"], ["TopicTextColor"], ["CircleColor"], ["CircleSize"] = 24, ["HintKeyBorder"], ["HintKeyBackground"], ["HintKeyBorderPressed"], ["HintKeyBackgroundPressed"], ["HintKeyTextColor"], ["HintKeyTextColorPressed"], ["IconSize"], ["Padding"] = 15, ["PaddingSmall"] = 5}]
       25 GETIMPORT                        R6 K31 [UDim2.new]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 LOADN                            R9 1
       30 LOADN                            R10 -130
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K11 ["ContentHeight"]
       34 GETTABLEKS                       R6 R4 K32 ["MainText"]
       36 SETTABLEKS                       R6 R5 K12 ["SelectedTopicTextColor"]
       38 GETTABLEKS                       R6 R4 K33 ["SubText"]
       40 SETTABLEKS                       R6 R5 K13 ["TopicTextColor"]
       42 GETTABLEKS                       R6 R4 K34 ["ForegroundContrast"]
       44 SETTABLEKS                       R6 R5 K14 ["CircleColor"]
       46 GETTABLEKS                       R6 R4 K33 ["SubText"]
       48 SETTABLEKS                       R6 R5 K17 ["HintKeyBorder"]
       50 GETTABLEKS                       R6 R4 K34 ["ForegroundContrast"]
       52 SETTABLEKS                       R6 R5 K18 ["HintKeyBackground"]
       54 GETTABLEKS                       R6 R4 K32 ["MainText"]
       56 SETTABLEKS                       R6 R5 K19 ["HintKeyBorderPressed"]
       58 GETTABLEKS                       R6 R4 K33 ["SubText"]
       60 SETTABLEKS                       R6 R5 K20 ["HintKeyBackgroundPressed"]
       62 GETTABLEKS                       R6 R4 K32 ["MainText"]
       64 SETTABLEKS                       R6 R5 K21 ["HintKeyTextColor"]
       66 GETTABLEKS                       R6 R4 K35 ["TextContrast"]
       68 SETTABLEKS                       R6 R5 K22 ["HintKeyTextColorPressed"]
       70 GETIMPORT                        R6 K37 [UDim2.fromOffset]
       72 LOADN                            R7 16
       73 LOADN                            R8 16
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K23 ["IconSize"]
       77 DUPTABLE                         R6 K46 [{["CheckmarkImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Checkmark.png", ["ListSelectedImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List-Selected.png", ["ListImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/List.png", ["CloseImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Light/Standard/Close.png"}]
       78 DUPTABLE                         R7 K51 [{["CheckmarkImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Checkmark.png", ["ListSelectedImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List-Selected.png", ["ListImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/List.png", ["CloseImage"] = "rbxasset://studio_svg_textures/Lua/Tutorials/Dark/Standard/Close.png"}]
       79 DUPCLOSURE                       R8 K52 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 RETURN                           R8 1
