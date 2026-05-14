PROTO_0:
        0 DUPTABLE                         R1 K2 [{"hovered", "pressed"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hovered"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["pressed"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["isMain"]
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETTABLEKS                       R2 R0 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["pressed"]
       10 JUMPIF                           R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K2 ["state"]
       13 GETTABLEKS                       R2 R2 K4 ["hovered"]
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K5 ["Hover"]
       19 JUMP                             ; [+21]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K6 ["Default"]
       23 JUMP                             ; [+17]
       24 GETTABLEKS                       R2 R0 K2 ["state"]
       26 GETTABLEKS                       R2 R2 K3 ["pressed"]
       28 JUMPIF                           R2 ; [+5]
       29 GETTABLEKS                       R2 R0 K2 ["state"]
       31 GETTABLEKS                       R2 R2 K4 ["hovered"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R1 R2 K5 ["Hover"]
       37 JUMP                             ; [+3]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K6 ["Default"]
       41 GETUPVAL                         R2 2
       42 MOVE                             R3 R1
       43 CALL                             R2 1 -1
       44 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["isMain"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 1
        7 JUMPIF                           R2 ; [+1]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["isMain"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 1
        7 JUMPIF                           R2 ; [+1]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+9]
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R4 K5 [{"hovered"}]
        8 LOADB                            R5 1
        9 SETTABLEKS                       R5 R4 K4 ["hovered"]
       11 NAMECALL                         R2 R2 K6 ["setState"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R4 K6 [{"hovered", "pressed"}]
        8 LOADB                            R5 0
        9 SETTABLEKS                       R5 R4 K4 ["hovered"]
       11 LOADB                            R5 0
       12 SETTABLEKS                       R5 R4 K5 ["pressed"]
       14 NAMECALL                         R2 R2 K7 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"pressed"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["pressed"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"pressed"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["pressed"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ImageButton"]
        4 NEWTABLE                         R3 16 0
        6 LOADN                            R4 1
        7 SETTABLEKS                       R4 R3 K2 ["BackgroundTransparency"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["BUTTON_AVATAR_TYPE"]
       12 SETTABLEKS                       R4 R3 K4 ["Image"]
       14 GETIMPORT                        R4 K8 [Enum.ScaleType.Slice]
       16 SETTABLEKS                       R4 R3 K6 ["ScaleType"]
       18 GETTABLEKS                       R5 R0 K9 ["props"]
       20 GETTABLEKS                       R5 R5 K10 ["isLarge"]
       22 JUMPIFNOT                        R5 ; [+8]
       23 GETIMPORT                        R4 K13 [UDim2.new]
       25 LOADN                            R5 0
       26 LOADN                            R6 192
       27 LOADN                            R7 0
       28 LOADN                            R8 34
       29 CALL                             R4 4 1
       30 JUMPIF                           R4 ; [+7]
       31 GETIMPORT                        R4 K13 [UDim2.new]
       33 LOADN                            R5 0
       34 LOADN                            R6 102
       35 LOADN                            R7 0
       36 LOADN                            R8 34
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R3 K14 ["Size"]
       40 GETIMPORT                        R4 K16 [Rect.new]
       42 LOADN                            R5 4
       43 LOADN                            R6 4
       44 LOADN                            R7 5
       45 LOADN                            R8 5
       46 CALL                             R4 4 1
       47 SETTABLEKS                       R4 R3 K17 ["SliceCenter"]
       49 NAMECALL                         R4 R0 K18 ["getButtonThemeConfig"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K19 ["ImageColor3"]
       54 GETTABLEKS                       R4 R0 K9 ["props"]
       56 GETTABLEKS                       R4 R4 K20 ["layoutOrder"]
       58 SETTABLEKS                       R4 R3 K21 ["LayoutOrder"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K22 ["Event"]
       63 GETTABLEKS                       R4 R4 K23 ["InputBegan"]
       65 NEWCLOSURE                       R5 P0
       66 CAPTURE                          VAL R0
       67 SETTABLE                         R5 R3 R4
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K22 ["Event"]
       71 GETTABLEKS                       R4 R4 K24 ["InputEnded"]
       73 NEWCLOSURE                       R5 P1
       74 CAPTURE                          VAL R0
       75 SETTABLE                         R5 R3 R4
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K22 ["Event"]
       79 GETTABLEKS                       R4 R4 K25 ["MouseButton1Down"]
       81 NEWCLOSURE                       R5 P2
       82 CAPTURE                          VAL R0
       83 SETTABLE                         R5 R3 R4
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R4 R4 K22 ["Event"]
       87 GETTABLEKS                       R4 R4 K26 ["MouseButton1Up"]
       89 NEWCLOSURE                       R5 P3
       90 CAPTURE                          VAL R0
       91 SETTABLE                         R5 R3 R4
       92 GETUPVAL                         R4 0
       93 GETTABLEKS                       R4 R4 K22 ["Event"]
       95 GETTABLEKS                       R4 R4 K27 ["MouseButton1Click"]
       97 GETTABLEKS                       R6 R0 K9 ["props"]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R7 R7 K22 ["Event"]
      102 GETTABLEKS                       R7 R7 K27 ["MouseButton1Click"]
      104 GETTABLE                         R5 R6 R7
      105 SETTABLE                         R5 R3 R4
      106 DUPTABLE                         R4 K30 [{"border", "label"}]
      107 GETUPVAL                         R5 0
      108 GETTABLEKS                       R5 R5 K0 ["createElement"]
      110 LOADK                            R6 K31 ["ImageLabel"]
      111 DUPTABLE                         R7 K32 [{"BackgroundTransparency", "Image", "ScaleType", "Size", "SliceCenter", "ImageColor3"}]
      112 LOADN                            R8 1
      113 SETTABLEKS                       R8 R7 K2 ["BackgroundTransparency"]
      115 GETUPVAL                         R8 1
      116 GETTABLEKS                       R8 R8 K33 ["BUTTON_AVATAR_TYPE_BORDER"]
      118 SETTABLEKS                       R8 R7 K4 ["Image"]
      120 GETIMPORT                        R8 K8 [Enum.ScaleType.Slice]
      122 SETTABLEKS                       R8 R7 K6 ["ScaleType"]
      124 GETIMPORT                        R8 K13 [UDim2.new]
      126 LOADN                            R9 1
      127 LOADN                            R10 0
      128 LOADN                            R11 1
      129 LOADN                            R12 0
      130 CALL                             R8 4 1
      131 SETTABLEKS                       R8 R7 K14 ["Size"]
      133 GETIMPORT                        R8 K16 [Rect.new]
      135 LOADN                            R9 4
      136 LOADN                            R10 4
      137 LOADN                            R11 5
      138 LOADN                            R12 5
      139 CALL                             R8 4 1
      140 SETTABLEKS                       R8 R7 K17 ["SliceCenter"]
      142 NAMECALL                         R8 R0 K34 ["getBorderThemeConfig"]
      144 CALL                             R8 1 1
      145 SETTABLEKS                       R8 R7 K19 ["ImageColor3"]
      147 CALL                             R5 2 1
      148 SETTABLEKS                       R5 R4 K28 ["border"]
      150 GETUPVAL                         R5 0
      151 GETTABLEKS                       R5 R5 K0 ["createElement"]
      153 LOADK                            R6 K35 ["TextLabel"]
      154 DUPTABLE                         R7 K40 [{"BackgroundTransparency", "Font", "Size", "TextSize", "Text", "TextColor3"}]
      155 LOADN                            R8 1
      156 SETTABLEKS                       R8 R7 K2 ["BackgroundTransparency"]
      158 GETUPVAL                         R8 2
      159 GETTABLEKS                       R8 R8 K41 ["FONT"]
      161 SETTABLEKS                       R8 R7 K36 ["Font"]
      163 GETIMPORT                        R8 K13 [UDim2.new]
      165 LOADN                            R9 1
      166 LOADN                            R10 0
      167 LOADN                            R11 1
      168 LOADN                            R12 0
      169 CALL                             R8 4 1
      170 SETTABLEKS                       R8 R7 K14 ["Size"]
      172 GETUPVAL                         R8 2
      173 GETTABLEKS                       R8 R8 K42 ["FONT_SIZE_TITLE"]
      175 SETTABLEKS                       R8 R7 K37 ["TextSize"]
      177 GETTABLEKS                       R8 R0 K9 ["props"]
      179 GETTABLEKS                       R8 R8 K43 ["labelText"]
      181 SETTABLEKS                       R8 R7 K38 ["Text"]
      183 NAMECALL                         R8 R0 K44 ["getLabelThemeConfig"]
      185 CALL                             R8 1 1
      186 SETTABLEKS                       R8 R7 K39 ["TextColor3"]
      188 CALL                             R5 2 1
      189 SETTABLEKS                       R5 R4 K29 ["label"]
      191 CALL                             R1 3 -1
      192 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R0 K7 ["src"]
       20 GETTABLEKS                       R3 R3 K8 ["Assets"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["src"]
       27 GETTABLEKS                       R4 R4 K9 ["utils"]
       29 GETTABLEKS                       R4 R4 K10 ["themeConfig"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["src"]
       36 GETTABLEKS                       R5 R5 K11 ["Constants"]
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K14 [{"Default", "Hover"}]
       40 DUPTABLE                         R6 K17 [{"Light", "Dark"}]
       41 GETIMPORT                        R7 K20 [Color3.fromRGB]
       43 LOADN                            R8 255
       44 LOADN                            R9 255
       45 LOADN                            R10 255
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K15 ["Light"]
       49 GETIMPORT                        R7 K20 [Color3.fromRGB]
       51 LOADN                            R8 60
       52 LOADN                            R9 60
       53 LOADN                            R10 60
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K16 ["Dark"]
       57 SETTABLEKS                       R6 R5 K12 ["Default"]
       59 DUPTABLE                         R6 K17 [{"Light", "Dark"}]
       60 GETIMPORT                        R7 K20 [Color3.fromRGB]
       62 LOADN                            R8 228
       63 LOADN                            R9 238
       64 LOADN                            R10 254
       65 CALL                             R7 3 1
       66 SETTABLEKS                       R7 R6 K15 ["Light"]
       68 GETIMPORT                        R7 K20 [Color3.fromRGB]
       70 LOADN                            R8 66
       71 LOADN                            R9 66
       72 LOADN                            R10 66
       73 CALL                             R7 3 1
       74 SETTABLEKS                       R7 R6 K16 ["Dark"]
       76 SETTABLEKS                       R6 R5 K13 ["Hover"]
       78 DUPTABLE                         R6 K14 [{"Default", "Hover"}]
       79 DUPTABLE                         R7 K17 [{"Light", "Dark"}]
       80 GETIMPORT                        R8 K20 [Color3.fromRGB]
       82 LOADN                            R9 0
       83 LOADN                            R10 162
       84 LOADN                            R11 255
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K15 ["Light"]
       88 GETIMPORT                        R8 K20 [Color3.fromRGB]
       90 LOADN                            R9 0
       91 LOADN                            R10 162
       92 LOADN                            R11 255
       93 CALL                             R8 3 1
       94 SETTABLEKS                       R8 R7 K16 ["Dark"]
       96 SETTABLEKS                       R7 R6 K12 ["Default"]
       98 DUPTABLE                         R7 K17 [{"Light", "Dark"}]
       99 GETIMPORT                        R8 K20 [Color3.fromRGB]
      101 LOADN                            R9 50
      102 LOADN                            R10 181
      103 LOADN                            R11 255
      104 CALL                             R8 3 1
      105 SETTABLEKS                       R8 R7 K15 ["Light"]
      107 GETIMPORT                        R8 K20 [Color3.fromRGB]
      109 LOADN                            R9 50
      110 LOADN                            R10 181
      111 LOADN                            R11 255
      112 CALL                             R8 3 1
      113 SETTABLEKS                       R8 R7 K16 ["Dark"]
      115 SETTABLEKS                       R7 R6 K13 ["Hover"]
      117 DUPTABLE                         R7 K17 [{"Light", "Dark"}]
      118 GETIMPORT                        R8 K20 [Color3.fromRGB]
      120 LOADN                            R9 0
      121 LOADN                            R10 0
      122 LOADN                            R11 0
      123 CALL                             R8 3 1
      124 SETTABLEKS                       R8 R7 K15 ["Light"]
      126 GETIMPORT                        R8 K20 [Color3.fromRGB]
      128 LOADN                            R9 255
      129 LOADN                            R10 255
      130 LOADN                            R11 255
      131 CALL                             R8 3 1
      132 SETTABLEKS                       R8 R7 K16 ["Dark"]
      134 DUPTABLE                         R8 K17 [{"Light", "Dark"}]
      135 GETIMPORT                        R9 K20 [Color3.fromRGB]
      137 LOADN                            R10 255
      138 LOADN                            R11 255
      139 LOADN                            R12 255
      140 CALL                             R9 3 1
      141 SETTABLEKS                       R9 R8 K15 ["Light"]
      143 GETIMPORT                        R9 K20 [Color3.fromRGB]
      145 LOADN                            R10 255
      146 LOADN                            R11 255
      147 LOADN                            R12 255
      148 CALL                             R9 3 1
      149 SETTABLEKS                       R9 R8 K16 ["Dark"]
      151 DUPTABLE                         R9 K17 [{"Light", "Dark"}]
      152 GETIMPORT                        R10 K20 [Color3.fromRGB]
      154 LOADN                            R11 184
      155 LOADN                            R12 184
      156 LOADN                            R13 184
      157 CALL                             R10 3 1
      158 SETTABLEKS                       R10 R9 K15 ["Light"]
      160 GETIMPORT                        R10 K20 [Color3.fromRGB]
      162 LOADN                            R11 60
      163 LOADN                            R12 60
      164 LOADN                            R13 60
      165 CALL                             R10 3 1
      166 SETTABLEKS                       R10 R9 K16 ["Dark"]
      168 DUPTABLE                         R10 K17 [{"Light", "Dark"}]
      169 GETIMPORT                        R11 K20 [Color3.fromRGB]
      171 LOADN                            R12 0
      172 LOADN                            R13 162
      173 LOADN                            R14 255
      174 CALL                             R11 3 1
      175 SETTABLEKS                       R11 R10 K15 ["Light"]
      177 GETIMPORT                        R11 K20 [Color3.fromRGB]
      179 LOADN                            R12 0
      180 LOADN                            R13 162
      181 LOADN                            R14 255
      182 CALL                             R11 3 1
      183 SETTABLEKS                       R11 R10 K16 ["Dark"]
      185 GETTABLEKS                       R11 R1 K21 ["Component"]
      187 LOADK                            R13 K22 ["CustomTextButton"]
      188 NAMECALL                         R11 R11 K23 ["extend"]
      190 CALL                             R11 2 1
      191 DUPCLOSURE                       R12 K24 [PROTO_0]
      192 SETTABLEKS                       R12 R11 K25 ["init"]
      194 DUPCLOSURE                       R12 K26 [PROTO_1]
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R3
      198 SETTABLEKS                       R12 R11 K27 ["getButtonThemeConfig"]
      200 DUPCLOSURE                       R12 K28 [PROTO_2]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R7
      204 SETTABLEKS                       R12 R11 K29 ["getLabelThemeConfig"]
      206 DUPCLOSURE                       R12 K30 [PROTO_3]
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R9
      210 SETTABLEKS                       R12 R11 K31 ["getBorderThemeConfig"]
      212 DUPCLOSURE                       R12 K32 [PROTO_8]
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R4
      216 SETTABLEKS                       R12 R11 K33 ["render"]
      218 RETURN                           R11 1
