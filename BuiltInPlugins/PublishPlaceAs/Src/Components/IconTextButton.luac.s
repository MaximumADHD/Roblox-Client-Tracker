PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K3 ["Text"]
        6 ORK                              R3 R4 K2 [""]
        7 GETTABLEKS                       R4 R1 K4 ["OnClick"]
        9 GETTABLEKS                       R5 R1 K5 ["Size"]
       11 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       13 GETTABLEKS                       R8 R1 K8 ["ZIndex"]
       15 ORK                              R7 R8 K7 [1]
       16 GETTABLEKS                       R9 R1 K10 ["Style"]
       18 ORK                              R8 R9 K9 ["Round"]
       19 GETTABLEKS                       R9 R1 K11 ["LeftIcon"]
       21 GETTABLEKS                       R11 R1 K13 ["IconTextSpacing"]
       23 ORK                              R10 R11 K12 [6]
       24 GETTABLEKS                       R12 R1 K14 ["PaddingLeft"]
       26 ORK                              R11 R12 K12 [6]
       27 LOADNIL                          R12
       28 LOADNIL                          R13
       29 LOADNIL                          R14
       30 FASTCALL1                        TYPEOF R9 ; [+3]
       31 MOVE                             R16 R9
       32 GETIMPORT                        R15 K16 [typeof]
       34 CALL                             R15 1 1
       35 JUMPIFNOTEQKS                    R15 K17 ["table"] ; [+8]
       37 GETTABLEKS                       R12 R9 K18 ["Image"]
       39 GETTABLEKS                       R13 R9 K19 ["ImageRectSize"]
       41 GETTABLEKS                       R14 R9 K20 ["ImageRectOffset"]
       43 JUMP                             ; [+1]
       44 MOVE                             R12 R9
       45 JUMPIFNOT                        R13 ; [+3]
       46 GETTABLEKS                       R15 R13 K21 ["X"]
       48 JUMPIF                           R15 ; [+1]
       49 LOADN                            R15 16
       50 ADD                              R17 R11 R15
       51 ADD                              R16 R17 R10
       52 LOADB                            R17 1
       53 GETTABLEKS                       R18 R1 K22 ["IsPrimary"]
       55 JUMPIFEQKB                       R18 TRUE ; [+5]
       57 JUMPIFEQKS                       R8 K23 ["RoundPrimary"] ; [+2]
       59 LOADB                            R17 0 +1
       60 LOADB                            R17 1
       61 JUMPIFNOT                        R17 ; [+3]
       62 GETTABLEKS                       R18 R2 K24 ["defaultButton"]
       64 JUMPIF                           R18 ; [+2]
       65 GETTABLEKS                       R18 R2 K25 ["cancelButton"]
       67 MOVE                             R19 R18
       68 JUMPIFNOT                        R19 ; [+2]
       69 GETTABLEKS                       R19 R18 K26 ["ButtonColor"]
       71 MOVE                             R20 R18
       72 JUMPIFNOT                        R20 ; [+2]
       73 GETTABLEKS                       R20 R18 K27 ["TextColor"]
       75 MOVE                             R21 R18
       76 JUMPIFNOT                        R21 ; [+2]
       77 GETTABLEKS                       R21 R18 K28 ["BorderColor"]
       79 GETUPVAL                         R22 0
       80 GETTABLEKS                       R22 R22 K29 ["createElement"]
       82 LOADK                            R23 K30 ["TextButton"]
       83 NEWTABLE                         R24 16 0
       85 LOADN                            R25 0
       86 SETTABLEKS                       R25 R24 K31 ["BackgroundTransparency"]
       88 LOADB                            R25 1
       89 SETTABLEKS                       R25 R24 K32 ["AutoButtonColor"]
       91 LOADK                            R25 K2 [""]
       92 SETTABLEKS                       R25 R24 K3 ["Text"]
       94 SETTABLEKS                       R5 R24 K5 ["Size"]
       96 SETTABLEKS                       R6 R24 K6 ["LayoutOrder"]
       98 SETTABLEKS                       R7 R24 K8 ["ZIndex"]
      100 MOVE                             R25 R19
      101 JUMPIF                           R25 ; [+6]
      102 GETIMPORT                        R25 K35 [Color3.new]
      104 LOADK                            R26 K36 [0.2]
      105 LOADK                            R27 K36 [0.2]
      106 LOADK                            R28 K36 [0.2]
      107 CALL                             R25 3 1
      108 SETTABLEKS                       R25 R24 K37 ["BackgroundColor3"]
      110 MOVE                             R25 R21
      111 JUMPIF                           R25 ; [+2]
      112 GETTABLEKS                       R25 R2 K38 ["borderColor"]
      114 SETTABLEKS                       R25 R24 K39 ["BorderColor3"]
      116 GETUPVAL                         R25 0
      117 GETTABLEKS                       R25 R25 K40 ["Event"]
      119 GETTABLEKS                       R25 R25 K41 ["Activated"]
      121 SETTABLE                         R4 R24 R25
      122 DUPTABLE                         R25 K45 [{"Corner", "Icon", "Label"}]
      123 GETUPVAL                         R26 0
      124 GETTABLEKS                       R26 R26 K29 ["createElement"]
      126 LOADK                            R27 K46 ["UICorner"]
      127 DUPTABLE                         R28 K48 [{"CornerRadius"}]
      128 GETIMPORT                        R29 K50 [UDim.new]
      130 LOADN                            R30 0
      131 LOADN                            R31 6
      132 CALL                             R29 2 1
      133 SETTABLEKS                       R29 R28 K47 ["CornerRadius"]
      135 CALL                             R26 2 1
      136 SETTABLEKS                       R26 R25 K42 ["Corner"]
      138 JUMPIFNOT                        R9 ; [+48]
      139 GETUPVAL                         R26 0
      140 GETTABLEKS                       R26 R26 K29 ["createElement"]
      142 LOADK                            R27 K51 ["ImageLabel"]
      143 DUPTABLE                         R28 K54 [{"BackgroundTransparency", "Image", "ImageRectSize", "ImageRectOffset", "Size", "Position", "AnchorPoint", "ZIndex"}]
      144 LOADN                            R29 1
      145 SETTABLEKS                       R29 R28 K31 ["BackgroundTransparency"]
      147 SETTABLEKS                       R12 R28 K18 ["Image"]
      149 SETTABLEKS                       R13 R28 K19 ["ImageRectSize"]
      151 SETTABLEKS                       R14 R28 K20 ["ImageRectOffset"]
      153 GETIMPORT                        R29 K56 [UDim2.new]
      155 LOADN                            R30 0
      156 MOVE                             R31 R15
      157 LOADN                            R32 0
      158 JUMPIFNOT                        R13 ; [+3]
      159 GETTABLEKS                       R33 R13 K57 ["Y"]
      161 JUMPIF                           R33 ; [+1]
      162 LOADN                            R33 16
      163 CALL                             R29 4 1
      164 SETTABLEKS                       R29 R28 K5 ["Size"]
      166 GETIMPORT                        R29 K56 [UDim2.new]
      168 LOADN                            R30 0
      169 MOVE                             R31 R11
      170 LOADK                            R32 K58 [0.5]
      171 LOADN                            R33 0
      172 CALL                             R29 4 1
      173 SETTABLEKS                       R29 R28 K52 ["Position"]
      175 GETIMPORT                        R29 K60 [Vector2.new]
      177 LOADN                            R30 0
      178 LOADK                            R31 K58 [0.5]
      179 CALL                             R29 2 1
      180 SETTABLEKS                       R29 R28 K53 ["AnchorPoint"]
      182 ADDK                             R29 R7 K7 [1]
      183 SETTABLEKS                       R29 R28 K8 ["ZIndex"]
      185 CALL                             R26 2 1
      186 JUMPIF                           R26 ; [+1]
      187 LOADNIL                          R26
      188 SETTABLEKS                       R26 R25 K43 ["Icon"]
      190 GETUPVAL                         R26 0
      191 GETTABLEKS                       R26 R26 K29 ["createElement"]
      193 LOADK                            R27 K61 ["TextLabel"]
      194 DUPTABLE                         R28 K67 [{"BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextColor3", "Position", "AnchorPoint", "Size", "ZIndex"}]
      195 LOADN                            R29 1
      196 SETTABLEKS                       R29 R28 K31 ["BackgroundTransparency"]
      198 SETTABLEKS                       R3 R28 K3 ["Text"]
      200 GETIMPORT                        R29 K70 [Enum.TextXAlignment.Left]
      202 SETTABLEKS                       R29 R28 K62 ["TextXAlignment"]
      204 GETIMPORT                        R29 K72 [Enum.TextYAlignment.Center]
      206 SETTABLEKS                       R29 R28 K63 ["TextYAlignment"]
      208 GETTABLEKS                       R30 R2 K73 ["footer"]
      210 JUMPIFNOT                        R30 ; [+12]
      211 GETTABLEKS                       R30 R2 K73 ["footer"]
      213 GETTABLEKS                       R30 R30 K74 ["textbutton"]
      215 JUMPIFNOT                        R30 ; [+7]
      216 GETTABLEKS                       R29 R2 K73 ["footer"]
      218 GETTABLEKS                       R29 R29 K74 ["textbutton"]
      220 GETTABLEKS                       R29 R29 K75 ["font"]
      222 JUMPIF                           R29 ; [+5]
      223 GETTABLEKS                       R29 R2 K75 ["font"]
      225 JUMPIF                           R29 ; [+2]
      226 GETIMPORT                        R29 K77 [Enum.Font.SourceSans]
      228 SETTABLEKS                       R29 R28 K64 ["Font"]
      230 GETTABLEKS                       R30 R2 K78 ["fontStyle"]
      232 JUMPIFNOT                        R30 ; [+12]
      233 GETTABLEKS                       R30 R2 K78 ["fontStyle"]
      235 GETTABLEKS                       R30 R30 K79 ["Subtext"]
      237 JUMPIFNOT                        R30 ; [+7]
      238 GETTABLEKS                       R29 R2 K78 ["fontStyle"]
      240 GETTABLEKS                       R29 R29 K79 ["Subtext"]
      242 GETTABLEKS                       R29 R29 K65 ["TextSize"]
      244 JUMPIF                           R29 ; [+1]
      245 LOADN                            R29 22
      246 SETTABLEKS                       R29 R28 K65 ["TextSize"]
      248 MOVE                             R29 R20
      249 JUMPIF                           R29 ; [+2]
      250 GETTABLEKS                       R29 R2 K80 ["textColor"]
      252 SETTABLEKS                       R29 R28 K66 ["TextColor3"]
      254 GETIMPORT                        R29 K56 [UDim2.new]
      256 LOADN                            R30 0
      257 MOVE                             R31 R16
      258 LOADK                            R32 K58 [0.5]
      259 LOADN                            R33 0
      260 CALL                             R29 4 1
      261 SETTABLEKS                       R29 R28 K52 ["Position"]
      263 GETIMPORT                        R29 K60 [Vector2.new]
      265 LOADN                            R30 0
      266 LOADK                            R31 K58 [0.5]
      267 CALL                             R29 2 1
      268 SETTABLEKS                       R29 R28 K53 ["AnchorPoint"]
      270 GETIMPORT                        R29 K56 [UDim2.new]
      272 LOADN                            R30 1
      273 MINUS                            R32 R16
      274 SUB                              R31 R32 R11
      275 LOADN                            R32 1
      276 LOADN                            R33 0
      277 CALL                             R29 4 1
      278 SETTABLEKS                       R29 R28 K5 ["Size"]
      280 ADDK                             R29 R7 K7 [1]
      281 SETTABLEKS                       R29 R28 K8 ["ZIndex"]
      283 CALL                             R26 2 1
      284 SETTABLEKS                       R26 R25 K44 ["Label"]
      286 CALL                             R22 3 -1
      287 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PublishPlaceAs"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["IconTextButton"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R4
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
