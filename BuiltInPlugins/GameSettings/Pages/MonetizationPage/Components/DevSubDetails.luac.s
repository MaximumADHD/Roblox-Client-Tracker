PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isNameDirty"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["props"]
       10 GETTABLEKS                       R0 R0 K3 ["ModerateDevSub"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["props"]
       15 GETTABLEKS                       R1 R1 K4 ["DeveloperSubscription"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["DeveloperSubscription"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["SetDevSubKey"]
       10 GETTABLEKS                       R4 R2 K3 ["Key"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 CALL                             R3 3 0
       15 SETTABLE                         R1 R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["OnDeveloperSubscriptionChanged"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["state"]
        9 GETTABLEKS                       R1 R1 K3 ["isNameDirty"]
       11 JUMPIF                           R1 ; [+5]
       12 GETUPVAL                         R1 0
       13 DUPTABLE                         R3 K5 [{["isNameDirty"] = True}]
       14 NAMECALL                         R1 R1 K6 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CheckName"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Price"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Image"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onKeyChanged"]
        3 LOADK                            R2 K1 ["Prepaid"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnEditFinished"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["PromptForGameIcon"]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["onImageChanged"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["DeveloperSubscription"]
        5 GETTABLEKS                       R0 R0 K2 ["IsNew"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["props"]
       11 GETTABLEKS                       R0 R0 K3 ["OnDevSubDeleted"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["props"]
       16 GETTABLEKS                       R1 R1 K1 ["DeveloperSubscription"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K4 ["onBackButtonActivated"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["props"]
       27 GETTABLEKS                       R0 R0 K5 ["Localization"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["props"]
       32 GETTABLEKS                       R1 R1 K6 ["Dialog"]
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
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R4 R4 K0 ["props"]
       84 GETTABLEKS                       R4 R4 K3 ["OnDevSubDeleted"]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R5 R5 K0 ["props"]
       89 GETTABLEKS                       R5 R5 K1 ["DeveloperSubscription"]
       91 CALL                             R4 1 0
       92 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["CheckName"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onKeyChanged"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onNameChanged"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["onNameFocusChanged"]
       19 NEWCLOSURE                       R1 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K8 ["onPriceChanged"]
       23 NEWCLOSURE                       R1 P5
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K9 ["onImageChanged"]
       27 NEWCLOSURE                       R1 P6
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["onPrepaidChanged"]
       31 NEWCLOSURE                       R1 P7
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K11 ["onBackButtonActivated"]
       35 NEWCLOSURE                       R1 P8
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R1 R0 K12 ["setImage"]
       40 NEWCLOSURE                       R1 P9
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R1 R0 K13 ["onDeleteClicked"]
       45 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onBackButtonActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Id"]
        4 NAMECALL                         R0 R0 K1 ["CopyToClipboard"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onPrepaidChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["DeveloperSubscription"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["ModeratedDevSub"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["DevSubErrors"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Stylizer"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Localization"]
       20 GETTABLEKS                       R6 R1 K6 ["IsNew"]
       22 JUMPIF                           R6 ; [+2]
       23 GETTABLEKS                       R6 R1 K7 ["Active"]
       25 GETTABLEKS                       R7 R1 K6 ["IsNew"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K8 ["new"]
       30 CALL                             R8 0 1
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 JUMPIFNOT                        R6 ; [+76]
       35 GETTABLEKS                       R12 R3 K9 ["Name"]
       37 JUMPIFNOT                        R12 ; [+29]
       38 GETTABLEKS                       R12 R3 K9 ["Name"]
       40 GETTABLEKS                       R12 R12 K10 ["Empty"]
       42 JUMPIFNOT                        R12 ; [+7]
       43 LOADK                            R14 K11 ["General"]
       44 LOADK                            R15 K12 ["ErrorNameEmpty"]
       45 NAMECALL                         R12 R5 K13 ["getText"]
       47 CALL                             R12 3 1
       48 MOVE                             R9 R12
       49 JUMP                             ; [+17]
       50 GETTABLEKS                       R12 R3 K9 ["Name"]
       52 GETTABLEKS                       R12 R12 K14 ["Moderated"]
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
       73 GETTABLEKS                       R12 R3 K19 ["Price"]
       75 GETTABLEKS                       R12 R12 K20 ["NotANumber"]
       77 JUMPIFNOT                        R12 ; [+7]
       78 LOADK                            R14 K11 ["General"]
       79 LOADK                            R15 K21 ["ErrorDevSubInvalidPrice"]
       80 NAMECALL                         R12 R5 K13 ["getText"]
       82 CALL                             R12 3 1
       83 MOVE                             R10 R12
       84 JUMP                             ; [+17]
       85 GETUPVAL                         R12 1
       86 JUMPIFNOT                        R12 ; [+15]
       87 GETTABLEKS                       R12 R3 K19 ["Price"]
       89 GETTABLEKS                       R12 R12 K22 ["AboveMaxRobuxAmount"]
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
      113 DUPTABLE                         R13 K31 [{["Id"] = 6, ["Label"]}]
      114 LOADK                            R16 K11 ["General"]
      115 LOADK                            R17 K32 ["DevSubsDuration6Months"]
      116 NAMECALL                         R14 R5 K13 ["getText"]
      118 CALL                             R14 3 1
      119 SETTABLEKS                       R14 R13 K30 ["Label"]
      121 DUPTABLE                         R14 K34 [{["Id"] = 12, ["Label"]}]
      122 LOADK                            R17 K11 ["General"]
      123 LOADK                            R18 K35 ["DevSubsDuration12Months"]
      124 NAMECALL                         R15 R5 K13 ["getText"]
      126 CALL                             R15 3 1
      127 SETTABLEKS                       R15 R14 K30 ["Label"]
      129 SETLIST                          R12 R13 2 [1]
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R14 R1 K28 ["Id"]
      134 GETTABLEKS                       R15 R4 K36 ["fontStyle"]
      136 GETTABLEKS                       R15 R15 K37 ["Normal"]
      138 GETTABLEKS                       R15 R15 K38 ["TextSize"]
      140 GETTABLEKS                       R16 R4 K36 ["fontStyle"]
      142 GETTABLEKS                       R16 R16 K37 ["Normal"]
      144 GETTABLEKS                       R16 R16 K39 ["Font"]
      146 CALL                             R13 3 1
      147 GETTABLEKS                       R14 R4 K36 ["fontStyle"]
      149 GETTABLEKS                       R14 R14 K37 ["Normal"]
      151 GETTABLEKS                       R14 R14 K38 ["TextSize"]
      153 DUPTABLE                         R15 K46 [{"HeaderFrame", "IdFrame", "NameFrame", "Image", "PriceFrame", "PrepaidFrame", "EarningFrame"}]
      154 GETUPVAL                         R16 3
      155 GETTABLEKS                       R16 R16 K47 ["createElement"]
      157 GETUPVAL                         R17 4
      158 DUPTABLE                         R18 K54 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["axis"], ["minimumSize"], ["contentPadding"]}]
      159 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      161 CALL                             R19 1 1
      162 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      164 GETUPVAL                         R19 4
      165 GETTABLEKS                       R19 R19 K56 ["Axis"]
      167 GETTABLEKS                       R19 R19 K57 ["Vertical"]
      169 SETTABLEKS                       R19 R18 K51 ["axis"]
      171 GETIMPORT                        R19 K59 [UDim2.new]
      173 LOADN                            R20 1
      174 LOADN                            R21 0
      175 LOADN                            R22 0
      176 LOADN                            R23 0
      177 CALL                             R19 4 1
      178 SETTABLEKS                       R19 R18 K52 ["minimumSize"]
      180 GETIMPORT                        R19 K61 [UDim.new]
      182 LOADN                            R20 0
      183 GETTABLEKS                       R21 R4 K62 ["settingsPage"]
      185 GETTABLEKS                       R21 R21 K63 ["headerPadding"]
      187 CALL                             R19 2 1
      188 SETTABLEKS                       R19 R18 K53 ["contentPadding"]
      190 NEWTABLE                         R19 2 1
      192 GETUPVAL                         R21 3
      193 GETTABLEKS                       R21 R21 K47 ["createElement"]
      195 LOADK                            R22 K64 ["ImageButton"]
      196 NEWTABLE                         R23 8 0
      198 GETIMPORT                        R24 K59 [UDim2.new]
      200 LOADN                            R25 0
      201 GETTABLEKS                       R26 R4 K65 ["backButton"]
      203 GETTABLEKS                       R26 R26 K66 ["size"]
      205 LOADN                            R27 0
      206 GETTABLEKS                       R28 R4 K65 ["backButton"]
      208 GETTABLEKS                       R28 R28 K66 ["size"]
      210 CALL                             R24 4 1
      211 SETTABLEKS                       R24 R23 K67 ["Size"]
      213 LOADN                            R24 0
      214 SETTABLEKS                       R24 R23 K48 ["LayoutOrder"]
      216 GETTABLEKS                       R24 R4 K65 ["backButton"]
      218 GETTABLEKS                       R24 R24 K68 ["image"]
      220 SETTABLEKS                       R24 R23 K26 ["Image"]
      222 LOADN                            R24 1
      223 SETTABLEKS                       R24 R23 K49 ["BackgroundTransparency"]
      225 GETUPVAL                         R24 3
      226 GETTABLEKS                       R24 R24 K69 ["Event"]
      228 GETTABLEKS                       R24 R24 K70 ["Activated"]
      230 NEWCLOSURE                       R25 P0
      231 CAPTURE                          VAL R0
      232 SETTABLE                         R25 R23 R24
      233 NEWTABLE                         R24 0 1
      235 GETUPVAL                         R25 3
      236 GETTABLEKS                       R25 R25 K47 ["createElement"]
      238 GETUPVAL                         R26 5
      239 DUPTABLE                         R27 K73 [{["Cursor"] = "PointingHand"}]
      240 CALL                             R25 2 -1
      241 SETLIST                          R24 R25 -1 [1]
      243 CALL                             R21 3 1
      244 SETTABLEKS                       R21 R19 K74 ["BackButton"]
      246 GETUPVAL                         R20 3
      247 GETTABLEKS                       R20 R20 K47 ["createElement"]
      249 GETUPVAL                         R21 6
      250 DUPTABLE                         R22 K75 [{["LayoutOrder"] = 1}]
      251 CALL                             R20 2 1
      252 SETLIST                          R19 R20 1 [1]
      254 GETUPVAL                         R21 3
      255 GETTABLEKS                       R21 R21 K47 ["createElement"]
      257 LOADK                            R22 K76 ["TextLabel"]
      258 GETUPVAL                         R23 7
      259 GETTABLEKS                       R23 R23 K77 ["Dictionary"]
      261 GETTABLEKS                       R23 R23 K78 ["join"]
      263 GETTABLEKS                       R24 R4 K36 ["fontStyle"]
      265 GETTABLEKS                       R24 R24 K79 ["Title"]
      267 DUPTABLE                         R25 K86 [{["Size"], ["Text"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
      268 GETIMPORT                        R26 K59 [UDim2.new]
      270 LOADN                            R27 1
      271 LOADN                            R28 0
      272 LOADN                            R29 0
      273 GETUPVAL                         R30 8
      274 GETTABLEKS                       R30 R30 K87 ["HEADER_HEIGHT"]
      276 CALL                             R26 4 1
      277 SETTABLEKS                       R26 R25 K67 ["Size"]
      279 GETTABLEKS                       R27 R1 K6 ["IsNew"]
      281 JUMPIFNOT                        R27 ; [+6]
      282 LOADK                            R28 K11 ["General"]
      283 LOADK                            R29 K88 ["DevSubsNewHeader"]
      284 NAMECALL                         R26 R5 K13 ["getText"]
      286 CALL                             R26 3 1
      287 JUMPIF                           R26 ; [+5]
      288 LOADK                            R28 K11 ["General"]
      289 LOADK                            R29 K89 ["DevSubsEditHeader"]
      290 NAMECALL                         R26 R5 K13 ["getText"]
      292 CALL                             R26 3 1
      293 SETTABLEKS                       R26 R25 K80 ["Text"]
      295 GETIMPORT                        R26 K92 [Enum.TextXAlignment.Left]
      297 SETTABLEKS                       R26 R25 K83 ["TextXAlignment"]
      299 GETIMPORT                        R26 K94 [Enum.TextYAlignment.Center]
      301 SETTABLEKS                       R26 R25 K84 ["TextYAlignment"]
      303 CALL                             R23 2 1
      304 DUPTABLE                         R24 K98 [{"Padding", "Layout", "Button"}]
      305 GETUPVAL                         R25 3
      306 GETTABLEKS                       R25 R25 K47 ["createElement"]
      308 LOADK                            R26 K99 ["UIPadding"]
      309 DUPTABLE                         R27 K101 [{"PaddingRight"}]
      310 GETIMPORT                        R28 K61 [UDim.new]
      312 LOADN                            R29 0
      313 LOADN                            R30 12
      314 CALL                             R28 2 1
      315 SETTABLEKS                       R28 R27 K100 ["PaddingRight"]
      317 CALL                             R25 2 1
      318 SETTABLEKS                       R25 R24 K95 ["Padding"]
      320 GETUPVAL                         R25 3
      321 GETTABLEKS                       R25 R25 K47 ["createElement"]
      323 LOADK                            R26 K102 ["UIListLayout"]
      324 DUPTABLE                         R27 K105 [{"HorizontalAlignment", "VerticalAlignment"}]
      325 GETIMPORT                        R28 K107 [Enum.HorizontalAlignment.Right]
      327 SETTABLEKS                       R28 R27 K103 ["HorizontalAlignment"]
      329 GETIMPORT                        R28 K109 [Enum.VerticalAlignment.Bottom]
      331 SETTABLEKS                       R28 R27 K104 ["VerticalAlignment"]
      333 CALL                             R25 2 1
      334 SETTABLEKS                       R25 R24 K96 ["Layout"]
      336 GETUPVAL                         R25 3
      337 GETTABLEKS                       R25 R25 K47 ["createElement"]
      339 GETUPVAL                         R26 9
      340 DUPTABLE                         R27 K113 [{["Text"], ["OnClick"], ["Style"] = "Round"}]
      341 LOADK                            R30 K11 ["General"]
      342 LOADK                            R31 K114 ["DevSubsDeleteAction"]
      343 NAMECALL                         R28 R5 K13 ["getText"]
      345 CALL                             R28 3 1
      346 SETTABLEKS                       R28 R27 K80 ["Text"]
      348 GETTABLEKS                       R28 R0 K115 ["onDeleteClicked"]
      350 SETTABLEKS                       R28 R27 K110 ["OnClick"]
      352 CALL                             R25 2 1
      353 SETTABLEKS                       R25 R24 K97 ["Button"]
      355 CALL                             R21 3 1
      356 SETTABLEKS                       R21 R19 K116 ["Header"]
      358 CALL                             R16 3 1
      359 SETTABLEKS                       R16 R15 K40 ["HeaderFrame"]
      361 NOT                              R16 R7
      362 JUMPIFNOT                        R16 ; [+114]
      363 GETUPVAL                         R16 3
      364 GETTABLEKS                       R16 R16 K47 ["createElement"]
      366 GETUPVAL                         R17 10
      367 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      368 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      370 CALL                             R19 1 1
      371 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      373 LOADK                            R21 K11 ["General"]
      374 LOADK                            R22 K118 ["DevSubsId"]
      375 NAMECALL                         R19 R5 K13 ["getText"]
      377 CALL                             R19 3 1
      378 SETTABLEKS                       R19 R18 K79 ["Title"]
      380 DUPTABLE                         R19 K119 [{"Layout", "Text", "Button"}]
      381 GETUPVAL                         R20 3
      382 GETTABLEKS                       R20 R20 K47 ["createElement"]
      384 LOADK                            R21 K102 ["UIListLayout"]
      385 DUPTABLE                         R22 K122 [{"SortOrder", "FillDirection", "VerticalAlignment"}]
      386 GETIMPORT                        R23 K123 [Enum.SortOrder.LayoutOrder]
      388 SETTABLEKS                       R23 R22 K120 ["SortOrder"]
      390 GETIMPORT                        R23 K125 [Enum.FillDirection.Horizontal]
      392 SETTABLEKS                       R23 R22 K121 ["FillDirection"]
      394 GETIMPORT                        R23 K127 [Enum.VerticalAlignment.Top]
      396 SETTABLEKS                       R23 R22 K104 ["VerticalAlignment"]
      398 CALL                             R20 2 1
      399 SETTABLEKS                       R20 R19 K96 ["Layout"]
      401 GETUPVAL                         R20 3
      402 GETTABLEKS                       R20 R20 K47 ["createElement"]
      404 GETUPVAL                         R21 11
      405 DUPTABLE                         R22 K129 [{["Text"], ["Size"], ["Alignment"], ["LayoutOrder"] = 1}]
      406 GETTABLEKS                       R23 R1 K28 ["Id"]
      408 SETTABLEKS                       R23 R22 K80 ["Text"]
      410 GETIMPORT                        R23 K59 [UDim2.new]
      412 LOADN                            R24 0
      413 GETTABLEKS                       R25 R13 K130 ["X"]
      415 LOADK                            R26 K131 [0.5]
      416 LOADN                            R27 0
      417 CALL                             R23 4 1
      418 SETTABLEKS                       R23 R22 K67 ["Size"]
      420 GETIMPORT                        R23 K92 [Enum.TextXAlignment.Left]
      422 SETTABLEKS                       R23 R22 K128 ["Alignment"]
      424 CALL                             R20 2 1
      425 SETTABLEKS                       R20 R19 K80 ["Text"]
      427 GETUPVAL                         R20 3
      428 GETTABLEKS                       R20 R20 K47 ["createElement"]
      430 LOADK                            R21 K64 ["ImageButton"]
      431 NEWTABLE                         R22 8 0
      433 LOADN                            R23 1
      434 SETTABLEKS                       R23 R22 K49 ["BackgroundTransparency"]
      436 GETTABLEKS                       R23 R4 K132 ["copyButton"]
      438 GETTABLEKS                       R23 R23 K68 ["image"]
      440 SETTABLEKS                       R23 R22 K26 ["Image"]
      442 GETTABLEKS                       R23 R4 K132 ["copyButton"]
      444 GETTABLEKS                       R23 R23 K133 ["imageColor"]
      446 SETTABLEKS                       R23 R22 K134 ["ImageColor3"]
      448 GETIMPORT                        R23 K59 [UDim2.new]
      450 LOADN                            R24 0
      451 LOADN                            R25 16
      452 LOADN                            R26 0
      453 LOADN                            R27 16
      454 CALL                             R23 4 1
      455 SETTABLEKS                       R23 R22 K67 ["Size"]
      457 GETIMPORT                        R23 K137 [Enum.SizeConstraint.RelativeYY]
      459 SETTABLEKS                       R23 R22 K135 ["SizeConstraint"]
      461 LOADN                            R23 2
      462 SETTABLEKS                       R23 R22 K48 ["LayoutOrder"]
      464 GETUPVAL                         R23 3
      465 GETTABLEKS                       R23 R23 K69 ["Event"]
      467 GETTABLEKS                       R23 R23 K70 ["Activated"]
      469 NEWCLOSURE                       R24 P1
      470 CAPTURE                          UPVAL U12
      471 CAPTURE                          VAL R1
      472 SETTABLE                         R24 R22 R23
      473 CALL                             R20 2 1
      474 SETTABLEKS                       R20 R19 K97 ["Button"]
      476 CALL                             R16 3 1
      477 SETTABLEKS                       R16 R15 K41 ["IdFrame"]
      479 GETUPVAL                         R16 3
      480 GETTABLEKS                       R16 R16 K47 ["createElement"]
      482 GETUPVAL                         R17 10
      483 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      484 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      486 CALL                             R19 1 1
      487 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      489 LOADK                            R21 K11 ["General"]
      490 LOADK                            R22 K138 ["DevSubsName"]
      491 NAMECALL                         R19 R5 K13 ["getText"]
      493 CALL                             R19 3 1
      494 SETTABLEKS                       R19 R18 K79 ["Title"]
      496 DUPTABLE                         R19 K140 [{"TextBox"}]
      497 GETUPVAL                         R20 3
      498 GETTABLEKS                       R20 R20 K47 ["createElement"]
      500 GETUPVAL                         R21 13
      501 DUPTABLE                         R22 K147 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 32, ["OnTextChanged"], ["OnFocusLost"], ["Text"]}]
      502 NOT                              R23 R6
      503 SETTABLEKS                       R23 R22 K141 ["Disabled"]
      505 SETTABLEKS                       R9 R22 K142 ["ErrorText"]
      507 GETTABLEKS                       R23 R0 K148 ["onNameChanged"]
      509 SETTABLEKS                       R23 R22 K145 ["OnTextChanged"]
      511 GETTABLEKS                       R23 R0 K149 ["onNameFocusChanged"]
      513 SETTABLEKS                       R23 R22 K146 ["OnFocusLost"]
      515 GETTABLEKS                       R24 R1 K9 ["Name"]
      517 ORK                              R23 R24 K150 [""]
      518 SETTABLEKS                       R23 R22 K80 ["Text"]
      520 CALL                             R20 2 1
      521 SETTABLEKS                       R20 R19 K139 ["TextBox"]
      523 CALL                             R16 3 1
      524 SETTABLEKS                       R16 R15 K42 ["NameFrame"]
      526 JUMPIFNOT                        R6 ; [+29]
      527 GETUPVAL                         R16 3
      528 GETTABLEKS                       R16 R16 K47 ["createElement"]
      530 GETUPVAL                         R17 14
      531 DUPTABLE                         R18 K158 [{["Title"], ["Enabled"] = True, ["Icon"], ["LayoutOrder"], ["TutorialEnabled"] = False, ["ErrorMessage"], ["AddIcon"]}]
      532 LOADK                            R21 K11 ["General"]
      533 LOADK                            R22 K159 ["DevSubsImage"]
      534 NAMECALL                         R19 R5 K13 ["getText"]
      536 CALL                             R19 3 1
      537 SETTABLEKS                       R19 R18 K79 ["Title"]
      539 GETTABLEKS                       R19 R1 K26 ["Image"]
      541 SETTABLEKS                       R19 R18 K153 ["Icon"]
      543 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      545 CALL                             R19 1 1
      546 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      548 SETTABLEKS                       R11 R18 K156 ["ErrorMessage"]
      550 GETTABLEKS                       R19 R0 K160 ["setImage"]
      552 SETTABLEKS                       R19 R18 K157 ["AddIcon"]
      554 CALL                             R16 2 1
      555 JUMPIF                           R16 ; [+40]
      556 GETUPVAL                         R16 3
      557 GETTABLEKS                       R16 R16 K47 ["createElement"]
      559 GETUPVAL                         R17 10
      560 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      561 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      563 CALL                             R19 1 1
      564 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      566 LOADK                            R21 K11 ["General"]
      567 LOADK                            R22 K159 ["DevSubsImage"]
      568 NAMECALL                         R19 R5 K13 ["getText"]
      570 CALL                             R19 3 1
      571 SETTABLEKS                       R19 R18 K79 ["Title"]
      573 DUPTABLE                         R19 K161 [{"Image"}]
      574 GETUPVAL                         R20 3
      575 GETTABLEKS                       R20 R20 K47 ["createElement"]
      577 LOADK                            R21 K162 ["ImageLabel"]
      578 DUPTABLE                         R22 K163 [{"Image", "Size"}]
      579 GETTABLEKS                       R23 R1 K26 ["Image"]
      581 SETTABLEKS                       R23 R22 K26 ["Image"]
      583 GETIMPORT                        R23 K59 [UDim2.new]
      585 LOADN                            R24 0
      586 LOADN                            R25 150
      587 LOADN                            R26 0
      588 LOADN                            R27 150
      589 CALL                             R23 4 1
      590 SETTABLEKS                       R23 R22 K67 ["Size"]
      592 CALL                             R20 2 1
      593 SETTABLEKS                       R20 R19 K26 ["Image"]
      595 CALL                             R16 3 1
      596 SETTABLEKS                       R16 R15 K26 ["Image"]
      598 GETUPVAL                         R16 3
      599 GETTABLEKS                       R16 R16 K47 ["createElement"]
      601 GETUPVAL                         R17 10
      602 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      603 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      605 CALL                             R19 1 1
      606 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      608 LOADK                            R21 K11 ["General"]
      609 LOADK                            R22 K164 ["DevSubsPrice"]
      610 NAMECALL                         R19 R5 K13 ["getText"]
      612 CALL                             R19 3 1
      613 SETTABLEKS                       R19 R18 K79 ["Title"]
      615 DUPTABLE                         R19 K166 [{"Input"}]
      616 GETUPVAL                         R20 3
      617 GETTABLEKS                       R20 R20 K47 ["createElement"]
      619 GETUPVAL                         R21 13
      620 DUPTABLE                         R22 K170 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50000, ["OnTextChanged"], ["Text"], ["Size"], ["LeadingComponent"], ["LeadingComponentProps"]}]
      621 GETTABLEKS                       R24 R1 K6 ["IsNew"]
      623 NOT                              R23 R24
      624 SETTABLEKS                       R23 R22 K141 ["Disabled"]
      626 SETTABLEKS                       R10 R22 K142 ["ErrorText"]
      628 GETTABLEKS                       R23 R0 K171 ["onPriceChanged"]
      630 SETTABLEKS                       R23 R22 K145 ["OnTextChanged"]
      632 GETTABLEKS                       R24 R1 K19 ["Price"]
      634 FASTCALL1                        TOSTRING R24 ; [+2]
      635 GETIMPORT                        R23 K173 [tostring]
      637 CALL                             R23 1 1
      638 SETTABLEKS                       R23 R22 K80 ["Text"]
      640 GETIMPORT                        R23 K59 [UDim2.new]
      642 LOADN                            R24 0
      643 LOADN                            R25 200
      644 LOADN                            R26 0
      645 LOADN                            R27 32
      646 CALL                             R23 4 1
      647 SETTABLEKS                       R23 R22 K67 ["Size"]
      649 GETUPVAL                         R23 15
      650 SETTABLEKS                       R23 R22 K168 ["LeadingComponent"]
      652 DUPTABLE                         R23 K174 [{"Size", "Image", "ImageColor3"}]
      653 GETIMPORT                        R24 K59 [UDim2.new]
      655 LOADN                            R25 0
      656 MOVE                             R26 R14
      657 LOADN                            R27 0
      658 MOVE                             R28 R14
      659 CALL                             R24 4 1
      660 SETTABLEKS                       R24 R23 K67 ["Size"]
      662 GETTABLEKS                       R24 R4 K175 ["robuxFeeBase"]
      664 GETTABLEKS                       R24 R24 K176 ["icon"]
      666 GETTABLEKS                       R24 R24 K68 ["image"]
      668 SETTABLEKS                       R24 R23 K26 ["Image"]
      670 GETIMPORT                        R24 K179 [Color3.fromRGB]
      672 LOADN                            R25 25
      673 LOADN                            R26 25
      674 LOADN                            R27 25
      675 CALL                             R24 3 1
      676 SETTABLEKS                       R24 R23 K134 ["ImageColor3"]
      678 SETTABLEKS                       R23 R22 K169 ["LeadingComponentProps"]
      680 CALL                             R20 2 1
      681 SETTABLEKS                       R20 R19 K165 ["Input"]
      683 CALL                             R16 3 1
      684 SETTABLEKS                       R16 R15 K43 ["PriceFrame"]
      686 GETUPVAL                         R16 3
      687 GETTABLEKS                       R16 R16 K47 ["createElement"]
      689 GETUPVAL                         R17 10
      690 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      691 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      693 CALL                             R19 1 1
      694 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      696 LOADK                            R21 K11 ["General"]
      697 LOADK                            R22 K180 ["DevSubsDuration"]
      698 NAMECALL                         R19 R5 K13 ["getText"]
      700 CALL                             R19 3 1
      701 SETTABLEKS                       R19 R18 K79 ["Title"]
      703 DUPTABLE                         R19 K182 [{"Selector"}]
      704 GETUPVAL                         R20 3
      705 GETTABLEKS                       R20 R20 K47 ["createElement"]
      707 GETUPVAL                         R21 16
      708 DUPTABLE                         R22 K186 [{"Items", "Enabled", "SelectedId", "OnItemActivated"}]
      709 SETTABLEKS                       R12 R22 K183 ["Items"]
      711 GETTABLEKS                       R24 R1 K187 ["Prepaid"]
      713 JUMPIFNOTEQKNIL                  R24 ; [+2]
      715 LOADB                            R23 0 +1
      716 LOADB                            R23 1
      717 SETTABLEKS                       R23 R22 K151 ["Enabled"]
      719 GETTABLEKS                       R23 R1 K187 ["Prepaid"]
      721 SETTABLEKS                       R23 R22 K184 ["SelectedId"]
      723 NEWCLOSURE                       R23 P2
      724 CAPTURE                          VAL R0
      725 SETTABLEKS                       R23 R22 K185 ["OnItemActivated"]
      727 CALL                             R20 2 1
      728 SETTABLEKS                       R20 R19 K181 ["Selector"]
      730 CALL                             R16 3 1
      731 SETTABLEKS                       R16 R15 K44 ["PrepaidFrame"]
      733 NOT                              R16 R7
      734 JUMPIFNOT                        R16 ; [+48]
      735 GETUPVAL                         R16 3
      736 GETTABLEKS                       R16 R16 K47 ["createElement"]
      738 GETUPVAL                         R17 10
      739 DUPTABLE                         R18 K117 [{"LayoutOrder", "Title"}]
      740 NAMECALL                         R19 R8 K55 ["getNextOrder"]
      742 CALL                             R19 1 1
      743 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      745 LOADK                            R21 K11 ["General"]
      746 LOADK                            R22 K188 ["DevSubsPendingEarning"]
      747 NAMECALL                         R19 R5 K13 ["getText"]
      749 CALL                             R19 3 1
      750 SETTABLEKS                       R19 R18 K79 ["Title"]
      752 DUPTABLE                         R19 K189 [{"Text"}]
      753 GETUPVAL                         R20 3
      754 GETTABLEKS                       R20 R20 K47 ["createElement"]
      756 GETUPVAL                         R21 11
      757 DUPTABLE                         R22 K190 [{"Text", "Size", "Alignment"}]
      758 GETTABLEKS                       R24 R1 K191 ["PendingEarning"]
      760 FASTCALL1                        TOSTRING R24 ; [+2]
      761 GETIMPORT                        R23 K173 [tostring]
      763 CALL                             R23 1 1
      764 SETTABLEKS                       R23 R22 K80 ["Text"]
      766 GETIMPORT                        R23 K59 [UDim2.new]
      768 LOADN                            R24 1
      769 LOADN                            R25 0
      770 LOADK                            R26 K131 [0.5]
      771 LOADN                            R27 0
      772 CALL                             R23 4 1
      773 SETTABLEKS                       R23 R22 K67 ["Size"]
      775 GETIMPORT                        R23 K92 [Enum.TextXAlignment.Left]
      777 SETTABLEKS                       R23 R22 K128 ["Alignment"]
      779 CALL                             R20 2 1
      780 SETTABLEKS                       R20 R19 K80 ["Text"]
      782 CALL                             R16 3 1
      783 SETTABLEKS                       R16 R15 K45 ["EarningFrame"]
      785 GETUPVAL                         R16 3
      786 GETTABLEKS                       R16 R16 K47 ["createElement"]
      788 GETUPVAL                         R17 17
      789 DUPTABLE                         R18 K194 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
      790 GETIMPORT                        R19 K196 [Enum.AutomaticSize.Y]
      792 SETTABLEKS                       R19 R18 K192 ["AutomaticSize"]
      794 GETIMPORT                        R19 K197 [Enum.HorizontalAlignment.Left]
      796 SETTABLEKS                       R19 R18 K103 ["HorizontalAlignment"]
      798 GETTABLEKS                       R20 R0 K0 ["props"]
      800 GETTABLEKS                       R20 R20 K48 ["LayoutOrder"]
      802 ORK                              R19 R20 K50 [1]
      803 SETTABLEKS                       R19 R18 K48 ["LayoutOrder"]
      805 GETIMPORT                        R19 K198 [Enum.FillDirection.Vertical]
      807 SETTABLEKS                       R19 R18 K96 ["Layout"]
      809 GETIMPORT                        R19 K61 [UDim.new]
      811 LOADN                            R20 0
      812 GETUPVAL                         R21 8
      813 GETTABLEKS                       R21 R21 K199 ["ELEMENT_PADDING"]
      815 CALL                             R19 2 1
      816 SETTABLEKS                       R19 R18 K193 ["Spacing"]
      818 MOVE                             R19 R15
      819 CALL                             R16 3 -1
      820 RETURN                           R16 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
        4 GETTABLEKS                       R3 R0 K0 ["Settings"]
        6 GETTABLEKS                       R3 R3 K2 ["Current"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEKS                       R4 R3 K3 ["DeveloperSubscriptions"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 MOVE                             R3 R4
       17 GETTABLEKS                       R4 R0 K0 ["Settings"]
       19 GETTABLEKS                       R4 R4 K4 ["Changed"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R4 K3 ["DeveloperSubscriptions"]
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 MOVE                             R4 R5
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K5 ["Merge"]
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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K5 [script]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 GETTABLEKS                       R2 R2 K6 ["Parent"]
       21 GETTABLEKS                       R2 R2 K6 ["Parent"]
       23 GETIMPORT                        R3 K8 [require]
       25 GETTABLEKS                       R4 R2 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R5 R2 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["FileUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R6 R2 K11 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["DEPRECATED_Constants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K8 [require]
       50 GETTABLEKS                       R7 R2 K11 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["DeepMergeTables"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K8 [require]
       59 GETTABLEKS                       R8 R2 K9 ["Packages"]
       61 GETTABLEKS                       R8 R8 K16 ["Cryo"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K8 [require]
       66 GETTABLEKS                       R9 R2 K9 ["Packages"]
       68 GETTABLEKS                       R9 R9 K17 ["RoactRodux"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K8 [require]
       73 GETTABLEKS                       R10 R2 K9 ["Packages"]
       75 GETTABLEKS                       R10 R10 K18 ["Roact"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K8 [require]
       80 GETTABLEKS                       R11 R2 K11 ["Src"]
       82 GETTABLEKS                       R11 R11 K19 ["Components"]
       84 GETTABLEKS                       R11 R11 K20 ["UploadableIcon"]
       86 GETTABLEKS                       R11 R11 K21 ["UploadableIconWidget"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K8 [require]
       91 GETTABLEKS                       R12 R2 K11 ["Src"]
       93 GETTABLEKS                       R12 R12 K19 ["Components"]
       95 GETTABLEKS                       R12 R12 K22 ["Dialog"]
       97 GETTABLEKS                       R12 R12 K23 ["WarningDialog"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K8 [require]
      102 GETTABLEKS                       R13 R2 K11 ["Src"]
      104 GETTABLEKS                       R13 R13 K24 ["ContextServices"]
      106 GETTABLEKS                       R13 R13 K22 ["Dialog"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K8 [require]
      111 GETIMPORT                        R14 K5 [script]
      113 GETTABLEKS                       R14 R14 K6 ["Parent"]
      115 GETTABLEKS                       R14 R14 K25 ["DevSubListItemText"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K8 [require]
      120 GETTABLEKS                       R15 R2 K11 ["Src"]
      122 GETTABLEKS                       R15 R15 K26 ["Actions"]
      124 GETTABLEKS                       R15 R15 K27 ["AddChange"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K8 [require]
      129 GETTABLEKS                       R16 R1 K28 ["Thunks"]
      131 GETTABLEKS                       R16 R16 K29 ["AddDevSubKeyChange"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K8 [require]
      136 GETTABLEKS                       R17 R1 K28 ["Thunks"]
      138 GETTABLEKS                       R17 R17 K30 ["DevSubModeration"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K8 [require]
      143 GETTABLEKS                       R18 R2 K9 ["Packages"]
      145 GETTABLEKS                       R18 R18 K31 ["Framework"]
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
      187 LOADN                            R37 2000
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
      235 GETTABLEKS                       R36 R2 K11 ["Src"]
      237 GETTABLEKS                       R36 R36 K57 ["Networking"]
      239 GETTABLEKS                       R36 R36 K58 ["settingFromState"]
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
