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
        0 LOADK                            R3 K0 ["PluginGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["hideTree"]
        8 NAMECALL                         R1 R0 K3 ["BindToClose"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"treeArray"}]
        2 SETTABLEKS                       R0 R3 K0 ["treeArray"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"treeArray"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["treeArray"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["hideTree"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onDockWidgetLoaded"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onTreeUpdated"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K6 ["changeSelectedTrack"]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K7 ["onInputBegan"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["hideTree"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_7:
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
       40 NEWTABLE                         R18 16 0
       42 LOADK                            R19 K14 ["ManageIK"]
       43 SETTABLEKS                       R19 R18 K15 ["Id"]
       45 LOADK                            R21 K16 ["Title"]
       46 LOADK                            R22 K14 ["ManageIK"]
       47 NAMECALL                         R19 R1 K17 ["getText"]
       49 CALL                             R19 3 1
       50 SETTABLEKS                       R19 R18 K16 ["Title"]
       52 LOADK                            R19 K14 ["ManageIK"]
       53 SETTABLEKS                       R19 R18 K18 ["Name"]
       55 GETIMPORT                        R19 K22 [Enum.ZIndexBehavior.Global]
       57 SETTABLEKS                       R19 R18 K20 ["ZIndexBehavior"]
       59 GETIMPORT                        R19 K25 [Enum.InitialDockState.Left]
       61 SETTABLEKS                       R19 R18 K23 ["InitialDockState"]
       63 LOADB                            R19 1
       64 SETTABLEKS                       R19 R18 K26 ["InitialEnabled"]
       66 LOADB                            R19 1
       67 SETTABLEKS                       R19 R18 K27 ["InitialEnabledShouldOverrideRestore"]
       69 GETUPVAL                         R19 2
       70 SETTABLEKS                       R19 R18 K28 ["Size"]
       72 GETUPVAL                         R19 2
       73 SETTABLEKS                       R19 R18 K29 ["MinSize"]
       75 GETTABLEKS                       R19 R0 K30 ["hideTree"]
       77 SETTABLEKS                       R19 R18 K31 ["OnClose"]
       79 LOADB                            R19 1
       80 SETTABLEKS                       R19 R18 K32 ["Enabled"]
       82 GETUPVAL                         R19 0
       83 GETTABLEKS                       R19 R19 K33 ["Ref"]
       85 GETTABLEKS                       R20 R0 K34 ["onDockWidgetLoaded"]
       87 SETTABLE                         R20 R18 R19
       88 DUPTABLE                         R19 K36 [{"Container"}]
       89 GETUPVAL                         R20 0
       90 GETTABLEKS                       R20 R20 K13 ["createElement"]
       92 LOADK                            R21 K37 ["Frame"]
       93 NEWTABLE                         R22 4 0
       95 LOADN                            R23 0
       96 SETTABLEKS                       R23 R22 K38 ["BorderSizePixel"]
       98 GETTABLEKS                       R23 R3 K39 ["backgroundColor"]
      100 SETTABLEKS                       R23 R22 K40 ["BackgroundColor3"]
      102 GETIMPORT                        R23 K43 [UDim2.new]
      104 LOADN                            R24 1
      105 LOADN                            R25 0
      106 LOADN                            R26 1
      107 LOADN                            R27 0
      108 CALL                             R23 4 1
      109 SETTABLEKS                       R23 R22 K28 ["Size"]
      111 GETUPVAL                         R23 0
      112 GETTABLEKS                       R23 R23 K44 ["Event"]
      114 GETTABLEKS                       R23 R23 K45 ["InputBegan"]
      116 GETTABLEKS                       R24 R0 K46 ["onInputBegan"]
      118 SETTABLE                         R24 R22 R23
      119 DUPTABLE                         R23 K51 [{"IKModeControls", "TreeView", "EnableIKPrompt", "BottomFrame"}]
      120 MOVE                             R24 R6
      121 JUMPIFNOT                        R24 ; [+12]
      122 MOVE                             R24 R8
      123 JUMPIFNOT                        R24 ; [+10]
      124 GETUPVAL                         R24 0
      125 GETTABLEKS                       R24 R24 K13 ["createElement"]
      127 GETUPVAL                         R25 3
      128 DUPTABLE                         R26 K54 [{["Height"] = 32, ["IKMode"], ["SetIKMode"]}]
      129 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      131 SETTABLEKS                       R13 R26 K12 ["SetIKMode"]
      133 CALL                             R24 2 1
      134 SETTABLEKS                       R24 R23 K47 ["IKModeControls"]
      136 MOVE                             R24 R4
      137 JUMPIFNOT                        R24 ; [+52]
      138 MOVE                             R24 R8
      139 JUMPIFNOT                        R24 ; [+50]
      140 GETUPVAL                         R24 0
      141 GETTABLEKS                       R24 R24 K13 ["createElement"]
      143 GETUPVAL                         R25 4
      144 DUPTABLE                         R26 K59 [{"Size", "Position", "RootInstance", "PinnedParts", "TogglePinnedPart", "SelectedTrack", "SetSelectedTracks", "Chain", "IKMode", "TreeArray", "OnTreeUpdated"}]
      145 GETIMPORT                        R27 K43 [UDim2.new]
      147 LOADN                            R28 1
      148 LOADN                            R29 0
      149 LOADN                            R30 1
      150 MOVE                             R31 R15
      151 CALL                             R27 4 1
      152 SETTABLEKS                       R27 R26 K28 ["Size"]
      154 GETIMPORT                        R27 K43 [UDim2.new]
      156 LOADN                            R28 0
      157 LOADN                            R29 0
      158 LOADN                            R30 0
      159 MOVE                             R31 R14
      160 CALL                             R27 4 1
      161 SETTABLEKS                       R27 R26 K55 ["Position"]
      163 SETTABLEKS                       R4 R26 K3 ["RootInstance"]
      165 SETTABLEKS                       R5 R26 K4 ["PinnedParts"]
      167 SETTABLEKS                       R11 R26 K10 ["TogglePinnedPart"]
      169 SETTABLEKS                       R9 R26 K8 ["SelectedTrack"]
      171 SETTABLEKS                       R10 R26 K9 ["SetSelectedTracks"]
      173 GETTABLEKS                       R27 R2 K56 ["Chain"]
      175 SETTABLEKS                       R27 R26 K56 ["Chain"]
      177 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      179 GETTABLEKS                       R27 R0 K60 ["state"]
      181 GETTABLEKS                       R27 R27 K61 ["treeArray"]
      183 SETTABLEKS                       R27 R26 K57 ["TreeArray"]
      185 GETTABLEKS                       R27 R0 K62 ["onTreeUpdated"]
      187 SETTABLEKS                       R27 R26 K58 ["OnTreeUpdated"]
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K48 ["TreeView"]
      192 NOT                              R24 R8
      193 JUMPIFNOT                        R24 ; [+62]
      194 GETUPVAL                         R24 0
      195 GETTABLEKS                       R24 R24 K13 ["createElement"]
      197 LOADK                            R25 K63 ["TextLabel"]
      198 DUPTABLE                         R26 K75 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["Font"], ["Text"]}]
      199 GETIMPORT                        R27 K77 [Vector2.new]
      201 LOADK                            R28 K78 [0.5]
      202 LOADK                            R29 K78 [0.5]
      203 CALL                             R27 2 1
      204 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      206 GETIMPORT                        R27 K43 [UDim2.new]
      208 LOADK                            R28 K78 [0.5]
      209 LOADN                            R29 0
      210 LOADK                            R30 K78 [0.5]
      211 LOADN                            R31 0
      212 CALL                             R27 4 1
      213 SETTABLEKS                       R27 R26 K55 ["Position"]
      215 GETIMPORT                        R27 K43 [UDim2.new]
      217 LOADN                            R28 1
      218 LOADN                            R29 -8
      219 LOADN                            R30 1
      220 LOADN                            R31 -40
      221 CALL                             R27 4 1
      222 SETTABLEKS                       R27 R26 K28 ["Size"]
      224 GETIMPORT                        R27 K80 [Enum.TextXAlignment.Center]
      226 SETTABLEKS                       R27 R26 K67 ["TextXAlignment"]
      228 GETIMPORT                        R27 K81 [Enum.TextYAlignment.Center]
      230 SETTABLEKS                       R27 R26 K68 ["TextYAlignment"]
      232 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      234 GETTABLEKS                       R27 R27 K83 ["textSize"]
      236 SETTABLEKS                       R27 R26 K69 ["TextSize"]
      238 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      240 GETTABLEKS                       R27 R27 K84 ["textColor"]
      242 SETTABLEKS                       R27 R26 K70 ["TextColor3"]
      244 GETTABLEKS                       R27 R3 K85 ["font"]
      246 SETTABLEKS                       R27 R26 K73 ["Font"]
      248 LOADK                            R29 K86 ["IKMenu"]
      249 LOADK                            R30 K87 ["Prompt"]
      250 NAMECALL                         R27 R1 K17 ["getText"]
      252 CALL                             R27 3 1
      253 SETTABLEKS                       R27 R26 K74 ["Text"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K49 ["EnableIKPrompt"]
      258 GETUPVAL                         R24 0
      259 GETTABLEKS                       R24 R24 K13 ["createElement"]
      261 LOADK                            R25 K37 ["Frame"]
      262 DUPTABLE                         R26 K89 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"]}]
      263 GETIMPORT                        R27 K43 [UDim2.new]
      265 LOADN                            R28 1
      266 LOADN                            R29 0
      267 LOADN                            R30 0
      268 LOADN                            R31 48
      269 CALL                             R27 4 1
      270 SETTABLEKS                       R27 R26 K28 ["Size"]
      272 GETIMPORT                        R27 K43 [UDim2.new]
      274 LOADN                            R28 0
      275 LOADN                            R29 0
      276 LOADN                            R30 1
      277 LOADN                            R31 0
      278 CALL                             R27 4 1
      279 SETTABLEKS                       R27 R26 K55 ["Position"]
      281 GETIMPORT                        R27 K77 [Vector2.new]
      283 LOADN                            R28 0
      284 LOADN                            R29 1
      285 CALL                             R27 2 1
      286 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      288 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      290 GETTABLEKS                       R27 R27 K90 ["headerColor"]
      292 SETTABLEKS                       R27 R26 K40 ["BackgroundColor3"]
      294 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      296 GETTABLEKS                       R27 R27 K91 ["headerBorder"]
      298 SETTABLEKS                       R27 R26 K88 ["BorderColor3"]
      300 DUPTABLE                         R27 K93 [{"EnableIKButton"}]
      301 GETUPVAL                         R28 0
      302 GETTABLEKS                       R28 R28 K13 ["createElement"]
      304 GETUPVAL                         R29 5
      305 DUPTABLE                         R30 K96 [{["AnchorPoint"], ["Position"], ["IsRound"] = True, ["Size"], ["OnClick"]}]
      306 GETIMPORT                        R31 K77 [Vector2.new]
      308 LOADK                            R32 K78 [0.5]
      309 LOADN                            R33 1
      310 CALL                             R31 2 1
      311 SETTABLEKS                       R31 R30 K64 ["AnchorPoint"]
      313 GETIMPORT                        R31 K43 [UDim2.new]
      315 LOADK                            R32 K78 [0.5]
      316 LOADN                            R33 0
      317 LOADN                            R34 1
      318 LOADN                            R35 -8
      319 CALL                             R31 4 1
      320 SETTABLEKS                       R31 R30 K55 ["Position"]
      322 GETIMPORT                        R31 K43 [UDim2.new]
      324 LOADN                            R32 1
      325 LOADN                            R33 -8
      326 LOADN                            R34 0
      327 LOADN                            R35 32
      328 CALL                             R31 4 1
      329 SETTABLEKS                       R31 R30 K28 ["Size"]
      331 SETTABLEKS                       R12 R30 K95 ["OnClick"]
      333 DUPTABLE                         R31 K97 [{"TextLabel"}]
      334 GETUPVAL                         R32 0
      335 GETTABLEKS                       R32 R32 K13 ["createElement"]
      337 LOADK                            R33 K63 ["TextLabel"]
      338 DUPTABLE                         R34 K98 [{["BackgroundTransparency"] = 1, ["Size"], ["TextYAlignment"], ["TextSize"], ["Text"], ["Font"], ["TextColor3"]}]
      339 GETIMPORT                        R35 K43 [UDim2.new]
      341 LOADN                            R36 1
      342 LOADN                            R37 0
      343 LOADN                            R38 1
      344 LOADN                            R39 0
      345 CALL                             R35 4 1
      346 SETTABLEKS                       R35 R34 K28 ["Size"]
      348 GETIMPORT                        R35 K81 [Enum.TextYAlignment.Center]
      350 SETTABLEKS                       R35 R34 K68 ["TextYAlignment"]
      352 GETTABLEKS                       R35 R3 K82 ["ikTheme"]
      354 GETTABLEKS                       R35 R35 K83 ["textSize"]
      356 SETTABLEKS                       R35 R34 K69 ["TextSize"]
      358 JUMPIFNOT                        R8 ; [+6]
      359 LOADK                            R37 K86 ["IKMenu"]
      360 LOADK                            R38 K99 ["DisableIK"]
      361 NAMECALL                         R35 R1 K17 ["getText"]
      363 CALL                             R35 3 1
      364 JUMPIF                           R35 ; [+5]
      365 LOADK                            R37 K86 ["IKMenu"]
      366 LOADK                            R38 K100 ["EnableIK"]
      367 NAMECALL                         R35 R1 K17 ["getText"]
      369 CALL                             R35 3 1
      370 SETTABLEKS                       R35 R34 K74 ["Text"]
      372 GETTABLEKS                       R35 R3 K85 ["font"]
      374 SETTABLEKS                       R35 R34 K73 ["Font"]
      376 GETTABLEKS                       R35 R3 K82 ["ikTheme"]
      378 GETTABLEKS                       R35 R35 K84 ["textColor"]
      380 SETTABLEKS                       R35 R34 K70 ["TextColor3"]
      382 CALL                             R32 2 1
      383 SETTABLEKS                       R32 R31 K63 ["TextLabel"]
      385 CALL                             R28 3 1
      386 SETTABLEKS                       R28 R27 K92 ["EnableIKButton"]
      388 CALL                             R24 3 1
      389 SETTABLEKS                       R24 R23 K50 ["BottomFrame"]
      391 CALL                             R20 3 1
      392 SETTABLEKS                       R20 R19 K35 ["Container"]
      394 CALL                             R16 3 -1
      395 RETURN                           R16 -1

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
       73 DUPCLOSURE                       R13 K27 [PROTO_5]
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R13 R11 K28 ["init"]
       77 DUPCLOSURE                       R13 K29 [PROTO_6]
       78 SETTABLEKS                       R13 R11 K30 ["willUnmount"]
       80 DUPCLOSURE                       R13 K31 [PROTO_7]
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
