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
       12 MOVE                             R7 R5
       13 JUMPIF                           R7 ; [+2]
       14 NOT                              R8 R4
       15 AND                              R7 R8 R6
       16 GETTABLEKS                       R8 R1 K6 ["OnSavePressed"]
       18 GETTABLEKS                       R9 R1 K7 ["OnCancelPressed"]
       20 GETTABLEKS                       R10 R1 K8 ["OnViewAllPermissionsPressed"]
       22 GETTABLEKS                       R11 R1 K9 ["EarlyTesterCTA"]
       24 LOADNIL                          R12
       25 LOADNIL                          R13
       26 LOADNIL                          R14
       27 JUMPIFEQKNIL                     R11 ; [+30]
       29 GETTABLEKS                       R15 R11 K10 ["kind"]
       31 JUMPIFNOTEQKS                    R15 K11 ["select"] ; [+8]
       33 LOADK                            R17 K12 ["Button"]
       34 LOADK                            R18 K13 ["Select"]
       35 NAMECALL                         R15 R3 K14 ["getText"]
       37 CALL                             R15 3 1
       38 MOVE                             R12 R15
       39 JUMP                             ; [+6]
       40 LOADK                            R17 K12 ["Button"]
       41 LOADK                            R18 K15 ["Add"]
       42 NAMECALL                         R15 R3 K14 ["getText"]
       44 CALL                             R15 3 1
       45 MOVE                             R12 R15
       46 GETTABLEKS                       R13 R11 K16 ["isDisabled"]
       48 GETTABLEKS                       R15 R11 K10 ["kind"]
       50 JUMPIFNOTEQKS                    R15 K11 ["select"] ; [+4]
       52 GETTABLEKS                       R14 R1 K17 ["OnCommitEarlyTesterRolePick"]
       54 JUMP                             ; [+13]
       55 GETTABLEKS                       R14 R1 K18 ["OnCommitEarlyTesterSelection"]
       57 JUMP                             ; [+10]
       58 LOADK                            R17 K19 ["Buttons"]
       59 LOADK                            R18 K20 ["Save"]
       60 NAMECALL                         R15 R3 K14 ["getText"]
       62 CALL                             R15 3 1
       63 MOVE                             R12 R15
       64 NOT                              R13 R7
       65 NEWCLOSURE                       R14 P0
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 JUMPIFEQKNIL                     R10 ; [+104]
       70 GETUPVAL                         R16 0
       71 JUMPIFNOT                        R16 ; [+62]
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K21 ["createElement"]
       75 LOADK                            R16 K22 ["Frame"]
       76 DUPTABLE                         R17 K31 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2}]
       77 GETIMPORT                        R18 K34 [Vector2.new]
       79 LOADN                            R19 0
       80 LOADK                            R20 K35 [0.5]
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K25 ["AnchorPoint"]
       84 GETIMPORT                        R18 K37 [UDim2.new]
       86 LOADN                            R19 0
       87 GETTABLEKS                       R20 R2 K38 ["buttonBar"]
       89 GETTABLEKS                       R20 R20 K39 ["edgePadding"]
       91 LOADK                            R21 K35 [0.5]
       92 LOADN                            R22 0
       93 CALL                             R18 4 1
       94 SETTABLEKS                       R18 R17 K26 ["Position"]
       96 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R18 R17 K27 ["AutomaticSize"]
      100 GETIMPORT                        R18 K44 [UDim2.fromOffset]
      102 LOADN                            R19 0
      103 LOADN                            R20 0
      104 CALL                             R18 2 1
      105 SETTABLEKS                       R18 R17 K28 ["Size"]
      107 DUPTABLE                         R18 K46 [{"Link"}]
      108 GETUPVAL                         R19 2
      109 GETTABLEKS                       R19 R19 K21 ["createElement"]
      111 GETUPVAL                         R20 3
      112 GETTABLEKS                       R20 R20 K12 ["Button"]
      114 DUPTABLE                         R21 K52 [{["variant"], ["size"] = "Medium", ["text"], ["onActivated"]}]
      115 GETUPVAL                         R22 4
      116 GETTABLEKS                       R22 R22 K45 ["Link"]
      118 SETTABLEKS                       R22 R21 K47 ["variant"]
      120 LOADK                            R24 K19 ["Buttons"]
      121 LOADK                            R25 K53 ["ViewAllPermissionsInCreatorHub"]
      122 NAMECALL                         R22 R3 K14 ["getText"]
      124 CALL                             R22 3 1
      125 SETTABLEKS                       R22 R21 K50 ["text"]
      127 SETTABLEKS                       R10 R21 K51 ["onActivated"]
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K45 ["Link"]
      132 CALL                             R15 3 1
      133 JUMP                             ; [+40]
      134 GETUPVAL                         R15 1
      135 GETTABLEKS                       R15 R15 K21 ["createElement"]
      137 GETUPVAL                         R16 5
      138 DUPTABLE                         R17 K57 [{["AnchorPoint"], ["Position"], ["Text"], ["OnClick"], ["TextXAlignment"], ["ZIndex"] = 2}]
      139 GETIMPORT                        R18 K34 [Vector2.new]
      141 LOADN                            R19 0
      142 LOADK                            R20 K35 [0.5]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K25 ["AnchorPoint"]
      146 GETIMPORT                        R18 K37 [UDim2.new]
      148 LOADN                            R19 0
      149 GETTABLEKS                       R20 R2 K38 ["buttonBar"]
      151 GETTABLEKS                       R20 R20 K39 ["edgePadding"]
      153 LOADK                            R21 K35 [0.5]
      154 LOADN                            R22 0
      155 CALL                             R18 4 1
      156 SETTABLEKS                       R18 R17 K26 ["Position"]
      158 LOADK                            R20 K19 ["Buttons"]
      159 LOADK                            R21 K53 ["ViewAllPermissionsInCreatorHub"]
      160 NAMECALL                         R18 R3 K14 ["getText"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K54 ["Text"]
      165 SETTABLEKS                       R10 R17 K55 ["OnClick"]
      167 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R18 R17 K56 ["TextXAlignment"]
      171 CALL                             R15 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R15
      174 GETUPVAL                         R17 0
      175 JUMPIFNOT                        R17 ; [+14]
      176 DUPTABLE                         R16 K61 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      177 LOADK                            R19 K19 ["Buttons"]
      178 LOADK                            R20 K62 ["Cancel"]
      179 NAMECALL                         R17 R3 K14 ["getText"]
      181 CALL                             R17 3 1
      182 SETTABLEKS                       R17 R16 K50 ["text"]
      184 NEWCLOSURE                       R17 P1
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R5
      187 SETTABLEKS                       R17 R16 K51 ["onActivated"]
      189 JUMP                             ; [+13]
      190 DUPTABLE                         R16 K66 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      191 LOADK                            R19 K19 ["Buttons"]
      192 LOADK                            R20 K62 ["Cancel"]
      193 NAMECALL                         R17 R3 K14 ["getText"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K63 ["Name"]
      198 NEWCLOSURE                       R17 P2
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R5
      201 SETTABLEKS                       R17 R16 K64 ["OnPressed"]
      203 GETUPVAL                         R18 0
      204 JUMPIFNOT                        R18 ; [+8]
      205 DUPTABLE                         R17 K68 [{["text"], ["isDisabled"], ["onActivated"], ["variant"] = "Emphasis"}]
      206 SETTABLEKS                       R12 R17 K50 ["text"]
      208 SETTABLEKS                       R13 R17 K16 ["isDisabled"]
      210 SETTABLEKS                       R14 R17 K51 ["onActivated"]
      212 JUMP                             ; [+22]
      213 DUPTABLE                         R17 K72 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
      214 SETTABLEKS                       R12 R17 K63 ["Name"]
      216 NEWCLOSURE                       R18 P3
      217 CAPTURE                          REF R13
      218 CAPTURE                          REF R14
      219 SETTABLEKS                       R18 R17 K64 ["OnPressed"]
      221 JUMPIF                           R13 ; [+2]
      222 LOADK                            R18 K73 ["Active"]
      223 JUMP                             ; [+1]
      224 LOADK                            R18 K74 ["Passive"]
      225 SETTABLEKS                       R18 R17 K65 ["Style"]
      227 JUMPIFNOT                        R13 ; [+4]
      228 GETUPVAL                         R18 6
      229 GETTABLEKS                       R18 R18 K75 ["Disabled"]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R18
      233 SETTABLEKS                       R18 R17 K71 ["StyleModifier"]
      235 NEWTABLE                         R18 0 2
      237 MOVE                             R19 R16
      238 MOVE                             R20 R17
      239 SETLIST                          R18 R19 2 [1]
      241 GETTABLEKS                       R19 R1 K76 ["FetchGameLink"]
      243 JUMPIFEQKNIL                     R19 ; [+28]
      245 LOADK                            R22 K19 ["Buttons"]
      246 LOADK                            R23 K77 ["CopyGameLink"]
      247 NAMECALL                         R20 R3 K14 ["getText"]
      249 CALL                             R20 3 1
      250 NEWCLOSURE                       R21 P4
      251 CAPTURE                          VAL R19
      252 CAPTURE                          UPVAL U7
      253 GETUPVAL                         R25 0
      254 JUMPIFNOT                        R25 ; [+6]
      255 DUPTABLE                         R24 K61 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
      256 SETTABLEKS                       R20 R24 K50 ["text"]
      258 SETTABLEKS                       R21 R24 K51 ["onActivated"]
      260 JUMP                             ; [+5]
      261 DUPTABLE                         R24 K66 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
      262 SETTABLEKS                       R20 R24 K63 ["Name"]
      264 SETTABLEKS                       R21 R24 K64 ["OnPressed"]
      266 FASTCALL2                        TABLE_INSERT R18 R24 ; [+4]
      268 MOVE                             R23 R18
      269 GETIMPORT                        R22 K80 [table.insert]
      271 CALL                             R22 2 0
      272 GETUPVAL                         R20 1
      273 GETTABLEKS                       R20 R20 K21 ["createElement"]
      275 LOADK                            R21 K22 ["Frame"]
      276 DUPTABLE                         R22 K84 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      277 GETTABLEKS                       R23 R2 K85 ["backgroundColor"]
      279 SETTABLEKS                       R23 R22 K81 ["BackgroundColor3"]
      281 GETIMPORT                        R23 K87 [UDim2.fromScale]
      283 LOADN                            R24 1
      284 LOADN                            R25 1
      285 CALL                             R23 2 1
      286 SETTABLEKS                       R23 R22 K28 ["Size"]
      288 GETTABLEKS                       R23 R2 K88 ["footer"]
      290 GETTABLEKS                       R23 R23 K89 ["border"]
      292 SETTABLEKS                       R23 R22 K83 ["BorderColor3"]
      294 DUPTABLE                         R23 K93 [{"Gradient", "ButtonBar", "ViewAllPermissionsLink"}]
      295 GETUPVAL                         R24 1
      296 GETTABLEKS                       R24 R24 K21 ["createElement"]
      298 LOADK                            R25 K94 ["ImageLabel"]
      299 DUPTABLE                         R26 K100 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      300 GETIMPORT                        R27 K37 [UDim2.new]
      302 LOADN                            R28 1
      303 LOADN                            R29 0
      304 LOADN                            R30 0
      305 GETTABLEKS                       R31 R2 K88 ["footer"]
      307 GETTABLEKS                       R31 R31 K101 ["gradientSize"]
      309 CALL                             R27 4 1
      310 SETTABLEKS                       R27 R26 K28 ["Size"]
      312 GETIMPORT                        R27 K34 [Vector2.new]
      314 LOADN                            R28 0
      315 LOADN                            R29 1
      316 CALL                             R27 2 1
      317 SETTABLEKS                       R27 R26 K25 ["AnchorPoint"]
      319 GETUPVAL                         R27 8
      320 GETTABLEKS                       R27 R27 K102 ["GRADIENT_IMAGE"]
      322 SETTABLEKS                       R27 R26 K95 ["Image"]
      324 GETUPVAL                         R27 8
      325 GETTABLEKS                       R27 R27 K103 ["GRADIENT_RECT_SIZE"]
      327 SETTABLEKS                       R27 R26 K96 ["ImageRectSize"]
      329 GETTABLEKS                       R27 R2 K88 ["footer"]
      331 GETTABLEKS                       R27 R27 K104 ["gradient"]
      333 SETTABLEKS                       R27 R26 K98 ["ImageColor3"]
      335 GETTABLEKS                       R27 R2 K88 ["footer"]
      337 GETTABLEKS                       R27 R27 K105 ["gradientTransparency"]
      339 SETTABLEKS                       R27 R26 K99 ["ImageTransparency"]
      341 CALL                             R24 2 1
      342 SETTABLEKS                       R24 R23 K90 ["Gradient"]
      344 GETUPVAL                         R24 1
      345 GETTABLEKS                       R24 R24 K21 ["createElement"]
      347 GETUPVAL                         R25 9
      348 DUPTABLE                         R26 K107 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"]}]
      349 SETTABLEKS                       R18 R26 K19 ["Buttons"]
      351 GETIMPORT                        R27 K109 [Enum.HorizontalAlignment.Right]
      353 SETTABLEKS                       R27 R26 K106 ["HorizontalAlignment"]
      355 CALL                             R24 2 1
      356 SETTABLEKS                       R24 R23 K91 ["ButtonBar"]
      358 SETTABLEKS                       R15 R23 K92 ["ViewAllPermissionsLink"]
      360 CALL                             R20 3 -1
      361 CLOSEUPVALS                      R13
      362 RETURN                           R20 -1

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
       72 DUPTABLE                         R7 K21 [{"HasUnsavedChanges", "HasCollaborators", "EarlyTesterCTA"}]
       73 SETTABLEKS                       R2 R7 K18 ["HasUnsavedChanges"]
       75 GETUPVAL                         R8 4
       76 MOVE                             R9 R0
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K19 ["HasCollaborators"]
       80 SETTABLEKS                       R6 R7 K20 ["EarlyTesterCTA"]
       82 RETURN                           R7 1

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
      133 GETTABLEKS                       R22 R22 K20 ["Util"]
      135 GETTABLEKS                       R22 R22 K36 ["EarlyTesterMode"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K10 [require]
      140 GETTABLEKS                       R23 R2 K22 ["Src"]
      142 GETTABLEKS                       R23 R23 K20 ["Util"]
      144 GETTABLEKS                       R23 R23 K37 ["EarlyTesterScreen"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K10 [require]
      149 GETTABLEKS                       R24 R2 K22 ["Src"]
      151 GETTABLEKS                       R24 R24 K38 ["Thunks"]
      153 GETTABLEKS                       R24 R24 K39 ["CommitEarlyTesterSelection"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K10 [require]
      158 GETTABLEKS                       R25 R2 K22 ["Src"]
      160 GETTABLEKS                       R25 R25 K38 ["Thunks"]
      162 GETTABLEKS                       R25 R25 K40 ["CommitEarlyTesterRolePick"]
      164 CALL                             R24 1 1
      165 GETTABLEKS                       R25 R3 K41 ["PureComponent"]
      167 LOADK                            R27 K42 ["Footer"]
      168 NAMECALL                         R25 R25 K43 ["extend"]
      170 CALL                             R25 2 1
      171 NEWCLOSURE                       R26 P0
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R3
      174 CAPTURE                          REF R15
      175 CAPTURE                          REF R16
      176 CAPTURE                          REF R17
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R12
      182 SETTABLEKS                       R26 R25 K44 ["render"]
      184 MOVE                             R26 R8
      185 DUPTABLE                         R27 K45 [{"Stylizer", "Localization"}]
      186 SETTABLEKS                       R6 R27 K16 ["Stylizer"]
      188 SETTABLEKS                       R9 R27 K19 ["Localization"]
      190 CALL                             R26 1 1
      191 MOVE                             R27 R25
      192 CALL                             R26 1 1
      193 MOVE                             R25 R26
      194 GETTABLEKS                       R26 R4 K46 ["connect"]
      196 DUPCLOSURE                       R27 K47 [PROTO_8]
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R18
      202 DUPCLOSURE                       R28 K48 [PROTO_11]
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R24
      205 CALL                             R26 2 1
      206 MOVE                             R27 R25
      207 CALL                             R26 1 1
      208 MOVE                             R25 R26
      209 CLOSEUPVALS                      R15
      210 RETURN                           R25 1
