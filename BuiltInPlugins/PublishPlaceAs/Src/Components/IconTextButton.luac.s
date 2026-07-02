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
      138 JUMPIFNOT                        R9 ; [+45]
      139 GETUPVAL                         R26 0
      140 GETTABLEKS                       R26 R26 K29 ["createElement"]
      142 LOADK                            R27 K51 ["ImageLabel"]
      143 DUPTABLE                         R28 K54 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageRectSize"], ["ImageRectOffset"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"]}]
      144 SETTABLEKS                       R12 R28 K18 ["Image"]
      146 SETTABLEKS                       R13 R28 K19 ["ImageRectSize"]
      148 SETTABLEKS                       R14 R28 K20 ["ImageRectOffset"]
      150 GETIMPORT                        R29 K56 [UDim2.new]
      152 LOADN                            R30 0
      153 MOVE                             R31 R15
      154 LOADN                            R32 0
      155 JUMPIFNOT                        R13 ; [+3]
      156 GETTABLEKS                       R33 R13 K57 ["Y"]
      158 JUMPIF                           R33 ; [+1]
      159 LOADN                            R33 16
      160 CALL                             R29 4 1
      161 SETTABLEKS                       R29 R28 K5 ["Size"]
      163 GETIMPORT                        R29 K56 [UDim2.new]
      165 LOADN                            R30 0
      166 MOVE                             R31 R11
      167 LOADK                            R32 K58 [0.5]
      168 LOADN                            R33 0
      169 CALL                             R29 4 1
      170 SETTABLEKS                       R29 R28 K52 ["Position"]
      172 GETIMPORT                        R29 K60 [Vector2.new]
      174 LOADN                            R30 0
      175 LOADK                            R31 K58 [0.5]
      176 CALL                             R29 2 1
      177 SETTABLEKS                       R29 R28 K53 ["AnchorPoint"]
      179 ADDK                             R29 R7 K7 [1]
      180 SETTABLEKS                       R29 R28 K8 ["ZIndex"]
      182 CALL                             R26 2 1
      183 JUMPIF                           R26 ; [+1]
      184 LOADNIL                          R26
      185 SETTABLEKS                       R26 R25 K43 ["Icon"]
      187 GETUPVAL                         R26 0
      188 GETTABLEKS                       R26 R26 K29 ["createElement"]
      190 LOADK                            R27 K61 ["TextLabel"]
      191 DUPTABLE                         R28 K67 [{["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["TextSize"], ["TextColor3"], ["Position"], ["AnchorPoint"], ["Size"], ["ZIndex"]}]
      192 SETTABLEKS                       R3 R28 K3 ["Text"]
      194 GETIMPORT                        R29 K70 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R29 R28 K62 ["TextXAlignment"]
      198 GETIMPORT                        R29 K72 [Enum.TextYAlignment.Center]
      200 SETTABLEKS                       R29 R28 K63 ["TextYAlignment"]
      202 GETTABLEKS                       R30 R2 K73 ["footer"]
      204 JUMPIFNOT                        R30 ; [+12]
      205 GETTABLEKS                       R30 R2 K73 ["footer"]
      207 GETTABLEKS                       R30 R30 K74 ["textbutton"]
      209 JUMPIFNOT                        R30 ; [+7]
      210 GETTABLEKS                       R29 R2 K73 ["footer"]
      212 GETTABLEKS                       R29 R29 K74 ["textbutton"]
      214 GETTABLEKS                       R29 R29 K75 ["font"]
      216 JUMPIF                           R29 ; [+5]
      217 GETTABLEKS                       R29 R2 K75 ["font"]
      219 JUMPIF                           R29 ; [+2]
      220 GETIMPORT                        R29 K77 [Enum.Font.SourceSans]
      222 SETTABLEKS                       R29 R28 K64 ["Font"]
      224 GETTABLEKS                       R30 R2 K78 ["fontStyle"]
      226 JUMPIFNOT                        R30 ; [+12]
      227 GETTABLEKS                       R30 R2 K78 ["fontStyle"]
      229 GETTABLEKS                       R30 R30 K79 ["Subtext"]
      231 JUMPIFNOT                        R30 ; [+7]
      232 GETTABLEKS                       R29 R2 K78 ["fontStyle"]
      234 GETTABLEKS                       R29 R29 K79 ["Subtext"]
      236 GETTABLEKS                       R29 R29 K65 ["TextSize"]
      238 JUMPIF                           R29 ; [+1]
      239 LOADN                            R29 22
      240 SETTABLEKS                       R29 R28 K65 ["TextSize"]
      242 MOVE                             R29 R20
      243 JUMPIF                           R29 ; [+2]
      244 GETTABLEKS                       R29 R2 K80 ["textColor"]
      246 SETTABLEKS                       R29 R28 K66 ["TextColor3"]
      248 GETIMPORT                        R29 K56 [UDim2.new]
      250 LOADN                            R30 0
      251 MOVE                             R31 R16
      252 LOADK                            R32 K58 [0.5]
      253 LOADN                            R33 0
      254 CALL                             R29 4 1
      255 SETTABLEKS                       R29 R28 K52 ["Position"]
      257 GETIMPORT                        R29 K60 [Vector2.new]
      259 LOADN                            R30 0
      260 LOADK                            R31 K58 [0.5]
      261 CALL                             R29 2 1
      262 SETTABLEKS                       R29 R28 K53 ["AnchorPoint"]
      264 GETIMPORT                        R29 K56 [UDim2.new]
      266 LOADN                            R30 1
      267 MINUS                            R32 R16
      268 SUB                              R31 R32 R11
      269 LOADN                            R32 1
      270 LOADN                            R33 0
      271 CALL                             R29 4 1
      272 SETTABLEKS                       R29 R28 K5 ["Size"]
      274 ADDK                             R29 R7 K7 [1]
      275 SETTABLEKS                       R29 R28 K8 ["ZIndex"]
      277 CALL                             R26 2 1
      278 SETTABLEKS                       R26 R25 K44 ["Label"]
      280 CALL                             R22 3 -1
      281 RETURN                           R22 -1

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
