PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteContentSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["state"]
        7 GETTABLEKS                       R2 R2 K3 ["endButtonsWidth"]
        9 JUMPIFEQ                         R1 R2 ; [+8]
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R4 K4 [{"endButtonsWidth"}]
       13 SETTABLEKS                       R1 R4 K3 ["endButtonsWidth"]
       15 NAMECALL                         R2 R2 K5 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["endButtonsWidth"] = 0}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K6 ["resetCopiedTask"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K7 ["onEndButtonsSizeChanged"]
       10 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isUnmounted"]
        3 GETTABLEKS                       R1 R0 K1 ["resetCopiedTask"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETIMPORT                        R1 K4 [task.cancel]
        8 GETTABLEKS                       R2 R0 K1 ["resetCopiedTask"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["resetCopiedTask"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+22]
        1 GETUPVAL                         R1 0
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["LogGameLinkCopied"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["ActiveTab"]
       12 JUMPIF                           R2 ; [+3]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["SelectedPillKey"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 3
       20 NAMECALL                         R1 R1 K4 ["showGameLinkCopied"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate game link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NAMECALL                         R0 R0 K0 ["andThen"]
        9 CALL                             R0 2 1
       10 DUPCLOSURE                       R2 K1 [PROTO_8]
       11 NAMECALL                         R0 R0 K2 ["catch"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["IsTeamCreateEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["HasUnsavedChanges"]
       10 GETTABLEKS                       R6 R1 K5 ["HasCollaborators"]
       12 JUMPIF                           R5 ; [+4]
       13 NOT                              R7 R4
       14 JUMPIFNOT                        R7 ; [+5]
       15 MOVE                             R7 R6
       16 JUMPIFNOT                        R7 ; [+3]
       17 GETTABLEKS                       R8 R1 K6 ["IsEarlyTesterMemberEligibilityLoading"]
       19 NOT                              R7 R8
       20 GETTABLEKS                       R8 R1 K7 ["OnSavePressed"]
       22 GETTABLEKS                       R9 R1 K8 ["OnCancelPressed"]
       24 GETTABLEKS                       R10 R1 K9 ["OnViewAllPermissionsPressed"]
       26 GETTABLEKS                       R11 R1 K10 ["EarlyTesterCTA"]
       28 LOADNIL                          R12
       29 LOADNIL                          R13
       30 LOADNIL                          R14
       31 JUMPIFEQKNIL                     R11 ; [+30]
       33 GETTABLEKS                       R15 R11 K11 ["kind"]
       35 JUMPIFNOTEQKS                    R15 K12 ["select"] ; [+8]
       37 LOADK                            R17 K13 ["Button"]
       38 LOADK                            R18 K14 ["Select"]
       39 NAMECALL                         R15 R3 K15 ["getText"]
       41 CALL                             R15 3 1
       42 MOVE                             R12 R15
       43 JUMP                             ; [+6]
       44 LOADK                            R17 K13 ["Button"]
       45 LOADK                            R18 K16 ["Add"]
       46 NAMECALL                         R15 R3 K15 ["getText"]
       48 CALL                             R15 3 1
       49 MOVE                             R12 R15
       50 GETTABLEKS                       R13 R11 K17 ["isDisabled"]
       52 GETTABLEKS                       R15 R11 K11 ["kind"]
       54 JUMPIFNOTEQKS                    R15 K12 ["select"] ; [+4]
       56 GETTABLEKS                       R14 R1 K18 ["OnCommitEarlyTesterRolePick"]
       58 JUMP                             ; [+13]
       59 GETTABLEKS                       R14 R1 K19 ["OnCommitEarlyTesterSelection"]
       61 JUMP                             ; [+10]
       62 LOADK                            R17 K20 ["Buttons"]
       63 LOADK                            R18 K21 ["Save"]
       64 NAMECALL                         R15 R3 K15 ["getText"]
       66 CALL                             R15 3 1
       67 MOVE                             R12 R15
       68 NOT                              R13 R7
       69 NEWCLOSURE                       R14 P0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 JUMPIFEQKNIL                     R10 ; [+104]
       74 GETUPVAL                         R16 0
       75 JUMPIFNOT                        R16 ; [+62]
       76 GETUPVAL                         R15 1
       77 GETTABLEKS                       R15 R15 K22 ["createElement"]
       79 LOADK                            R16 K23 ["Frame"]
       80 DUPTABLE                         R17 K32 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2}]
       81 GETIMPORT                        R18 K35 [Vector2.new]
       83 LOADN                            R19 0
       84 LOADK                            R20 K36 [0.5]
       85 CALL                             R18 2 1
       86 SETTABLEKS                       R18 R17 K26 ["AnchorPoint"]
       88 GETIMPORT                        R18 K38 [UDim2.new]
       90 LOADN                            R19 0
       91 GETTABLEKS                       R20 R2 K39 ["buttonBar"]
       93 GETTABLEKS                       R20 R20 K40 ["edgePadding"]
       95 LOADK                            R21 K36 [0.5]
       96 LOADN                            R22 0
       97 CALL                             R18 4 1
       98 SETTABLEKS                       R18 R17 K27 ["Position"]
      100 GETIMPORT                        R18 K43 [Enum.AutomaticSize.XY]
      102 SETTABLEKS                       R18 R17 K28 ["AutomaticSize"]
      104 GETIMPORT                        R18 K45 [UDim2.fromOffset]
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 CALL                             R18 2 1
      109 SETTABLEKS                       R18 R17 K29 ["Size"]
      111 DUPTABLE                         R18 K47 [{"Link"}]
      112 GETUPVAL                         R19 2
      113 GETTABLEKS                       R19 R19 K22 ["createElement"]
      115 GETUPVAL                         R20 3
      116 GETTABLEKS                       R20 R20 K13 ["Button"]
      118 DUPTABLE                         R21 K53 [{["variant"], ["size"] = "Medium", ["text"], ["onActivated"]}]
      119 GETUPVAL                         R22 4
      120 GETTABLEKS                       R22 R22 K46 ["Link"]
      122 SETTABLEKS                       R22 R21 K48 ["variant"]
      124 LOADK                            R24 K20 ["Buttons"]
      125 LOADK                            R25 K54 ["ViewAllPermissionsInCreatorHub"]
      126 NAMECALL                         R22 R3 K15 ["getText"]
      128 CALL                             R22 3 1
      129 SETTABLEKS                       R22 R21 K51 ["text"]
      131 SETTABLEKS                       R10 R21 K52 ["onActivated"]
      133 CALL                             R19 2 1
      134 SETTABLEKS                       R19 R18 K46 ["Link"]
      136 CALL                             R15 3 1
      137 JUMP                             ; [+40]
      138 GETUPVAL                         R15 1
      139 GETTABLEKS                       R15 R15 K22 ["createElement"]
      141 GETUPVAL                         R16 5
      142 DUPTABLE                         R17 K58 [{["AnchorPoint"], ["Position"], ["Text"], ["OnClick"], ["TextXAlignment"], ["ZIndex"] = 2}]
      143 GETIMPORT                        R18 K35 [Vector2.new]
      145 LOADN                            R19 0
      146 LOADK                            R20 K36 [0.5]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K26 ["AnchorPoint"]
      150 GETIMPORT                        R18 K38 [UDim2.new]
      152 LOADN                            R19 0
      153 GETTABLEKS                       R20 R2 K39 ["buttonBar"]
      155 GETTABLEKS                       R20 R20 K40 ["edgePadding"]
      157 LOADK                            R21 K36 [0.5]
      158 LOADN                            R22 0
      159 CALL                             R18 4 1
      160 SETTABLEKS                       R18 R17 K27 ["Position"]
      162 LOADK                            R20 K20 ["Buttons"]
      163 LOADK                            R21 K54 ["ViewAllPermissionsInCreatorHub"]
      164 NAMECALL                         R18 R3 K15 ["getText"]
      166 CALL                             R18 3 1
      167 SETTABLEKS                       R18 R17 K55 ["Text"]
      169 SETTABLEKS                       R10 R17 K56 ["OnClick"]
      171 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R18 R17 K57 ["TextXAlignment"]
      175 CALL                             R15 2 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R15
      178 GETUPVAL                         R17 0
      179 JUMPIFNOT                        R17 ; [+14]
      180 DUPTABLE                         R16 K62 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      181 LOADK                            R19 K20 ["Buttons"]
      182 LOADK                            R20 K63 ["Cancel"]
      183 NAMECALL                         R17 R3 K15 ["getText"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K51 ["text"]
      188 NEWCLOSURE                       R17 P1
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R5
      191 SETTABLEKS                       R17 R16 K52 ["onActivated"]
      193 JUMP                             ; [+13]
      194 DUPTABLE                         R16 K67 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      195 LOADK                            R19 K20 ["Buttons"]
      196 LOADK                            R20 K63 ["Cancel"]
      197 NAMECALL                         R17 R3 K15 ["getText"]
      199 CALL                             R17 3 1
      200 SETTABLEKS                       R17 R16 K64 ["Name"]
      202 NEWCLOSURE                       R17 P2
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R5
      205 SETTABLEKS                       R17 R16 K65 ["OnPressed"]
      207 GETUPVAL                         R18 0
      208 JUMPIFNOT                        R18 ; [+15]
      209 DUPTABLE                         R17 K70 [{["text"], ["isDisabled"], ["isLoading"], ["onActivated"], ["variant"] = "Emphasis"}]
      210 SETTABLEKS                       R12 R17 K51 ["text"]
      212 SETTABLEKS                       R13 R17 K17 ["isDisabled"]
      214 LOADB                            R18 0
      215 JUMPIFNOTEQKNIL                  R11 ; [+3]
      217 GETTABLEKS                       R18 R1 K71 ["IsSaving"]
      219 SETTABLEKS                       R18 R17 K68 ["isLoading"]
      221 SETTABLEKS                       R14 R17 K52 ["onActivated"]
      223 JUMP                             ; [+22]
      224 DUPTABLE                         R17 K75 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
      225 SETTABLEKS                       R12 R17 K64 ["Name"]
      227 NEWCLOSURE                       R18 P3
      228 CAPTURE                          REF R13
      229 CAPTURE                          REF R14
      230 SETTABLEKS                       R18 R17 K65 ["OnPressed"]
      232 JUMPIF                           R13 ; [+2]
      233 LOADK                            R18 K76 ["Active"]
      234 JUMP                             ; [+1]
      235 LOADK                            R18 K77 ["Passive"]
      236 SETTABLEKS                       R18 R17 K66 ["Style"]
      238 JUMPIFNOT                        R13 ; [+4]
      239 GETUPVAL                         R18 6
      240 GETTABLEKS                       R18 R18 K78 ["Disabled"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R18
      244 SETTABLEKS                       R18 R17 K74 ["StyleModifier"]
      246 NEWTABLE                         R18 0 2
      248 MOVE                             R19 R16
      249 MOVE                             R20 R17
      250 SETLIST                          R18 R19 2 [1]
      252 LOADNIL                          R19
      253 GETTABLEKS                       R20 R1 K79 ["FetchGameLink"]
      255 JUMPIFEQKNIL                     R20 ; [+74]
      257 LOADK                            R23 K20 ["Buttons"]
      258 LOADK                            R24 K80 ["CopyGameLink"]
      259 NAMECALL                         R21 R3 K15 ["getText"]
      261 CALL                             R21 3 1
      262 NEWCLOSURE                       R22 P4
      263 CAPTURE                          VAL R20
      264 CAPTURE                          UPVAL U7
      265 CAPTURE                          VAL R1
      266 CAPTURE                          UPVAL U8
      267 CAPTURE                          VAL R0
      268 GETUPVAL                         R23 8
      269 JUMPIFNOT                        R23 ; [+41]
      270 GETUPVAL                         R23 2
      271 GETTABLEKS                       R23 R23 K22 ["createElement"]
      273 GETUPVAL                         R24 3
      274 GETTABLEKS                       R24 R24 K13 ["Button"]
      276 DUPTABLE                         R25 K84 [{["variant"], ["size"] = "Medium", ["icon"], ["text"], ["onActivated"], ["LayoutOrder"] = 3}]
      277 GETUPVAL                         R26 4
      278 GETTABLEKS                       R26 R26 K85 ["Utility"]
      280 SETTABLEKS                       R26 R25 K48 ["variant"]
      282 GETTABLEKS                       R27 R0 K86 ["state"]
      284 GETTABLEKS                       R27 R27 K87 ["isGameLinkCopied"]
      286 JUMPIFNOT                        R27 ; [+2]
      287 LOADK                            R26 K88 ["check"]
      288 JUMP                             ; [+1]
      289 LOADK                            R26 K89 ["chain-link"]
      290 SETTABLEKS                       R26 R25 K81 ["icon"]
      292 GETTABLEKS                       R27 R0 K86 ["state"]
      294 GETTABLEKS                       R27 R27 K87 ["isGameLinkCopied"]
      296 JUMPIFNOT                        R27 ; [+6]
      297 LOADK                            R28 K20 ["Buttons"]
      298 LOADK                            R29 K90 ["Copied"]
      299 NAMECALL                         R26 R3 K15 ["getText"]
      301 CALL                             R26 3 1
      302 JUMP                             ; [+1]
      303 MOVE                             R26 R21
      304 SETTABLEKS                       R26 R25 K51 ["text"]
      306 SETTABLEKS                       R22 R25 K52 ["onActivated"]
      308 CALL                             R23 2 1
      309 MOVE                             R19 R23
      310 JUMP                             ; [+19]
      311 GETUPVAL                         R26 0
      312 JUMPIFNOT                        R26 ; [+6]
      313 DUPTABLE                         R25 K62 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      314 SETTABLEKS                       R21 R25 K51 ["text"]
      316 SETTABLEKS                       R22 R25 K52 ["onActivated"]
      318 JUMP                             ; [+5]
      319 DUPTABLE                         R25 K67 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      320 SETTABLEKS                       R21 R25 K64 ["Name"]
      322 SETTABLEKS                       R22 R25 K65 ["OnPressed"]
      324 FASTCALL2                        TABLE_INSERT R18 R25 ; [+4]
      326 MOVE                             R24 R18
      327 GETIMPORT                        R23 K93 [table.insert]
      329 CALL                             R23 2 0
      330 GETUPVAL                         R22 8
      331 JUMPIFNOT                        R22 ; [+134]
      332 GETUPVAL                         R21 1
      333 GETTABLEKS                       R21 R21 K22 ["createElement"]
      335 LOADK                            R22 K23 ["Frame"]
      336 DUPTABLE                         R23 K32 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2}]
      337 GETIMPORT                        R24 K35 [Vector2.new]
      339 LOADN                            R25 0
      340 LOADK                            R26 K36 [0.5]
      341 CALL                             R24 2 1
      342 SETTABLEKS                       R24 R23 K26 ["AnchorPoint"]
      344 GETIMPORT                        R24 K38 [UDim2.new]
      346 LOADN                            R25 0
      347 GETTABLEKS                       R26 R2 K39 ["buttonBar"]
      349 GETTABLEKS                       R26 R26 K40 ["edgePadding"]
      351 LOADK                            R27 K36 [0.5]
      352 LOADN                            R28 0
      353 CALL                             R24 4 1
      354 SETTABLEKS                       R24 R23 K27 ["Position"]
      356 GETIMPORT                        R24 K95 [Enum.AutomaticSize.Y]
      358 SETTABLEKS                       R24 R23 K28 ["AutomaticSize"]
      360 GETIMPORT                        R24 K38 [UDim2.new]
      362 LOADN                            R25 1
      363 LOADN                            R30 2
      364 GETTABLEKS                       R31 R2 K39 ["buttonBar"]
      366 GETTABLEKS                       R31 R31 K40 ["edgePadding"]
      368 MUL                              R29 R30 R31
      369 GETTABLEKS                       R30 R2 K39 ["buttonBar"]
      371 GETTABLEKS                       R30 R30 K96 ["padding"]
      373 ADD                              R28 R29 R30
      374 GETTABLEKS                       R29 R0 K86 ["state"]
      376 GETTABLEKS                       R29 R29 K97 ["endButtonsWidth"]
      378 ADD                              R27 R28 R29
      379 MINUS                            R26 R27
      380 LOADN                            R27 0
      381 LOADN                            R28 0
      382 CALL                             R24 4 1
      383 SETTABLEKS                       R24 R23 K29 ["Size"]
      385 DUPTABLE                         R24 K101 [{"Layout", "ViewAllPermissions", "Separator", "CopyGameLink"}]
      386 GETUPVAL                         R25 1
      387 GETTABLEKS                       R25 R25 K22 ["createElement"]
      389 LOADK                            R26 K102 ["UIListLayout"]
      390 DUPTABLE                         R27 K107 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
      391 GETIMPORT                        R28 K109 [Enum.FillDirection.Horizontal]
      393 SETTABLEKS                       R28 R27 K103 ["FillDirection"]
      395 GETIMPORT                        R28 K110 [Enum.SortOrder.LayoutOrder]
      397 SETTABLEKS                       R28 R27 K104 ["SortOrder"]
      399 GETIMPORT                        R28 K112 [Enum.VerticalAlignment.Center]
      401 SETTABLEKS                       R28 R27 K105 ["VerticalAlignment"]
      403 GETIMPORT                        R28 K114 [UDim.new]
      405 LOADN                            R29 0
      406 LOADN                            R30 4
      407 CALL                             R28 2 1
      408 SETTABLEKS                       R28 R27 K106 ["Padding"]
      410 CALL                             R25 2 1
      411 SETTABLEKS                       R25 R24 K98 ["Layout"]
      413 JUMPIFEQKNIL                     R10 ; [+29]
      415 GETUPVAL                         R25 2
      416 GETTABLEKS                       R25 R25 K22 ["createElement"]
      418 GETUPVAL                         R26 3
      419 GETTABLEKS                       R26 R26 K13 ["Button"]
      421 DUPTABLE                         R27 K116 [{["variant"], ["size"] = "Medium", ["fillBehavior"], ["text"], ["onActivated"], ["LayoutOrder"] = 1}]
      422 GETUPVAL                         R28 4
      423 GETTABLEKS                       R28 R28 K46 ["Link"]
      425 SETTABLEKS                       R28 R27 K48 ["variant"]
      427 GETUPVAL                         R28 9
      428 GETTABLEKS                       R28 R28 K117 ["Fit"]
      430 SETTABLEKS                       R28 R27 K115 ["fillBehavior"]
      432 LOADK                            R30 K20 ["Buttons"]
      433 LOADK                            R31 K54 ["ViewAllPermissionsInCreatorHub"]
      434 NAMECALL                         R28 R3 K15 ["getText"]
      436 CALL                             R28 3 1
      437 SETTABLEKS                       R28 R27 K51 ["text"]
      439 SETTABLEKS                       R10 R27 K52 ["onActivated"]
      441 CALL                             R25 2 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R25
      444 SETTABLEKS                       R25 R24 K99 ["ViewAllPermissions"]
      446 JUMPIFEQKNIL                     R10 ; [+12]
      448 JUMPIFEQKNIL                     R19 ; [+10]
      450 GETUPVAL                         R25 2
      451 GETTABLEKS                       R25 R25 K22 ["createElement"]
      453 GETUPVAL                         R26 3
      454 GETTABLEKS                       R26 R26 K55 ["Text"]
      456 DUPTABLE                         R27 K121 [{["Text"] = "•", ["tag"] = "auto-xy text-body-small content-muted", ["LayoutOrder"] = 2}]
      457 CALL                             R25 2 1
      458 JUMP                             ; [+1]
      459 LOADNIL                          R25
      460 SETTABLEKS                       R25 R24 K100 ["Separator"]
      462 SETTABLEKS                       R19 R24 K80 ["CopyGameLink"]
      464 CALL                             R21 3 1
      465 JUMP                             ; [+1]
      466 MOVE                             R21 R15
      467 GETUPVAL                         R22 1
      468 GETTABLEKS                       R22 R22 K22 ["createElement"]
      470 LOADK                            R23 K23 ["Frame"]
      471 DUPTABLE                         R24 K125 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      472 GETTABLEKS                       R25 R2 K126 ["backgroundColor"]
      474 SETTABLEKS                       R25 R24 K122 ["BackgroundColor3"]
      476 GETIMPORT                        R25 K128 [UDim2.fromScale]
      478 LOADN                            R26 1
      479 LOADN                            R27 1
      480 CALL                             R25 2 1
      481 SETTABLEKS                       R25 R24 K29 ["Size"]
      483 GETTABLEKS                       R25 R2 K129 ["footer"]
      485 GETTABLEKS                       R25 R25 K130 ["border"]
      487 SETTABLEKS                       R25 R24 K124 ["BorderColor3"]
      489 DUPTABLE                         R25 K134 [{"Gradient", "ButtonBar", "ViewAllPermissionsLink"}]
      490 GETUPVAL                         R26 1
      491 GETTABLEKS                       R26 R26 K22 ["createElement"]
      493 LOADK                            R27 K135 ["ImageLabel"]
      494 DUPTABLE                         R28 K141 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      495 GETIMPORT                        R29 K38 [UDim2.new]
      497 LOADN                            R30 1
      498 LOADN                            R31 0
      499 LOADN                            R32 0
      500 GETTABLEKS                       R33 R2 K129 ["footer"]
      502 GETTABLEKS                       R33 R33 K142 ["gradientSize"]
      504 CALL                             R29 4 1
      505 SETTABLEKS                       R29 R28 K29 ["Size"]
      507 GETIMPORT                        R29 K35 [Vector2.new]
      509 LOADN                            R30 0
      510 LOADN                            R31 1
      511 CALL                             R29 2 1
      512 SETTABLEKS                       R29 R28 K26 ["AnchorPoint"]
      514 GETUPVAL                         R29 10
      515 GETTABLEKS                       R29 R29 K143 ["GRADIENT_IMAGE"]
      517 SETTABLEKS                       R29 R28 K136 ["Image"]
      519 GETUPVAL                         R29 10
      520 GETTABLEKS                       R29 R29 K144 ["GRADIENT_RECT_SIZE"]
      522 SETTABLEKS                       R29 R28 K137 ["ImageRectSize"]
      524 GETTABLEKS                       R29 R2 K129 ["footer"]
      526 GETTABLEKS                       R29 R29 K145 ["gradient"]
      528 SETTABLEKS                       R29 R28 K139 ["ImageColor3"]
      530 GETTABLEKS                       R29 R2 K129 ["footer"]
      532 GETTABLEKS                       R29 R29 K146 ["gradientTransparency"]
      534 SETTABLEKS                       R29 R28 K140 ["ImageTransparency"]
      536 CALL                             R26 2 1
      537 SETTABLEKS                       R26 R25 K131 ["Gradient"]
      539 GETUPVAL                         R26 1
      540 GETTABLEKS                       R26 R26 K22 ["createElement"]
      542 GETUPVAL                         R27 11
      543 DUPTABLE                         R28 K149 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"], ["OnContentSizeChanged"]}]
      544 SETTABLEKS                       R18 R28 K20 ["Buttons"]
      546 GETIMPORT                        R29 K151 [Enum.HorizontalAlignment.Right]
      548 SETTABLEKS                       R29 R28 K147 ["HorizontalAlignment"]
      550 GETUPVAL                         R30 8
      551 JUMPIFNOT                        R30 ; [+3]
      552 GETTABLEKS                       R29 R0 K152 ["onEndButtonsSizeChanged"]
      554 JUMP                             ; [+1]
      555 LOADNIL                          R29
      556 SETTABLEKS                       R29 R28 K148 ["OnContentSizeChanged"]
      558 CALL                             R26 2 1
      559 SETTABLEKS                       R26 R25 K132 ["ButtonBar"]
      561 SETTABLEKS                       R21 R25 K133 ["ViewAllPermissionsLink"]
      563 CALL                             R22 3 -1
      564 CLOSEUPVALS                      R13
      565 RETURN                           R22 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["resetCopiedTask"]
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R2 K3 [{["isGameLinkCopied"] = False}]
        6 NAMECALL                         R0 R0 K4 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["isUnmounted"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["resetCopiedTask"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETIMPORT                        R1 K4 [task.cancel]
        9 GETTABLEKS                       R2 R0 K1 ["resetCopiedTask"]
       11 CALL                             R1 1 0
       12 DUPTABLE                         R3 K7 [{["isGameLinkCopied"] = True}]
       13 NAMECALL                         R1 R0 K8 ["setState"]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K10 [task.delay]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K11 ["COPIED_INDICATOR_DURATION"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K1 ["resetCopiedTask"]
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["EarlyTesters"]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 LOADB                            R5 0
        9 JUMPIFEQKNIL                     R3 ; [+10]
       11 LOADB                            R5 0
       12 JUMPIFEQKNIL                     R4 ; [+7]
       14 GETTABLEKS                       R6 R4 K1 ["key"]
       16 JUMPIFEQKS                       R6 K0 ["EarlyTesters"] ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 LOADNIL                          R6
       21 JUMPIFNOT                        R5 ; [+50]
       22 GETTABLEKS                       R7 R3 K2 ["Screen"]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K3 ["RolePicker"]
       27 JUMPIFNOTEQ                      R7 R8 ; [+17]
       29 DUPTABLE                         R7 K7 [{["kind"] = "select", ["isDisabled"]}]
       30 LOADB                            R8 0
       31 GETTABLEKS                       R9 R3 K8 ["PickedRoleId"]
       33 JUMPIFNOTEQKNIL                  R9 ; [+7]
       35 GETTABLEKS                       R9 R3 K9 ["PendingRoleId"]
       37 JUMPIFEQKNIL                     R9 ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K6 ["isDisabled"]
       43 MOVE                             R6 R7
       44 JUMP                             ; [+27]
       45 GETTABLEKS                       R7 R3 K2 ["Screen"]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K10 ["AddFriends"]
       50 JUMPIFEQ                         R7 R8 ; [+8]
       52 GETTABLEKS                       R7 R3 K11 ["Mode"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K12 ["Unset"]
       57 JUMPIFNOTEQ                      R7 R8 ; [+14]
       59 DUPTABLE                         R7 K14 [{["kind"] = "add", ["isDisabled"]}]
       60 GETIMPORT                        R9 K16 [next]
       62 GETTABLEKS                       R10 R3 K17 ["SearchSelection"]
       64 CALL                             R9 1 1
       65 JUMPIFEQKNIL                     R9 ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 SETTABLEKS                       R8 R7 K6 ["isDisabled"]
       71 MOVE                             R6 R7
       72 DUPTABLE                         R7 K24 [{"HasUnsavedChanges", "HasCollaborators", "IsEarlyTesterMemberEligibilityLoading", "EarlyTesterCTA", "SelectedPillKey", "IsSaving"}]
       73 SETTABLEKS                       R2 R7 K18 ["HasUnsavedChanges"]
       75 GETUPVAL                         R8 4
       76 MOVE                             R9 R0
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K19 ["HasCollaborators"]
       80 GETUPVAL                         R8 5
       81 MOVE                             R9 R0
       82 CALL                             R8 1 1
       83 SETTABLEKS                       R8 R7 K20 ["IsEarlyTesterMemberEligibilityLoading"]
       85 SETTABLEKS                       R6 R7 K21 ["EarlyTesterCTA"]
       87 JUMPIFEQKNIL                     R4 ; [+4]
       89 GETTABLEKS                       R8 R4 K1 ["key"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R8
       93 SETTABLEKS                       R8 R7 K22 ["SelectedPillKey"]
       95 GETUPVAL                         R8 6
       96 GETTABLEKS                       R8 R8 K25 ["fflagEarlyTestersPolish"]
       98 JUMPIFNOT                        R8 ; [+11]
       99 GETTABLEKS                       R9 R0 K26 ["SaveState"]
      101 GETTABLEKS                       R9 R9 K27 ["CurrentSaveState"]
      103 GETUPVAL                         R10 7
      104 GETTABLEKS                       R10 R10 K28 ["Saving"]
      106 JUMPIFEQ                         R9 R10 ; [+2]
      108 LOADB                            R8 0 +1
      109 LOADB                            R8 1
      110 SETTABLEKS                       R8 R7 K23 ["IsSaving"]
      112 RETURN                           R7 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 DUPTABLE                         R4 K1 [{"activeTab"}]
        4 SETTABLEKS                       R0 R4 K0 ["activeTab"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K3 [{"LogGameLinkCopied", "OnCommitEarlyTesterSelection", "OnCommitEarlyTesterRolePick"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["LogGameLinkCopied"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["OnCommitEarlyTesterSelection"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["OnCommitEarlyTesterRolePick"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [script]
       15 GETTABLEKS                       R2 R2 K8 ["Parent"]
       17 GETTABLEKS                       R2 R2 K8 ["Parent"]
       19 GETTABLEKS                       R2 R2 K8 ["Parent"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R4 R2 K11 ["Bin"]
       25 GETTABLEKS                       R4 R4 K12 ["defineLuaFlags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K13 ["Packages"]
       32 GETTABLEKS                       R5 R5 K14 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Packages"]
       39 GETTABLEKS                       R6 R6 K15 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K13 ["Packages"]
       46 GETTABLEKS                       R7 R7 K16 ["Framework"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K17 ["Style"]
       51 GETTABLEKS                       R7 R7 K18 ["Stylizer"]
       53 GETTABLEKS                       R8 R6 K19 ["ContextServices"]
       55 GETTABLEKS                       R9 R8 K20 ["withContext"]
       57 GETTABLEKS                       R10 R8 K21 ["Localization"]
       59 GETTABLEKS                       R11 R6 K22 ["Util"]
       61 GETTABLEKS                       R12 R11 K23 ["StyleModifier"]
       63 GETIMPORT                        R13 K10 [require]
       65 GETTABLEKS                       R14 R2 K24 ["Src"]
       67 GETTABLEKS                       R14 R14 K25 ["Components"]
       69 GETTABLEKS                       R14 R14 K26 ["ButtonBar"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K10 [require]
       74 GETTABLEKS                       R15 R2 K24 ["Src"]
       76 GETTABLEKS                       R15 R15 K22 ["Util"]
       78 GETTABLEKS                       R15 R15 K27 ["Constants"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K10 [require]
       83 GETTABLEKS                       R16 R2 K24 ["Src"]
       85 GETTABLEKS                       R16 R16 K22 ["Util"]
       87 GETTABLEKS                       R16 R16 K28 ["SaveState"]
       89 CALL                             R15 1 1
       90 GETTABLEKS                       R16 R6 K29 ["UI"]
       92 GETTABLEKS                       R16 R16 K30 ["LinkText"]
       94 LOADNIL                          R17
       95 LOADNIL                          R18
       96 LOADNIL                          R19
       97 LOADNIL                          R20
       98 JUMPIFNOT                        R0 ; [+24]
       99 GETIMPORT                        R21 K10 [require]
      101 GETTABLEKS                       R22 R2 K13 ["Packages"]
      103 GETTABLEKS                       R22 R22 K31 ["React"]
      105 CALL                             R21 1 1
      106 MOVE                             R17 R21
      107 GETIMPORT                        R21 K10 [require]
      109 GETTABLEKS                       R22 R2 K13 ["Packages"]
      111 GETTABLEKS                       R22 R22 K32 ["Foundation"]
      113 CALL                             R21 1 1
      114 MOVE                             R18 R21
      115 GETTABLEKS                       R21 R18 K33 ["Enums"]
      117 GETTABLEKS                       R19 R21 K34 ["ButtonVariant"]
      119 GETTABLEKS                       R21 R18 K33 ["Enums"]
      121 GETTABLEKS                       R20 R21 K35 ["FillBehavior"]
      123 GETIMPORT                        R21 K10 [require]
      125 GETTABLEKS                       R22 R2 K24 ["Src"]
      127 GETTABLEKS                       R22 R22 K36 ["Selectors"]
      129 GETTABLEKS                       R22 R22 K37 ["GetHasCollaborators"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K10 [require]
      134 GETTABLEKS                       R23 R2 K24 ["Src"]
      136 GETTABLEKS                       R23 R23 K36 ["Selectors"]
      138 GETTABLEKS                       R23 R23 K38 ["GetHasUnsavedChanges"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K10 [require]
      143 GETTABLEKS                       R24 R2 K24 ["Src"]
      145 GETTABLEKS                       R24 R24 K36 ["Selectors"]
      147 GETTABLEKS                       R24 R24 K39 ["GetSelectedFilterPill"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K10 [require]
      152 GETTABLEKS                       R25 R2 K24 ["Src"]
      154 GETTABLEKS                       R25 R25 K36 ["Selectors"]
      156 GETTABLEKS                       R25 R25 K40 ["IsEarlyTesterMemberEligibilityLoading"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K10 [require]
      161 GETTABLEKS                       R26 R2 K24 ["Src"]
      163 GETTABLEKS                       R26 R26 K22 ["Util"]
      165 GETTABLEKS                       R26 R26 K41 ["EarlyTesterMode"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K10 [require]
      170 GETTABLEKS                       R27 R2 K24 ["Src"]
      172 GETTABLEKS                       R27 R27 K22 ["Util"]
      174 GETTABLEKS                       R27 R27 K42 ["EarlyTesterScreen"]
      176 CALL                             R26 1 1
      177 GETIMPORT                        R27 K10 [require]
      179 GETTABLEKS                       R28 R2 K24 ["Src"]
      181 GETTABLEKS                       R28 R28 K43 ["Thunks"]
      183 GETTABLEKS                       R28 R28 K44 ["CommitEarlyTesterSelection"]
      185 CALL                             R27 1 1
      186 GETIMPORT                        R28 K10 [require]
      188 GETTABLEKS                       R29 R2 K24 ["Src"]
      190 GETTABLEKS                       R29 R29 K43 ["Thunks"]
      192 GETTABLEKS                       R29 R29 K45 ["CommitEarlyTesterRolePick"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K10 [require]
      197 GETTABLEKS                       R30 R2 K24 ["Src"]
      199 GETTABLEKS                       R30 R30 K43 ["Thunks"]
      201 GETTABLEKS                       R30 R30 K46 ["LogEarlyTesterTelemetry"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K10 [require]
      206 GETTABLEKS                       R31 R2 K24 ["Src"]
      208 GETTABLEKS                       R31 R31 K22 ["Util"]
      210 GETTABLEKS                       R31 R31 K47 ["Telemetry"]
      212 GETTABLEKS                       R31 R31 K48 ["GameLinkCopiedEvent"]
      214 CALL                             R30 1 1
      215 GETTABLEKS                       R32 R3 K49 ["fflagEarlyTestersPolish"]
      217 AND                              R31 R32 R0
      218 GETTABLEKS                       R32 R4 K50 ["PureComponent"]
      220 LOADK                            R34 K51 ["Footer"]
      221 NAMECALL                         R32 R32 K52 ["extend"]
      223 CALL                             R32 2 1
      224 DUPCLOSURE                       R33 K53 [PROTO_1]
      225 SETTABLEKS                       R33 R32 K54 ["init"]
      227 DUPCLOSURE                       R33 K55 [PROTO_2]
      228 SETTABLEKS                       R33 R32 K56 ["willUnmount"]
      230 NEWCLOSURE                       R33 P2
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R4
      233 CAPTURE                          REF R17
      234 CAPTURE                          REF R18
      235 CAPTURE                          REF R19
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R31
      240 CAPTURE                          REF R20
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R13
      243 SETTABLEKS                       R33 R32 K57 ["render"]
      245 DUPCLOSURE                       R33 K58 [PROTO_12]
      246 CAPTURE                          VAL R14
      247 SETTABLEKS                       R33 R32 K59 ["showGameLinkCopied"]
      249 MOVE                             R33 R9
      250 DUPTABLE                         R34 K60 [{"Stylizer", "Localization"}]
      251 SETTABLEKS                       R7 R34 K18 ["Stylizer"]
      253 SETTABLEKS                       R10 R34 K21 ["Localization"]
      255 CALL                             R33 1 1
      256 MOVE                             R34 R32
      257 CALL                             R33 1 1
      258 MOVE                             R32 R33
      259 GETTABLEKS                       R33 R5 K61 ["connect"]
      261 DUPCLOSURE                       R34 K62 [PROTO_13]
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R23
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R25
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R15
      270 DUPCLOSURE                       R35 K63 [PROTO_17]
      271 CAPTURE                          VAL R29
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R28
      275 CALL                             R33 2 1
      276 MOVE                             R34 R32
      277 CALL                             R33 1 1
      278 MOVE                             R32 R33
      279 CLOSEUPVALS                      R17
      280 RETURN                           R32 1
