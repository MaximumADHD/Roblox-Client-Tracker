PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
        2 DUPTABLE                         R2 K5 [{["SpriteSize"] = 12, ["NumSprites"] = 4}]
        3 CALL                             R0 2 1
        4 DUPTABLE                         R1 K9 [{["rightArrowImage"], ["downArrowImage"], ["dimension"] = 12}]
        5 GETTABLEN                        R2 R0 1
        6 SETTABLEKS                       R2 R1 K6 ["rightArrowImage"]
        8 GETTABLEN                        R2 R0 3
        9 SETTABLEKS                       R2 R1 K7 ["downArrowImage"]
       11 DUPTABLE                         R2 K22 [{"Arrow", "BackgroundColor", "ButtonColor", "HoverColor", "PressedColor", "BorderColor", "TextColor", "ErrorColor", "LinkColor", "Green", "White", "DisabledColor"}]
       12 SETTABLEKS                       R1 R2 K10 ["Arrow"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K23 ["MainBackground"]
       17 SETTABLEKS                       R3 R2 K11 ["BackgroundColor"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K23 ["MainBackground"]
       22 SETTABLEKS                       R3 R2 K12 ["ButtonColor"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K24 ["ButtonHover"]
       27 SETTABLEKS                       R3 R2 K13 ["HoverColor"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K25 ["ButtonPressed"]
       32 SETTABLEKS                       R3 R2 K14 ["PressedColor"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K26 ["Border"]
       37 SETTABLEKS                       R3 R2 K15 ["BorderColor"]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K27 ["MainText"]
       42 SETTABLEKS                       R3 R2 K16 ["TextColor"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K28 ["ErrorText"]
       47 SETTABLEKS                       R3 R2 K17 ["ErrorColor"]
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K29 ["LinkText"]
       52 SETTABLEKS                       R3 R2 K18 ["LinkColor"]
       54 GETIMPORT                        R3 K32 [Color3.fromRGB]
       56 LOADN                            R4 64
       57 LOADN                            R5 166
       58 LOADN                            R6 81
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R2 K19 ["Green"]
       62 GETIMPORT                        R3 K32 [Color3.fromRGB]
       64 LOADN                            R4 255
       65 LOADN                            R5 255
       66 LOADN                            R6 255
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R2 K20 ["White"]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K33 ["MainTextDisabled"]
       73 SETTABLEKS                       R3 R2 K21 ["DisabledColor"]
       75 DUPTABLE                         R3 K72 [{["ROW_HEIGHT"] = 25, ["MAINVIEW_PADDING_TOP"], ["MAINVIEW_PADDING_LEFT"], ["MAINSWITCH_LABEL_SIZE"], ["TEXT_INDENT_PADDING"], ["HORIZONTAL_LISTLAYOUT_PADDING"], ["DROPDOWN_BUTTON_SIZE"], ["DROPDOWN_ARROW_IMAGE"] = "rbxasset://textures/menuDownArrow.png", ["DROPDOWN_ARROW_POSITION"], ["DROPDOWN_ARROW_SIZE"], ["SELECTOR_SIZE"], ["DROPDOWN_MAX_HEIGHT"] = 200, ["SCROLLBAR_THICKNESS"] = 10, ["LANGUAGE_SECTION_SIZE"], ["LANGUAGE_INSTRUCTION_SIZE"], ["LANGUAGE_INSTRUCTION_TEXT_SIZE"] = 14, ["LOCALEID_TEXTBOX_SIZE"], ["PSEUDOLOCALIZATION_SECTION_SIZE"], ["TOGGLE_ITEM_FRAME_SIZE"], ["TOGGLE_BUTTON_HEIGHT"] = 15, ["TOGGLE_BUTTON_WIDTH"] = 25, ["TOGGLE_BUTTON_OFFSET"] = 255, ["COLLAPSE_ARROW_OFFSET"] = 265, ["LISTITEM_INDENT_LEFT"], ["LISTITEM_CHECKBOX_HEIGHT"] = 18, ["CHECKBOX_FRAME_SIZE"], ["CHECKBOX_HEIGHT"] = 18, ["CHECKBOX_TEXT_SIZE"] = 11}]
       76 GETIMPORT                        R4 K75 [UDim.new]
       78 LOADN                            R5 0
       79 LOADN                            R6 15
       80 CALL                             R4 2 1
       81 SETTABLEKS                       R4 R3 K36 ["MAINVIEW_PADDING_TOP"]
       83 GETIMPORT                        R4 K75 [UDim.new]
       85 LOADN                            R5 0
       86 LOADN                            R6 10
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R3 K37 ["MAINVIEW_PADDING_LEFT"]
       90 GETIMPORT                        R4 K77 [UDim2.new]
       92 LOADN                            R5 0
       93 LOADN                            R6 150
       94 LOADN                            R7 0
       95 LOADN                            R8 25
       96 CALL                             R4 4 1
       97 SETTABLEKS                       R4 R3 K38 ["MAINSWITCH_LABEL_SIZE"]
       99 GETIMPORT                        R4 K75 [UDim.new]
      101 LOADN                            R5 0
      102 LOADN                            R6 4
      103 CALL                             R4 2 1
      104 SETTABLEKS                       R4 R3 K39 ["TEXT_INDENT_PADDING"]
      106 GETIMPORT                        R4 K75 [UDim.new]
      108 LOADN                            R5 0
      109 LOADN                            R6 5
      110 CALL                             R4 2 1
      111 SETTABLEKS                       R4 R3 K40 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      113 GETIMPORT                        R4 K77 [UDim2.new]
      115 LOADN                            R5 0
      116 LOADN                            R6 170
      117 LOADN                            R7 0
      118 LOADN                            R8 25
      119 CALL                             R4 4 1
      120 SETTABLEKS                       R4 R3 K41 ["DROPDOWN_BUTTON_SIZE"]
      122 GETIMPORT                        R4 K77 [UDim2.new]
      124 LOADN                            R5 1
      125 LOADN                            R6 -15
      126 LOADK                            R7 K78 [0.5]
      127 LOADN                            R8 0
      128 CALL                             R4 4 1
      129 SETTABLEKS                       R4 R3 K44 ["DROPDOWN_ARROW_POSITION"]
      131 GETIMPORT                        R4 K77 [UDim2.new]
      133 LOADN                            R5 0
      134 LOADN                            R6 5
      135 LOADN                            R7 0
      136 LOADN                            R8 3
      137 CALL                             R4 4 1
      138 SETTABLEKS                       R4 R3 K45 ["DROPDOWN_ARROW_SIZE"]
      140 GETIMPORT                        R4 K77 [UDim2.new]
      142 LOADN                            R5 0
      143 LOADN                            R6 300
      144 LOADN                            R7 0
      145 LOADN                            R8 32
      146 CALL                             R4 4 1
      147 SETTABLEKS                       R4 R3 K46 ["SELECTOR_SIZE"]
      149 GETIMPORT                        R4 K77 [UDim2.new]
      151 LOADN                            R5 0
      152 LOADN                            R6 300
      153 LOADN                            R7 0
      154 LOADN                            R8 50
      155 CALL                             R4 4 1
      156 SETTABLEKS                       R4 R3 K51 ["LANGUAGE_SECTION_SIZE"]
      158 GETIMPORT                        R4 K77 [UDim2.new]
      160 LOADN                            R5 0
      161 LOADN                            R6 300
      162 LOADN                            R7 0
      163 LOADN                            R8 20
      164 CALL                             R4 4 1
      165 SETTABLEKS                       R4 R3 K52 ["LANGUAGE_INSTRUCTION_SIZE"]
      167 GETIMPORT                        R4 K77 [UDim2.new]
      169 LOADN                            R5 0
      170 LOADN                            R6 90
      171 LOADN                            R7 0
      172 LOADN                            R8 25
      173 CALL                             R4 4 1
      174 SETTABLEKS                       R4 R3 K55 ["LOCALEID_TEXTBOX_SIZE"]
      176 GETIMPORT                        R4 K77 [UDim2.new]
      178 LOADN                            R5 0
      179 LOADN                            R6 300
      180 LOADN                            R7 0
      181 LOADN                            R8 50
      182 CALL                             R4 4 1
      183 SETTABLEKS                       R4 R3 K56 ["PSEUDOLOCALIZATION_SECTION_SIZE"]
      185 GETIMPORT                        R4 K77 [UDim2.new]
      187 LOADN                            R5 0
      188 LOADN                            R6 300
      189 LOADN                            R7 0
      190 LOADN                            R8 25
      191 CALL                             R4 4 1
      192 SETTABLEKS                       R4 R3 K57 ["TOGGLE_ITEM_FRAME_SIZE"]
      194 GETIMPORT                        R4 K75 [UDim.new]
      196 LOADN                            R5 0
      197 LOADN                            R6 20
      198 CALL                             R4 2 1
      199 SETTABLEKS                       R4 R3 K65 ["LISTITEM_INDENT_LEFT"]
      201 GETIMPORT                        R4 K77 [UDim2.new]
      203 LOADN                            R5 1
      204 LOADN                            R6 0
      205 LOADN                            R7 0
      206 LOADN                            R8 20
      207 CALL                             R4 4 1
      208 SETTABLEKS                       R4 R3 K68 ["CHECKBOX_FRAME_SIZE"]
      210 GETUPVAL                         R4 2
      211 GETTABLEKS                       R4 R4 K79 ["Dictionary"]
      213 GETTABLEKS                       R4 R4 K80 ["join"]
      215 MOVE                             R5 R2
      216 MOVE                             R6 R3
      217 CALL                             R4 2 -1
      218 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RunningUnderCLI"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["mock"]
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["new"]
       15 CALL                             R2 0 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 -1
       19 NAMECALL                         R2 R1 K3 ["extend"]
       21 CALL                             R2 -1 0
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["Style"]
       34 GETTABLEKS                       R4 R4 K12 ["Themes"]
       36 GETTABLEKS                       R4 R4 K13 ["StudioTheme"]
       38 GETTABLEKS                       R5 R3 K11 ["Style"]
       40 GETTABLEKS                       R5 R5 K14 ["StyleKey"]
       42 GETTABLEKS                       R6 R3 K6 ["Util"]
       44 GETTABLEKS                       R6 R6 K15 ["Spritesheet"]
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 RETURN                           R8 1
