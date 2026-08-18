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
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+4]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["onDockWidgetLoaded"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["onTreeUpdated"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K6 ["changeSelectedTrack"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K7 ["onInputBegan"]
       31 RETURN                           R0 0

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
       85 GETUPVAL                         R21 3
       86 CALL                             R21 0 1
       87 JUMPIF                           R21 ; [+3]
       88 GETTABLEKS                       R20 R0 K34 ["onDockWidgetLoaded"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R20
       92 SETTABLE                         R20 R18 R19
       93 DUPTABLE                         R19 K36 [{"Container"}]
       94 GETUPVAL                         R20 0
       95 GETTABLEKS                       R20 R20 K13 ["createElement"]
       97 LOADK                            R21 K37 ["Frame"]
       98 NEWTABLE                         R22 4 0
      100 LOADN                            R23 0
      101 SETTABLEKS                       R23 R22 K38 ["BorderSizePixel"]
      103 GETTABLEKS                       R23 R3 K39 ["backgroundColor"]
      105 SETTABLEKS                       R23 R22 K40 ["BackgroundColor3"]
      107 GETIMPORT                        R23 K43 [UDim2.new]
      109 LOADN                            R24 1
      110 LOADN                            R25 0
      111 LOADN                            R26 1
      112 LOADN                            R27 0
      113 CALL                             R23 4 1
      114 SETTABLEKS                       R23 R22 K28 ["Size"]
      116 GETUPVAL                         R23 0
      117 GETTABLEKS                       R23 R23 K44 ["Event"]
      119 GETTABLEKS                       R23 R23 K45 ["InputBegan"]
      121 GETTABLEKS                       R24 R0 K46 ["onInputBegan"]
      123 SETTABLE                         R24 R22 R23
      124 DUPTABLE                         R23 K51 [{"IKModeControls", "TreeView", "EnableIKPrompt", "BottomFrame"}]
      125 MOVE                             R24 R6
      126 JUMPIFNOT                        R24 ; [+12]
      127 MOVE                             R24 R8
      128 JUMPIFNOT                        R24 ; [+10]
      129 GETUPVAL                         R24 0
      130 GETTABLEKS                       R24 R24 K13 ["createElement"]
      132 GETUPVAL                         R25 4
      133 DUPTABLE                         R26 K54 [{["Height"] = 32, ["IKMode"], ["SetIKMode"]}]
      134 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      136 SETTABLEKS                       R13 R26 K12 ["SetIKMode"]
      138 CALL                             R24 2 1
      139 SETTABLEKS                       R24 R23 K47 ["IKModeControls"]
      141 MOVE                             R24 R4
      142 JUMPIFNOT                        R24 ; [+52]
      143 MOVE                             R24 R8
      144 JUMPIFNOT                        R24 ; [+50]
      145 GETUPVAL                         R24 0
      146 GETTABLEKS                       R24 R24 K13 ["createElement"]
      148 GETUPVAL                         R25 5
      149 DUPTABLE                         R26 K59 [{"Size", "Position", "RootInstance", "PinnedParts", "TogglePinnedPart", "SelectedTrack", "SetSelectedTracks", "Chain", "IKMode", "TreeArray", "OnTreeUpdated"}]
      150 GETIMPORT                        R27 K43 [UDim2.new]
      152 LOADN                            R28 1
      153 LOADN                            R29 0
      154 LOADN                            R30 1
      155 MOVE                             R31 R15
      156 CALL                             R27 4 1
      157 SETTABLEKS                       R27 R26 K28 ["Size"]
      159 GETIMPORT                        R27 K43 [UDim2.new]
      161 LOADN                            R28 0
      162 LOADN                            R29 0
      163 LOADN                            R30 0
      164 MOVE                             R31 R14
      165 CALL                             R27 4 1
      166 SETTABLEKS                       R27 R26 K55 ["Position"]
      168 SETTABLEKS                       R4 R26 K3 ["RootInstance"]
      170 SETTABLEKS                       R5 R26 K4 ["PinnedParts"]
      172 SETTABLEKS                       R11 R26 K10 ["TogglePinnedPart"]
      174 SETTABLEKS                       R9 R26 K8 ["SelectedTrack"]
      176 SETTABLEKS                       R10 R26 K9 ["SetSelectedTracks"]
      178 GETTABLEKS                       R27 R2 K56 ["Chain"]
      180 SETTABLEKS                       R27 R26 K56 ["Chain"]
      182 SETTABLEKS                       R7 R26 K6 ["IKMode"]
      184 GETTABLEKS                       R27 R0 K60 ["state"]
      186 GETTABLEKS                       R27 R27 K61 ["treeArray"]
      188 SETTABLEKS                       R27 R26 K57 ["TreeArray"]
      190 GETTABLEKS                       R27 R0 K62 ["onTreeUpdated"]
      192 SETTABLEKS                       R27 R26 K58 ["OnTreeUpdated"]
      194 CALL                             R24 2 1
      195 SETTABLEKS                       R24 R23 K48 ["TreeView"]
      197 NOT                              R24 R8
      198 JUMPIFNOT                        R24 ; [+62]
      199 GETUPVAL                         R24 0
      200 GETTABLEKS                       R24 R24 K13 ["createElement"]
      202 LOADK                            R25 K63 ["TextLabel"]
      203 DUPTABLE                         R26 K75 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["Font"], ["Text"]}]
      204 GETIMPORT                        R27 K77 [Vector2.new]
      206 LOADK                            R28 K78 [0.5]
      207 LOADK                            R29 K78 [0.5]
      208 CALL                             R27 2 1
      209 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      211 GETIMPORT                        R27 K43 [UDim2.new]
      213 LOADK                            R28 K78 [0.5]
      214 LOADN                            R29 0
      215 LOADK                            R30 K78 [0.5]
      216 LOADN                            R31 0
      217 CALL                             R27 4 1
      218 SETTABLEKS                       R27 R26 K55 ["Position"]
      220 GETIMPORT                        R27 K43 [UDim2.new]
      222 LOADN                            R28 1
      223 LOADN                            R29 -8
      224 LOADN                            R30 1
      225 LOADN                            R31 -40
      226 CALL                             R27 4 1
      227 SETTABLEKS                       R27 R26 K28 ["Size"]
      229 GETIMPORT                        R27 K80 [Enum.TextXAlignment.Center]
      231 SETTABLEKS                       R27 R26 K67 ["TextXAlignment"]
      233 GETIMPORT                        R27 K81 [Enum.TextYAlignment.Center]
      235 SETTABLEKS                       R27 R26 K68 ["TextYAlignment"]
      237 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      239 GETTABLEKS                       R27 R27 K83 ["textSize"]
      241 SETTABLEKS                       R27 R26 K69 ["TextSize"]
      243 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      245 GETTABLEKS                       R27 R27 K84 ["textColor"]
      247 SETTABLEKS                       R27 R26 K70 ["TextColor3"]
      249 GETTABLEKS                       R27 R3 K85 ["font"]
      251 SETTABLEKS                       R27 R26 K73 ["Font"]
      253 LOADK                            R29 K86 ["IKMenu"]
      254 LOADK                            R30 K87 ["Prompt"]
      255 NAMECALL                         R27 R1 K17 ["getText"]
      257 CALL                             R27 3 1
      258 SETTABLEKS                       R27 R26 K74 ["Text"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K49 ["EnableIKPrompt"]
      263 GETUPVAL                         R24 0
      264 GETTABLEKS                       R24 R24 K13 ["createElement"]
      266 LOADK                            R25 K37 ["Frame"]
      267 DUPTABLE                         R26 K89 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"]}]
      268 GETIMPORT                        R27 K43 [UDim2.new]
      270 LOADN                            R28 1
      271 LOADN                            R29 0
      272 LOADN                            R30 0
      273 LOADN                            R31 48
      274 CALL                             R27 4 1
      275 SETTABLEKS                       R27 R26 K28 ["Size"]
      277 GETIMPORT                        R27 K43 [UDim2.new]
      279 LOADN                            R28 0
      280 LOADN                            R29 0
      281 LOADN                            R30 1
      282 LOADN                            R31 0
      283 CALL                             R27 4 1
      284 SETTABLEKS                       R27 R26 K55 ["Position"]
      286 GETIMPORT                        R27 K77 [Vector2.new]
      288 LOADN                            R28 0
      289 LOADN                            R29 1
      290 CALL                             R27 2 1
      291 SETTABLEKS                       R27 R26 K64 ["AnchorPoint"]
      293 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      295 GETTABLEKS                       R27 R27 K90 ["headerColor"]
      297 SETTABLEKS                       R27 R26 K40 ["BackgroundColor3"]
      299 GETTABLEKS                       R27 R3 K82 ["ikTheme"]
      301 GETTABLEKS                       R27 R27 K91 ["headerBorder"]
      303 SETTABLEKS                       R27 R26 K88 ["BorderColor3"]
      305 DUPTABLE                         R27 K93 [{"EnableIKButton"}]
      306 GETUPVAL                         R28 0
      307 GETTABLEKS                       R28 R28 K13 ["createElement"]
      309 GETUPVAL                         R29 6
      310 DUPTABLE                         R30 K96 [{["AnchorPoint"], ["Position"], ["IsRound"] = True, ["Size"], ["OnClick"]}]
      311 GETIMPORT                        R31 K77 [Vector2.new]
      313 LOADK                            R32 K78 [0.5]
      314 LOADN                            R33 1
      315 CALL                             R31 2 1
      316 SETTABLEKS                       R31 R30 K64 ["AnchorPoint"]
      318 GETIMPORT                        R31 K43 [UDim2.new]
      320 LOADK                            R32 K78 [0.5]
      321 LOADN                            R33 0
      322 LOADN                            R34 1
      323 LOADN                            R35 -8
      324 CALL                             R31 4 1
      325 SETTABLEKS                       R31 R30 K55 ["Position"]
      327 GETIMPORT                        R31 K43 [UDim2.new]
      329 LOADN                            R32 1
      330 LOADN                            R33 -8
      331 LOADN                            R34 0
      332 LOADN                            R35 32
      333 CALL                             R31 4 1
      334 SETTABLEKS                       R31 R30 K28 ["Size"]
      336 SETTABLEKS                       R12 R30 K95 ["OnClick"]
      338 DUPTABLE                         R31 K97 [{"TextLabel"}]
      339 GETUPVAL                         R32 0
      340 GETTABLEKS                       R32 R32 K13 ["createElement"]
      342 LOADK                            R33 K63 ["TextLabel"]
      343 DUPTABLE                         R34 K98 [{["BackgroundTransparency"] = 1, ["Size"], ["TextYAlignment"], ["TextSize"], ["Text"], ["Font"], ["TextColor3"]}]
      344 GETIMPORT                        R35 K43 [UDim2.new]
      346 LOADN                            R36 1
      347 LOADN                            R37 0
      348 LOADN                            R38 1
      349 LOADN                            R39 0
      350 CALL                             R35 4 1
      351 SETTABLEKS                       R35 R34 K28 ["Size"]
      353 GETIMPORT                        R35 K81 [Enum.TextYAlignment.Center]
      355 SETTABLEKS                       R35 R34 K68 ["TextYAlignment"]
      357 GETTABLEKS                       R35 R3 K82 ["ikTheme"]
      359 GETTABLEKS                       R35 R35 K83 ["textSize"]
      361 SETTABLEKS                       R35 R34 K69 ["TextSize"]
      363 JUMPIFNOT                        R8 ; [+6]
      364 LOADK                            R37 K86 ["IKMenu"]
      365 LOADK                            R38 K99 ["DisableIK"]
      366 NAMECALL                         R35 R1 K17 ["getText"]
      368 CALL                             R35 3 1
      369 JUMPIF                           R35 ; [+5]
      370 LOADK                            R37 K86 ["IKMenu"]
      371 LOADK                            R38 K100 ["EnableIK"]
      372 NAMECALL                         R35 R1 K17 ["getText"]
      374 CALL                             R35 3 1
      375 SETTABLEKS                       R35 R34 K74 ["Text"]
      377 GETTABLEKS                       R35 R3 K85 ["font"]
      379 SETTABLEKS                       R35 R34 K73 ["Font"]
      381 GETTABLEKS                       R35 R3 K82 ["ikTheme"]
      383 GETTABLEKS                       R35 R35 K84 ["textColor"]
      385 SETTABLEKS                       R35 R34 K70 ["TextColor3"]
      387 CALL                             R32 2 1
      388 SETTABLEKS                       R32 R31 K63 ["TextLabel"]
      390 CALL                             R28 3 1
      391 SETTABLEKS                       R28 R27 K92 ["EnableIKButton"]
      393 CALL                             R24 3 1
      394 SETTABLEKS                       R24 R23 K50 ["BottomFrame"]
      396 CALL                             R20 3 1
      397 SETTABLEKS                       R20 R19 K35 ["Container"]
      399 CALL                             R16 3 -1
      400 RETURN                           R16 -1

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
       42 GETTABLEKS                       R10 R0 K17 ["LuaFlags"]
       44 GETTABLEKS                       R10 R10 K18 ["GetFFlagACERoactCompatPrepFixes"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Src"]
       51 GETTABLEKS                       R11 R11 K19 ["Components"]
       53 GETTABLEKS                       R11 R11 K20 ["IK"]
       55 GETTABLEKS                       R11 R11 K21 ["IKTreeView"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K14 ["Src"]
       62 GETTABLEKS                       R12 R12 K19 ["Components"]
       64 GETTABLEKS                       R12 R12 K20 ["IK"]
       66 GETTABLEKS                       R12 R12 K22 ["IKModeButtons"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R1 K23 ["PureComponent"]
       71 LOADK                            R14 K24 ["IKWindow"]
       72 NAMECALL                         R12 R12 K25 ["extend"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K28 [Vector2.new]
       77 LOADN                            R14 260
       78 LOADN                            R15 440
       79 CALL                             R13 2 1
       80 DUPCLOSURE                       R14 K29 [PROTO_5]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 SETTABLEKS                       R14 R12 K30 ["init"]
       85 DUPCLOSURE                       R14 K31 [PROTO_6]
       86 SETTABLEKS                       R14 R12 K32 ["willUnmount"]
       88 DUPCLOSURE                       R14 K33 [PROTO_7]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R14 R12 K34 ["render"]
       98 MOVE                             R14 R7
       99 DUPTABLE                         R15 K38 [{"Stylizer", "Localization", "Plugin"}]
      100 GETTABLEKS                       R16 R6 K35 ["Stylizer"]
      102 SETTABLEKS                       R16 R15 K35 ["Stylizer"]
      104 GETTABLEKS                       R16 R6 K36 ["Localization"]
      106 SETTABLEKS                       R16 R15 K36 ["Localization"]
      108 GETTABLEKS                       R16 R6 K37 ["Plugin"]
      110 SETTABLEKS                       R16 R15 K37 ["Plugin"]
      112 CALL                             R14 1 1
      113 MOVE                             R15 R12
      114 CALL                             R14 1 1
      115 MOVE                             R12 R14
      116 RETURN                           R12 1
