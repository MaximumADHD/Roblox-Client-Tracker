PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
        2 DUPTABLE                         R2 K3 [{"SpriteSize", "NumSprites"}]
        3 LOADN                            R3 12
        4 SETTABLEKS                       R3 R2 K1 ["SpriteSize"]
        6 LOADN                            R3 4
        7 SETTABLEKS                       R3 R2 K2 ["NumSprites"]
        9 CALL                             R0 2 1
       10 DUPTABLE                         R1 K7 [{"rightArrowImage", "downArrowImage", "dimension"}]
       11 GETTABLEN                        R2 R0 1
       12 SETTABLEKS                       R2 R1 K4 ["rightArrowImage"]
       14 GETTABLEN                        R2 R0 3
       15 SETTABLEKS                       R2 R1 K5 ["downArrowImage"]
       17 LOADN                            R2 12
       18 SETTABLEKS                       R2 R1 K6 ["dimension"]
       20 DUPTABLE                         R2 K20 [{"Arrow", "BackgroundColor", "ButtonColor", "HoverColor", "PressedColor", "BorderColor", "TextColor", "ErrorColor", "LinkColor", "Green", "White", "DisabledColor"}]
       21 SETTABLEKS                       R1 R2 K8 ["Arrow"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K21 ["MainBackground"]
       26 SETTABLEKS                       R3 R2 K9 ["BackgroundColor"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K21 ["MainBackground"]
       31 SETTABLEKS                       R3 R2 K10 ["ButtonColor"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K22 ["ButtonHover"]
       36 SETTABLEKS                       R3 R2 K11 ["HoverColor"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K23 ["ButtonPressed"]
       41 SETTABLEKS                       R3 R2 K12 ["PressedColor"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K24 ["Border"]
       46 SETTABLEKS                       R3 R2 K13 ["BorderColor"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K25 ["MainText"]
       51 SETTABLEKS                       R3 R2 K14 ["TextColor"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K26 ["ErrorText"]
       56 SETTABLEKS                       R3 R2 K15 ["ErrorColor"]
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K27 ["LinkText"]
       61 SETTABLEKS                       R3 R2 K16 ["LinkColor"]
       63 GETIMPORT                        R3 K30 [Color3.fromRGB]
       65 LOADN                            R4 64
       66 LOADN                            R5 166
       67 LOADN                            R6 81
       68 CALL                             R3 3 1
       69 SETTABLEKS                       R3 R2 K17 ["Green"]
       71 GETIMPORT                        R3 K30 [Color3.fromRGB]
       73 LOADN                            R4 255
       74 LOADN                            R5 255
       75 LOADN                            R6 255
       76 CALL                             R3 3 1
       77 SETTABLEKS                       R3 R2 K18 ["White"]
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R3 R3 K31 ["MainTextDisabled"]
       82 SETTABLEKS                       R3 R2 K19 ["DisabledColor"]
       84 DUPTABLE                         R3 K60 [{"ROW_HEIGHT", "MAINVIEW_PADDING_TOP", "MAINVIEW_PADDING_LEFT", "MAINSWITCH_LABEL_SIZE", "TEXT_INDENT_PADDING", "HORIZONTAL_LISTLAYOUT_PADDING", "DROPDOWN_BUTTON_SIZE", "DROPDOWN_ARROW_IMAGE", "DROPDOWN_ARROW_POSITION", "DROPDOWN_ARROW_SIZE", "SELECTOR_SIZE", "DROPDOWN_MAX_HEIGHT", "SCROLLBAR_THICKNESS", "LANGUAGE_SECTION_SIZE", "LANGUAGE_INSTRUCTION_SIZE", "LANGUAGE_INSTRUCTION_TEXT_SIZE", "LOCALEID_TEXTBOX_SIZE", "PSEUDOLOCALIZATION_SECTION_SIZE", "TOGGLE_ITEM_FRAME_SIZE", "TOGGLE_BUTTON_HEIGHT", "TOGGLE_BUTTON_WIDTH", "TOGGLE_BUTTON_OFFSET", "COLLAPSE_ARROW_OFFSET", "LISTITEM_INDENT_LEFT", "LISTITEM_CHECKBOX_HEIGHT", "CHECKBOX_FRAME_SIZE", "CHECKBOX_HEIGHT", "CHECKBOX_TEXT_SIZE"}]
       85 LOADN                            R4 25
       86 SETTABLEKS                       R4 R3 K32 ["ROW_HEIGHT"]
       88 GETIMPORT                        R4 K63 [UDim.new]
       90 LOADN                            R5 0
       91 LOADN                            R6 15
       92 CALL                             R4 2 1
       93 SETTABLEKS                       R4 R3 K33 ["MAINVIEW_PADDING_TOP"]
       95 GETIMPORT                        R4 K63 [UDim.new]
       97 LOADN                            R5 0
       98 LOADN                            R6 10
       99 CALL                             R4 2 1
      100 SETTABLEKS                       R4 R3 K34 ["MAINVIEW_PADDING_LEFT"]
      102 GETIMPORT                        R4 K65 [UDim2.new]
      104 LOADN                            R5 0
      105 LOADN                            R6 150
      106 LOADN                            R7 0
      107 LOADN                            R8 25
      108 CALL                             R4 4 1
      109 SETTABLEKS                       R4 R3 K35 ["MAINSWITCH_LABEL_SIZE"]
      111 GETIMPORT                        R4 K63 [UDim.new]
      113 LOADN                            R5 0
      114 LOADN                            R6 4
      115 CALL                             R4 2 1
      116 SETTABLEKS                       R4 R3 K36 ["TEXT_INDENT_PADDING"]
      118 GETIMPORT                        R4 K63 [UDim.new]
      120 LOADN                            R5 0
      121 LOADN                            R6 5
      122 CALL                             R4 2 1
      123 SETTABLEKS                       R4 R3 K37 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      125 GETIMPORT                        R4 K65 [UDim2.new]
      127 LOADN                            R5 0
      128 LOADN                            R6 170
      129 LOADN                            R7 0
      130 LOADN                            R8 25
      131 CALL                             R4 4 1
      132 SETTABLEKS                       R4 R3 K38 ["DROPDOWN_BUTTON_SIZE"]
      134 LOADK                            R4 K66 ["rbxasset://textures/menuDownArrow.png"]
      135 SETTABLEKS                       R4 R3 K39 ["DROPDOWN_ARROW_IMAGE"]
      137 GETIMPORT                        R4 K65 [UDim2.new]
      139 LOADN                            R5 1
      140 LOADN                            R6 241
      141 LOADK                            R7 K67 [0.5]
      142 LOADN                            R8 0
      143 CALL                             R4 4 1
      144 SETTABLEKS                       R4 R3 K40 ["DROPDOWN_ARROW_POSITION"]
      146 GETIMPORT                        R4 K65 [UDim2.new]
      148 LOADN                            R5 0
      149 LOADN                            R6 5
      150 LOADN                            R7 0
      151 LOADN                            R8 3
      152 CALL                             R4 4 1
      153 SETTABLEKS                       R4 R3 K41 ["DROPDOWN_ARROW_SIZE"]
      155 GETIMPORT                        R4 K65 [UDim2.new]
      157 LOADN                            R5 0
      158 LOADN                            R6 44
      159 LOADN                            R7 0
      160 LOADN                            R8 32
      161 CALL                             R4 4 1
      162 SETTABLEKS                       R4 R3 K42 ["SELECTOR_SIZE"]
      164 LOADN                            R4 200
      165 SETTABLEKS                       R4 R3 K43 ["DROPDOWN_MAX_HEIGHT"]
      167 LOADN                            R4 10
      168 SETTABLEKS                       R4 R3 K44 ["SCROLLBAR_THICKNESS"]
      170 GETIMPORT                        R4 K65 [UDim2.new]
      172 LOADN                            R5 0
      173 LOADN                            R6 44
      174 LOADN                            R7 0
      175 LOADN                            R8 50
      176 CALL                             R4 4 1
      177 SETTABLEKS                       R4 R3 K45 ["LANGUAGE_SECTION_SIZE"]
      179 GETIMPORT                        R4 K65 [UDim2.new]
      181 LOADN                            R5 0
      182 LOADN                            R6 44
      183 LOADN                            R7 0
      184 LOADN                            R8 20
      185 CALL                             R4 4 1
      186 SETTABLEKS                       R4 R3 K46 ["LANGUAGE_INSTRUCTION_SIZE"]
      188 LOADN                            R4 14
      189 SETTABLEKS                       R4 R3 K47 ["LANGUAGE_INSTRUCTION_TEXT_SIZE"]
      191 GETIMPORT                        R4 K65 [UDim2.new]
      193 LOADN                            R5 0
      194 LOADN                            R6 90
      195 LOADN                            R7 0
      196 LOADN                            R8 25
      197 CALL                             R4 4 1
      198 SETTABLEKS                       R4 R3 K48 ["LOCALEID_TEXTBOX_SIZE"]
      200 GETIMPORT                        R4 K65 [UDim2.new]
      202 LOADN                            R5 0
      203 LOADN                            R6 44
      204 LOADN                            R7 0
      205 LOADN                            R8 50
      206 CALL                             R4 4 1
      207 SETTABLEKS                       R4 R3 K49 ["PSEUDOLOCALIZATION_SECTION_SIZE"]
      209 GETIMPORT                        R4 K65 [UDim2.new]
      211 LOADN                            R5 0
      212 LOADN                            R6 44
      213 LOADN                            R7 0
      214 LOADN                            R8 25
      215 CALL                             R4 4 1
      216 SETTABLEKS                       R4 R3 K50 ["TOGGLE_ITEM_FRAME_SIZE"]
      218 LOADN                            R4 15
      219 SETTABLEKS                       R4 R3 K51 ["TOGGLE_BUTTON_HEIGHT"]
      221 LOADN                            R4 25
      222 SETTABLEKS                       R4 R3 K52 ["TOGGLE_BUTTON_WIDTH"]
      224 LOADN                            R4 255
      225 SETTABLEKS                       R4 R3 K53 ["TOGGLE_BUTTON_OFFSET"]
      227 LOADN                            R4 9
      228 SETTABLEKS                       R4 R3 K54 ["COLLAPSE_ARROW_OFFSET"]
      230 GETIMPORT                        R4 K63 [UDim.new]
      232 LOADN                            R5 0
      233 LOADN                            R6 20
      234 CALL                             R4 2 1
      235 SETTABLEKS                       R4 R3 K55 ["LISTITEM_INDENT_LEFT"]
      237 LOADN                            R4 18
      238 SETTABLEKS                       R4 R3 K56 ["LISTITEM_CHECKBOX_HEIGHT"]
      240 GETIMPORT                        R4 K65 [UDim2.new]
      242 LOADN                            R5 1
      243 LOADN                            R6 0
      244 LOADN                            R7 0
      245 LOADN                            R8 20
      246 CALL                             R4 4 1
      247 SETTABLEKS                       R4 R3 K57 ["CHECKBOX_FRAME_SIZE"]
      249 LOADN                            R4 18
      250 SETTABLEKS                       R4 R3 K58 ["CHECKBOX_HEIGHT"]
      252 LOADN                            R4 11
      253 SETTABLEKS                       R4 R3 K59 ["CHECKBOX_TEXT_SIZE"]
      255 GETUPVAL                         R4 2
      256 GETTABLEKS                       R4 R4 K68 ["Dictionary"]
      258 GETTABLEKS                       R4 R4 K69 ["join"]
      260 MOVE                             R5 R2
      261 MOVE                             R6 R3
      262 CALL                             R4 2 -1
      263 RETURN                           R4 -1

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
