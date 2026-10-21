PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate game link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPCLOSURE                       R2 K0 [PROTO_4]
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K1 ["andThen"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K2 [PROTO_5]
        8 NAMECALL                         R0 R0 K3 ["catch"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
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
      208 JUMPIFNOT                        R18 ; [+8]
      209 DUPTABLE                         R17 K69 [{["text"], ["isDisabled"], ["onActivated"], ["variant"] = "Emphasis"}]
      210 SETTABLEKS                       R12 R17 K51 ["text"]
      212 SETTABLEKS                       R13 R17 K17 ["isDisabled"]
      214 SETTABLEKS                       R14 R17 K52 ["onActivated"]
      216 JUMP                             ; [+22]
      217 DUPTABLE                         R17 K73 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
      218 SETTABLEKS                       R12 R17 K64 ["Name"]
      220 NEWCLOSURE                       R18 P3
      221 CAPTURE                          REF R13
      222 CAPTURE                          REF R14
      223 SETTABLEKS                       R18 R17 K65 ["OnPressed"]
      225 JUMPIF                           R13 ; [+2]
      226 LOADK                            R18 K74 ["Active"]
      227 JUMP                             ; [+1]
      228 LOADK                            R18 K75 ["Passive"]
      229 SETTABLEKS                       R18 R17 K66 ["Style"]
      231 JUMPIFNOT                        R13 ; [+4]
      232 GETUPVAL                         R18 6
      233 GETTABLEKS                       R18 R18 K76 ["Disabled"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R18
      237 SETTABLEKS                       R18 R17 K72 ["StyleModifier"]
      239 NEWTABLE                         R18 0 2
      241 MOVE                             R19 R16
      242 MOVE                             R20 R17
      243 SETLIST                          R18 R19 2 [1]
      245 GETTABLEKS                       R19 R1 K77 ["FetchGameLink"]
      247 JUMPIFEQKNIL                     R19 ; [+28]
      249 LOADK                            R22 K20 ["Buttons"]
      250 LOADK                            R23 K78 ["CopyGameLink"]
      251 NAMECALL                         R20 R3 K15 ["getText"]
      253 CALL                             R20 3 1
      254 NEWCLOSURE                       R21 P4
      255 CAPTURE                          VAL R19
      256 CAPTURE                          UPVAL U7
      257 GETUPVAL                         R25 0
      258 JUMPIFNOT                        R25 ; [+6]
      259 DUPTABLE                         R24 K62 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      260 SETTABLEKS                       R20 R24 K51 ["text"]
      262 SETTABLEKS                       R21 R24 K52 ["onActivated"]
      264 JUMP                             ; [+5]
      265 DUPTABLE                         R24 K67 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      266 SETTABLEKS                       R20 R24 K64 ["Name"]
      268 SETTABLEKS                       R21 R24 K65 ["OnPressed"]
      270 FASTCALL2                        TABLE_INSERT R18 R24 ; [+4]
      272 MOVE                             R23 R18
      273 GETIMPORT                        R22 K81 [table.insert]
      275 CALL                             R22 2 0
      276 GETUPVAL                         R20 1
      277 GETTABLEKS                       R20 R20 K22 ["createElement"]
      279 LOADK                            R21 K23 ["Frame"]
      280 DUPTABLE                         R22 K85 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      281 GETTABLEKS                       R23 R2 K86 ["backgroundColor"]
      283 SETTABLEKS                       R23 R22 K82 ["BackgroundColor3"]
      285 GETIMPORT                        R23 K88 [UDim2.fromScale]
      287 LOADN                            R24 1
      288 LOADN                            R25 1
      289 CALL                             R23 2 1
      290 SETTABLEKS                       R23 R22 K29 ["Size"]
      292 GETTABLEKS                       R23 R2 K89 ["footer"]
      294 GETTABLEKS                       R23 R23 K90 ["border"]
      296 SETTABLEKS                       R23 R22 K84 ["BorderColor3"]
      298 DUPTABLE                         R23 K94 [{"Gradient", "ButtonBar", "ViewAllPermissionsLink"}]
      299 GETUPVAL                         R24 1
      300 GETTABLEKS                       R24 R24 K22 ["createElement"]
      302 LOADK                            R25 K95 ["ImageLabel"]
      303 DUPTABLE                         R26 K101 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      304 GETIMPORT                        R27 K38 [UDim2.new]
      306 LOADN                            R28 1
      307 LOADN                            R29 0
      308 LOADN                            R30 0
      309 GETTABLEKS                       R31 R2 K89 ["footer"]
      311 GETTABLEKS                       R31 R31 K102 ["gradientSize"]
      313 CALL                             R27 4 1
      314 SETTABLEKS                       R27 R26 K29 ["Size"]
      316 GETIMPORT                        R27 K35 [Vector2.new]
      318 LOADN                            R28 0
      319 LOADN                            R29 1
      320 CALL                             R27 2 1
      321 SETTABLEKS                       R27 R26 K26 ["AnchorPoint"]
      323 GETUPVAL                         R27 8
      324 GETTABLEKS                       R27 R27 K103 ["GRADIENT_IMAGE"]
      326 SETTABLEKS                       R27 R26 K96 ["Image"]
      328 GETUPVAL                         R27 8
      329 GETTABLEKS                       R27 R27 K104 ["GRADIENT_RECT_SIZE"]
      331 SETTABLEKS                       R27 R26 K97 ["ImageRectSize"]
      333 GETTABLEKS                       R27 R2 K89 ["footer"]
      335 GETTABLEKS                       R27 R27 K105 ["gradient"]
      337 SETTABLEKS                       R27 R26 K99 ["ImageColor3"]
      339 GETTABLEKS                       R27 R2 K89 ["footer"]
      341 GETTABLEKS                       R27 R27 K106 ["gradientTransparency"]
      343 SETTABLEKS                       R27 R26 K100 ["ImageTransparency"]
      345 CALL                             R24 2 1
      346 SETTABLEKS                       R24 R23 K91 ["Gradient"]
      348 GETUPVAL                         R24 1
      349 GETTABLEKS                       R24 R24 K22 ["createElement"]
      351 GETUPVAL                         R25 9
      352 DUPTABLE                         R26 K108 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"]}]
      353 SETTABLEKS                       R18 R26 K20 ["Buttons"]
      355 GETIMPORT                        R27 K110 [Enum.HorizontalAlignment.Right]
      357 SETTABLEKS                       R27 R26 K107 ["HorizontalAlignment"]
      359 CALL                             R24 2 1
      360 SETTABLEKS                       R24 R23 K92 ["ButtonBar"]
      362 SETTABLEKS                       R15 R23 K93 ["ViewAllPermissionsLink"]
      364 CALL                             R20 3 -1
      365 CLOSEUPVALS                      R13
      366 RETURN                           R20 -1

PROTO_8:
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
       72 DUPTABLE                         R7 K22 [{"HasUnsavedChanges", "HasCollaborators", "IsEarlyTesterMemberEligibilityLoading", "EarlyTesterCTA"}]
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
       87 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"OnCommitEarlyTesterSelection", "OnCommitEarlyTesterRolePick"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnCommitEarlyTesterSelection"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["OnCommitEarlyTesterRolePick"]
       11 RETURN                           R1 1

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
       23 GETTABLEKS                       R4 R2 K11 ["Packages"]
       25 GETTABLEKS                       R4 R4 K12 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Packages"]
       32 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Packages"]
       39 GETTABLEKS                       R6 R6 K14 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K15 ["Style"]
       44 GETTABLEKS                       R6 R6 K16 ["Stylizer"]
       46 GETTABLEKS                       R7 R5 K17 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K18 ["withContext"]
       50 GETTABLEKS                       R9 R7 K19 ["Localization"]
       52 GETTABLEKS                       R10 R5 K20 ["Util"]
       54 GETTABLEKS                       R11 R10 K21 ["StyleModifier"]
       56 GETIMPORT                        R12 K10 [require]
       58 GETTABLEKS                       R13 R2 K22 ["Src"]
       60 GETTABLEKS                       R13 R13 K23 ["Components"]
       62 GETTABLEKS                       R13 R13 K24 ["ButtonBar"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K10 [require]
       67 GETTABLEKS                       R14 R2 K22 ["Src"]
       69 GETTABLEKS                       R14 R14 K20 ["Util"]
       71 GETTABLEKS                       R14 R14 K25 ["Constants"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R5 K26 ["UI"]
       76 GETTABLEKS                       R14 R14 K27 ["LinkText"]
       78 LOADNIL                          R15
       79 LOADNIL                          R16
       80 LOADNIL                          R17
       81 JUMPIFNOT                        R0 ; [+20]
       82 GETIMPORT                        R18 K10 [require]
       84 GETTABLEKS                       R19 R2 K11 ["Packages"]
       86 GETTABLEKS                       R19 R19 K28 ["React"]
       88 CALL                             R18 1 1
       89 MOVE                             R15 R18
       90 GETIMPORT                        R18 K10 [require]
       92 GETTABLEKS                       R19 R2 K11 ["Packages"]
       94 GETTABLEKS                       R19 R19 K29 ["Foundation"]
       96 CALL                             R18 1 1
       97 MOVE                             R16 R18
       98 GETTABLEKS                       R18 R16 K30 ["Enums"]
      100 GETTABLEKS                       R17 R18 K31 ["ButtonVariant"]
      102 GETIMPORT                        R18 K10 [require]
      104 GETTABLEKS                       R19 R2 K22 ["Src"]
      106 GETTABLEKS                       R19 R19 K32 ["Selectors"]
      108 GETTABLEKS                       R19 R19 K33 ["GetHasCollaborators"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K10 [require]
      113 GETTABLEKS                       R20 R2 K22 ["Src"]
      115 GETTABLEKS                       R20 R20 K32 ["Selectors"]
      117 GETTABLEKS                       R20 R20 K34 ["GetHasUnsavedChanges"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K10 [require]
      122 GETTABLEKS                       R21 R2 K22 ["Src"]
      124 GETTABLEKS                       R21 R21 K32 ["Selectors"]
      126 GETTABLEKS                       R21 R21 K35 ["GetSelectedFilterPill"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K10 [require]
      131 GETTABLEKS                       R22 R2 K22 ["Src"]
      133 GETTABLEKS                       R22 R22 K32 ["Selectors"]
      135 GETTABLEKS                       R22 R22 K36 ["IsEarlyTesterMemberEligibilityLoading"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K10 [require]
      140 GETTABLEKS                       R23 R2 K22 ["Src"]
      142 GETTABLEKS                       R23 R23 K20 ["Util"]
      144 GETTABLEKS                       R23 R23 K37 ["EarlyTesterMode"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K10 [require]
      149 GETTABLEKS                       R24 R2 K22 ["Src"]
      151 GETTABLEKS                       R24 R24 K20 ["Util"]
      153 GETTABLEKS                       R24 R24 K38 ["EarlyTesterScreen"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K10 [require]
      158 GETTABLEKS                       R25 R2 K22 ["Src"]
      160 GETTABLEKS                       R25 R25 K39 ["Thunks"]
      162 GETTABLEKS                       R25 R25 K40 ["CommitEarlyTesterSelection"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K10 [require]
      167 GETTABLEKS                       R26 R2 K22 ["Src"]
      169 GETTABLEKS                       R26 R26 K39 ["Thunks"]
      171 GETTABLEKS                       R26 R26 K41 ["CommitEarlyTesterRolePick"]
      173 CALL                             R25 1 1
      174 GETTABLEKS                       R26 R3 K42 ["PureComponent"]
      176 LOADK                            R28 K43 ["Footer"]
      177 NAMECALL                         R26 R26 K44 ["extend"]
      179 CALL                             R26 2 1
      180 NEWCLOSURE                       R27 P0
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R3
      183 CAPTURE                          REF R15
      184 CAPTURE                          REF R16
      185 CAPTURE                          REF R17
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R12
      191 SETTABLEKS                       R27 R26 K45 ["render"]
      193 MOVE                             R27 R8
      194 DUPTABLE                         R28 K46 [{"Stylizer", "Localization"}]
      195 SETTABLEKS                       R6 R28 K16 ["Stylizer"]
      197 SETTABLEKS                       R9 R28 K19 ["Localization"]
      199 CALL                             R27 1 1
      200 MOVE                             R28 R26
      201 CALL                             R27 1 1
      202 MOVE                             R26 R27
      203 GETTABLEKS                       R27 R4 K47 ["connect"]
      205 DUPCLOSURE                       R28 K48 [PROTO_8]
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R21
      212 DUPCLOSURE                       R29 K49 [PROTO_11]
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R25
      215 CALL                             R27 2 1
      216 MOVE                             R28 R26
      217 CALL                             R27 1 1
      218 MOVE                             R26 R27
      219 CLOSEUPVALS                      R15
      220 RETURN                           R26 1
