PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["sliderFrameRef"]
        6 DUPTABLE                         R1 K5 [{"currentLowerTextInputBoxText", "currentUpperTextInputBoxText", "Pressed"}]
        7 GETTABLEKS                       R3 R0 K6 ["props"]
        9 GETTABLEKS                       R3 R3 K7 ["LowerRangeValue"]
       11 FASTCALL1                        TOSTRING R3 ; [+2]
       12 GETIMPORT                        R2 K9 [tostring]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K2 ["currentLowerTextInputBoxText"]
       17 GETTABLEKS                       R3 R0 K6 ["props"]
       19 GETTABLEKS                       R3 R3 K10 ["UpperRangeValue"]
       21 FASTCALL1                        TOSTRING R3 ; [+2]
       22 GETIMPORT                        R2 K9 [tostring]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K3 ["currentUpperTextInputBoxText"]
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K4 ["Pressed"]
       30 SETTABLEKS                       R1 R0 K11 ["state"]
       32 GETTABLEKS                       R1 R0 K6 ["props"]
       34 GETTABLEKS                       R1 R1 K7 ["LowerRangeValue"]
       36 SETTABLEKS                       R1 R0 K12 ["currentLowerRangeValue"]
       38 GETTABLEKS                       R1 R0 K6 ["props"]
       40 GETTABLEKS                       R1 R1 K10 ["UpperRangeValue"]
       42 SETTABLEKS                       R1 R0 K13 ["currentUpperRangeValue"]
       44 LOADB                            R1 0
       45 SETTABLEKS                       R1 R0 K14 ["havePropsChanged"]
       47 RETURN                           R0 0

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
        5 JUMPIFNOT                        R2 ; [+25]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R2 R3 ; [+20]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K7 [{"Pressed"}]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K6 ["Pressed"]
       17 NAMECALL                         R2 R2 K8 ["setState"]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R3 1
       22 GETUPVAL                         R4 0
       23 MOVE                             R5 R1
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K9 ["staticRangeDuringInput"]
       27 GETUPVAL                         R2 2
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

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
        5 JUMPIFNOT                        R2 ; [+14]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R2 R3 ; [+9]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K7 [{"Pressed"}]
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R4 K6 ["Pressed"]
       17 NAMECALL                         R2 R2 K8 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

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
       68 DUPTABLE                         R6 K18 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
       69 LOADN                            R7 1
       70 SETTABLEKS                       R7 R6 K15 ["BackgroundTransparency"]
       72 LOADN                            R7 0
       73 SETTABLEKS                       R7 R6 K16 ["BorderSizePixel"]
       75 GETIMPORT                        R7 K21 [UDim2.new]
       77 LOADN                            R8 1
       78 LOADN                            R9 0
       79 LOADN                            R10 0
       80 LOADN                            R11 38
       81 CALL                             R7 4 1
       82 SETTABLEKS                       R7 R6 K17 ["Size"]
       84 DUPTABLE                         R7 K29 [{"SliderFrame", "LowerLabel", "UpperLabel", "LowerInputBox", "Dash", "UpperInputBox", "PercentageLabel"}]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K13 ["createElement"]
       88 LOADK                            R9 K14 ["Frame"]
       89 NEWTABLE                         R10 4 0
       91 LOADN                            R11 1
       92 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       94 LOADN                            R11 0
       95 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       97 GETIMPORT                        R11 K21 [UDim2.new]
       99 LOADN                            R12 0
      100 LOADN                            R13 6
      101 LOADN                            R14 0
      102 LOADN                            R15 18
      103 CALL                             R11 4 1
      104 SETTABLEKS                       R11 R10 K17 ["Size"]
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R11 R11 K30 ["Ref"]
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K31 ["sliderFrameRef"]
      112 SETTABLE                         R12 R10 R11
      113 DUPTABLE                         R11 K38 [{"ClickHandler", "HoverHandler", "SliderHandleOne", "SliderHandleTwo", "BackgroundBar", "ForegroundBar"}]
      114 GETUPVAL                         R12 2
      115 GETTABLEKS                       R12 R12 K13 ["createElement"]
      117 LOADK                            R13 K39 ["ImageButton"]
      118 NEWTABLE                         R14 8 0
      120 GETIMPORT                        R15 K21 [UDim2.new]
      122 LOADN                            R16 1
      123 LOADN                            R17 18
      124 LOADN                            R18 1
      125 GETUPVAL                         R20 1
      126 GETTABLEKS                       R20 R20 K0 ["state"]
      128 GETTABLEKS                       R20 R20 K40 ["Pressed"]
      130 JUMPIFNOT                        R20 ; [+2]
      131 LOADN                            R19 44
      132 JUMP                             ; [+1]
      133 LOADN                            R19 0
      134 CALL                             R15 4 1
      135 SETTABLEKS                       R15 R14 K17 ["Size"]
      137 GETIMPORT                        R15 K21 [UDim2.new]
      139 LOADK                            R16 K41 [0.5]
      140 LOADN                            R17 0
      141 LOADK                            R18 K41 [0.5]
      142 LOADN                            R19 0
      143 CALL                             R15 4 1
      144 SETTABLEKS                       R15 R14 K42 ["Position"]
      146 GETIMPORT                        R15 K44 [Vector2.new]
      148 LOADK                            R16 K41 [0.5]
      149 LOADK                            R17 K41 [0.5]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      153 LOADN                            R15 1
      154 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      156 LOADN                            R15 4
      157 SETTABLEKS                       R15 R14 K46 ["ZIndex"]
      159 GETUPVAL                         R15 2
      160 GETTABLEKS                       R15 R15 K47 ["Event"]
      162 GETTABLEKS                       R15 R15 K48 ["InputBegan"]
      164 NEWCLOSURE                       R16 P0
      165 CAPTURE                          UPVAL U1
      166 CAPTURE                          UPVAL U3
      167 CAPTURE                          UPVAL U4
      168 SETTABLE                         R16 R14 R15
      169 GETUPVAL                         R15 2
      170 GETTABLEKS                       R15 R15 K47 ["Event"]
      172 GETTABLEKS                       R15 R15 K49 ["InputChanged"]
      174 NEWCLOSURE                       R16 P1
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          UPVAL U4
      177 SETTABLE                         R16 R14 R15
      178 GETUPVAL                         R15 2
      179 GETTABLEKS                       R15 R15 K47 ["Event"]
      181 GETTABLEKS                       R15 R15 K50 ["InputEnded"]
      183 NEWCLOSURE                       R16 P2
      184 CAPTURE                          UPVAL U1
      185 SETTABLE                         R16 R14 R15
      186 CALL                             R12 2 1
      187 SETTABLEKS                       R12 R11 K32 ["ClickHandler"]
      189 GETUPVAL                         R12 2
      190 GETTABLEKS                       R12 R12 K13 ["createElement"]
      192 LOADK                            R13 K14 ["Frame"]
      193 NEWTABLE                         R14 8 0
      195 GETIMPORT                        R15 K21 [UDim2.new]
      197 LOADN                            R16 1
      198 LOADN                            R17 18
      199 LOADN                            R18 1
      200 LOADN                            R19 0
      201 CALL                             R15 4 1
      202 SETTABLEKS                       R15 R14 K17 ["Size"]
      204 GETIMPORT                        R15 K21 [UDim2.new]
      206 LOADK                            R16 K41 [0.5]
      207 LOADN                            R17 0
      208 LOADK                            R18 K41 [0.5]
      209 LOADN                            R19 0
      210 CALL                             R15 4 1
      211 SETTABLEKS                       R15 R14 K42 ["Position"]
      213 GETIMPORT                        R15 K44 [Vector2.new]
      215 LOADK                            R16 K41 [0.5]
      216 LOADK                            R17 K41 [0.5]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      220 LOADN                            R15 1
      221 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      223 GETUPVAL                         R15 2
      224 GETTABLEKS                       R15 R15 K47 ["Event"]
      226 GETTABLEKS                       R15 R15 K51 ["MouseEnter"]
      228 NEWCLOSURE                       R16 P3
      229 CAPTURE                          UPVAL U1
      230 CAPTURE                          UPVAL U5
      231 SETTABLE                         R16 R14 R15
      232 GETUPVAL                         R15 2
      233 GETTABLEKS                       R15 R15 K47 ["Event"]
      235 GETTABLEKS                       R15 R15 K52 ["MouseLeave"]
      237 NEWCLOSURE                       R16 P4
      238 CAPTURE                          UPVAL U1
      239 CAPTURE                          UPVAL U5
      240 SETTABLE                         R16 R14 R15
      241 CALL                             R12 2 1
      242 SETTABLEKS                       R12 R11 K33 ["HoverHandler"]
      244 GETUPVAL                         R12 2
      245 GETTABLEKS                       R12 R12 K13 ["createElement"]
      247 LOADK                            R13 K53 ["ImageLabel"]
      248 DUPTABLE                         R14 K56 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "Image", "Visible", "ZIndex"}]
      249 LOADN                            R15 1
      250 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      252 GETIMPORT                        R15 K21 [UDim2.new]
      254 LOADN                            R16 0
      255 LOADN                            R17 18
      256 LOADN                            R18 0
      257 LOADN                            R19 18
      258 CALL                             R15 4 1
      259 SETTABLEKS                       R15 R14 K17 ["Size"]
      261 GETIMPORT                        R15 K44 [Vector2.new]
      263 LOADK                            R16 K41 [0.5]
      264 LOADN                            R17 0
      265 CALL                             R15 2 1
      266 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      268 GETIMPORT                        R15 K21 [UDim2.new]
      270 GETUPVAL                         R16 6
      271 GETUPVAL                         R17 1
      272 CALL                             R16 1 1
      273 LOADN                            R17 0
      274 LOADN                            R18 0
      275 LOADN                            R19 0
      276 CALL                             R15 4 1
      277 SETTABLEKS                       R15 R14 K42 ["Position"]
      279 GETUPVAL                         R16 7
      280 GETTABLEKS                       R16 R16 K57 ["isDarkerTheme"]
      282 CALL                             R16 0 1
      283 JUMPIFNOT                        R16 ; [+2]
      284 LOADK                            R15 K58 ["rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"]
      285 JUMP                             ; [+1]
      286 LOADK                            R15 K59 ["rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"]
      287 SETTABLEKS                       R15 R14 K54 ["Image"]
      289 GETUPVAL                         R15 1
      290 GETTABLEKS                       R15 R15 K4 ["props"]
      292 GETTABLEKS                       R15 R15 K60 ["Enabled"]
      294 SETTABLEKS                       R15 R14 K55 ["Visible"]
      296 LOADN                            R15 3
      297 SETTABLEKS                       R15 R14 K46 ["ZIndex"]
      299 CALL                             R12 2 1
      300 SETTABLEKS                       R12 R11 K34 ["SliderHandleOne"]
      302 GETUPVAL                         R12 2
      303 GETTABLEKS                       R12 R12 K13 ["createElement"]
      305 LOADK                            R13 K53 ["ImageLabel"]
      306 DUPTABLE                         R14 K56 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "Image", "Visible", "ZIndex"}]
      307 LOADN                            R15 1
      308 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      310 GETIMPORT                        R15 K21 [UDim2.new]
      312 LOADN                            R16 0
      313 LOADN                            R17 18
      314 LOADN                            R18 0
      315 LOADN                            R19 18
      316 CALL                             R15 4 1
      317 SETTABLEKS                       R15 R14 K17 ["Size"]
      319 GETIMPORT                        R15 K44 [Vector2.new]
      321 LOADK                            R16 K41 [0.5]
      322 LOADN                            R17 0
      323 CALL                             R15 2 1
      324 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      326 GETIMPORT                        R15 K21 [UDim2.new]
      328 GETUPVAL                         R16 8
      329 GETUPVAL                         R17 1
      330 CALL                             R16 1 1
      331 LOADN                            R17 0
      332 LOADN                            R18 0
      333 LOADN                            R19 0
      334 CALL                             R15 4 1
      335 SETTABLEKS                       R15 R14 K42 ["Position"]
      337 GETUPVAL                         R16 7
      338 GETTABLEKS                       R16 R16 K57 ["isDarkerTheme"]
      340 CALL                             R16 0 1
      341 JUMPIFNOT                        R16 ; [+2]
      342 LOADK                            R15 K58 ["rbxasset://textures/RoactStudioWidgets/slider_handle_dark.png"]
      343 JUMP                             ; [+1]
      344 LOADK                            R15 K59 ["rbxasset://textures/RoactStudioWidgets/slider_handle_light.png"]
      345 SETTABLEKS                       R15 R14 K54 ["Image"]
      347 GETUPVAL                         R15 1
      348 GETTABLEKS                       R15 R15 K4 ["props"]
      350 GETTABLEKS                       R15 R15 K60 ["Enabled"]
      352 SETTABLEKS                       R15 R14 K55 ["Visible"]
      354 LOADN                            R15 3
      355 SETTABLEKS                       R15 R14 K46 ["ZIndex"]
      357 CALL                             R12 2 1
      358 SETTABLEKS                       R12 R11 K35 ["SliderHandleTwo"]
      360 GETUPVAL                         R12 2
      361 GETTABLEKS                       R12 R12 K13 ["createElement"]
      363 LOADK                            R13 K53 ["ImageLabel"]
      364 DUPTABLE                         R14 K63 [{"BackgroundTransparency", "Size", "Image", "ScaleType", "SliceCenter", "AnchorPoint", "Position"}]
      365 LOADN                            R15 1
      366 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      368 GETIMPORT                        R15 K21 [UDim2.new]
      370 LOADN                            R16 0
      371 LOADN                            R17 6
      372 LOADN                            R18 0
      373 LOADN                            R19 6
      374 CALL                             R15 4 1
      375 SETTABLEKS                       R15 R14 K17 ["Size"]
      377 GETUPVAL                         R16 7
      378 GETTABLEKS                       R16 R16 K57 ["isDarkerTheme"]
      380 CALL                             R16 0 1
      381 JUMPIFNOT                        R16 ; [+2]
      382 LOADK                            R15 K64 ["rbxasset://textures/RoactStudioWidgets/slider_bar_background_dark.png"]
      383 JUMP                             ; [+1]
      384 LOADK                            R15 K65 ["rbxasset://textures/RoactStudioWidgets/slider_bar_background_light.png"]
      385 SETTABLEKS                       R15 R14 K54 ["Image"]
      387 GETIMPORT                        R15 K68 [Enum.ScaleType.Slice]
      389 SETTABLEKS                       R15 R14 K61 ["ScaleType"]
      391 GETUPVAL                         R15 9
      392 SETTABLEKS                       R15 R14 K62 ["SliceCenter"]
      394 GETIMPORT                        R15 K44 [Vector2.new]
      396 LOADN                            R16 0
      397 LOADK                            R17 K41 [0.5]
      398 CALL                             R15 2 1
      399 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      401 GETIMPORT                        R15 K21 [UDim2.new]
      403 LOADN                            R16 0
      404 LOADN                            R17 0
      405 LOADK                            R18 K41 [0.5]
      406 LOADN                            R19 0
      407 CALL                             R15 4 1
      408 SETTABLEKS                       R15 R14 K42 ["Position"]
      410 CALL                             R12 2 1
      411 SETTABLEKS                       R12 R11 K36 ["BackgroundBar"]
      413 GETUPVAL                         R12 2
      414 GETTABLEKS                       R12 R12 K13 ["createElement"]
      416 LOADK                            R13 K53 ["ImageLabel"]
      417 DUPTABLE                         R14 K69 [{"BackgroundTransparency", "Size", "Image", "ScaleType", "SliceCenter", "AnchorPoint", "Position", "Visible", "ZIndex"}]
      418 LOADN                            R15 1
      419 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      421 GETIMPORT                        R15 K21 [UDim2.new]
      423 GETUPVAL                         R16 10
      424 GETUPVAL                         R17 1
      425 CALL                             R16 1 1
      426 LOADN                            R17 0
      427 LOADN                            R18 0
      428 LOADN                            R19 6
      429 CALL                             R15 4 1
      430 SETTABLEKS                       R15 R14 K17 ["Size"]
      432 GETUPVAL                         R16 7
      433 GETTABLEKS                       R16 R16 K57 ["isDarkerTheme"]
      435 CALL                             R16 0 1
      436 JUMPIFNOT                        R16 ; [+2]
      437 LOADK                            R15 K70 ["rbxasset://textures/RoactStudioWidgets/slider_bar_dark.png"]
      438 JUMP                             ; [+1]
      439 LOADK                            R15 K71 ["rbxasset://textures/RoactStudioWidgets/slider_bar_light.png"]
      440 SETTABLEKS                       R15 R14 K54 ["Image"]
      442 GETIMPORT                        R15 K68 [Enum.ScaleType.Slice]
      444 SETTABLEKS                       R15 R14 K61 ["ScaleType"]
      446 GETUPVAL                         R15 9
      447 SETTABLEKS                       R15 R14 K62 ["SliceCenter"]
      449 GETIMPORT                        R15 K44 [Vector2.new]
      451 LOADN                            R16 0
      452 LOADK                            R17 K41 [0.5]
      453 CALL                             R15 2 1
      454 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      456 GETIMPORT                        R15 K21 [UDim2.new]
      458 GETUPVAL                         R16 11
      459 GETUPVAL                         R17 1
      460 CALL                             R16 1 1
      461 LOADN                            R17 0
      462 LOADK                            R18 K41 [0.5]
      463 LOADN                            R19 0
      464 CALL                             R15 4 1
      465 SETTABLEKS                       R15 R14 K42 ["Position"]
      467 GETUPVAL                         R15 1
      468 GETTABLEKS                       R15 R15 K4 ["props"]
      470 GETTABLEKS                       R15 R15 K60 ["Enabled"]
      472 SETTABLEKS                       R15 R14 K55 ["Visible"]
      474 LOADN                            R15 2
      475 SETTABLEKS                       R15 R14 K46 ["ZIndex"]
      477 CALL                             R12 2 1
      478 SETTABLEKS                       R12 R11 K37 ["ForegroundBar"]
      480 CALL                             R8 3 1
      481 SETTABLEKS                       R8 R7 K22 ["SliderFrame"]
      483 GETUPVAL                         R8 2
      484 GETTABLEKS                       R8 R8 K13 ["createElement"]
      486 LOADK                            R9 K72 ["TextLabel"]
      487 DUPTABLE                         R10 K79 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "AnchorPoint", "Position", "Visible", "Text"}]
      488 LOADN                            R11 1
      489 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
      491 LOADN                            R11 0
      492 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      494 GETIMPORT                        R11 K21 [UDim2.new]
      496 LOADN                            R12 0
      497 LOADN                            R13 0
      498 LOADN                            R14 0
      499 LOADN                            R15 20
      500 CALL                             R11 4 1
      501 SETTABLEKS                       R11 R10 K17 ["Size"]
      503 GETTABLEKS                       R11 R0 K80 ["TextColor"]
      505 SETTABLEKS                       R11 R10 K73 ["TextColor3"]
      507 GETIMPORT                        R11 K82 [Enum.Font.SourceSans]
      509 SETTABLEKS                       R11 R10 K74 ["Font"]
      511 LOADN                            R11 22
      512 SETTABLEKS                       R11 R10 K75 ["TextSize"]
      514 GETIMPORT                        R11 K84 [Enum.TextXAlignment.Left]
      516 SETTABLEKS                       R11 R10 K76 ["TextXAlignment"]
      518 GETIMPORT                        R11 K86 [Enum.TextYAlignment.Bottom]
      520 SETTABLEKS                       R11 R10 K77 ["TextYAlignment"]
      522 GETIMPORT                        R11 K44 [Vector2.new]
      524 LOADN                            R12 0
      525 LOADN                            R13 1
      526 CALL                             R11 2 1
      527 SETTABLEKS                       R11 R10 K45 ["AnchorPoint"]
      529 GETIMPORT                        R11 K21 [UDim2.new]
      531 LOADN                            R12 0
      532 LOADN                            R13 0
      533 LOADN                            R14 1
      534 LOADN                            R15 0
      535 CALL                             R11 4 1
      536 SETTABLEKS                       R11 R10 K42 ["Position"]
      538 GETUPVAL                         R11 1
      539 GETTABLEKS                       R11 R11 K4 ["props"]
      541 GETTABLEKS                       R11 R11 K60 ["Enabled"]
      543 SETTABLEKS                       R11 R10 K55 ["Visible"]
      545 GETUPVAL                         R11 1
      546 GETTABLEKS                       R11 R11 K4 ["props"]
      548 GETTABLEKS                       R11 R11 K87 ["MinLabelText"]
      550 JUMPIF                           R11 ; [+12]
      551 GETUPVAL                         R15 1
      552 GETTABLEKS                       R15 R15 K4 ["props"]
      554 GETTABLEKS                       R15 R15 K88 ["Min"]
      556 FASTCALL1                        TOSTRING R15 ; [+2]
      557 GETIMPORT                        R14 K10 [tostring]
      559 CALL                             R14 1 1
      560 MOVE                             R12 R14
      561 LOADK                            R13 K89 ["%"]
      562 CONCAT                           R11 R12 R13
      563 SETTABLEKS                       R11 R10 K78 ["Text"]
      565 CALL                             R8 2 1
      566 SETTABLEKS                       R8 R7 K23 ["LowerLabel"]
      568 GETUPVAL                         R8 2
      569 GETTABLEKS                       R8 R8 K13 ["createElement"]
      571 LOADK                            R9 K72 ["TextLabel"]
      572 DUPTABLE                         R10 K79 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "AnchorPoint", "Position", "Visible", "Text"}]
      573 LOADN                            R11 1
      574 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
      576 LOADN                            R11 0
      577 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      579 GETIMPORT                        R11 K21 [UDim2.new]
      581 LOADN                            R12 0
      582 LOADN                            R13 0
      583 LOADN                            R14 0
      584 LOADN                            R15 20
      585 CALL                             R11 4 1
      586 SETTABLEKS                       R11 R10 K17 ["Size"]
      588 GETTABLEKS                       R11 R0 K80 ["TextColor"]
      590 SETTABLEKS                       R11 R10 K73 ["TextColor3"]
      592 GETIMPORT                        R11 K82 [Enum.Font.SourceSans]
      594 SETTABLEKS                       R11 R10 K74 ["Font"]
      596 LOADN                            R11 22
      597 SETTABLEKS                       R11 R10 K75 ["TextSize"]
      599 GETIMPORT                        R11 K91 [Enum.TextXAlignment.Right]
      601 SETTABLEKS                       R11 R10 K76 ["TextXAlignment"]
      603 GETIMPORT                        R11 K86 [Enum.TextYAlignment.Bottom]
      605 SETTABLEKS                       R11 R10 K77 ["TextYAlignment"]
      607 GETIMPORT                        R11 K44 [Vector2.new]
      609 LOADN                            R12 1
      610 LOADN                            R13 1
      611 CALL                             R11 2 1
      612 SETTABLEKS                       R11 R10 K45 ["AnchorPoint"]
      614 GETIMPORT                        R11 K21 [UDim2.new]
      616 LOADN                            R12 0
      617 LOADN                            R13 6
      618 LOADN                            R14 1
      619 LOADN                            R15 0
      620 CALL                             R11 4 1
      621 SETTABLEKS                       R11 R10 K42 ["Position"]
      623 GETUPVAL                         R11 1
      624 GETTABLEKS                       R11 R11 K4 ["props"]
      626 GETTABLEKS                       R11 R11 K60 ["Enabled"]
      628 SETTABLEKS                       R11 R10 K55 ["Visible"]
      630 GETUPVAL                         R11 1
      631 GETTABLEKS                       R11 R11 K4 ["props"]
      633 GETTABLEKS                       R11 R11 K92 ["MaxLabelText"]
      635 JUMPIF                           R11 ; [+12]
      636 GETUPVAL                         R15 1
      637 GETTABLEKS                       R15 R15 K4 ["props"]
      639 GETTABLEKS                       R15 R15 K93 ["Max"]
      641 FASTCALL1                        TOSTRING R15 ; [+2]
      642 GETIMPORT                        R14 K10 [tostring]
      644 CALL                             R14 1 1
      645 MOVE                             R12 R14
      646 LOADK                            R13 K89 ["%"]
      647 CONCAT                           R11 R12 R13
      648 SETTABLEKS                       R11 R10 K78 ["Text"]
      650 CALL                             R8 2 1
      651 SETTABLEKS                       R8 R7 K24 ["UpperLabel"]
      653 GETUPVAL                         R8 2
      654 GETTABLEKS                       R8 R8 K13 ["createElement"]
      656 GETUPVAL                         R9 12
      657 DUPTABLE                         R10 K102 [{"Enabled", "MaxLength", "Text", "Position", "Width", "Height", "ShowToolTip", "HorizontalAlignment", "Mouse", "SetText", "FocusChanged"}]
      658 GETUPVAL                         R11 1
      659 GETTABLEKS                       R11 R11 K4 ["props"]
      661 GETTABLEKS                       R11 R11 K60 ["Enabled"]
      663 SETTABLEKS                       R11 R10 K60 ["Enabled"]
      665 LOADN                            R11 100
      666 SETTABLEKS                       R11 R10 K94 ["MaxLength"]
      668 SETTABLEKS                       R1 R10 K78 ["Text"]
      670 GETIMPORT                        R11 K21 [UDim2.new]
      672 LOADN                            R12 0
      673 LOADN                            R13 35
      674 LOADN                            R14 0
      675 LOADN                            R15 0
      676 CALL                             R11 4 1
      677 SETTABLEKS                       R11 R10 K42 ["Position"]
      679 LOADN                            R11 48
      680 SETTABLEKS                       R11 R10 K95 ["Width"]
      682 LOADN                            R11 38
      683 SETTABLEKS                       R11 R10 K96 ["Height"]
      685 LOADB                            R11 0
      686 SETTABLEKS                       R11 R10 K97 ["ShowToolTip"]
      688 GETIMPORT                        R11 K104 [Enum.TextXAlignment.Center]
      690 SETTABLEKS                       R11 R10 K98 ["HorizontalAlignment"]
      692 GETUPVAL                         R11 1
      693 GETTABLEKS                       R11 R11 K4 ["props"]
      695 GETTABLEKS                       R11 R11 K99 ["Mouse"]
      697 SETTABLEKS                       R11 R10 K99 ["Mouse"]
      699 NEWCLOSURE                       R11 P5
      700 CAPTURE                          UPVAL U1
      701 SETTABLEKS                       R11 R10 K100 ["SetText"]
      703 NEWCLOSURE                       R11 P6
      704 CAPTURE                          UPVAL U1
      705 CAPTURE                          UPVAL U13
      706 SETTABLEKS                       R11 R10 K101 ["FocusChanged"]
      708 CALL                             R8 2 1
      709 SETTABLEKS                       R8 R7 K25 ["LowerInputBox"]
      711 GETUPVAL                         R8 2
      712 GETTABLEKS                       R8 R8 K13 ["createElement"]
      714 LOADK                            R9 K14 ["Frame"]
      715 DUPTABLE                         R10 K106 [{"BorderSizePixel", "Size", "AnchorPoint", "Position", "BackgroundColor3"}]
      716 LOADN                            R11 0
      717 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      719 GETIMPORT                        R11 K21 [UDim2.new]
      721 LOADN                            R12 0
      722 LOADN                            R13 10
      723 LOADN                            R14 0
      724 LOADN                            R15 2
      725 CALL                             R11 4 1
      726 SETTABLEKS                       R11 R10 K17 ["Size"]
      728 GETIMPORT                        R11 K44 [Vector2.new]
      730 LOADN                            R12 1
      731 LOADK                            R13 K41 [0.5]
      732 CALL                             R11 2 1
      733 SETTABLEKS                       R11 R10 K45 ["AnchorPoint"]
      735 GETIMPORT                        R11 K21 [UDim2.new]
      737 LOADN                            R12 0
      738 LOADN                            R13 100
      739 LOADK                            R14 K41 [0.5]
      740 LOADN                            R15 0
      741 CALL                             R11 4 1
      742 SETTABLEKS                       R11 R10 K42 ["Position"]
      744 GETTABLEKS                       R11 R0 K107 ["TextDescriptionColor"]
      746 SETTABLEKS                       R11 R10 K105 ["BackgroundColor3"]
      748 CALL                             R8 2 1
      749 SETTABLEKS                       R8 R7 K26 ["Dash"]
      751 GETUPVAL                         R8 2
      752 GETTABLEKS                       R8 R8 K13 ["createElement"]
      754 GETUPVAL                         R9 12
      755 DUPTABLE                         R10 K102 [{"Enabled", "MaxLength", "Text", "Position", "Width", "Height", "ShowToolTip", "HorizontalAlignment", "Mouse", "SetText", "FocusChanged"}]
      756 GETUPVAL                         R11 1
      757 GETTABLEKS                       R11 R11 K4 ["props"]
      759 GETTABLEKS                       R11 R11 K60 ["Enabled"]
      761 SETTABLEKS                       R11 R10 K60 ["Enabled"]
      763 LOADN                            R11 100
      764 SETTABLEKS                       R11 R10 K94 ["MaxLength"]
      766 SETTABLEKS                       R2 R10 K78 ["Text"]
      768 GETIMPORT                        R11 K21 [UDim2.new]
      770 LOADN                            R12 0
      771 LOADN                            R13 107
      772 LOADN                            R14 0
      773 LOADN                            R15 0
      774 CALL                             R11 4 1
      775 SETTABLEKS                       R11 R10 K42 ["Position"]
      777 LOADN                            R11 48
      778 SETTABLEKS                       R11 R10 K95 ["Width"]
      780 LOADN                            R11 38
      781 SETTABLEKS                       R11 R10 K96 ["Height"]
      783 LOADB                            R11 0
      784 SETTABLEKS                       R11 R10 K97 ["ShowToolTip"]
      786 GETIMPORT                        R11 K104 [Enum.TextXAlignment.Center]
      788 SETTABLEKS                       R11 R10 K98 ["HorizontalAlignment"]
      790 GETUPVAL                         R11 1
      791 GETTABLEKS                       R11 R11 K4 ["props"]
      793 GETTABLEKS                       R11 R11 K99 ["Mouse"]
      795 SETTABLEKS                       R11 R10 K99 ["Mouse"]
      797 NEWCLOSURE                       R11 P7
      798 CAPTURE                          UPVAL U1
      799 SETTABLEKS                       R11 R10 K100 ["SetText"]
      801 NEWCLOSURE                       R11 P8
      802 CAPTURE                          UPVAL U1
      803 CAPTURE                          UPVAL U14
      804 SETTABLEKS                       R11 R10 K101 ["FocusChanged"]
      806 CALL                             R8 2 1
      807 SETTABLEKS                       R8 R7 K27 ["UpperInputBox"]
      809 GETUPVAL                         R8 2
      810 GETTABLEKS                       R8 R8 K13 ["createElement"]
      812 LOADK                            R9 K72 ["TextLabel"]
      813 DUPTABLE                         R10 K108 [{"BackgroundTransparency", "BorderSizePixel", "Position", "AnchorPoint", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "Text"}]
      814 LOADN                            R11 1
      815 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
      817 LOADN                            R11 0
      818 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
      820 GETIMPORT                        R11 K21 [UDim2.new]
      822 LOADN                            R12 0
      823 LOADN                            R13 170
      824 LOADK                            R14 K41 [0.5]
      825 LOADN                            R15 0
      826 CALL                             R11 4 1
      827 SETTABLEKS                       R11 R10 K42 ["Position"]
      829 GETIMPORT                        R11 K44 [Vector2.new]
      831 LOADN                            R12 0
      832 LOADK                            R13 K41 [0.5]
      833 CALL                             R11 2 1
      834 SETTABLEKS                       R11 R10 K45 ["AnchorPoint"]
      836 GETTABLEKS                       R11 R0 K107 ["TextDescriptionColor"]
      838 SETTABLEKS                       R11 R10 K73 ["TextColor3"]
      840 GETIMPORT                        R11 K82 [Enum.Font.SourceSans]
      842 SETTABLEKS                       R11 R10 K74 ["Font"]
      844 LOADN                            R11 22
      845 SETTABLEKS                       R11 R10 K75 ["TextSize"]
      847 GETIMPORT                        R11 K104 [Enum.TextXAlignment.Center]
      849 SETTABLEKS                       R11 R10 K76 ["TextXAlignment"]
      851 GETIMPORT                        R11 K109 [Enum.TextYAlignment.Center]
      853 SETTABLEKS                       R11 R10 K77 ["TextYAlignment"]
      855 GETUPVAL                         R12 1
      856 GETTABLEKS                       R12 R12 K4 ["props"]
      858 GETTABLEKS                       R12 R12 K110 ["UnitsLabelText"]
      860 ORK                              R11 R12 K89 ["%"]
      861 SETTABLEKS                       R11 R10 K78 ["Text"]
      863 CALL                             R8 2 1
      864 SETTABLEKS                       R8 R7 K28 ["PercentageLabel"]
      866 CALL                             R4 3 1
      867 SETTABLEKS                       R4 R3 K11 ["RangedSliderContent"]
      869 GETUPVAL                         R4 2
      870 GETTABLEKS                       R4 R4 K13 ["createElement"]
      872 GETUPVAL                         R5 15
      873 DUPTABLE                         R6 K114 [{"Title", "MaxHeight", "LayoutOrder"}]
      874 GETUPVAL                         R7 1
      875 GETTABLEKS                       R7 R7 K4 ["props"]
      877 GETTABLEKS                       R7 R7 K111 ["Title"]
      879 SETTABLEKS                       R7 R6 K111 ["Title"]
      881 LOADN                            R7 38
      882 SETTABLEKS                       R7 R6 K112 ["MaxHeight"]
      884 GETUPVAL                         R8 1
      885 GETTABLEKS                       R8 R8 K4 ["props"]
      887 GETTABLEKS                       R8 R8 K113 ["LayoutOrder"]
      889 ORK                              R7 R8 K115 [1]
      890 SETTABLEKS                       R7 R6 K113 ["LayoutOrder"]
      892 MOVE                             R7 R3
      893 CALL                             R4 3 -1
      894 RETURN                           R4 -1

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
