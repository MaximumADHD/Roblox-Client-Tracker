PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["isNameDirty"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["props"]
       10 GETTABLEKS                       R0 R1 K3 ["ModerateDevSub"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["props"]
       15 GETTABLEKS                       R1 R2 K4 ["DeveloperSubscription"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["DeveloperSubscription"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["SetDevSubKey"]
       10 GETTABLEKS                       R4 R2 K3 ["Key"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 CALL                             R3 3 0
       15 SETTABLE                         R1 R2 R0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["props"]
       19 GETTABLEKS                       R3 R4 K4 ["OnDeveloperSubscriptionChanged"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["state"]
        9 GETTABLEKS                       R1 R2 K3 ["isNameDirty"]
       11 JUMPIF                           R1 ; [+8]
       12 GETUPVAL                         R1 0
       13 DUPTABLE                         R3 K4 [{"isNameDirty"}]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["isNameDirty"]
       17 NAMECALL                         R1 R1 K5 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CheckName"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Price"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Image"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Prepaid"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnEditFinished"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Localization"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["PromptForGameIcon"]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["onImageChanged"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["DeveloperSubscription"]
        5 GETTABLEKS                       R0 R1 K2 ["IsNew"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["props"]
       11 GETTABLEKS                       R0 R1 K3 ["OnDevSubDeleted"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["props"]
       16 GETTABLEKS                       R1 R2 K1 ["DeveloperSubscription"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K4 ["onBackButtonActivated"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K0 ["props"]
       27 GETTABLEKS                       R0 R1 K5 ["Localization"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K0 ["props"]
       32 GETTABLEKS                       R1 R2 K6 ["Dialog"]
       34 DUPTABLE                         R2 K11 [{"Title", "Header", "Description", "Buttons"}]
       35 LOADK                            R5 K12 ["General"]
       36 LOADK                            R6 K13 ["DevSubsDeleteTitle"]
       37 NAMECALL                         R3 R0 K14 ["getText"]
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R2 K7 ["Title"]
       42 LOADK                            R5 K12 ["General"]
       43 LOADK                            R6 K15 ["DevSubsDeleteHeader"]
       44 NAMECALL                         R3 R0 K14 ["getText"]
       46 CALL                             R3 3 1
       47 SETTABLEKS                       R3 R2 K8 ["Header"]
       49 LOADK                            R5 K12 ["General"]
       50 LOADK                            R6 K16 ["DevSubsDeleteDescription"]
       51 NAMECALL                         R3 R0 K14 ["getText"]
       53 CALL                             R3 3 1
       54 SETTABLEKS                       R3 R2 K9 ["Description"]
       56 NEWTABLE                         R3 0 2
       58 LOADK                            R6 K12 ["General"]
       59 LOADK                            R7 K17 ["ButtonCancel"]
       60 NAMECALL                         R4 R0 K14 ["getText"]
       62 CALL                             R4 3 1
       63 LOADK                            R7 K12 ["General"]
       64 LOADK                            R8 K18 ["DevSubsDeleteConfirm"]
       65 NAMECALL                         R5 R0 K14 ["getText"]
       67 CALL                             R5 3 -1
       68 SETLIST                          R3 R4 -1 [1]
       70 SETTABLEKS                       R3 R2 K10 ["Buttons"]
       72 GETTABLEKS                       R3 R1 K19 ["showDialog"]
       74 GETUPVAL                         R4 1
       75 MOVE                             R5 R2
       76 CALL                             R3 2 1
       77 NAMECALL                         R3 R3 K20 ["await"]
       79 CALL                             R3 1 1
       80 JUMPIFNOT                        R3 ; [+11]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R5 R6 K0 ["props"]
       84 GETTABLEKS                       R4 R5 K3 ["OnDevSubDeleted"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R6 R7 K0 ["props"]
       89 GETTABLEKS                       R5 R6 K1 ["DeveloperSubscription"]
       91 CALL                             R4 1 0
       92 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"isNameDirty"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isNameDirty"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["CheckName"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onKeyChanged"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onNameChanged"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onNameFocusChanged"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["onPriceChanged"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K8 ["onImageChanged"]
       30 NEWCLOSURE                       R1 P6
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K9 ["onPrepaidChanged"]
       34 NEWCLOSURE                       R1 P7
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K10 ["onBackButtonActivated"]
       38 NEWCLOSURE                       R1 P8
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 SETTABLEKS                       R1 R0 K11 ["setImage"]
       43 NEWCLOSURE                       R1 P9
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U1
       46 SETTABLEKS                       R1 R0 K12 ["onDeleteClicked"]
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onBackButtonActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Id"]
        4 NAMECALL                         R0 R0 K1 ["CopyToClipboard"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onPrepaidChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["DeveloperSubscription"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["ModeratedDevSub"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["DevSubErrors"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["Stylizer"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["Localization"]
       20 GETTABLEKS                       R6 R1 K6 ["IsNew"]
       22 JUMPIF                           R6 ; [+2]
       23 GETTABLEKS                       R6 R1 K7 ["Active"]
       25 GETTABLEKS                       R7 R1 K6 ["IsNew"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K8 ["new"]
       30 CALL                             R8 0 1
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 JUMPIFNOT                        R6 ; [+76]
       35 GETTABLEKS                       R12 R3 K9 ["Name"]
       37 JUMPIFNOT                        R12 ; [+29]
       38 GETTABLEKS                       R13 R3 K9 ["Name"]
       40 GETTABLEKS                       R12 R13 K10 ["Empty"]
       42 JUMPIFNOT                        R12 ; [+7]
       43 LOADK                            R14 K11 ["General"]
       44 LOADK                            R15 K12 ["ErrorNameEmpty"]
       45 NAMECALL                         R12 R5 K13 ["getText"]
       47 CALL                             R12 3 1
       48 MOVE                             R9 R12
       49 JUMP                             ; [+17]
       50 GETTABLEKS                       R13 R3 K9 ["Name"]
       52 GETTABLEKS                       R12 R13 K14 ["Moderated"]
       54 JUMPIFNOT                        R12 ; [+12]
       55 JUMPIFNOT                        R2 ; [+11]
       56 LOADK                            R14 K11 ["General"]
       57 LOADK                            R15 K15 ["ErrorDevSubFiltered"]
       58 DUPTABLE                         R16 K17 [{"filteredText"}]
       59 GETTABLEKS                       R17 R2 K18 ["filteredName"]
       61 SETTABLEKS                       R17 R16 K16 ["filteredText"]
       63 NAMECALL                         R12 R5 K13 ["getText"]
       65 CALL                             R12 4 1
       66 MOVE                             R9 R12
       67 GETTABLEKS                       R12 R1 K6 ["IsNew"]
       69 JUMPIFNOT                        R12 ; [+32]
       70 GETTABLEKS                       R12 R3 K19 ["Price"]
       72 JUMPIFNOT                        R12 ; [+29]
       73 GETTABLEKS                       R13 R3 K19 ["Price"]
       75 GETTABLEKS                       R12 R13 K20 ["NotANumber"]
       77 JUMPIFNOT                        R12 ; [+7]
       78 LOADK                            R14 K11 ["General"]
       79 LOADK                            R15 K21 ["ErrorDevSubInvalidPrice"]
       80 NAMECALL                         R12 R5 K13 ["getText"]
       82 CALL                             R12 3 1
       83 MOVE                             R10 R12
       84 JUMP                             ; [+17]
       85 GETUPVAL                         R12 1
       86 JUMPIFNOT                        R12 ; [+15]
       87 GETTABLEKS                       R13 R3 K19 ["Price"]
       89 GETTABLEKS                       R12 R13 K22 ["AboveMaxRobuxAmount"]
       91 JUMPIFNOT                        R12 ; [+10]
       92 LOADK                            R14 K11 ["General"]
       93 LOADK                            R15 K23 ["ErrorDevSubMaxPrice"]
       94 DUPTABLE                         R16 K25 [{"maxRobuxAmount"}]
       95 GETUPVAL                         R17 1
       96 SETTABLEKS                       R17 R16 K24 ["maxRobuxAmount"]
       98 NAMECALL                         R12 R5 K13 ["getText"]
      100 CALL                             R12 4 1
      101 MOVE                             R10 R12
      102 GETTABLEKS                       R12 R3 K26 ["Image"]
      104 JUMPIFNOT                        R12 ; [+6]
      105 LOADK                            R14 K11 ["General"]
      106 LOADK                            R15 K27 ["ErrorImageRequired"]
      107 NAMECALL                         R12 R5 K13 ["getText"]
      109 CALL                             R12 3 1
      110 MOVE                             R11 R12
      111 NEWTABLE                         R12 0 2
      113 DUPTABLE                         R13 K30 [{"Id", "Label"}]
      114 LOADN                            R14 6
      115 SETTABLEKS                       R14 R13 K28 ["Id"]
      117 LOADK                            R16 K11 ["General"]
      118 LOADK                            R17 K31 ["DevSubsDuration6Months"]
      119 NAMECALL                         R14 R5 K13 ["getText"]
      121 CALL                             R14 3 1
      122 SETTABLEKS                       R14 R13 K29 ["Label"]
      124 DUPTABLE                         R14 K30 [{"Id", "Label"}]
      125 LOADN                            R15 12
      126 SETTABLEKS                       R15 R14 K28 ["Id"]
      128 LOADK                            R17 K11 ["General"]
      129 LOADK                            R18 K32 ["DevSubsDuration12Months"]
      130 NAMECALL                         R15 R5 K13 ["getText"]
      132 CALL                             R15 3 1
      133 SETTABLEKS                       R15 R14 K29 ["Label"]
      135 SETLIST                          R12 R13 2 [1]
      137 GETUPVAL                         R13 2
      138 GETTABLEKS                       R14 R1 K28 ["Id"]
      140 GETTABLEKS                       R17 R4 K33 ["fontStyle"]
      142 GETTABLEKS                       R16 R17 K34 ["Normal"]
      144 GETTABLEKS                       R15 R16 K35 ["TextSize"]
      146 GETTABLEKS                       R18 R4 K33 ["fontStyle"]
      148 GETTABLEKS                       R17 R18 K34 ["Normal"]
      150 GETTABLEKS                       R16 R17 K36 ["Font"]
      152 CALL                             R13 3 1
      153 GETTABLEKS                       R16 R4 K33 ["fontStyle"]
      155 GETTABLEKS                       R15 R16 K34 ["Normal"]
      157 GETTABLEKS                       R14 R15 K35 ["TextSize"]
      159 DUPTABLE                         R15 K43 [{"HeaderFrame", "IdFrame", "NameFrame", "Image", "PriceFrame", "PrepaidFrame", "EarningFrame"}]
      160 GETUPVAL                         R17 3
      161 GETTABLEKS                       R16 R17 K44 ["createElement"]
      163 GETUPVAL                         R17 4
      164 DUPTABLE                         R18 K50 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
      165 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      167 CALL                             R19 1 1
      168 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      170 LOADN                            R19 1
      171 SETTABLEKS                       R19 R18 K46 ["BackgroundTransparency"]
      173 GETUPVAL                         R21 4
      174 GETTABLEKS                       R20 R21 K52 ["Axis"]
      176 GETTABLEKS                       R19 R20 K53 ["Vertical"]
      178 SETTABLEKS                       R19 R18 K47 ["axis"]
      180 GETIMPORT                        R19 K55 [UDim2.new]
      182 LOADN                            R20 1
      183 LOADN                            R21 0
      184 LOADN                            R22 0
      185 LOADN                            R23 0
      186 CALL                             R19 4 1
      187 SETTABLEKS                       R19 R18 K48 ["minimumSize"]
      189 GETIMPORT                        R19 K57 [UDim.new]
      191 LOADN                            R20 0
      192 GETTABLEKS                       R22 R4 K58 ["settingsPage"]
      194 GETTABLEKS                       R21 R22 K59 ["headerPadding"]
      196 CALL                             R19 2 1
      197 SETTABLEKS                       R19 R18 K49 ["contentPadding"]
      199 NEWTABLE                         R19 2 1
      201 GETUPVAL                         R22 3
      202 GETTABLEKS                       R21 R22 K44 ["createElement"]
      204 LOADK                            R22 K60 ["ImageButton"]
      205 NEWTABLE                         R23 8 0
      207 GETIMPORT                        R24 K55 [UDim2.new]
      209 LOADN                            R25 0
      210 GETTABLEKS                       R27 R4 K61 ["backButton"]
      212 GETTABLEKS                       R26 R27 K62 ["size"]
      214 LOADN                            R27 0
      215 GETTABLEKS                       R29 R4 K61 ["backButton"]
      217 GETTABLEKS                       R28 R29 K62 ["size"]
      219 CALL                             R24 4 1
      220 SETTABLEKS                       R24 R23 K63 ["Size"]
      222 LOADN                            R24 0
      223 SETTABLEKS                       R24 R23 K45 ["LayoutOrder"]
      225 GETTABLEKS                       R25 R4 K61 ["backButton"]
      227 GETTABLEKS                       R24 R25 K64 ["image"]
      229 SETTABLEKS                       R24 R23 K26 ["Image"]
      231 LOADN                            R24 1
      232 SETTABLEKS                       R24 R23 K46 ["BackgroundTransparency"]
      234 GETUPVAL                         R26 3
      235 GETTABLEKS                       R25 R26 K65 ["Event"]
      237 GETTABLEKS                       R24 R25 K66 ["Activated"]
      239 NEWCLOSURE                       R25 P0
      240 CAPTURE                          VAL R0
      241 SETTABLE                         R25 R23 R24
      242 NEWTABLE                         R24 0 1
      244 GETUPVAL                         R26 3
      245 GETTABLEKS                       R25 R26 K44 ["createElement"]
      247 GETUPVAL                         R26 5
      248 DUPTABLE                         R27 K68 [{"Cursor"}]
      249 LOADK                            R28 K69 ["PointingHand"]
      250 SETTABLEKS                       R28 R27 K67 ["Cursor"]
      252 CALL                             R25 2 -1
      253 SETLIST                          R24 R25 -1 [1]
      255 CALL                             R21 3 1
      256 SETTABLEKS                       R21 R19 K70 ["BackButton"]
      258 GETUPVAL                         R21 3
      259 GETTABLEKS                       R20 R21 K44 ["createElement"]
      261 GETUPVAL                         R21 6
      262 DUPTABLE                         R22 K71 [{"LayoutOrder"}]
      263 LOADN                            R23 1
      264 SETTABLEKS                       R23 R22 K45 ["LayoutOrder"]
      266 CALL                             R20 2 1
      267 SETLIST                          R19 R20 1 [1]
      269 GETUPVAL                         R22 3
      270 GETTABLEKS                       R21 R22 K44 ["createElement"]
      272 LOADK                            R22 K72 ["TextLabel"]
      273 GETUPVAL                         R25 7
      274 GETTABLEKS                       R24 R25 K73 ["Dictionary"]
      276 GETTABLEKS                       R23 R24 K74 ["join"]
      278 GETTABLEKS                       R25 R4 K33 ["fontStyle"]
      280 GETTABLEKS                       R24 R25 K75 ["Title"]
      282 DUPTABLE                         R25 K80 [{"Size", "Text", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      283 GETIMPORT                        R26 K55 [UDim2.new]
      285 LOADN                            R27 1
      286 LOADN                            R28 0
      287 LOADN                            R29 0
      288 GETUPVAL                         R31 8
      289 GETTABLEKS                       R30 R31 K81 ["HEADER_HEIGHT"]
      291 CALL                             R26 4 1
      292 SETTABLEKS                       R26 R25 K63 ["Size"]
      294 GETTABLEKS                       R27 R1 K6 ["IsNew"]
      296 JUMPIFNOT                        R27 ; [+6]
      297 LOADK                            R28 K11 ["General"]
      298 LOADK                            R29 K82 ["DevSubsNewHeader"]
      299 NAMECALL                         R26 R5 K13 ["getText"]
      301 CALL                             R26 3 1
      302 JUMPIF                           R26 ; [+5]
      303 LOADK                            R28 K11 ["General"]
      304 LOADK                            R29 K83 ["DevSubsEditHeader"]
      305 NAMECALL                         R26 R5 K13 ["getText"]
      307 CALL                             R26 3 1
      308 SETTABLEKS                       R26 R25 K76 ["Text"]
      310 LOADN                            R26 1
      311 SETTABLEKS                       R26 R25 K46 ["BackgroundTransparency"]
      313 LOADN                            R26 0
      314 SETTABLEKS                       R26 R25 K77 ["BorderSizePixel"]
      316 GETIMPORT                        R26 K86 [Enum.TextXAlignment.Left]
      318 SETTABLEKS                       R26 R25 K78 ["TextXAlignment"]
      320 GETIMPORT                        R26 K88 [Enum.TextYAlignment.Center]
      322 SETTABLEKS                       R26 R25 K79 ["TextYAlignment"]
      324 LOADN                            R26 2
      325 SETTABLEKS                       R26 R25 K45 ["LayoutOrder"]
      327 CALL                             R23 2 1
      328 DUPTABLE                         R24 K92 [{"Padding", "Layout", "Button"}]
      329 GETUPVAL                         R26 3
      330 GETTABLEKS                       R25 R26 K44 ["createElement"]
      332 LOADK                            R26 K93 ["UIPadding"]
      333 DUPTABLE                         R27 K95 [{"PaddingRight"}]
      334 GETIMPORT                        R28 K57 [UDim.new]
      336 LOADN                            R29 0
      337 LOADN                            R30 12
      338 CALL                             R28 2 1
      339 SETTABLEKS                       R28 R27 K94 ["PaddingRight"]
      341 CALL                             R25 2 1
      342 SETTABLEKS                       R25 R24 K89 ["Padding"]
      344 GETUPVAL                         R26 3
      345 GETTABLEKS                       R25 R26 K44 ["createElement"]
      347 LOADK                            R26 K96 ["UIListLayout"]
      348 DUPTABLE                         R27 K99 [{"HorizontalAlignment", "VerticalAlignment"}]
      349 GETIMPORT                        R28 K101 [Enum.HorizontalAlignment.Right]
      351 SETTABLEKS                       R28 R27 K97 ["HorizontalAlignment"]
      353 GETIMPORT                        R28 K103 [Enum.VerticalAlignment.Bottom]
      355 SETTABLEKS                       R28 R27 K98 ["VerticalAlignment"]
      357 CALL                             R25 2 1
      358 SETTABLEKS                       R25 R24 K90 ["Layout"]
      360 GETUPVAL                         R26 3
      361 GETTABLEKS                       R25 R26 K44 ["createElement"]
      363 GETUPVAL                         R26 9
      364 DUPTABLE                         R27 K106 [{"Text", "OnClick", "Style"}]
      365 LOADK                            R30 K11 ["General"]
      366 LOADK                            R31 K107 ["DevSubsDeleteAction"]
      367 NAMECALL                         R28 R5 K13 ["getText"]
      369 CALL                             R28 3 1
      370 SETTABLEKS                       R28 R27 K76 ["Text"]
      372 GETTABLEKS                       R28 R0 K108 ["onDeleteClicked"]
      374 SETTABLEKS                       R28 R27 K104 ["OnClick"]
      376 LOADK                            R28 K109 ["Round"]
      377 SETTABLEKS                       R28 R27 K105 ["Style"]
      379 CALL                             R25 2 1
      380 SETTABLEKS                       R25 R24 K91 ["Button"]
      382 CALL                             R21 3 1
      383 SETTABLEKS                       R21 R19 K110 ["Header"]
      385 CALL                             R16 3 1
      386 SETTABLEKS                       R16 R15 K37 ["HeaderFrame"]
      388 NOT                              R16 R7
      389 JUMPIFNOT                        R16 ; [+117]
      390 GETUPVAL                         R17 3
      391 GETTABLEKS                       R16 R17 K44 ["createElement"]
      393 GETUPVAL                         R17 10
      394 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      395 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      397 CALL                             R19 1 1
      398 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      400 LOADK                            R21 K11 ["General"]
      401 LOADK                            R22 K112 ["DevSubsId"]
      402 NAMECALL                         R19 R5 K13 ["getText"]
      404 CALL                             R19 3 1
      405 SETTABLEKS                       R19 R18 K75 ["Title"]
      407 DUPTABLE                         R19 K113 [{"Layout", "Text", "Button"}]
      408 GETUPVAL                         R21 3
      409 GETTABLEKS                       R20 R21 K44 ["createElement"]
      411 LOADK                            R21 K96 ["UIListLayout"]
      412 DUPTABLE                         R22 K116 [{"SortOrder", "FillDirection", "VerticalAlignment"}]
      413 GETIMPORT                        R23 K117 [Enum.SortOrder.LayoutOrder]
      415 SETTABLEKS                       R23 R22 K114 ["SortOrder"]
      417 GETIMPORT                        R23 K119 [Enum.FillDirection.Horizontal]
      419 SETTABLEKS                       R23 R22 K115 ["FillDirection"]
      421 GETIMPORT                        R23 K121 [Enum.VerticalAlignment.Top]
      423 SETTABLEKS                       R23 R22 K98 ["VerticalAlignment"]
      425 CALL                             R20 2 1
      426 SETTABLEKS                       R20 R19 K90 ["Layout"]
      428 GETUPVAL                         R21 3
      429 GETTABLEKS                       R20 R21 K44 ["createElement"]
      431 GETUPVAL                         R21 11
      432 DUPTABLE                         R22 K123 [{"Text", "Size", "Alignment", "LayoutOrder"}]
      433 GETTABLEKS                       R23 R1 K28 ["Id"]
      435 SETTABLEKS                       R23 R22 K76 ["Text"]
      437 GETIMPORT                        R23 K55 [UDim2.new]
      439 LOADN                            R24 0
      440 GETTABLEKS                       R25 R13 K124 ["X"]
      442 LOADK                            R26 K125 [0.5]
      443 LOADN                            R27 0
      444 CALL                             R23 4 1
      445 SETTABLEKS                       R23 R22 K63 ["Size"]
      447 GETIMPORT                        R23 K86 [Enum.TextXAlignment.Left]
      449 SETTABLEKS                       R23 R22 K122 ["Alignment"]
      451 LOADN                            R23 1
      452 SETTABLEKS                       R23 R22 K45 ["LayoutOrder"]
      454 CALL                             R20 2 1
      455 SETTABLEKS                       R20 R19 K76 ["Text"]
      457 GETUPVAL                         R21 3
      458 GETTABLEKS                       R20 R21 K44 ["createElement"]
      460 LOADK                            R21 K60 ["ImageButton"]
      461 NEWTABLE                         R22 8 0
      463 LOADN                            R23 1
      464 SETTABLEKS                       R23 R22 K46 ["BackgroundTransparency"]
      466 GETTABLEKS                       R24 R4 K126 ["copyButton"]
      468 GETTABLEKS                       R23 R24 K64 ["image"]
      470 SETTABLEKS                       R23 R22 K26 ["Image"]
      472 GETTABLEKS                       R24 R4 K126 ["copyButton"]
      474 GETTABLEKS                       R23 R24 K127 ["imageColor"]
      476 SETTABLEKS                       R23 R22 K128 ["ImageColor3"]
      478 GETIMPORT                        R23 K55 [UDim2.new]
      480 LOADN                            R24 0
      481 LOADN                            R25 16
      482 LOADN                            R26 0
      483 LOADN                            R27 16
      484 CALL                             R23 4 1
      485 SETTABLEKS                       R23 R22 K63 ["Size"]
      487 GETIMPORT                        R23 K131 [Enum.SizeConstraint.RelativeYY]
      489 SETTABLEKS                       R23 R22 K129 ["SizeConstraint"]
      491 LOADN                            R23 2
      492 SETTABLEKS                       R23 R22 K45 ["LayoutOrder"]
      494 GETUPVAL                         R25 3
      495 GETTABLEKS                       R24 R25 K65 ["Event"]
      497 GETTABLEKS                       R23 R24 K66 ["Activated"]
      499 NEWCLOSURE                       R24 P1
      500 CAPTURE                          UPVAL U12
      501 CAPTURE                          VAL R1
      502 SETTABLE                         R24 R22 R23
      503 CALL                             R20 2 1
      504 SETTABLEKS                       R20 R19 K91 ["Button"]
      506 CALL                             R16 3 1
      507 SETTABLEKS                       R16 R15 K38 ["IdFrame"]
      509 GETUPVAL                         R17 3
      510 GETTABLEKS                       R16 R17 K44 ["createElement"]
      512 GETUPVAL                         R17 10
      513 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      514 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      516 CALL                             R19 1 1
      517 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      519 LOADK                            R21 K11 ["General"]
      520 LOADK                            R22 K132 ["DevSubsName"]
      521 NAMECALL                         R19 R5 K13 ["getText"]
      523 CALL                             R19 3 1
      524 SETTABLEKS                       R19 R18 K75 ["Title"]
      526 DUPTABLE                         R19 K134 [{"TextBox"}]
      527 GETUPVAL                         R21 3
      528 GETTABLEKS                       R20 R21 K44 ["createElement"]
      530 GETUPVAL                         R21 13
      531 DUPTABLE                         R22 K140 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "OnFocusLost", "Text"}]
      532 NOT                              R23 R6
      533 SETTABLEKS                       R23 R22 K135 ["Disabled"]
      535 SETTABLEKS                       R9 R22 K136 ["ErrorText"]
      537 LOADN                            R23 32
      538 SETTABLEKS                       R23 R22 K137 ["MaxLength"]
      540 GETTABLEKS                       R23 R0 K141 ["onNameChanged"]
      542 SETTABLEKS                       R23 R22 K138 ["OnTextChanged"]
      544 GETTABLEKS                       R23 R0 K142 ["onNameFocusChanged"]
      546 SETTABLEKS                       R23 R22 K139 ["OnFocusLost"]
      548 GETTABLEKS                       R24 R1 K9 ["Name"]
      550 ORK                              R23 R24 K143 [""]
      551 SETTABLEKS                       R23 R22 K76 ["Text"]
      553 CALL                             R20 2 1
      554 SETTABLEKS                       R20 R19 K133 ["TextBox"]
      556 CALL                             R16 3 1
      557 SETTABLEKS                       R16 R15 K39 ["NameFrame"]
      559 JUMPIFNOT                        R6 ; [+35]
      560 GETUPVAL                         R17 3
      561 GETTABLEKS                       R16 R17 K44 ["createElement"]
      563 GETUPVAL                         R17 14
      564 DUPTABLE                         R18 K149 [{"Title", "Enabled", "Icon", "LayoutOrder", "TutorialEnabled", "ErrorMessage", "AddIcon"}]
      565 LOADK                            R21 K11 ["General"]
      566 LOADK                            R22 K150 ["DevSubsImage"]
      567 NAMECALL                         R19 R5 K13 ["getText"]
      569 CALL                             R19 3 1
      570 SETTABLEKS                       R19 R18 K75 ["Title"]
      572 LOADB                            R19 1
      573 SETTABLEKS                       R19 R18 K144 ["Enabled"]
      575 GETTABLEKS                       R19 R1 K26 ["Image"]
      577 SETTABLEKS                       R19 R18 K145 ["Icon"]
      579 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      581 CALL                             R19 1 1
      582 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      584 LOADB                            R19 0
      585 SETTABLEKS                       R19 R18 K146 ["TutorialEnabled"]
      587 SETTABLEKS                       R11 R18 K147 ["ErrorMessage"]
      589 GETTABLEKS                       R19 R0 K151 ["setImage"]
      591 SETTABLEKS                       R19 R18 K148 ["AddIcon"]
      593 CALL                             R16 2 1
      594 JUMPIF                           R16 ; [+40]
      595 GETUPVAL                         R17 3
      596 GETTABLEKS                       R16 R17 K44 ["createElement"]
      598 GETUPVAL                         R17 10
      599 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      600 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      602 CALL                             R19 1 1
      603 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      605 LOADK                            R21 K11 ["General"]
      606 LOADK                            R22 K150 ["DevSubsImage"]
      607 NAMECALL                         R19 R5 K13 ["getText"]
      609 CALL                             R19 3 1
      610 SETTABLEKS                       R19 R18 K75 ["Title"]
      612 DUPTABLE                         R19 K152 [{"Image"}]
      613 GETUPVAL                         R21 3
      614 GETTABLEKS                       R20 R21 K44 ["createElement"]
      616 LOADK                            R21 K153 ["ImageLabel"]
      617 DUPTABLE                         R22 K154 [{"Image", "Size"}]
      618 GETTABLEKS                       R23 R1 K26 ["Image"]
      620 SETTABLEKS                       R23 R22 K26 ["Image"]
      622 GETIMPORT                        R23 K55 [UDim2.new]
      624 LOADN                            R24 0
      625 LOADN                            R25 150
      626 LOADN                            R26 0
      627 LOADN                            R27 150
      628 CALL                             R23 4 1
      629 SETTABLEKS                       R23 R22 K63 ["Size"]
      631 CALL                             R20 2 1
      632 SETTABLEKS                       R20 R19 K26 ["Image"]
      634 CALL                             R16 3 1
      635 SETTABLEKS                       R16 R15 K26 ["Image"]
      637 GETUPVAL                         R17 3
      638 GETTABLEKS                       R16 R17 K44 ["createElement"]
      640 GETUPVAL                         R17 10
      641 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      642 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      644 CALL                             R19 1 1
      645 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      647 LOADK                            R21 K11 ["General"]
      648 LOADK                            R22 K155 ["DevSubsPrice"]
      649 NAMECALL                         R19 R5 K13 ["getText"]
      651 CALL                             R19 3 1
      652 SETTABLEKS                       R19 R18 K75 ["Title"]
      654 DUPTABLE                         R19 K157 [{"Input"}]
      655 GETUPVAL                         R21 3
      656 GETTABLEKS                       R20 R21 K44 ["createElement"]
      658 GETUPVAL                         R21 13
      659 DUPTABLE                         R22 K160 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "Text", "Size", "LeadingComponent", "LeadingComponentProps"}]
      660 GETTABLEKS                       R24 R1 K6 ["IsNew"]
      662 NOT                              R23 R24
      663 SETTABLEKS                       R23 R22 K135 ["Disabled"]
      665 SETTABLEKS                       R10 R22 K136 ["ErrorText"]
      667 LOADK                            R23 K161 [50000]
      668 SETTABLEKS                       R23 R22 K137 ["MaxLength"]
      670 GETTABLEKS                       R23 R0 K162 ["onPriceChanged"]
      672 SETTABLEKS                       R23 R22 K138 ["OnTextChanged"]
      674 GETTABLEKS                       R24 R1 K19 ["Price"]
      676 FASTCALL1                        TOSTRING R24 ; [+2]
      677 GETIMPORT                        R23 K164 [tostring]
      679 CALL                             R23 1 1
      680 SETTABLEKS                       R23 R22 K76 ["Text"]
      682 GETIMPORT                        R23 K55 [UDim2.new]
      684 LOADN                            R24 0
      685 LOADN                            R25 200
      686 LOADN                            R26 0
      687 LOADN                            R27 32
      688 CALL                             R23 4 1
      689 SETTABLEKS                       R23 R22 K63 ["Size"]
      691 GETUPVAL                         R23 15
      692 SETTABLEKS                       R23 R22 K158 ["LeadingComponent"]
      694 DUPTABLE                         R23 K165 [{"Size", "Image", "ImageColor3"}]
      695 GETIMPORT                        R24 K55 [UDim2.new]
      697 LOADN                            R25 0
      698 MOVE                             R26 R14
      699 LOADN                            R27 0
      700 MOVE                             R28 R14
      701 CALL                             R24 4 1
      702 SETTABLEKS                       R24 R23 K63 ["Size"]
      704 GETTABLEKS                       R26 R4 K166 ["robuxFeeBase"]
      706 GETTABLEKS                       R25 R26 K167 ["icon"]
      708 GETTABLEKS                       R24 R25 K64 ["image"]
      710 SETTABLEKS                       R24 R23 K26 ["Image"]
      712 GETIMPORT                        R24 K170 [Color3.fromRGB]
      714 LOADN                            R25 25
      715 LOADN                            R26 25
      716 LOADN                            R27 25
      717 CALL                             R24 3 1
      718 SETTABLEKS                       R24 R23 K128 ["ImageColor3"]
      720 SETTABLEKS                       R23 R22 K159 ["LeadingComponentProps"]
      722 CALL                             R20 2 1
      723 SETTABLEKS                       R20 R19 K156 ["Input"]
      725 CALL                             R16 3 1
      726 SETTABLEKS                       R16 R15 K40 ["PriceFrame"]
      728 GETUPVAL                         R17 3
      729 GETTABLEKS                       R16 R17 K44 ["createElement"]
      731 GETUPVAL                         R17 10
      732 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      733 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      735 CALL                             R19 1 1
      736 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      738 LOADK                            R21 K11 ["General"]
      739 LOADK                            R22 K171 ["DevSubsDuration"]
      740 NAMECALL                         R19 R5 K13 ["getText"]
      742 CALL                             R19 3 1
      743 SETTABLEKS                       R19 R18 K75 ["Title"]
      745 DUPTABLE                         R19 K173 [{"Selector"}]
      746 GETUPVAL                         R21 3
      747 GETTABLEKS                       R20 R21 K44 ["createElement"]
      749 GETUPVAL                         R21 16
      750 DUPTABLE                         R22 K177 [{"Items", "Enabled", "SelectedId", "OnItemActivated"}]
      751 SETTABLEKS                       R12 R22 K174 ["Items"]
      753 GETTABLEKS                       R24 R1 K178 ["Prepaid"]
      755 JUMPIFNOTEQKNIL                  R24 ; [+2]
      757 LOADB                            R23 0 +1
      758 LOADB                            R23 1
      759 SETTABLEKS                       R23 R22 K144 ["Enabled"]
      761 GETTABLEKS                       R23 R1 K178 ["Prepaid"]
      763 SETTABLEKS                       R23 R22 K175 ["SelectedId"]
      765 NEWCLOSURE                       R23 P2
      766 CAPTURE                          VAL R0
      767 SETTABLEKS                       R23 R22 K176 ["OnItemActivated"]
      769 CALL                             R20 2 1
      770 SETTABLEKS                       R20 R19 K172 ["Selector"]
      772 CALL                             R16 3 1
      773 SETTABLEKS                       R16 R15 K41 ["PrepaidFrame"]
      775 NOT                              R16 R7
      776 JUMPIFNOT                        R16 ; [+48]
      777 GETUPVAL                         R17 3
      778 GETTABLEKS                       R16 R17 K44 ["createElement"]
      780 GETUPVAL                         R17 10
      781 DUPTABLE                         R18 K111 [{"LayoutOrder", "Title"}]
      782 NAMECALL                         R19 R8 K51 ["getNextOrder"]
      784 CALL                             R19 1 1
      785 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      787 LOADK                            R21 K11 ["General"]
      788 LOADK                            R22 K179 ["DevSubsPendingEarning"]
      789 NAMECALL                         R19 R5 K13 ["getText"]
      791 CALL                             R19 3 1
      792 SETTABLEKS                       R19 R18 K75 ["Title"]
      794 DUPTABLE                         R19 K180 [{"Text"}]
      795 GETUPVAL                         R21 3
      796 GETTABLEKS                       R20 R21 K44 ["createElement"]
      798 GETUPVAL                         R21 11
      799 DUPTABLE                         R22 K181 [{"Text", "Size", "Alignment"}]
      800 GETTABLEKS                       R24 R1 K182 ["PendingEarning"]
      802 FASTCALL1                        TOSTRING R24 ; [+2]
      803 GETIMPORT                        R23 K164 [tostring]
      805 CALL                             R23 1 1
      806 SETTABLEKS                       R23 R22 K76 ["Text"]
      808 GETIMPORT                        R23 K55 [UDim2.new]
      810 LOADN                            R24 1
      811 LOADN                            R25 0
      812 LOADK                            R26 K125 [0.5]
      813 LOADN                            R27 0
      814 CALL                             R23 4 1
      815 SETTABLEKS                       R23 R22 K63 ["Size"]
      817 GETIMPORT                        R23 K86 [Enum.TextXAlignment.Left]
      819 SETTABLEKS                       R23 R22 K122 ["Alignment"]
      821 CALL                             R20 2 1
      822 SETTABLEKS                       R20 R19 K76 ["Text"]
      824 CALL                             R16 3 1
      825 SETTABLEKS                       R16 R15 K42 ["EarningFrame"]
      827 GETUPVAL                         R17 3
      828 GETTABLEKS                       R16 R17 K44 ["createElement"]
      830 GETUPVAL                         R17 17
      831 DUPTABLE                         R18 K185 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
      832 GETIMPORT                        R19 K187 [Enum.AutomaticSize.Y]
      834 SETTABLEKS                       R19 R18 K183 ["AutomaticSize"]
      836 GETIMPORT                        R19 K188 [Enum.HorizontalAlignment.Left]
      838 SETTABLEKS                       R19 R18 K97 ["HorizontalAlignment"]
      840 GETTABLEKS                       R21 R0 K0 ["props"]
      842 GETTABLEKS                       R20 R21 K45 ["LayoutOrder"]
      844 ORK                              R19 R20 K189 [1]
      845 SETTABLEKS                       R19 R18 K45 ["LayoutOrder"]
      847 GETIMPORT                        R19 K190 [Enum.FillDirection.Vertical]
      849 SETTABLEKS                       R19 R18 K90 ["Layout"]
      851 GETIMPORT                        R19 K57 [UDim.new]
      853 LOADN                            R20 0
      854 GETUPVAL                         R22 8
      855 GETTABLEKS                       R21 R22 K191 ["ELEMENT_PADDING"]
      857 CALL                             R19 2 1
      858 SETTABLEKS                       R19 R18 K184 ["Spacing"]
      860 MOVE                             R19 R15
      861 CALL                             R16 3 -1
      862 RETURN                           R16 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
        4 GETTABLEKS                       R4 R0 K0 ["Settings"]
        6 GETTABLEKS                       R3 R4 K2 ["Current"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEKS                       R4 R3 K3 ["DeveloperSubscriptions"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 MOVE                             R3 R4
       17 GETTABLEKS                       R5 R0 K0 ["Settings"]
       19 GETTABLEKS                       R4 R5 K4 ["Changed"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R4 K3 ["DeveloperSubscriptions"]
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 MOVE                             R4 R5
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K5 ["Merge"]
       36 MOVE                             R7 R3
       37 MOVE                             R8 R4
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+2]
       40 NEWTABLE                         R6 0 0
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R8 R0 K0 ["Settings"]
       45 LOADK                            R9 K6 ["editedSubscriptionKey"]
       46 CALL                             R7 2 1
       47 GETTABLEKS                       R8 R2 K3 ["DeveloperSubscriptions"]
       49 JUMPIF                           R8 ; [+2]
       50 NEWTABLE                         R8 0 0
       52 DUPTABLE                         R9 K10 [{"DeveloperSubscription", "ModeratedDevSubs", "DevSubErrors"}]
       53 GETTABLE                         R10 R6 R7
       54 SETTABLEKS                       R10 R9 K7 ["DeveloperSubscription"]
       56 GETTABLEKS                       R10 R0 K11 ["DevSubModeration"]
       58 JUMPIF                           R10 ; [+2]
       59 NEWTABLE                         R10 0 0
       61 SETTABLEKS                       R10 R9 K8 ["ModeratedDevSubs"]
       63 GETTABLE                         R10 R8 R7
       64 JUMPIF                           R10 ; [+2]
       65 NEWTABLE                         R10 0 0
       67 SETTABLEKS                       R10 R9 K9 ["DevSubErrors"]
       69 RETURN                           R9 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["isEditingSubscription"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K1 ["editedSubscriptionKey"]
        9 LOADNIL                          R3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["IsNew"]
        2 JUMPIF                           R1 ; [+8]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["Key"]
        7 LOADK                            R4 K2 ["Active"]
        8 LOADB                            R5 0
        9 CALL                             R2 3 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K3 [{"OnEditFinished", "OnDevSubDeleted", "ModerateDevSub"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnEditFinished"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["OnDevSubDeleted"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ModerateDevSub"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R6 K5 [script]
       15 GETTABLEKS                       R5 R6 K6 ["Parent"]
       17 GETTABLEKS                       R4 R5 K6 ["Parent"]
       19 GETTABLEKS                       R3 R4 K6 ["Parent"]
       21 GETTABLEKS                       R2 R3 K6 ["Parent"]
       23 GETIMPORT                        R3 K8 [require]
       25 GETTABLEKS                       R5 R2 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K10 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R7 R2 K11 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["FileUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R8 R2 K11 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Util"]
       45 GETTABLEKS                       R6 R7 K14 ["DEPRECATED_Constants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K8 [require]
       50 GETTABLEKS                       R9 R2 K11 ["Src"]
       52 GETTABLEKS                       R8 R9 K12 ["Util"]
       54 GETTABLEKS                       R7 R8 K15 ["DeepMergeTables"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K8 [require]
       59 GETTABLEKS                       R9 R2 K9 ["Packages"]
       61 GETTABLEKS                       R8 R9 K16 ["Cryo"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K8 [require]
       66 GETTABLEKS                       R10 R2 K9 ["Packages"]
       68 GETTABLEKS                       R9 R10 K17 ["RoactRodux"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K8 [require]
       73 GETTABLEKS                       R11 R2 K9 ["Packages"]
       75 GETTABLEKS                       R10 R11 K18 ["Roact"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K8 [require]
       80 GETTABLEKS                       R14 R2 K11 ["Src"]
       82 GETTABLEKS                       R13 R14 K19 ["Components"]
       84 GETTABLEKS                       R12 R13 K20 ["UploadableIcon"]
       86 GETTABLEKS                       R11 R12 K21 ["UploadableIconWidget"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K8 [require]
       91 GETTABLEKS                       R15 R2 K11 ["Src"]
       93 GETTABLEKS                       R14 R15 K19 ["Components"]
       95 GETTABLEKS                       R13 R14 K22 ["Dialog"]
       97 GETTABLEKS                       R12 R13 K23 ["WarningDialog"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K8 [require]
      102 GETTABLEKS                       R15 R2 K11 ["Src"]
      104 GETTABLEKS                       R14 R15 K24 ["ContextServices"]
      106 GETTABLEKS                       R13 R14 K22 ["Dialog"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K8 [require]
      111 GETIMPORT                        R16 K5 [script]
      113 GETTABLEKS                       R15 R16 K6 ["Parent"]
      115 GETTABLEKS                       R14 R15 K25 ["DevSubListItemText"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K8 [require]
      120 GETTABLEKS                       R17 R2 K11 ["Src"]
      122 GETTABLEKS                       R16 R17 K26 ["Actions"]
      124 GETTABLEKS                       R15 R16 K27 ["AddChange"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K8 [require]
      129 GETTABLEKS                       R17 R1 K28 ["Thunks"]
      131 GETTABLEKS                       R16 R17 K29 ["AddDevSubKeyChange"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K8 [require]
      136 GETTABLEKS                       R18 R1 K28 ["Thunks"]
      138 GETTABLEKS                       R17 R18 K30 ["DevSubModeration"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K8 [require]
      143 GETTABLEKS                       R19 R2 K9 ["Packages"]
      145 GETTABLEKS                       R18 R19 K31 ["Framework"]
      147 CALL                             R17 1 1
      148 GETTABLEKS                       R18 R17 K24 ["ContextServices"]
      150 GETTABLEKS                       R19 R18 K32 ["withContext"]
      152 GETTABLEKS                       R20 R17 K33 ["UI"]
      154 GETTABLEKS                       R21 R20 K34 ["Button"]
      156 GETTABLEKS                       R22 R20 K35 ["HoverArea"]
      158 GETTABLEKS                       R23 R20 K36 ["Image"]
      160 GETTABLEKS                       R24 R20 K37 ["Pane"]
      162 GETTABLEKS                       R25 R20 K38 ["Separator"]
      164 GETTABLEKS                       R26 R20 K39 ["SelectInput"]
      166 GETTABLEKS                       R27 R20 K40 ["TextInput"]
      168 GETTABLEKS                       R28 R20 K41 ["TitledFrame"]
      170 GETTABLEKS                       R29 R17 K12 ["Util"]
      172 GETTABLEKS                       R30 R29 K42 ["GetTextSize"]
      174 GETTABLEKS                       R31 R3 K43 ["FitFrameOnAxis"]
      176 GETTABLEKS                       R32 R29 K44 ["LayoutOrderIterator"]
      178 GETTABLEKS                       R33 R9 K45 ["Component"]
      180 LOADK                            R35 K46 ["DeveloperSubscriptionDetails"]
      181 NAMECALL                         R33 R33 K47 ["extend"]
      183 CALL                             R33 2 1
      184 GETIMPORT                        R34 K1 [game]
      186 LOADK                            R36 K48 ["DeveloperSubscriptionsMaxRobuxPrice"]
      187 LOADN                            R37 208
      188 NAMECALL                         R34 R34 K49 ["DefineFastInt"]
      190 CALL                             R34 3 1
      191 DUPCLOSURE                       R35 K50 [PROTO_10]
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R11
      194 SETTABLEKS                       R35 R33 K51 ["init"]
      196 DUPCLOSURE                       R35 K52 [PROTO_14]
      197 CAPTURE                          VAL R32
      198 CAPTURE                          VAL R34
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R31
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R24
      215 SETTABLEKS                       R35 R33 K53 ["render"]
      217 MOVE                             R35 R19
      218 DUPTABLE                         R36 K56 [{"Stylizer", "Localization", "Dialog"}]
      219 GETTABLEKS                       R37 R18 K54 ["Stylizer"]
      221 SETTABLEKS                       R37 R36 K54 ["Stylizer"]
      223 GETTABLEKS                       R37 R18 K55 ["Localization"]
      225 SETTABLEKS                       R37 R36 K55 ["Localization"]
      227 SETTABLEKS                       R12 R36 K22 ["Dialog"]
      229 CALL                             R35 1 1
      230 MOVE                             R36 R33
      231 CALL                             R35 1 1
      232 MOVE                             R33 R35
      233 GETIMPORT                        R35 K8 [require]
      235 GETTABLEKS                       R38 R2 K11 ["Src"]
      237 GETTABLEKS                       R37 R38 K57 ["Networking"]
      239 GETTABLEKS                       R36 R37 K58 ["settingFromState"]
      241 CALL                             R35 1 1
      242 GETTABLEKS                       R36 R8 K59 ["connect"]
      244 DUPCLOSURE                       R37 K60 [PROTO_16]
      245 CAPTURE                          VAL R35
      246 CAPTURE                          VAL R6
      247 DUPCLOSURE                       R38 K61 [PROTO_20]
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R16
      251 CALL                             R36 2 1
      252 MOVE                             R37 R33
      253 CALL                             R36 1 -1
      254 RETURN                           R36 -1
