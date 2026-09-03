PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ShowTree"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K2 ["SetShowTree"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["IKEnabled"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETTABLEKS                       R1 R0 K4 ["SetIKEnabled"]
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"treeArray"}]
        2 SETTABLEKS                       R0 R3 K0 ["treeArray"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R3 R1 K2 ["treeArray"]
        8 GETTABLEKS                       R4 R2 K3 ["SelectedTrack"]
       10 GETTABLEKS                       R5 R2 K4 ["SetSelectedTracks"]
       12 LOADN                            R6 0
       13 GETIMPORT                        R7 K6 [ipairs]
       15 MOVE                             R8 R3
       16 CALL                             R7 1 3
       17 FORGPREP_INEXT                   R7
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETTABLEN                        R12 R4 1
       20 JUMPIFNOTEQ                      R12 R11 ; [+3]
       22 MOVE                             R6 R10
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R7 2 [inext] ; [-7]
       26 ADD                              R8 R6 R0
       27 LOADN                            R9 1
       28 LENGTH                           R10 R3
       29 FASTCALL                         MATH_CLAMP ; [+2]
       30 GETIMPORT                        R7 K9 [math.clamp]
       32 CALL                             R7 3 1
       33 NEWTABLE                         R8 0 1
       35 GETTABLE                         R9 R3 R7
       36 SETLIST                          R8 R9 1 [1]
       38 MOVE                             R9 R5
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R8
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R9 1 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+26]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["isUp"]
        9 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K6 ["changeSelectedTrack"]
       16 LOADN                            R3 -1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["isDown"]
       22 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       24 CALL                             R2 1 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["changeSelectedTrack"]
       29 LOADN                            R3 1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"treeArray"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["treeArray"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["hideTree"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onTreeUpdated"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["changeSelectedTrack"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K6 ["onInputBegan"]
       24 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["hideTree"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["RootInstance"]
       10 GETTABLEKS                       R5 R2 K4 ["PinnedParts"]
       12 GETTABLEKS                       R6 R2 K5 ["IsR15"]
       14 GETTABLEKS                       R7 R2 K6 ["IKMode"]
       16 GETTABLEKS                       R8 R2 K7 ["IKEnabled"]
       18 GETTABLEKS                       R9 R2 K8 ["SelectedTrack"]
       20 GETTABLEKS                       R10 R2 K9 ["SetSelectedTracks"]
       22 GETTABLEKS                       R11 R2 K10 ["TogglePinnedPart"]
       24 GETTABLEKS                       R12 R2 K11 ["ToggleIKEnabled"]
       26 GETTABLEKS                       R13 R2 K12 ["SetIKMode"]
       28 JUMPIFNOT                        R6 ; [+2]
       29 LOADN                            R14 40
       30 JUMP                             ; [+1]
       31 LOADN                            R14 0
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADN                            R15 -96
       34 JUMP                             ; [+1]
       35 LOADN                            R15 -56
       36 GETUPVAL                         R16 0
       37 GETTABLEKS                       R16 R16 K13 ["createElement"]
       39 GETUPVAL                         R17 1
       40 DUPTABLE                         R18 K27 [{["Id"] = "ManageIK", ["Title"], ["Name"] = "ManageIK", ["ZIndexBehavior"], ["InitialDockState"], ["InitialEnabled"] = True, ["InitialEnabledShouldOverrideRestore"] = True, ["Size"], ["MinSize"], ["OnClose"], ["Enabled"] = True}]
       41 LOADK                            R21 K16 ["Title"]
       42 LOADK                            R22 K15 ["ManageIK"]
       43 NAMECALL                         R19 R1 K28 ["getText"]
       45 CALL                             R19 3 1
       46 SETTABLEKS                       R19 R18 K16 ["Title"]
       48 GETIMPORT                        R19 K31 [Enum.ZIndexBehavior.Global]
       50 SETTABLEKS                       R19 R18 K18 ["ZIndexBehavior"]
       52 GETIMPORT                        R19 K33 [Enum.InitialDockState.Left]
       54 SETTABLEKS                       R19 R18 K19 ["InitialDockState"]
       56 GETUPVAL                         R19 2
       57 SETTABLEKS                       R19 R18 K23 ["Size"]
       59 GETUPVAL                         R19 2
       60 SETTABLEKS                       R19 R18 K24 ["MinSize"]
       62 GETTABLEKS                       R19 R0 K34 ["hideTree"]
       64 SETTABLEKS                       R19 R18 K25 ["OnClose"]
       66 DUPTABLE                         R19 K36 [{"Container"}]
       67 GETUPVAL                         R20 0
       68 GETTABLEKS                       R20 R20 K13 ["createElement"]
       70 LOADK                            R21 K37 ["Frame"]
       71 NEWTABLE                         R22 4 0
       73 LOADN                            R23 0
       74 SETTABLEKS                       R23 R22 K38 ["BorderSizePixel"]
       76 GETTABLEKS                       R23 R3 K39 ["backgroundColor"]
       78 SETTABLEKS                       R23 R22 K40 ["BackgroundColor3"]
       80 GETIMPORT                        R23 K43 [UDim2.new]
       82 LOADN                            R24 1
       83 LOADN                            R25 0
       84 LOADN                            R26 1
       85 LOADN                            R27 0
       86 CALL                             R23 4 1
       87 SETTABLEKS                       R23 R22 K23 ["Size"]
       89 GETUPVAL                         R23 0
       90 GETTABLEKS                       R23 R23 K44 ["Event"]
       92 GETTABLEKS                       R23 R23 K45 ["InputBegan"]
       94 GETTABLEKS                       R24 R0 K46 ["onInputBegan"]
       96 SETTABLE                         R24 R22 R23
       97 DUPTABLE                         R23 K51 [{"IKModeControls", "TreeView", "EnableIKPrompt", "BottomFrame"}]
       98 MOVE                             R24 R6
       99 JUMPIFNOT                        R24 ; [+12]
      100 MOVE                             R24 R8
      101 JUMPIFNOT                        R24 ; [+10]
      102 GETUPVAL                         R24 0
      103 GETTABLEKS                       R24 R24 K13 ["createElement"]
      105 GETUPVAL                         R25 3
      106 DUPTABLE                         R26 K54 [{["Height"] = 32, ["IKMode"], ["SetIKMode"]}]
      107 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      109 SETTABLEKS                       R13 R26 K12 ["SetIKMode"]
      111 CALL                             R24 2 1
      112 SETTABLEKS                       R24 R23 K47 ["IKModeControls"]
      114 MOVE                             R24 R4
      115 JUMPIFNOT                        R24 ; [+52]
      116 MOVE                             R24 R8
      117 JUMPIFNOT                        R24 ; [+50]
      118 GETUPVAL                         R24 0
      119 GETTABLEKS                       R24 R24 K13 ["createElement"]
      121 GETUPVAL                         R25 4
      122 DUPTABLE                         R26 K59 [{"Size", "Position", "RootInstance", "PinnedParts", "TogglePinnedPart", "SelectedTrack", "SetSelectedTracks", "Chain", "IKMode", "TreeArray", "OnTreeUpdated"}]
      123 GETIMPORT                        R27 K43 [UDim2.new]
      125 LOADN                            R28 1
      126 LOADN                            R29 0
      127 LOADN                            R30 1
      128 MOVE                             R31 R15
      129 CALL                             R27 4 1
      130 SETTABLEKS                       R27 R26 K23 ["Size"]
      132 GETIMPORT                        R27 K43 [UDim2.new]
      134 LOADN                            R28 0
      135 LOADN                            R29 0
      136 LOADN                            R30 0
      137 MOVE                             R31 R14
      138 CALL                             R27 4 1
      139 SETTABLEKS                       R27 R26 K55 ["Position"]
      141 SETTABLEKS                       R4 R26 K3 ["RootInstance"]
      143 SETTABLEKS                       R5 R26 K4 ["PinnedParts"]
      145 SETTABLEKS                       R11 R26 K10 ["TogglePinnedPart"]
      147 SETTABLEKS                       R9 R26 K8 ["SelectedTrack"]
      149 SETTABLEKS                       R10 R26 K9 ["SetSelectedTracks"]
      151 GETTABLEKS                       R27 R2 K56 ["Chain"]
      153 SETTABLEKS                       R27 R26 K56 ["Chain"]
      155 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      157 GETTABLEKS                       R27 R0 K60 ["state"]
      159 GETTABLEKS                       R27 R27 K61 ["treeArray"]
      161 SETTABLEKS                       R27 R26 K57 ["TreeArray"]
      163 GETTABLEKS                       R27 R0 K62 ["onTreeUpdated"]
      165 SETTABLEKS                       R27 R26 K58 ["OnTreeUpdated"]
      167 CALL                             R24 2 1
      168 SETTABLEKS                       R24 R23 K48 ["TreeView"]
      170 NOT                              R24 R8
      171 JUMPIFNOT                        R24 ; [+62]
      172 GETUPVAL                         R24 0
      173 GETTABLEKS                       R24 R24 K13 ["createElement"]
      175 LOADK                            R25 K63 ["TextLabel"]
      176 DUPTABLE                         R26 K74 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["Font"], ["Text"]}]
      177 GETIMPORT                        R27 K76 [Vector2.new]
      179 LOADK                            R28 K77 [0.5]
      180 LOADK                            R29 K77 [0.5]
      181 CALL                             R27 2 1
      182 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      184 GETIMPORT                        R27 K43 [UDim2.new]
      186 LOADK                            R28 K77 [0.5]
      187 LOADN                            R29 0
      188 LOADK                            R30 K77 [0.5]
      189 LOADN                            R31 0
      190 CALL                             R27 4 1
      191 SETTABLEKS                       R27 R26 K55 ["Position"]
      193 GETIMPORT                        R27 K43 [UDim2.new]
      195 LOADN                            R28 1
      196 LOADN                            R29 -8
      197 LOADN                            R30 1
      198 LOADN                            R31 -40
      199 CALL                             R27 4 1
      200 SETTABLEKS                       R27 R26 K23 ["Size"]
      202 GETIMPORT                        R27 K79 [Enum.TextXAlignment.Center]
      204 SETTABLEKS                       R27 R26 K67 ["TextXAlignment"]
      206 GETIMPORT                        R27 K80 [Enum.TextYAlignment.Center]
      208 SETTABLEKS                       R27 R26 K68 ["TextYAlignment"]
      210 GETTABLEKS                       R27 R3 K81 ["ikTheme"]
      212 GETTABLEKS                       R27 R27 K82 ["textSize"]
      214 SETTABLEKS                       R27 R26 K69 ["TextSize"]
      216 GETTABLEKS                       R27 R3 K81 ["ikTheme"]
      218 GETTABLEKS                       R27 R27 K83 ["textColor"]
      220 SETTABLEKS                       R27 R26 K70 ["TextColor3"]
      222 GETTABLEKS                       R27 R3 K84 ["font"]
      224 SETTABLEKS                       R27 R26 K72 ["Font"]
      226 LOADK                            R29 K85 ["IKMenu"]
      227 LOADK                            R30 K86 ["Prompt"]
      228 NAMECALL                         R27 R1 K28 ["getText"]
      230 CALL                             R27 3 1
      231 SETTABLEKS                       R27 R26 K73 ["Text"]
      233 CALL                             R24 2 1
      234 SETTABLEKS                       R24 R23 K49 ["EnableIKPrompt"]
      236 GETUPVAL                         R24 0
      237 GETTABLEKS                       R24 R24 K13 ["createElement"]
      239 LOADK                            R25 K37 ["Frame"]
      240 DUPTABLE                         R26 K88 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"]}]
      241 GETIMPORT                        R27 K43 [UDim2.new]
      243 LOADN                            R28 1
      244 LOADN                            R29 0
      245 LOADN                            R30 0
      246 LOADN                            R31 48
      247 CALL                             R27 4 1
      248 SETTABLEKS                       R27 R26 K23 ["Size"]
      250 GETIMPORT                        R27 K43 [UDim2.new]
      252 LOADN                            R28 0
      253 LOADN                            R29 0
      254 LOADN                            R30 1
      255 LOADN                            R31 0
      256 CALL                             R27 4 1
      257 SETTABLEKS                       R27 R26 K55 ["Position"]
      259 GETIMPORT                        R27 K76 [Vector2.new]
      261 LOADN                            R28 0
      262 LOADN                            R29 1
      263 CALL                             R27 2 1
      264 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      266 GETTABLEKS                       R27 R3 K81 ["ikTheme"]
      268 GETTABLEKS                       R27 R27 K89 ["headerColor"]
      270 SETTABLEKS                       R27 R26 K40 ["BackgroundColor3"]
      272 GETTABLEKS                       R27 R3 K81 ["ikTheme"]
      274 GETTABLEKS                       R27 R27 K90 ["headerBorder"]
      276 SETTABLEKS                       R27 R26 K87 ["BorderColor3"]
      278 DUPTABLE                         R27 K92 [{"EnableIKButton"}]
      279 GETUPVAL                         R28 0
      280 GETTABLEKS                       R28 R28 K13 ["createElement"]
      282 GETUPVAL                         R29 5
      283 DUPTABLE                         R30 K95 [{["AnchorPoint"], ["Position"], ["IsRound"] = True, ["Size"], ["OnClick"]}]
      284 GETIMPORT                        R31 K76 [Vector2.new]
      286 LOADK                            R32 K77 [0.5]
      287 LOADN                            R33 1
      288 CALL                             R31 2 1
      289 SETTABLEKS                       R31 R30 K64 ["AnchorPoint"]
      291 GETIMPORT                        R31 K43 [UDim2.new]
      293 LOADK                            R32 K77 [0.5]
      294 LOADN                            R33 0
      295 LOADN                            R34 1
      296 LOADN                            R35 -8
      297 CALL                             R31 4 1
      298 SETTABLEKS                       R31 R30 K55 ["Position"]
      300 GETIMPORT                        R31 K43 [UDim2.new]
      302 LOADN                            R32 1
      303 LOADN                            R33 -8
      304 LOADN                            R34 0
      305 LOADN                            R35 32
      306 CALL                             R31 4 1
      307 SETTABLEKS                       R31 R30 K23 ["Size"]
      309 SETTABLEKS                       R12 R30 K94 ["OnClick"]
      311 DUPTABLE                         R31 K96 [{"TextLabel"}]
      312 GETUPVAL                         R32 0
      313 GETTABLEKS                       R32 R32 K13 ["createElement"]
      315 LOADK                            R33 K63 ["TextLabel"]
      316 DUPTABLE                         R34 K97 [{["BackgroundTransparency"] = 1, ["Size"], ["TextYAlignment"], ["TextSize"], ["Text"], ["Font"], ["TextColor3"]}]
      317 GETIMPORT                        R35 K43 [UDim2.new]
      319 LOADN                            R36 1
      320 LOADN                            R37 0
      321 LOADN                            R38 1
      322 LOADN                            R39 0
      323 CALL                             R35 4 1
      324 SETTABLEKS                       R35 R34 K23 ["Size"]
      326 GETIMPORT                        R35 K80 [Enum.TextYAlignment.Center]
      328 SETTABLEKS                       R35 R34 K68 ["TextYAlignment"]
      330 GETTABLEKS                       R35 R3 K81 ["ikTheme"]
      332 GETTABLEKS                       R35 R35 K82 ["textSize"]
      334 SETTABLEKS                       R35 R34 K69 ["TextSize"]
      336 JUMPIFNOT                        R8 ; [+6]
      337 LOADK                            R37 K85 ["IKMenu"]
      338 LOADK                            R38 K98 ["DisableIK"]
      339 NAMECALL                         R35 R1 K28 ["getText"]
      341 CALL                             R35 3 1
      342 JUMPIF                           R35 ; [+5]
      343 LOADK                            R37 K85 ["IKMenu"]
      344 LOADK                            R38 K99 ["EnableIK"]
      345 NAMECALL                         R35 R1 K28 ["getText"]
      347 CALL                             R35 3 1
      348 SETTABLEKS                       R35 R34 K73 ["Text"]
      350 GETTABLEKS                       R35 R3 K84 ["font"]
      352 SETTABLEKS                       R35 R34 K72 ["Font"]
      354 GETTABLEKS                       R35 R3 K81 ["ikTheme"]
      356 GETTABLEKS                       R35 R35 K83 ["textColor"]
      358 SETTABLEKS                       R35 R34 K70 ["TextColor3"]
      360 CALL                             R32 2 1
      361 SETTABLEKS                       R32 R31 K63 ["TextLabel"]
      363 CALL                             R28 3 1
      364 SETTABLEKS                       R28 R27 K91 ["EnableIKButton"]
      366 CALL                             R24 3 1
      367 SETTABLEKS                       R24 R23 K50 ["BottomFrame"]
      369 CALL                             R20 3 1
      370 SETTABLEKS                       R20 R19 K35 ["Container"]
      372 CALL                             R16 3 -1
      373 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Button"]
       25 GETTABLEKS                       R5 R3 K11 ["DockWidget"]
       27 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       29 GETTABLEKS                       R7 R6 K13 ["withContext"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R9 R0 K14 ["Src"]
       35 GETTABLEKS                       R9 R9 K15 ["Util"]
       37 GETTABLEKS                       R9 R9 K16 ["Input"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Src"]
       44 GETTABLEKS                       R10 R10 K17 ["Components"]
       46 GETTABLEKS                       R10 R10 K18 ["IK"]
       48 GETTABLEKS                       R10 R10 K19 ["IKTreeView"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K14 ["Src"]
       55 GETTABLEKS                       R11 R11 K17 ["Components"]
       57 GETTABLEKS                       R11 R11 K18 ["IK"]
       59 GETTABLEKS                       R11 R11 K20 ["IKModeButtons"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R1 K21 ["PureComponent"]
       64 LOADK                            R13 K22 ["IKWindow"]
       65 NAMECALL                         R11 R11 K23 ["extend"]
       67 CALL                             R11 2 1
       68 GETIMPORT                        R12 K26 [Vector2.new]
       70 LOADN                            R13 260
       71 LOADN                            R14 440
       72 CALL                             R12 2 1
       73 DUPCLOSURE                       R13 K27 [PROTO_4]
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R13 R11 K28 ["init"]
       77 DUPCLOSURE                       R13 K29 [PROTO_5]
       78 SETTABLEKS                       R13 R11 K30 ["willUnmount"]
       80 DUPCLOSURE                       R13 K31 [PROTO_6]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R13 R11 K32 ["render"]
       89 MOVE                             R13 R7
       90 DUPTABLE                         R14 K36 [{"Stylizer", "Localization", "Plugin"}]
       91 GETTABLEKS                       R15 R6 K33 ["Stylizer"]
       93 SETTABLEKS                       R15 R14 K33 ["Stylizer"]
       95 GETTABLEKS                       R15 R6 K34 ["Localization"]
       97 SETTABLEKS                       R15 R14 K34 ["Localization"]
       99 GETTABLEKS                       R15 R6 K35 ["Plugin"]
      101 SETTABLEKS                       R15 R14 K35 ["Plugin"]
      103 CALL                             R13 1 1
      104 MOVE                             R14 R11
      105 CALL                             R13 1 1
      106 MOVE                             R11 R13
      107 RETURN                           R11 1
