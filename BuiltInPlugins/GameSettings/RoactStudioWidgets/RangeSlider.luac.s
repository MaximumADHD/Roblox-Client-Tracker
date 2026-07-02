PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["sliderFrameRef"]
        6 DUPTABLE                         R1 K6 [{["currentLowerTextInputBoxText"], ["currentUpperTextInputBoxText"], ["Pressed"] = False}]
        7 GETTABLEKS                       R3 R0 K7 ["props"]
        9 GETTABLEKS                       R3 R3 K8 ["LowerRangeValue"]
       11 FASTCALL1                        TOSTRING R3 ; [+2]
       12 GETIMPORT                        R2 K10 [tostring]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K2 ["currentLowerTextInputBoxText"]
       17 GETTABLEKS                       R3 R0 K7 ["props"]
       19 GETTABLEKS                       R3 R3 K11 ["UpperRangeValue"]
       21 FASTCALL1                        TOSTRING R3 ; [+2]
       22 GETIMPORT                        R2 K10 [tostring]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K3 ["currentUpperTextInputBoxText"]
       27 SETTABLEKS                       R1 R0 K12 ["state"]
       29 GETTABLEKS                       R1 R0 K7 ["props"]
       31 GETTABLEKS                       R1 R1 K8 ["LowerRangeValue"]
       33 SETTABLEKS                       R1 R0 K13 ["currentLowerRangeValue"]
       35 GETTABLEKS                       R1 R0 K7 ["props"]
       37 GETTABLEKS                       R1 R1 K11 ["UpperRangeValue"]
       39 SETTABLEKS                       R1 R0 K14 ["currentUpperRangeValue"]
       41 LOADB                            R1 0
       42 SETTABLEKS                       R1 R0 K15 ["havePropsChanged"]
       44 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["LowerRangeValue"]
        4 SETTABLEKS                       R1 R0 K2 ["currentLowerRangeValue"]
        6 GETTABLEKS                       R1 R0 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["UpperRangeValue"]
       10 SETTABLEKS                       R1 R0 K4 ["currentUpperRangeValue"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K5 ["havePropsChanged"]
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+22]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R2 R3 ; [+17]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K8 [{["Pressed"] = True}]
       14 NAMECALL                         R2 R2 K9 ["setState"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R4 0
       20 MOVE                             R5 R1
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K10 ["staticRangeDuringInput"]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 0
       26 MOVE                             R4 R1
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["state"]
        9 GETTABLEKS                       R2 R2 K3 ["Pressed"]
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETTABLEKS                       R2 R1 K4 ["UserInputType"]
       14 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseMovement]
       16 JUMPIFNOTEQ                      R2 R3 ; [+5]
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R2 R3 ; [+6]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K8 [{["Pressed"] = False}]
       14 NAMECALL                         R2 R2 K9 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["onEnter"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["onLeave"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentLowerTextInputBoxText"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentLowerTextInputBoxText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R0 ; [+34]
        1 LOADB                            R2 0
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["state"]
        6 GETTABLEKS                       R4 R4 K1 ["currentLowerTextInputBoxText"]
        8 FASTCALL1                        TONUMBER R4 ; [+2]
        9 GETIMPORT                        R3 K3 [tonumber]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R3
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 JUMPIF                           R2 ; [+16]
       19 GETUPVAL                         R3 0
       20 DUPTABLE                         R5 K4 [{"currentLowerTextInputBoxText"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K5 ["props"]
       24 GETTABLEKS                       R7 R7 K6 ["LowerRangeValue"]
       26 FASTCALL1                        TOSTRING R7 ; [+2]
       27 GETIMPORT                        R6 K8 [tostring]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K1 ["currentLowerTextInputBoxText"]
       32 NAMECALL                         R3 R3 K9 ["setState"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentUpperTextInputBoxText"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentUpperTextInputBoxText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R0 ; [+34]
        1 LOADB                            R2 0
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["state"]
        6 GETTABLEKS                       R4 R4 K1 ["currentUpperTextInputBoxText"]
        8 FASTCALL1                        TONUMBER R4 ; [+2]
        9 GETIMPORT                        R3 K3 [tonumber]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R3
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 JUMPIF                           R2 ; [+16]
       19 GETUPVAL                         R3 0
       20 DUPTABLE                         R5 K4 [{"currentUpperTextInputBoxText"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K5 ["props"]
       24 GETTABLEKS                       R7 R7 K6 ["UpperRangeValue"]
       26 FASTCALL1                        TOSTRING R7 ; [+2]
       27 GETIMPORT                        R6 K8 [tostring]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K1 ["currentUpperTextInputBoxText"]
       32 NAMECALL                         R3 R3 K9 ["setState"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["currentLowerTextInputBoxText"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["state"]
       11 GETTABLEKS                       R2 R2 K2 ["currentUpperTextInputBoxText"]
       13 GETUPVAL                         R3 1
       14 LOADB                            R4 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["currentLowerRangeValue"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["props"]
       21 GETTABLEKS                       R6 R6 K5 ["LowerRangeValue"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+13]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["currentUpperRangeValue"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K4 ["props"]
       31 GETTABLEKS                       R6 R6 K7 ["UpperRangeValue"]
       33 JUMPIFNOTEQ                      R5 R6 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 SETTABLEKS                       R4 R3 K8 ["havePropsChanged"]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K8 ["havePropsChanged"]
       42 JUMPIFNOT                        R3 ; [+20]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K4 ["props"]
       46 GETTABLEKS                       R4 R4 K5 ["LowerRangeValue"]
       48 FASTCALL1                        TOSTRING R4 ; [+2]
       49 GETIMPORT                        R3 K10 [tostring]
       51 CALL                             R3 1 1
       52 MOVE                             R1 R3
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K4 ["props"]
       56 GETTABLEKS                       R4 R4 K7 ["UpperRangeValue"]
       58 FASTCALL1                        TOSTRING R4 ; [+2]
       59 GETIMPORT                        R3 K10 [tostring]
       61 CALL                             R3 1 1
       62 MOVE                             R2 R3
       63 DUPTABLE                         R3 K12 [{"RangedSliderContent"}]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K13 ["createElement"]
       67 LOADK                            R5 K14 ["Frame"]
       68 DUPTABLE                         R6 K20 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"]}]
       69 GETIMPORT                        R7 K23 [UDim2.new]
       71 LOADN                            R8 1
       72 LOADN                            R9 0
       73 LOADN                            R10 0
       74 LOADN                            R11 38
       75 CALL                             R7 4 1
       76 SETTABLEKS                       R7 R6 K19 ["Size"]
       78 DUPTABLE                         R7 K31 [{"SliderFrame", "LowerLabel", "UpperLabel", "LowerInputBox", "Dash", "UpperInputBox", "PercentageLabel"}]
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K13 ["createElement"]
       82 LOADK                            R9 K14 ["Frame"]
       83 NEWTABLE                         R10 4 0
       85 LOADN                            R11 1
       86 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       88 LOADN                            R11 0
       89 SETTABLEKS                       R11 R10 K17 ["BorderSizePixel"]
       91 GETIMPORT                        R11 K23 [UDim2.new]
       93 LOADN                            R12 0
       94 LOADN                            R13 262
       95 LOADN                            R14 0
       96 LOADN                            R15 18
       97 CALL                             R11 4 1
       98 SETTABLEKS                       R11 R10 K19 ["Size"]
      100 GETUPVAL                         R11 2
      101 GETTABLEKS                       R11 R11 K32 ["Ref"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K33 ["sliderFrameRef"]
      106 SETTABLE                         R12 R10 R11
      107 DUPTABLE                         R11 K40 [{"ClickHandler", "HoverHandler", "SliderHandleOne", "SliderHandleTwo", "BackgroundBar", "ForegroundBar"}]
      108 GETUPVAL                         R12 2
      109 GETTABLEKS                       R12 R12 K13 ["createElement"]
      111 LOADK                            R13 K41 ["ImageButton"]
      112 NEWTABLE                         R14 8 0
      114 GETIMPORT                        R15 K23 [UDim2.new]
      116 LOADN                            R16 1
      117 LOADN                            R17 18
      118 LOADN                            R18 1
      119 GETUPVAL                         R20 1
      120 GETTABLEKS                       R20 R20 K0 ["state"]
      122 GETTABLEKS                       R20 R20 K42 ["Pressed"]
      124 JUMPIFNOT                        R20 ; [+2]
      125 LOADN                            R19 300
      126 JUMP                             ; [+1]
      127 LOADN                            R19 0
      128 CALL                             R15 4 1
      129 SETTABLEKS                       R15 R14 K19 ["Size"]
      131 GETIMPORT                        R15 K23 [UDim2.new]
      133 LOADK                            R16 K43 [0.5]
      134 LOADN                            R17 0
      135 LOADK                            R18 K43 [0.5]
      136 LOADN                            R19 0
      137 CALL                             R15 4 1
      138 SETTABLEKS                       R15 R14 K44 ["Position"]
      140 GETIMPORT                        R15 K46 [Vector2.new]
      142 LOADK                            R16 K43 [0.5]
      143 LOADK                            R17 K43 [0.5]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      147 LOADN                            R15 1
      148 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      150 LOADN                            R15 4
      151 SETTABLEKS                       R15 R14 K48 ["ZIndex"]
      153 GETUPVAL                         R15 2
      154 GETTABLEKS                       R15 R15 K49 ["Event"]
      156 GETTABLEKS                       R15 R15 K50 ["InputBegan"]
      158 NEWCLOSURE                       R16 P0
      159 CAPTURE                          UPVAL U1
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U4
      162 SETTABLE                         R16 R14 R15
      163 GETUPVAL                         R15 2
      164 GETTABLEKS                       R15 R15 K49 ["Event"]
      166 GETTABLEKS                       R15 R15 K51 ["InputChanged"]
      168 NEWCLOSURE                       R16 P1
      169 CAPTURE                          UPVAL U1
      170 CAPTURE                          UPVAL U4
      171 SETTABLE                         R16 R14 R15
      172 GETUPVAL                         R15 2
      173 GETTABLEKS                       R15 R15 K49 ["Event"]
      175 GETTABLEKS                       R15 R15 K52 ["InputEnded"]
      177 NEWCLOSURE                       R16 P2
      178 CAPTURE                          UPVAL U1
      179 SETTABLE                         R16 R14 R15
      180 CALL                             R12 2 1
      181 SETTABLEKS                       R12 R11 K34 ["ClickHandler"]
      183 GETUPVAL                         R12 2
      184 GETTABLEKS                       R12 R12 K13 ["createElement"]
      186 LOADK                            R13 K14 ["Frame"]
      187 NEWTABLE                         R14 8 0
      189 GETIMPORT                        R15 K23 [UDim2.new]
      191 LOADN                            R16 1
      192 LOADN                            R17 18
      193 LOADN                            R18 1
      194 LOADN                            R19 0
      195 CALL                             R15 4 1
      196 SETTABLEKS                       R15 R14 K19 ["Size"]
      198 GETIMPORT                        R15 K23 [UDim2.new]
      200 LOADK                            R16 K43 [0.5]
      201 LOADN                            R17 0
      202 LOADK                            R18 K43 [0.5]
      203 LOADN                            R19 0
      204 CALL                             R15 4 1
      205 SETTABLEKS                       R15 R14 K44 ["Position"]
      207 GETIMPORT                        R15 K46 [Vector2.new]
      209 LOADK                            R16 K43 [0.5]
      210 LOADK                            R17 K43 [0.5]
      211 CALL                             R15 2 1
      212 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      214 LOADN                            R15 1
      215 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      217 GETUPVAL                         R15 2
      218 GETTABLEKS                       R15 R15 K49 ["Event"]
      220 GETTABLEKS                       R15 R15 K53 ["MouseEnter"]
      222 NEWCLOSURE                       R16 P3
      223 CAPTURE                          UPVAL U1
      224 CAPTURE                          UPVAL U5
      225 SETTABLE                         R16 R14 R15
      226 GETUPVAL                         R15 2
      227 GETTABLEKS                       R15 R15 K49 ["Event"]
      229 GETTABLEKS                       R15 R15 K54 ["MouseLeave"]
      231 NEWCLOSURE                       R16 P4
      232 CAPTURE                          UPVAL U1
      233 CAPTURE                          UPVAL U5
      234 SETTABLE                         R16 R14 R15
      235 CALL                             R12 2 1
      236 SETTABLEKS                       R12 R11 K35 ["HoverHandler"]
      238 GETUPVAL                         R12 2
      239 GETTABLEKS                       R12 R12 K13 ["createElement"]
      241 LOADK                            R13 K55 ["ImageLabel"]
      242 DUPTABLE                         R14 K59 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"], ["Image"], ["Visible"], ["ZIndex"] = 3}]
      243 GETIMPORT                        R15 K23 [UDim2.new]
      245 LOADN                            R16 0
      246 LOADN                            R17 18
      247 LOADN                            R18 0
      248 LOADN                            R19 18
      249 CALL                             R15 4 1
      250 SETTABLEKS                       R15 R14 K19 ["Size"]
      252 GETIMPORT                        R15 K46 [Vector2.new]
      254 LOADK                            R16 K43 [0.5]
      255 LOADN                            R17 0
      256 CALL                             R15 2 1
      257 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      259 GETIMPORT                        R15 K23 [UDim2.new]
      261 GETUPVAL                         R16 6
      262 GETUPVAL                         R17 1
      263 CALL                             R16 1 1
      264 LOADN                            R17 0
      265 LOADN                            R18 0
      266 LOADN                            R19 0
      267 CALL                             R15 4 1
      268 SETTABLEKS                       R15 R14 K44 ["Position"]
      270 GETUPVAL                         R16 7
      271 GETTABLEKS                       R16 R16 K60 ["isDarkerTheme"]
      273 CALL                             R16 0 1
      274 JUMPIFNOT                        R16 ; [+2]
      275 LOADK                            R15 K61 ["rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"]
      276 JUMP                             ; [+1]
      277 LOADK                            R15 K62 ["rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"]
      278 SETTABLEKS                       R15 R14 K56 ["Image"]
      280 GETUPVAL                         R15 1
      281 GETTABLEKS                       R15 R15 K4 ["props"]
      283 GETTABLEKS                       R15 R15 K63 ["Enabled"]
      285 SETTABLEKS                       R15 R14 K57 ["Visible"]
      287 CALL                             R12 2 1
      288 SETTABLEKS                       R12 R11 K36 ["SliderHandleOne"]
      290 GETUPVAL                         R12 2
      291 GETTABLEKS                       R12 R12 K13 ["createElement"]
      293 LOADK                            R13 K55 ["ImageLabel"]
      294 DUPTABLE                         R14 K59 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"], ["Image"], ["Visible"], ["ZIndex"] = 3}]
      295 GETIMPORT                        R15 K23 [UDim2.new]
      297 LOADN                            R16 0
      298 LOADN                            R17 18
      299 LOADN                            R18 0
      300 LOADN                            R19 18
      301 CALL                             R15 4 1
      302 SETTABLEKS                       R15 R14 K19 ["Size"]
      304 GETIMPORT                        R15 K46 [Vector2.new]
      306 LOADK                            R16 K43 [0.5]
      307 LOADN                            R17 0
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      311 GETIMPORT                        R15 K23 [UDim2.new]
      313 GETUPVAL                         R16 8
      314 GETUPVAL                         R17 1
      315 CALL                             R16 1 1
      316 LOADN                            R17 0
      317 LOADN                            R18 0
      318 LOADN                            R19 0
      319 CALL                             R15 4 1
      320 SETTABLEKS                       R15 R14 K44 ["Position"]
      322 GETUPVAL                         R16 7
      323 GETTABLEKS                       R16 R16 K60 ["isDarkerTheme"]
      325 CALL                             R16 0 1
      326 JUMPIFNOT                        R16 ; [+2]
      327 LOADK                            R15 K61 ["rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"]
      328 JUMP                             ; [+1]
      329 LOADK                            R15 K62 ["rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"]
      330 SETTABLEKS                       R15 R14 K56 ["Image"]
      332 GETUPVAL                         R15 1
      333 GETTABLEKS                       R15 R15 K4 ["props"]
      335 GETTABLEKS                       R15 R15 K63 ["Enabled"]
      337 SETTABLEKS                       R15 R14 K57 ["Visible"]
      339 CALL                             R12 2 1
      340 SETTABLEKS                       R12 R11 K37 ["SliderHandleTwo"]
      342 GETUPVAL                         R12 2
      343 GETTABLEKS                       R12 R12 K13 ["createElement"]
      345 LOADK                            R13 K55 ["ImageLabel"]
      346 DUPTABLE                         R14 K66 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ScaleType"], ["SliceCenter"], ["AnchorPoint"], ["Position"]}]
      347 GETIMPORT                        R15 K23 [UDim2.new]
      349 LOADN                            R16 0
      350 LOADN                            R17 262
      351 LOADN                            R18 0
      352 LOADN                            R19 6
      353 CALL                             R15 4 1
      354 SETTABLEKS                       R15 R14 K19 ["Size"]
      356 GETUPVAL                         R16 7
      357 GETTABLEKS                       R16 R16 K60 ["isDarkerTheme"]
      359 CALL                             R16 0 1
      360 JUMPIFNOT                        R16 ; [+2]
      361 LOADK                            R15 K67 ["rbxasset://textures/RoactStudioWidgets/slider_bar_background_dark.png"]
      362 JUMP                             ; [+1]
      363 LOADK                            R15 K68 ["rbxasset://textures/RoactStudioWidgets/slider_bar_background_light.png"]
      364 SETTABLEKS                       R15 R14 K56 ["Image"]
      366 GETIMPORT                        R15 K71 [Enum.ScaleType.Slice]
      368 SETTABLEKS                       R15 R14 K64 ["ScaleType"]
      370 GETUPVAL                         R15 9
      371 SETTABLEKS                       R15 R14 K65 ["SliceCenter"]
      373 GETIMPORT                        R15 K46 [Vector2.new]
      375 LOADN                            R16 0
      376 LOADK                            R17 K43 [0.5]
      377 CALL                             R15 2 1
      378 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      380 GETIMPORT                        R15 K23 [UDim2.new]
      382 LOADN                            R16 0
      383 LOADN                            R17 0
      384 LOADK                            R18 K43 [0.5]
      385 LOADN                            R19 0
      386 CALL                             R15 4 1
      387 SETTABLEKS                       R15 R14 K44 ["Position"]
      389 CALL                             R12 2 1
      390 SETTABLEKS                       R12 R11 K38 ["BackgroundBar"]
      392 GETUPVAL                         R12 2
      393 GETTABLEKS                       R12 R12 K13 ["createElement"]
      395 LOADK                            R13 K55 ["ImageLabel"]
      396 DUPTABLE                         R14 K73 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ScaleType"], ["SliceCenter"], ["AnchorPoint"], ["Position"], ["Visible"], ["ZIndex"] = 2}]
      397 GETIMPORT                        R15 K23 [UDim2.new]
      399 GETUPVAL                         R16 10
      400 GETUPVAL                         R17 1
      401 CALL                             R16 1 1
      402 LOADN                            R17 0
      403 LOADN                            R18 0
      404 LOADN                            R19 6
      405 CALL                             R15 4 1
      406 SETTABLEKS                       R15 R14 K19 ["Size"]
      408 GETUPVAL                         R16 7
      409 GETTABLEKS                       R16 R16 K60 ["isDarkerTheme"]
      411 CALL                             R16 0 1
      412 JUMPIFNOT                        R16 ; [+2]
      413 LOADK                            R15 K74 ["rbxasset://textures/RoactStudioWidgets/slider_bar_dark.png"]
      414 JUMP                             ; [+1]
      415 LOADK                            R15 K75 ["rbxasset://textures/RoactStudioWidgets/slider_bar_light.png"]
      416 SETTABLEKS                       R15 R14 K56 ["Image"]
      418 GETIMPORT                        R15 K71 [Enum.ScaleType.Slice]
      420 SETTABLEKS                       R15 R14 K64 ["ScaleType"]
      422 GETUPVAL                         R15 9
      423 SETTABLEKS                       R15 R14 K65 ["SliceCenter"]
      425 GETIMPORT                        R15 K46 [Vector2.new]
      427 LOADN                            R16 0
      428 LOADK                            R17 K43 [0.5]
      429 CALL                             R15 2 1
      430 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      432 GETIMPORT                        R15 K23 [UDim2.new]
      434 GETUPVAL                         R16 11
      435 GETUPVAL                         R17 1
      436 CALL                             R16 1 1
      437 LOADN                            R17 0
      438 LOADK                            R18 K43 [0.5]
      439 LOADN                            R19 0
      440 CALL                             R15 4 1
      441 SETTABLEKS                       R15 R14 K44 ["Position"]
      443 GETUPVAL                         R15 1
      444 GETTABLEKS                       R15 R15 K4 ["props"]
      446 GETTABLEKS                       R15 R15 K63 ["Enabled"]
      448 SETTABLEKS                       R15 R14 K57 ["Visible"]
      450 CALL                             R12 2 1
      451 SETTABLEKS                       R12 R11 K39 ["ForegroundBar"]
      453 CALL                             R8 3 1
      454 SETTABLEKS                       R8 R7 K24 ["SliderFrame"]
      456 GETUPVAL                         R8 2
      457 GETTABLEKS                       R8 R8 K13 ["createElement"]
      459 LOADK                            R9 K76 ["TextLabel"]
      460 DUPTABLE                         R10 K84 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["TextYAlignment"], ["AnchorPoint"], ["Position"], ["Visible"], ["Text"]}]
      461 GETIMPORT                        R11 K23 [UDim2.new]
      463 LOADN                            R12 0
      464 LOADN                            R13 0
      465 LOADN                            R14 0
      466 LOADN                            R15 20
      467 CALL                             R11 4 1
      468 SETTABLEKS                       R11 R10 K19 ["Size"]
      470 GETTABLEKS                       R11 R0 K85 ["TextColor"]
      472 SETTABLEKS                       R11 R10 K77 ["TextColor3"]
      474 GETIMPORT                        R11 K87 [Enum.Font.SourceSans]
      476 SETTABLEKS                       R11 R10 K78 ["Font"]
      478 GETIMPORT                        R11 K89 [Enum.TextXAlignment.Left]
      480 SETTABLEKS                       R11 R10 K81 ["TextXAlignment"]
      482 GETIMPORT                        R11 K91 [Enum.TextYAlignment.Bottom]
      484 SETTABLEKS                       R11 R10 K82 ["TextYAlignment"]
      486 GETIMPORT                        R11 K46 [Vector2.new]
      488 LOADN                            R12 0
      489 LOADN                            R13 1
      490 CALL                             R11 2 1
      491 SETTABLEKS                       R11 R10 K47 ["AnchorPoint"]
      493 GETIMPORT                        R11 K23 [UDim2.new]
      495 LOADN                            R12 0
      496 LOADN                            R13 0
      497 LOADN                            R14 1
      498 LOADN                            R15 0
      499 CALL                             R11 4 1
      500 SETTABLEKS                       R11 R10 K44 ["Position"]
      502 GETUPVAL                         R11 1
      503 GETTABLEKS                       R11 R11 K4 ["props"]
      505 GETTABLEKS                       R11 R11 K63 ["Enabled"]
      507 SETTABLEKS                       R11 R10 K57 ["Visible"]
      509 GETUPVAL                         R11 1
      510 GETTABLEKS                       R11 R11 K4 ["props"]
      512 GETTABLEKS                       R11 R11 K92 ["MinLabelText"]
      514 JUMPIF                           R11 ; [+12]
      515 GETUPVAL                         R15 1
      516 GETTABLEKS                       R15 R15 K4 ["props"]
      518 GETTABLEKS                       R15 R15 K93 ["Min"]
      520 FASTCALL1                        TOSTRING R15 ; [+2]
      521 GETIMPORT                        R14 K10 [tostring]
      523 CALL                             R14 1 1
      524 MOVE                             R12 R14
      525 LOADK                            R13 K94 ["%"]
      526 CONCAT                           R11 R12 R13
      527 SETTABLEKS                       R11 R10 K83 ["Text"]
      529 CALL                             R8 2 1
      530 SETTABLEKS                       R8 R7 K25 ["LowerLabel"]
      532 GETUPVAL                         R8 2
      533 GETTABLEKS                       R8 R8 K13 ["createElement"]
      535 LOADK                            R9 K76 ["TextLabel"]
      536 DUPTABLE                         R10 K84 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["TextYAlignment"], ["AnchorPoint"], ["Position"], ["Visible"], ["Text"]}]
      537 GETIMPORT                        R11 K23 [UDim2.new]
      539 LOADN                            R12 0
      540 LOADN                            R13 0
      541 LOADN                            R14 0
      542 LOADN                            R15 20
      543 CALL                             R11 4 1
      544 SETTABLEKS                       R11 R10 K19 ["Size"]
      546 GETTABLEKS                       R11 R0 K85 ["TextColor"]
      548 SETTABLEKS                       R11 R10 K77 ["TextColor3"]
      550 GETIMPORT                        R11 K87 [Enum.Font.SourceSans]
      552 SETTABLEKS                       R11 R10 K78 ["Font"]
      554 GETIMPORT                        R11 K96 [Enum.TextXAlignment.Right]
      556 SETTABLEKS                       R11 R10 K81 ["TextXAlignment"]
      558 GETIMPORT                        R11 K91 [Enum.TextYAlignment.Bottom]
      560 SETTABLEKS                       R11 R10 K82 ["TextYAlignment"]
      562 GETIMPORT                        R11 K46 [Vector2.new]
      564 LOADN                            R12 1
      565 LOADN                            R13 1
      566 CALL                             R11 2 1
      567 SETTABLEKS                       R11 R10 K47 ["AnchorPoint"]
      569 GETIMPORT                        R11 K23 [UDim2.new]
      571 LOADN                            R12 0
      572 LOADN                            R13 262
      573 LOADN                            R14 1
      574 LOADN                            R15 0
      575 CALL                             R11 4 1
      576 SETTABLEKS                       R11 R10 K44 ["Position"]
      578 GETUPVAL                         R11 1
      579 GETTABLEKS                       R11 R11 K4 ["props"]
      581 GETTABLEKS                       R11 R11 K63 ["Enabled"]
      583 SETTABLEKS                       R11 R10 K57 ["Visible"]
      585 GETUPVAL                         R11 1
      586 GETTABLEKS                       R11 R11 K4 ["props"]
      588 GETTABLEKS                       R11 R11 K97 ["MaxLabelText"]
      590 JUMPIF                           R11 ; [+12]
      591 GETUPVAL                         R15 1
      592 GETTABLEKS                       R15 R15 K4 ["props"]
      594 GETTABLEKS                       R15 R15 K98 ["Max"]
      596 FASTCALL1                        TOSTRING R15 ; [+2]
      597 GETIMPORT                        R14 K10 [tostring]
      599 CALL                             R14 1 1
      600 MOVE                             R12 R14
      601 LOADK                            R13 K94 ["%"]
      602 CONCAT                           R11 R12 R13
      603 SETTABLEKS                       R11 R10 K83 ["Text"]
      605 CALL                             R8 2 1
      606 SETTABLEKS                       R8 R7 K26 ["UpperLabel"]
      608 GETUPVAL                         R8 2
      609 GETTABLEKS                       R8 R8 K13 ["createElement"]
      611 GETUPVAL                         R9 12
      612 DUPTABLE                         R10 K111 [{["Enabled"], ["MaxLength"] = 100, ["Text"], ["Position"], ["Width"] = 48, ["Height"] = 38, ["ShowToolTip"] = False, ["HorizontalAlignment"], ["Mouse"], ["SetText"], ["FocusChanged"]}]
      613 GETUPVAL                         R11 1
      614 GETTABLEKS                       R11 R11 K4 ["props"]
      616 GETTABLEKS                       R11 R11 K63 ["Enabled"]
      618 SETTABLEKS                       R11 R10 K63 ["Enabled"]
      620 SETTABLEKS                       R1 R10 K83 ["Text"]
      622 GETIMPORT                        R11 K23 [UDim2.new]
      624 LOADN                            R12 0
      625 LOADN                            R13 291
      626 LOADN                            R14 0
      627 LOADN                            R15 0
      628 CALL                             R11 4 1
      629 SETTABLEKS                       R11 R10 K44 ["Position"]
      631 GETIMPORT                        R11 K113 [Enum.TextXAlignment.Center]
      633 SETTABLEKS                       R11 R10 K107 ["HorizontalAlignment"]
      635 GETUPVAL                         R11 1
      636 GETTABLEKS                       R11 R11 K4 ["props"]
      638 GETTABLEKS                       R11 R11 K108 ["Mouse"]
      640 SETTABLEKS                       R11 R10 K108 ["Mouse"]
      642 NEWCLOSURE                       R11 P5
      643 CAPTURE                          UPVAL U1
      644 SETTABLEKS                       R11 R10 K109 ["SetText"]
      646 NEWCLOSURE                       R11 P6
      647 CAPTURE                          UPVAL U1
      648 CAPTURE                          UPVAL U13
      649 SETTABLEKS                       R11 R10 K110 ["FocusChanged"]
      651 CALL                             R8 2 1
      652 SETTABLEKS                       R8 R7 K27 ["LowerInputBox"]
      654 GETUPVAL                         R8 2
      655 GETTABLEKS                       R8 R8 K13 ["createElement"]
      657 LOADK                            R9 K14 ["Frame"]
      658 DUPTABLE                         R10 K115 [{["BorderSizePixel"] = 0, ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundColor3"]}]
      659 GETIMPORT                        R11 K23 [UDim2.new]
      661 LOADN                            R12 0
      662 LOADN                            R13 10
      663 LOADN                            R14 0
      664 LOADN                            R15 2
      665 CALL                             R11 4 1
      666 SETTABLEKS                       R11 R10 K19 ["Size"]
      668 GETIMPORT                        R11 K46 [Vector2.new]
      670 LOADN                            R12 1
      671 LOADK                            R13 K43 [0.5]
      672 CALL                             R11 2 1
      673 SETTABLEKS                       R11 R10 K47 ["AnchorPoint"]
      675 GETIMPORT                        R11 K23 [UDim2.new]
      677 LOADN                            R12 0
      678 LOADN                            R13 356
      679 LOADK                            R14 K43 [0.5]
      680 LOADN                            R15 0
      681 CALL                             R11 4 1
      682 SETTABLEKS                       R11 R10 K44 ["Position"]
      684 GETTABLEKS                       R11 R0 K116 ["TextDescriptionColor"]
      686 SETTABLEKS                       R11 R10 K114 ["BackgroundColor3"]
      688 CALL                             R8 2 1
      689 SETTABLEKS                       R8 R7 K28 ["Dash"]
      691 GETUPVAL                         R8 2
      692 GETTABLEKS                       R8 R8 K13 ["createElement"]
      694 GETUPVAL                         R9 12
      695 DUPTABLE                         R10 K111 [{["Enabled"], ["MaxLength"] = 100, ["Text"], ["Position"], ["Width"] = 48, ["Height"] = 38, ["ShowToolTip"] = False, ["HorizontalAlignment"], ["Mouse"], ["SetText"], ["FocusChanged"]}]
      696 GETUPVAL                         R11 1
      697 GETTABLEKS                       R11 R11 K4 ["props"]
      699 GETTABLEKS                       R11 R11 K63 ["Enabled"]
      701 SETTABLEKS                       R11 R10 K63 ["Enabled"]
      703 SETTABLEKS                       R2 R10 K83 ["Text"]
      705 GETIMPORT                        R11 K23 [UDim2.new]
      707 LOADN                            R12 0
      708 LOADN                            R13 363
      709 LOADN                            R14 0
      710 LOADN                            R15 0
      711 CALL                             R11 4 1
      712 SETTABLEKS                       R11 R10 K44 ["Position"]
      714 GETIMPORT                        R11 K113 [Enum.TextXAlignment.Center]
      716 SETTABLEKS                       R11 R10 K107 ["HorizontalAlignment"]
      718 GETUPVAL                         R11 1
      719 GETTABLEKS                       R11 R11 K4 ["props"]
      721 GETTABLEKS                       R11 R11 K108 ["Mouse"]
      723 SETTABLEKS                       R11 R10 K108 ["Mouse"]
      725 NEWCLOSURE                       R11 P7
      726 CAPTURE                          UPVAL U1
      727 SETTABLEKS                       R11 R10 K109 ["SetText"]
      729 NEWCLOSURE                       R11 P8
      730 CAPTURE                          UPVAL U1
      731 CAPTURE                          UPVAL U14
      732 SETTABLEKS                       R11 R10 K110 ["FocusChanged"]
      734 CALL                             R8 2 1
      735 SETTABLEKS                       R8 R7 K29 ["UpperInputBox"]
      737 GETUPVAL                         R8 2
      738 GETTABLEKS                       R8 R8 K13 ["createElement"]
      740 LOADK                            R9 K76 ["TextLabel"]
      741 DUPTABLE                         R10 K117 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["AnchorPoint"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      742 GETIMPORT                        R11 K23 [UDim2.new]
      744 LOADN                            R12 0
      745 LOADN                            R13 426
      746 LOADK                            R14 K43 [0.5]
      747 LOADN                            R15 0
      748 CALL                             R11 4 1
      749 SETTABLEKS                       R11 R10 K44 ["Position"]
      751 GETIMPORT                        R11 K46 [Vector2.new]
      753 LOADN                            R12 0
      754 LOADK                            R13 K43 [0.5]
      755 CALL                             R11 2 1
      756 SETTABLEKS                       R11 R10 K47 ["AnchorPoint"]
      758 GETTABLEKS                       R11 R0 K116 ["TextDescriptionColor"]
      760 SETTABLEKS                       R11 R10 K77 ["TextColor3"]
      762 GETIMPORT                        R11 K87 [Enum.Font.SourceSans]
      764 SETTABLEKS                       R11 R10 K78 ["Font"]
      766 GETIMPORT                        R11 K113 [Enum.TextXAlignment.Center]
      768 SETTABLEKS                       R11 R10 K81 ["TextXAlignment"]
      770 GETIMPORT                        R11 K118 [Enum.TextYAlignment.Center]
      772 SETTABLEKS                       R11 R10 K82 ["TextYAlignment"]
      774 GETUPVAL                         R12 1
      775 GETTABLEKS                       R12 R12 K4 ["props"]
      777 GETTABLEKS                       R12 R12 K119 ["UnitsLabelText"]
      779 ORK                              R11 R12 K94 ["%"]
      780 SETTABLEKS                       R11 R10 K83 ["Text"]
      782 CALL                             R8 2 1
      783 SETTABLEKS                       R8 R7 K30 ["PercentageLabel"]
      785 CALL                             R4 3 1
      786 SETTABLEKS                       R4 R3 K11 ["RangedSliderContent"]
      788 GETUPVAL                         R4 2
      789 GETTABLEKS                       R4 R4 K13 ["createElement"]
      791 GETUPVAL                         R5 15
      792 DUPTABLE                         R6 K123 [{["Title"], ["MaxHeight"] = 38, ["LayoutOrder"]}]
      793 GETUPVAL                         R7 1
      794 GETTABLEKS                       R7 R7 K4 ["props"]
      796 GETTABLEKS                       R7 R7 K120 ["Title"]
      798 SETTABLEKS                       R7 R6 K120 ["Title"]
      800 GETUPVAL                         R8 1
      801 GETTABLEKS                       R8 R8 K4 ["props"]
      803 GETTABLEKS                       R8 R8 K122 ["LayoutOrder"]
      805 ORK                              R7 R8 K16 [1]
      806 SETTABLEKS                       R7 R6 K122 ["LayoutOrder"]
      808 MOVE                             R7 R3
      809 CALL                             R4 3 -1
      810 RETURN                           R4 -1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K0 ["createElement"]
       20 GETUPVAL                         R3 15
       21 DUPTABLE                         R4 K2 [{"render"}]
       22 SETTABLEKS                       R1 R4 K1 ["render"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["havePropsChanged"]
        2 JUMPIFNOT                        R1 ; [+27]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["havePropsChanged"]
        6 DUPTABLE                         R3 K3 [{"currentLowerTextInputBoxText", "currentUpperTextInputBoxText"}]
        7 GETTABLEKS                       R5 R0 K4 ["props"]
        9 GETTABLEKS                       R5 R5 K5 ["LowerRangeValue"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K7 [tostring]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K1 ["currentLowerTextInputBoxText"]
       17 GETTABLEKS                       R5 R0 K4 ["props"]
       19 GETTABLEKS                       R5 R5 K8 ["UpperRangeValue"]
       21 FASTCALL1                        TOSTRING R5 ; [+2]
       22 GETIMPORT                        R4 K7 [tostring]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K2 ["currentUpperTextInputBoxText"]
       27 NAMECALL                         R1 R0 K9 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Max"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Min"]
        8 SUB                              R1 R2 R3
        9 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["LowerRangeValue"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["Min"]
        8 SUB                              R2 R3 R4
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R4 K3 ["Max"]
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K2 ["Min"]
       17 SUB                              R3 R4 R5
       18 DIV                              R1 R2 R3
       19 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["UpperRangeValue"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["Min"]
        8 SUB                              R2 R3 R4
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R4 K3 ["Max"]
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K2 ["Min"]
       17 SUB                              R3 R4 R5
       18 DIV                              R1 R2 R3
       19 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 SUB                              R1 R2 R3
        7 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["SnapIncrement"]
        4 LOADK                            R3 K2 [0.001]
        5 JUMPIFNOTLT                      R3 R2 ; [+54]
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K1 ["SnapIncrement"]
       11 GETTABLEKS                       R7 R0 K0 ["props"]
       13 GETTABLEKS                       R7 R7 K1 ["SnapIncrement"]
       15 DIV                              R6 R1 R7
       16 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       17 GETIMPORT                        R5 K5 [math.floor]
       19 CALL                             R5 1 1
       20 MUL                              R3 R4 R5
       21 GETTABLEKS                       R4 R0 K0 ["props"]
       23 GETTABLEKS                       R4 R4 K6 ["Min"]
       25 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       27 GETIMPORT                        R2 K8 [math.max]
       29 CALL                             R2 2 1
       30 GETTABLEKS                       R5 R0 K0 ["props"]
       32 GETTABLEKS                       R5 R5 K1 ["SnapIncrement"]
       34 ADD                              R4 R2 R5
       35 GETTABLEKS                       R5 R0 K0 ["props"]
       37 GETTABLEKS                       R5 R5 K9 ["Max"]
       39 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       41 GETIMPORT                        R3 K11 [math.min]
       43 CALL                             R3 2 1
       44 SUB                              R6 R2 R1
       45 FASTCALL1                        MATH_ABS R6 ; [+2]
       46 GETIMPORT                        R5 K13 [math.abs]
       48 CALL                             R5 1 1
       49 SUB                              R7 R3 R1
       50 FASTCALL1                        MATH_ABS R7 ; [+2]
       51 GETIMPORT                        R6 K13 [math.abs]
       53 CALL                             R6 1 1
       54 JUMPIFNOTLT                      R5 R6 ; [+3]
       56 MOVE                             R4 R2
       57 JUMPIF                           R4 ; [+1]
       58 MOVE                             R4 R3
       59 RETURN                           R4 1
       60 GETTABLEKS                       R3 R0 K0 ["props"]
       62 GETTABLEKS                       R3 R3 K9 ["Max"]
       64 GETTABLEKS                       R5 R0 K0 ["props"]
       66 GETTABLEKS                       R5 R5 K6 ["Min"]
       68 FASTCALL2                        MATH_MAX R5 R1 ; [+4]
       70 MOVE                             R6 R1
       71 GETIMPORT                        R4 K8 [math.max]
       73 CALL                             R4 2 1
       74 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       76 GETIMPORT                        R2 K11 [math.min]
       78 CALL                             R2 2 1
       79 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R4 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R4 K1 ["X"]
        4 GETTABLEKS                       R5 R0 K2 ["sliderFrameRef"]
        6 GETTABLEKS                       R5 R5 K3 ["current"]
        8 GETTABLEKS                       R5 R5 K4 ["AbsolutePosition"]
       10 GETTABLEKS                       R5 R5 K1 ["X"]
       12 SUB                              R3 R4 R5
       13 GETTABLEKS                       R4 R0 K2 ["sliderFrameRef"]
       15 GETTABLEKS                       R4 R4 K3 ["current"]
       17 GETTABLEKS                       R4 R4 K5 ["AbsoluteSize"]
       19 GETTABLEKS                       R4 R4 K1 ["X"]
       21 DIV                              R2 R3 R4
       22 LOADN                            R4 0
       23 LOADN                            R6 1
       24 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       26 MOVE                             R7 R2
       27 GETIMPORT                        R5 K8 [math.min]
       29 CALL                             R5 2 1
       30 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       32 GETIMPORT                        R3 K10 [math.max]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 GETTABLEKS                       R4 R0 K11 ["props"]
       38 GETTABLEKS                       R4 R4 K12 ["Min"]
       40 GETTABLEKS                       R7 R0 K11 ["props"]
       42 GETTABLEKS                       R7 R7 K13 ["Max"]
       44 GETTABLEKS                       R8 R0 K11 ["props"]
       46 GETTABLEKS                       R8 R8 K12 ["Min"]
       48 SUB                              R6 R7 R8
       49 MUL                              R5 R2 R6
       50 ADD                              R3 R4 R5
       51 GETUPVAL                         R4 0
       52 MOVE                             R5 R0
       53 MOVE                             R6 R3
       54 CALL                             R4 2 1
       55 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K1 ["LowerRangeValue"]
        8 JUMPIFNOTLT                      R2 R3 ; [+6]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["UpperRangeValue"]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R0 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K2 ["UpperRangeValue"]
       19 JUMPIFNOTLT                      R3 R2 ; [+6]
       21 GETTABLEKS                       R3 R0 K0 ["props"]
       23 GETTABLEKS                       R3 R3 K1 ["LowerRangeValue"]
       25 RETURN                           R3 1
       26 GETTABLEKS                       R5 R0 K0 ["props"]
       28 GETTABLEKS                       R5 R5 K1 ["LowerRangeValue"]
       30 SUB                              R4 R2 R5
       31 FASTCALL1                        MATH_ABS R4 ; [+2]
       32 GETIMPORT                        R3 K5 [math.abs]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R6 R0 K0 ["props"]
       37 GETTABLEKS                       R6 R6 K2 ["UpperRangeValue"]
       39 SUB                              R5 R2 R6
       40 FASTCALL1                        MATH_ABS R5 ; [+2]
       41 GETIMPORT                        R4 K5 [math.abs]
       43 CALL                             R4 1 1
       44 JUMPIFNOTLT                      R3 R4 ; [+6]
       46 GETTABLEKS                       R5 R0 K0 ["props"]
       48 GETTABLEKS                       R5 R5 K2 ["UpperRangeValue"]
       50 RETURN                           R5 1
       51 GETTABLEKS                       R5 R0 K0 ["props"]
       53 GETTABLEKS                       R5 R5 K1 ["LowerRangeValue"]
       55 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["UpperRangeValue"]
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R5 K2 ["Min"]
       13 FASTCALL2                        MATH_MAX R5 R1 ; [+4]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R4 K5 [math.max]
       18 CALL                             R4 2 1
       19 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       21 GETIMPORT                        R2 K7 [math.min]
       23 CALL                             R2 2 1
       24 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["Max"]
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R5 K2 ["LowerRangeValue"]
       13 FASTCALL2                        MATH_MAX R5 R1 ; [+4]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R4 K5 [math.max]
       18 CALL                             R4 2 1
       19 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       21 GETIMPORT                        R2 K7 [math.min]
       23 CALL                             R2 2 1
       24 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R6 R0 K0 ["staticRangeDuringInput"]
        6 FASTCALL2                        MATH_MIN R2 R6 ; [+4]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R4 K3 [math.min]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R4
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETTABLEKS                       R6 R0 K4 ["props"]
       19 GETTABLEKS                       R6 R6 K5 ["UpperRangeValue"]
       21 GETTABLEKS                       R8 R0 K4 ["props"]
       23 GETTABLEKS                       R8 R8 K6 ["Min"]
       25 FASTCALL2                        MATH_MAX R8 R4 ; [+4]
       27 MOVE                             R9 R4
       28 GETIMPORT                        R7 K8 [math.max]
       30 CALL                             R7 2 1
       31 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       33 GETIMPORT                        R5 K3 [math.min]
       35 CALL                             R5 2 1
       36 MOVE                             R3 R5
       37 GETTABLEKS                       R7 R0 K0 ["staticRangeDuringInput"]
       39 FASTCALL2                        MATH_MAX R2 R7 ; [+4]
       41 MOVE                             R6 R2
       42 GETIMPORT                        R5 K8 [math.max]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 1
       46 MOVE                             R7 R0
       47 MOVE                             R8 R5
       48 CALL                             R6 2 1
       49 MOVE                             R5 R6
       50 GETTABLEKS                       R7 R0 K4 ["props"]
       52 GETTABLEKS                       R7 R7 K9 ["Max"]
       54 GETTABLEKS                       R9 R0 K4 ["props"]
       56 GETTABLEKS                       R9 R9 K10 ["LowerRangeValue"]
       58 FASTCALL2                        MATH_MAX R9 R5 ; [+4]
       60 MOVE                             R10 R5
       61 GETIMPORT                        R8 K8 [math.max]
       63 CALL                             R8 2 1
       64 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       66 GETIMPORT                        R6 K3 [math.min]
       68 CALL                             R6 2 1
       69 MOVE                             R4 R6
       70 GETTABLEKS                       R5 R0 K4 ["props"]
       72 GETTABLEKS                       R5 R5 K11 ["SetValues"]
       74 MOVE                             R6 R3
       75 MOVE                             R7 R4
       76 CALL                             R5 2 0
       77 RETURN                           R0 0

PROTO_25:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K1 ["UpperRangeValue"]
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K2 ["Min"]
       14 FASTCALL2                        MATH_MAX R6 R2 ; [+4]
       16 MOVE                             R7 R2
       17 GETIMPORT                        R5 K5 [math.max]
       19 CALL                             R5 2 1
       20 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       22 GETIMPORT                        R3 K7 [math.min]
       24 CALL                             R3 2 1
       25 MOVE                             R1 R3
       26 GETTABLEKS                       R2 R0 K0 ["props"]
       28 GETTABLEKS                       R2 R2 K8 ["LowerRangeValue"]
       30 JUMPIFEQ                         R2 R1 ; [+13]
       32 GETTABLEKS                       R2 R0 K0 ["props"]
       34 GETTABLEKS                       R2 R2 K9 ["SetValues"]
       36 MOVE                             R3 R1
       37 GETTABLEKS                       R4 R0 K0 ["props"]
       39 GETTABLEKS                       R4 R4 K1 ["UpperRangeValue"]
       41 CALL                             R2 2 0
       42 LOADB                            R2 1
       43 RETURN                           R2 1
       44 LOADB                            R2 0
       45 RETURN                           R2 1

PROTO_26:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K1 ["Max"]
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K2 ["LowerRangeValue"]
       14 FASTCALL2                        MATH_MAX R6 R2 ; [+4]
       16 MOVE                             R7 R2
       17 GETIMPORT                        R5 K5 [math.max]
       19 CALL                             R5 2 1
       20 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       22 GETIMPORT                        R3 K7 [math.min]
       24 CALL                             R3 2 1
       25 MOVE                             R1 R3
       26 GETTABLEKS                       R2 R0 K0 ["props"]
       28 GETTABLEKS                       R2 R2 K8 ["UpperRangeValue"]
       30 JUMPIFEQ                         R2 R1 ; [+13]
       32 GETTABLEKS                       R2 R0 K0 ["props"]
       34 GETTABLEKS                       R2 R2 K9 ["SetValues"]
       36 GETTABLEKS                       R3 R0 K0 ["props"]
       38 GETTABLEKS                       R3 R3 K2 ["LowerRangeValue"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 0
       42 LOADB                            R2 1
       43 RETURN                           R2 1
       44 LOADB                            R2 0
       45 RETURN                           R2 1

PROTO_27:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getTitleTextColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["TextColor"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["getTextDescriptionColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["TextDescriptionColor"]
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K5 [pairs]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETTABLEKS                       R9 R0 K6 ["props"]
       23 GETTABLEKS                       R9 R9 K7 ["Style"]
       25 JUMPIFNOT                        R9 ; [+6]
       26 GETTABLEKS                       R9 R0 K6 ["props"]
       28 GETTABLEKS                       R9 R9 K7 ["Style"]
       30 GETTABLE                         R8 R9 R6
       31 JUMPIF                           R8 ; [+1]
       32 MOVE                             R8 R7
       33 SETTABLE                         R8 R2 R6
       34 FORGLOOP                         R3 2 ; [-14]
       36 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Rect.new]
        3 LOADN                            R1 3
        4 LOADN                            R2 0
        5 LOADN                            R3 4
        6 LOADN                            R4 6
        7 CALL                             R0 4 1
        8 GETIMPORT                        R1 K4 [require]
       10 GETIMPORT                        R2 K6 [script]
       12 GETTABLEKS                       R2 R2 K7 ["Parent"]
       14 GETTABLEKS                       R2 R2 K8 ["Internal"]
       16 GETTABLEKS                       R2 R2 K9 ["RequireRoact"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETIMPORT                        R3 K6 [script]
       23 GETTABLEKS                       R3 R3 K7 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Internal"]
       27 GETTABLEKS                       R3 R3 K10 ["ThemeChangeListener"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K4 [require]
       32 GETIMPORT                        R4 K6 [script]
       34 GETTABLEKS                       R4 R4 K7 ["Parent"]
       36 GETTABLEKS                       R4 R4 K8 ["Internal"]
       38 GETTABLEKS                       R4 R4 K11 ["Theme"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K4 [require]
       43 GETIMPORT                        R5 K6 [script]
       45 GETTABLEKS                       R5 R5 K7 ["Parent"]
       47 GETTABLEKS                       R5 R5 K8 ["Internal"]
       49 GETTABLEKS                       R5 R5 K12 ["Mouse"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K4 [require]
       54 GETIMPORT                        R6 K6 [script]
       56 GETTABLEKS                       R6 R6 K7 ["Parent"]
       58 GETTABLEKS                       R6 R6 K13 ["TitledFrame"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K4 [require]
       63 GETIMPORT                        R7 K6 [script]
       65 GETTABLEKS                       R7 R7 K7 ["Parent"]
       67 GETTABLEKS                       R7 R7 K14 ["RoundTextBox"]
       69 CALL                             R6 1 1
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 LOADNIL                          R10
       74 LOADNIL                          R11
       75 LOADNIL                          R12
       76 LOADNIL                          R13
       77 LOADNIL                          R14
       78 LOADNIL                          R15
       79 GETTABLEKS                       R16 R1 K15 ["PureComponent"]
       81 LOADK                            R18 K16 ["RangeSlider"]
       82 NAMECALL                         R16 R16 K17 ["extend"]
       84 CALL                             R16 2 1
       85 DUPCLOSURE                       R17 K18 [PROTO_0]
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R17 R16 K19 ["init"]
       89 DUPCLOSURE                       R17 K20 [PROTO_1]
       90 SETTABLEKS                       R17 R16 K21 ["willUpdate"]
       92 NEWCLOSURE                       R17 P2
       93 CAPTURE                          REF R15
       94 CAPTURE                          VAL R1
       95 CAPTURE                          REF R14
       96 CAPTURE                          REF R11
       97 CAPTURE                          VAL R4
       98 CAPTURE                          REF R7
       99 CAPTURE                          VAL R3
      100 CAPTURE                          REF R8
      101 CAPTURE                          VAL R0
      102 CAPTURE                          REF R10
      103 CAPTURE                          REF R9
      104 CAPTURE                          VAL R6
      105 CAPTURE                          REF R12
      106 CAPTURE                          REF R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 SETTABLEKS                       R17 R16 K22 ["render"]
      111 DUPCLOSURE                       R17 K23 [PROTO_13]
      112 SETTABLEKS                       R17 R16 K24 ["didUpdate"]
      114 DUPCLOSURE                       R17 K25 [PROTO_14]
      115 DUPCLOSURE                       R7 K26 [PROTO_15]
      116 DUPCLOSURE                       R8 K27 [PROTO_16]
      117 NEWCLOSURE                       R9 P7
      118 CAPTURE                          REF R7
      119 NEWCLOSURE                       R10 P8
      120 CAPTURE                          REF R8
      121 CAPTURE                          REF R7
      122 DUPCLOSURE                       R18 K28 [PROTO_19]
      123 DUPCLOSURE                       R19 K29 [PROTO_20]
      124 CAPTURE                          VAL R18
      125 DUPCLOSURE                       R14 K30 [PROTO_21]
      126 CAPTURE                          VAL R19
      127 DUPCLOSURE                       R20 K31 [PROTO_22]
      128 CAPTURE                          VAL R18
      129 DUPCLOSURE                       R21 K32 [PROTO_23]
      130 CAPTURE                          VAL R18
      131 DUPCLOSURE                       R11 K33 [PROTO_24]
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R18
      134 DUPCLOSURE                       R12 K34 [PROTO_25]
      135 CAPTURE                          VAL R18
      136 DUPCLOSURE                       R13 K35 [PROTO_26]
      137 CAPTURE                          VAL R18
      138 DUPCLOSURE                       R15 K36 [PROTO_27]
      139 CAPTURE                          VAL R3
      140 CLOSEUPVALS                      R7
      141 RETURN                           R16 1
