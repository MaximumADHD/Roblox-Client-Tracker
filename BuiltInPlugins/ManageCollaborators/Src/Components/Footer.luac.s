PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["IsTeamCreateEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["HasUnsavedChanges"]
       10 GETTABLEKS                       R6 R1 K5 ["HasCollaborators"]
       12 MOVE                             R7 R5
       13 JUMPIF                           R7 ; [+2]
       14 NOT                              R8 R4
       15 AND                              R7 R8 R6
       16 GETTABLEKS                       R8 R1 K6 ["OnSavePressed"]
       18 GETTABLEKS                       R9 R1 K7 ["OnCancelPressed"]
       20 GETTABLEKS                       R10 R1 K8 ["OnViewAllPermissionsPressed"]
       22 JUMPIFEQKNIL                     R10 ; [+104]
       24 GETUPVAL                         R12 0
       25 JUMPIFNOT                        R12 ; [+62]
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K9 ["createElement"]
       29 LOADK                            R12 K10 ["Frame"]
       30 DUPTABLE                         R13 K19 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2}]
       31 GETIMPORT                        R14 K22 [Vector2.new]
       33 LOADN                            R15 0
       34 LOADK                            R16 K23 [0.5]
       35 CALL                             R14 2 1
       36 SETTABLEKS                       R14 R13 K13 ["AnchorPoint"]
       38 GETIMPORT                        R14 K25 [UDim2.new]
       40 LOADN                            R15 0
       41 GETTABLEKS                       R16 R2 K26 ["buttonBar"]
       43 GETTABLEKS                       R16 R16 K27 ["edgePadding"]
       45 LOADK                            R17 K23 [0.5]
       46 LOADN                            R18 0
       47 CALL                             R14 4 1
       48 SETTABLEKS                       R14 R13 K14 ["Position"]
       50 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
       54 GETIMPORT                        R14 K32 [UDim2.fromOffset]
       56 LOADN                            R15 0
       57 LOADN                            R16 0
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K16 ["Size"]
       61 DUPTABLE                         R14 K34 [{"Link"}]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R15 R15 K9 ["createElement"]
       65 GETUPVAL                         R16 3
       66 GETTABLEKS                       R16 R16 K35 ["Button"]
       68 DUPTABLE                         R17 K41 [{["variant"], ["size"] = "Medium", ["text"], ["onActivated"]}]
       69 GETUPVAL                         R18 4
       70 GETTABLEKS                       R18 R18 K33 ["Link"]
       72 SETTABLEKS                       R18 R17 K36 ["variant"]
       74 LOADK                            R20 K42 ["Buttons"]
       75 LOADK                            R21 K43 ["ViewAllPermissionsInCreatorHub"]
       76 NAMECALL                         R18 R3 K44 ["getText"]
       78 CALL                             R18 3 1
       79 SETTABLEKS                       R18 R17 K39 ["text"]
       81 SETTABLEKS                       R10 R17 K40 ["onActivated"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K33 ["Link"]
       86 CALL                             R11 3 1
       87 JUMP                             ; [+40]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K9 ["createElement"]
       91 GETUPVAL                         R12 5
       92 DUPTABLE                         R13 K48 [{["AnchorPoint"], ["Position"], ["Text"], ["OnClick"], ["TextXAlignment"], ["ZIndex"] = 2}]
       93 GETIMPORT                        R14 K22 [Vector2.new]
       95 LOADN                            R15 0
       96 LOADK                            R16 K23 [0.5]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K13 ["AnchorPoint"]
      100 GETIMPORT                        R14 K25 [UDim2.new]
      102 LOADN                            R15 0
      103 GETTABLEKS                       R16 R2 K26 ["buttonBar"]
      105 GETTABLEKS                       R16 R16 K27 ["edgePadding"]
      107 LOADK                            R17 K23 [0.5]
      108 LOADN                            R18 0
      109 CALL                             R14 4 1
      110 SETTABLEKS                       R14 R13 K14 ["Position"]
      112 LOADK                            R16 K42 ["Buttons"]
      113 LOADK                            R17 K43 ["ViewAllPermissionsInCreatorHub"]
      114 NAMECALL                         R14 R3 K44 ["getText"]
      116 CALL                             R14 3 1
      117 SETTABLEKS                       R14 R13 K45 ["Text"]
      119 SETTABLEKS                       R10 R13 K46 ["OnClick"]
      121 GETIMPORT                        R14 K50 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R14 R13 K47 ["TextXAlignment"]
      125 CALL                             R11 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 GETUPVAL                         R13 0
      129 JUMPIFNOT                        R13 ; [+14]
      130 DUPTABLE                         R12 K52 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      131 LOADK                            R15 K42 ["Buttons"]
      132 LOADK                            R16 K53 ["Cancel"]
      133 NAMECALL                         R13 R3 K44 ["getText"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K39 ["text"]
      138 NEWCLOSURE                       R13 P0
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      143 JUMP                             ; [+13]
      144 DUPTABLE                         R12 K57 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      145 LOADK                            R15 K42 ["Buttons"]
      146 LOADK                            R16 K53 ["Cancel"]
      147 NAMECALL                         R13 R3 K44 ["getText"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K54 ["Name"]
      152 NEWCLOSURE                       R13 P1
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R13 R12 K55 ["OnPressed"]
      157 GETUPVAL                         R14 0
      158 JUMPIFNOT                        R14 ; [+17]
      159 DUPTABLE                         R13 K60 [{["text"], ["isDisabled"], ["onActivated"], ["variant"] = "Emphasis"}]
      160 LOADK                            R16 K42 ["Buttons"]
      161 LOADK                            R17 K61 ["Save"]
      162 NAMECALL                         R14 R3 K44 ["getText"]
      164 CALL                             R14 3 1
      165 SETTABLEKS                       R14 R13 K39 ["text"]
      167 NOT                              R14 R7
      168 SETTABLEKS                       R14 R13 K58 ["isDisabled"]
      170 NEWCLOSURE                       R14 P2
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R8
      173 SETTABLEKS                       R14 R13 K40 ["onActivated"]
      175 JUMP                             ; [+27]
      176 DUPTABLE                         R13 K65 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
      177 LOADK                            R16 K42 ["Buttons"]
      178 LOADK                            R17 K61 ["Save"]
      179 NAMECALL                         R14 R3 K44 ["getText"]
      181 CALL                             R14 3 1
      182 SETTABLEKS                       R14 R13 K54 ["Name"]
      184 NEWCLOSURE                       R14 P3
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R8
      187 SETTABLEKS                       R14 R13 K55 ["OnPressed"]
      189 JUMPIFNOT                        R7 ; [+2]
      190 LOADK                            R14 K66 ["Active"]
      191 JUMP                             ; [+1]
      192 LOADK                            R14 K67 ["Passive"]
      193 SETTABLEKS                       R14 R13 K56 ["Style"]
      195 JUMPIF                           R7 ; [+4]
      196 GETUPVAL                         R14 6
      197 GETTABLEKS                       R14 R14 K68 ["Disabled"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R14
      201 SETTABLEKS                       R14 R13 K64 ["StyleModifier"]
      203 GETUPVAL                         R14 1
      204 GETTABLEKS                       R14 R14 K9 ["createElement"]
      206 LOADK                            R15 K10 ["Frame"]
      207 DUPTABLE                         R16 K72 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      208 GETTABLEKS                       R17 R2 K73 ["backgroundColor"]
      210 SETTABLEKS                       R17 R16 K69 ["BackgroundColor3"]
      212 GETIMPORT                        R17 K75 [UDim2.fromScale]
      214 LOADN                            R18 1
      215 LOADN                            R19 1
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K16 ["Size"]
      219 GETTABLEKS                       R17 R2 K76 ["footer"]
      221 GETTABLEKS                       R17 R17 K77 ["border"]
      223 SETTABLEKS                       R17 R16 K71 ["BorderColor3"]
      225 DUPTABLE                         R17 K81 [{"Gradient", "ButtonBar", "ViewAllPermissionsLink"}]
      226 GETUPVAL                         R18 1
      227 GETTABLEKS                       R18 R18 K9 ["createElement"]
      229 LOADK                            R19 K82 ["ImageLabel"]
      230 DUPTABLE                         R20 K88 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      231 GETIMPORT                        R21 K25 [UDim2.new]
      233 LOADN                            R22 1
      234 LOADN                            R23 0
      235 LOADN                            R24 0
      236 GETTABLEKS                       R25 R2 K76 ["footer"]
      238 GETTABLEKS                       R25 R25 K89 ["gradientSize"]
      240 CALL                             R21 4 1
      241 SETTABLEKS                       R21 R20 K16 ["Size"]
      243 GETIMPORT                        R21 K22 [Vector2.new]
      245 LOADN                            R22 0
      246 LOADN                            R23 1
      247 CALL                             R21 2 1
      248 SETTABLEKS                       R21 R20 K13 ["AnchorPoint"]
      250 GETUPVAL                         R21 7
      251 GETTABLEKS                       R21 R21 K90 ["GRADIENT_IMAGE"]
      253 SETTABLEKS                       R21 R20 K83 ["Image"]
      255 GETUPVAL                         R21 7
      256 GETTABLEKS                       R21 R21 K91 ["GRADIENT_RECT_SIZE"]
      258 SETTABLEKS                       R21 R20 K84 ["ImageRectSize"]
      260 GETTABLEKS                       R21 R2 K76 ["footer"]
      262 GETTABLEKS                       R21 R21 K92 ["gradient"]
      264 SETTABLEKS                       R21 R20 K86 ["ImageColor3"]
      266 GETTABLEKS                       R21 R2 K76 ["footer"]
      268 GETTABLEKS                       R21 R21 K93 ["gradientTransparency"]
      270 SETTABLEKS                       R21 R20 K87 ["ImageTransparency"]
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R17 K78 ["Gradient"]
      275 GETUPVAL                         R18 1
      276 GETTABLEKS                       R18 R18 K9 ["createElement"]
      278 GETUPVAL                         R19 8
      279 DUPTABLE                         R20 K95 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"]}]
      280 NEWTABLE                         R21 0 2
      282 MOVE                             R22 R12
      283 MOVE                             R23 R13
      284 SETLIST                          R21 R22 2 [1]
      286 SETTABLEKS                       R21 R20 K42 ["Buttons"]
      288 GETIMPORT                        R21 K97 [Enum.HorizontalAlignment.Right]
      290 SETTABLEKS                       R21 R20 K94 ["HorizontalAlignment"]
      292 CALL                             R18 2 1
      293 SETTABLEKS                       R18 R17 K79 ["ButtonBar"]
      295 SETTABLEKS                       R11 R17 K80 ["ViewAllPermissionsLink"]
      297 CALL                             R14 3 -1
      298 RETURN                           R14 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K2 [{"HasUnsavedChanges", "HasCollaborators"}]
        4 SETTABLEKS                       R2 R3 K0 ["HasUnsavedChanges"]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["HasCollaborators"]
       11 RETURN                           R3 1

PROTO_6:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["Style"]
       38 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       40 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       42 GETTABLEKS                       R7 R6 K16 ["withContext"]
       44 GETTABLEKS                       R8 R6 K17 ["Localization"]
       46 GETTABLEKS                       R9 R4 K18 ["Util"]
       48 GETTABLEKS                       R10 R9 K19 ["StyleModifier"]
       50 GETIMPORT                        R11 K8 [require]
       52 GETTABLEKS                       R12 R1 K20 ["Src"]
       54 GETTABLEKS                       R12 R12 K21 ["Components"]
       56 GETTABLEKS                       R12 R12 K22 ["ButtonBar"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K8 [require]
       61 GETTABLEKS                       R13 R1 K20 ["Src"]
       63 GETTABLEKS                       R13 R13 K18 ["Util"]
       65 GETTABLEKS                       R13 R13 K23 ["Constants"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R4 K24 ["UI"]
       70 GETTABLEKS                       R13 R13 K25 ["LinkText"]
       72 LOADNIL                          R14
       73 LOADNIL                          R15
       74 LOADNIL                          R16
       75 JUMPIFNOT                        R0 ; [+20]
       76 GETIMPORT                        R17 K8 [require]
       78 GETTABLEKS                       R18 R1 K9 ["Packages"]
       80 GETTABLEKS                       R18 R18 K26 ["React"]
       82 CALL                             R17 1 1
       83 MOVE                             R14 R17
       84 GETIMPORT                        R17 K8 [require]
       86 GETTABLEKS                       R18 R1 K9 ["Packages"]
       88 GETTABLEKS                       R18 R18 K27 ["Foundation"]
       90 CALL                             R17 1 1
       91 MOVE                             R15 R17
       92 GETTABLEKS                       R17 R15 K28 ["Enums"]
       94 GETTABLEKS                       R16 R17 K29 ["ButtonVariant"]
       96 GETIMPORT                        R17 K8 [require]
       98 GETTABLEKS                       R18 R1 K20 ["Src"]
      100 GETTABLEKS                       R18 R18 K30 ["Selectors"]
      102 GETTABLEKS                       R18 R18 K31 ["GetHasCollaborators"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K8 [require]
      107 GETTABLEKS                       R19 R1 K20 ["Src"]
      109 GETTABLEKS                       R19 R19 K30 ["Selectors"]
      111 GETTABLEKS                       R19 R19 K32 ["GetHasUnsavedChanges"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R19 R2 K33 ["PureComponent"]
      116 LOADK                            R21 K34 ["Footer"]
      117 NAMECALL                         R19 R19 K35 ["extend"]
      119 CALL                             R19 2 1
      120 NEWCLOSURE                       R20 P0
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          REF R14
      124 CAPTURE                          REF R15
      125 CAPTURE                          REF R16
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 SETTABLEKS                       R20 R19 K36 ["render"]
      132 MOVE                             R20 R7
      133 DUPTABLE                         R21 K37 [{"Stylizer", "Localization"}]
      134 SETTABLEKS                       R5 R21 K14 ["Stylizer"]
      136 SETTABLEKS                       R8 R21 K17 ["Localization"]
      138 CALL                             R20 1 1
      139 MOVE                             R21 R19
      140 CALL                             R20 1 1
      141 MOVE                             R19 R20
      142 GETTABLEKS                       R20 R3 K38 ["connect"]
      144 DUPCLOSURE                       R21 K39 [PROTO_5]
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R17
      147 DUPCLOSURE                       R22 K40 [PROTO_6]
      148 CALL                             R20 2 1
      149 MOVE                             R21 R19
      150 CALL                             R20 1 1
      151 MOVE                             R19 R20
      152 CLOSEUPVALS                      R14
      153 RETURN                           R19 1
