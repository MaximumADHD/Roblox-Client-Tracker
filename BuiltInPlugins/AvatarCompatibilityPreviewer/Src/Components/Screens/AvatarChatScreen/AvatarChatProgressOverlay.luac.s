PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = 70}]
        1 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 LOADK                            R3 K0 ["Model"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K2 ["PrimaryPart"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+23]
       13 LOADK                            R3 K3 ["HumanoidRootPart"]
       14 LOADB                            R4 1
       15 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       17 CALL                             R1 3 1
       18 JUMPIF                           R1 ; [+5]
       19 LOADK                            R3 K5 ["BasePart"]
       20 LOADB                            R4 1
       21 NAMECALL                         R1 R0 K6 ["FindFirstChildWhichIsA"]
       23 CALL                             R1 3 1
       24 JUMPIFNOT                        R1 ; [+8]
       25 LOADK                            R4 K5 ["BasePart"]
       26 NAMECALL                         R2 R1 K1 ["IsA"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 SETTABLEKS                       R1 R0 K2 ["PrimaryPart"]
       32 RETURN                           R0 1
       33 LOADNIL                          R2
       34 RETURN                           R2 1
       35 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R3 K7 [{[1] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
        1 SETTABLEKS                       R0 R3 K4 ["text"]
        3 SETTABLEKS                       R1 R3 K5 ["variant"]
        5 SETTABLEKS                       R2 R3 K6 ["onActivated"]
        7 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["SpinRate"]
        8 MUL                              R3 R0 R4
        9 MULK                             R2 R3 K3 [6.28318530717959]
       10 MODK                             R1 R2 K3 [6.28318530717959]
       11 GETIMPORT                        R4 K7 [CFrame.new]
       13 GETUPVAL                         R5 2
       14 CALL                             R4 1 1
       15 GETIMPORT                        R5 K9 [CFrame.Angles]
       17 LOADN                            R6 0
       18 MOVE                             R7 R1
       19 LOADN                            R8 0
       20 CALL                             R5 3 1
       21 MUL                              R3 R4 R5
       22 GETIMPORT                        R4 K7 [CFrame.new]
       24 GETUPVAL                         R6 2
       25 MINUS                            R5 R6
       26 CALL                             R4 1 1
       27 MUL                              R2 R3 R4
       28 GETUPVAL                         R3 3
       29 GETUPVAL                         R6 4
       30 MUL                              R5 R2 R6
       31 NAMECALL                         R3 R3 K10 ["PivotTo"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [os.clock]
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K3 ["GetBoundingBox"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R1 R1 K4 ["Position"]
       15 GETUPVAL                         R2 1
       16 NAMECALL                         R2 R2 K5 ["GetPivot"]
       18 CALL                             R2 1 1
       19 SETUPVAL                         R2 2
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K6 ["RenderStepped"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R2
       29 NAMECALL                         R3 R3 K7 ["Connect"]
       31 CALL                             R3 2 1
       32 SETUPVAL                         R3 3
       33 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETIMPORT                        R0 K2 [task.cancel]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+5]
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K3 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 3
       17 JUMPIFEQKNIL                     R0 ; [+9]
       19 GETUPVAL                         R0 4
       20 JUMPIFEQKNIL                     R0 ; [+6]
       22 GETUPVAL                         R0 4
       23 GETUPVAL                         R2 3
       24 NAMECALL                         R0 R0 K4 ["PivotTo"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 LOADB                            R0 0
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          REF R2
       14 CAPTURE                          REF R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 LOADNIL                          R4
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K0 ["phase"]
       21 JUMPIFNOTEQKS                    R5 K1 ["completed"] ; [+8]
       23 GETIMPORT                        R5 K4 [task.delay]
       25 LOADN                            R6 3
       26 MOVE                             R7 R3
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 JUMP                             ; [+2]
       30 MOVE                             R5 R3
       31 CALL                             R5 0 0
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          REF R0
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R1
       36 CAPTURE                          REF R2
       37 CAPTURE                          UPVAL U0
       38 CLOSEUPVALS                      R0
       39 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K3 [{"reportedProgress", "progressCeiling", "planPending"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K4 ["current"]
        7 SETTABLEKS                       R5 R4 K0 ["reportedProgress"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K4 ["current"]
       12 SETTABLEKS                       R5 R4 K1 ["progressCeiling"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K4 ["current"]
       17 SETTABLEKS                       R5 R4 K2 ["planPending"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["phase"]
        3 JUMPIFEQKS                       R0 K1 ["generating3D"] ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADN                            R1 0
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["RenderStepped"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NAMECALL                         R0 R0 K3 ["Connect"]
       21 CALL                             R0 2 1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K2 ["AutoSetupScreen"]
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 LOADB                            R5 0
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R7 R0 K3 ["phase"]
       19 JUMPIFNOTEQKS                    R7 K4 ["generating3D"] ; [+4]
       21 GETTABLEKS                       R6 R0 K5 ["previewModel"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R7 R5 K3 ["phase"]
       28 JUMPIFEQKS                       R7 K6 ["revealing"] ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADNIL                          R7
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R8 R0 K5 ["previewModel"]
       38 CALL                             R7 1 1
       39 JUMPIFNOT                        R6 ; [+3]
       40 GETTABLEKS                       R8 R5 K7 ["model"]
       42 JUMP                             ; [+1]
       43 MOVE                             R8 R7
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 NEWTABLE                         R11 0 4
       55 MOVE                             R12 R8
       56 MOVE                             R13 R6
       57 GETTABLEKS                       R14 R5 K3 ["phase"]
       59 GETTABLEKS                       R15 R3 K9 ["SpinRate"]
       61 SETLIST                          R11 R12 4 [1]
       63 CALL                             R9 2 0
       64 JUMPIFEQKNIL                     R8 ; [+13]
       66 GETUPVAL                         R9 6
       67 GETTABLEKS                       R9 R9 K10 ["createElement"]
       69 GETUPVAL                         R10 8
       70 DUPTABLE                         R11 K13 [{"Model", "GetCameraModifications"}]
       71 SETTABLEKS                       R8 R11 K11 ["Model"]
       73 GETUPVAL                         R12 9
       74 SETTABLEKS                       R12 R11 K12 ["GetCameraModifications"]
       76 CALL                             R9 2 1
       77 JUMP                             ; [+46]
       78 GETTABLEKS                       R10 R0 K14 ["previewImage"]
       80 JUMPIFEQKNIL                     R10 ; [+42]
       82 GETUPVAL                         R9 6
       83 GETTABLEKS                       R9 R9 K10 ["createElement"]
       85 LOADK                            R10 K15 ["ImageLabel"]
       86 DUPTABLE                         R11 K23 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ImageContent"], ["ScaleType"]}]
       87 GETIMPORT                        R12 K26 [Vector2.new]
       89 LOADK                            R13 K27 [0.5]
       90 LOADK                            R14 K27 [0.5]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K16 ["AnchorPoint"]
       94 GETIMPORT                        R12 K30 [UDim2.fromScale]
       96 LOADK                            R13 K27 [0.5]
       97 LOADK                            R14 K27 [0.5]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K17 ["Position"]
      101 GETIMPORT                        R12 K31 [UDim2.new]
      103 LOADN                            R13 1
      104 LOADN                            R14 0
      105 LOADN                            R15 1
      106 LOADN                            R16 -56
      107 CALL                             R12 4 1
      108 SETTABLEKS                       R12 R11 K18 ["Size"]
      110 GETIMPORT                        R12 K34 [Content.fromObject]
      112 GETTABLEKS                       R13 R0 K14 ["previewImage"]
      114 CALL                             R12 1 1
      115 SETTABLEKS                       R12 R11 K21 ["ImageContent"]
      117 GETIMPORT                        R12 K37 [Enum.ScaleType.Fit]
      119 SETTABLEKS                       R12 R11 K22 ["ScaleType"]
      121 CALL                             R9 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R9
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R10 R10 K38 ["useRefToState"]
      127 GETTABLEKS                       R12 R0 K40 ["progress"]
      129 ORK                              R11 R12 K39 [0]
      130 CALL                             R10 1 1
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K38 ["useRefToState"]
      134 GETTABLEKS                       R12 R0 K41 ["progressUpper"]
      136 JUMPIF                           R12 ; [+4]
      137 GETTABLEKS                       R12 R0 K40 ["progress"]
      139 JUMPIF                           R12 ; [+1]
      140 LOADN                            R12 0
      141 CALL                             R11 1 1
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K38 ["useRefToState"]
      145 GETTABLEKS                       R14 R0 K42 ["planPending"]
      147 JUMPIFEQKB                       R14 TRUE ; [+2]
      149 LOADB                            R13 0 +1
      150 LOADB                            R13 1
      151 CALL                             R12 1 1
      152 GETUPVAL                         R13 6
      153 GETTABLEKS                       R13 R13 K43 ["useState"]
      155 LOADN                            R14 0
      156 CALL                             R13 1 2
      157 GETUPVAL                         R15 6
      158 GETTABLEKS                       R15 R15 K8 ["useEffect"]
      160 NEWCLOSURE                       R16 P1
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R14
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U10
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 NEWTABLE                         R17 0 1
      170 GETTABLEKS                       R18 R0 K3 ["phase"]
      172 SETLIST                          R17 R18 1 [1]
      174 CALL                             R15 2 0
      175 GETUPVAL                         R15 6
      176 GETTABLEKS                       R15 R15 K10 ["createElement"]
      178 GETUPVAL                         R16 11
      179 DUPTABLE                         R17 K47 [{["tag"] = "col align-x-center align-y-center gap-large size-full padding-large", ["testId"]}]
      180 GETTABLEKS                       R18 R0 K46 ["testId"]
      182 SETTABLEKS                       R18 R17 K46 ["testId"]
      184 DUPTABLE                         R18 K53 [{"Title", "Preview", "ProgressCard", "CancelDialog", "BackToChatButton"}]
      185 GETTABLEKS                       R20 R0 K3 ["phase"]
      187 JUMPIFNOTEQKS                    R20 K54 ["failed"] ; [+29]
      189 GETUPVAL                         R19 6
      190 GETTABLEKS                       R19 R19 K10 ["createElement"]
      192 GETUPVAL                         R20 12
      193 DUPTABLE                         R21 K57 [{"LayoutOrder", "Text", "tag"}]
      194 MOVE                             R22 R2
      195 CALL                             R22 0 1
      196 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      198 LOADK                            R24 K58 ["AvatarChatScreen"]
      199 LOADK                            R25 K59 ["ProgressFailed"]
      200 NAMECALL                         R22 R1 K60 ["getText"]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K56 ["Text"]
      205 NEWTABLE                         R22 2 0
      207 LOADB                            R23 1
      208 SETTABLEKS                       R23 R22 K61 ["auto-xy text-heading-small text-wrap text-align-x-center"]
      210 LOADB                            R23 1
      211 SETTABLEKS                       R23 R22 K62 ["content-system-alert"]
      213 SETTABLEKS                       R22 R21 K44 ["tag"]
      215 CALL                             R19 2 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R19
      218 SETTABLEKS                       R19 R18 K48 ["Title"]
      220 GETTABLEKS                       R20 R0 K3 ["phase"]
      222 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+17]
      224 JUMPIFEQKNIL                     R9 ; [+15]
      226 GETUPVAL                         R19 6
      227 GETTABLEKS                       R19 R19 K10 ["createElement"]
      229 GETUPVAL                         R20 11
      230 DUPTABLE                         R21 K64 [{["LayoutOrder"], ["tag"] = "grow size-full-0"}]
      231 MOVE                             R22 R2
      232 CALL                             R22 0 1
      233 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      235 DUPTABLE                         R22 K65 [{"Preview"}]
      236 SETTABLEKS                       R9 R22 K49 ["Preview"]
      238 CALL                             R19 3 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R19
      241 SETTABLEKS                       R19 R18 K49 ["Preview"]
      243 GETTABLEKS                       R20 R0 K3 ["phase"]
      245 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+34]
      247 GETUPVAL                         R19 6
      248 GETTABLEKS                       R19 R19 K10 ["createElement"]
      250 GETUPVAL                         R20 13
      251 DUPTABLE                         R21 K71 [{"LayoutOrder", "displayedProgress", "progress", "step", "nodes", "thoughtByNode", "onCancel"}]
      252 MOVE                             R22 R2
      253 CALL                             R22 0 1
      254 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      256 SETTABLEKS                       R13 R21 K66 ["displayedProgress"]
      258 GETTABLEKS                       R22 R0 K40 ["progress"]
      260 SETTABLEKS                       R22 R21 K40 ["progress"]
      262 GETTABLEKS                       R22 R0 K67 ["step"]
      264 SETTABLEKS                       R22 R21 K67 ["step"]
      266 GETTABLEKS                       R22 R0 K68 ["nodes"]
      268 SETTABLEKS                       R22 R21 K68 ["nodes"]
      270 GETTABLEKS                       R22 R0 K69 ["thoughtByNode"]
      272 SETTABLEKS                       R22 R21 K69 ["thoughtByNode"]
      274 GETTABLEKS                       R22 R4 K72 ["enable"]
      276 SETTABLEKS                       R22 R21 K70 ["onCancel"]
      278 CALL                             R19 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R19
      281 SETTABLEKS                       R19 R18 K50 ["ProgressCard"]
      283 GETTABLEKS                       R20 R0 K3 ["phase"]
      285 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+117]
      287 GETTABLEKS                       R20 R4 K73 ["enabled"]
      289 JUMPIFNOT                        R20 ; [+113]
      290 GETUPVAL                         R19 6
      291 GETTABLEKS                       R19 R19 K10 ["createElement"]
      293 GETUPVAL                         R20 14
      294 GETTABLEKS                       R20 R20 K74 ["Root"]
      296 DUPTABLE                         R21 K82 [{["size"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["onClose"], ["testId"] = "avatar-chat-cancel-dialog"}]
      297 GETUPVAL                         R22 15
      298 GETTABLEKS                       R22 R22 K83 ["Small"]
      300 SETTABLEKS                       R22 R21 K75 ["size"]
      302 GETTABLEKS                       R22 R4 K84 ["disable"]
      304 SETTABLEKS                       R22 R21 K80 ["onClose"]
      306 DUPTABLE                         R22 K86 [{"Title", "Content", "Actions"}]
      307 GETUPVAL                         R23 6
      308 GETTABLEKS                       R23 R23 K10 ["createElement"]
      310 GETUPVAL                         R24 14
      311 GETTABLEKS                       R24 R24 K48 ["Title"]
      313 DUPTABLE                         R25 K88 [{"text"}]
      314 LOADK                            R28 K58 ["AvatarChatScreen"]
      315 LOADK                            R29 K89 ["CancelPromptTitle"]
      316 NAMECALL                         R26 R1 K60 ["getText"]
      318 CALL                             R26 3 1
      319 SETTABLEKS                       R26 R25 K87 ["text"]
      321 CALL                             R23 2 1
      322 SETTABLEKS                       R23 R22 K48 ["Title"]
      324 GETUPVAL                         R23 6
      325 GETTABLEKS                       R23 R23 K10 ["createElement"]
      327 GETUPVAL                         R24 14
      328 GETTABLEKS                       R24 R24 K32 ["Content"]
      330 NEWTABLE                         R25 0 0
      332 DUPTABLE                         R26 K90 [{"Text"}]
      333 GETUPVAL                         R27 6
      334 GETTABLEKS                       R27 R27 K10 ["createElement"]
      336 GETUPVAL                         R28 12
      337 DUPTABLE                         R29 K92 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-default"}]
      338 LOADK                            R32 K58 ["AvatarChatScreen"]
      339 LOADK                            R33 K93 ["CancelPromptConfirmText"]
      340 NAMECALL                         R30 R1 K60 ["getText"]
      342 CALL                             R30 3 1
      343 SETTABLEKS                       R30 R29 K56 ["Text"]
      345 CALL                             R27 2 1
      346 SETTABLEKS                       R27 R26 K56 ["Text"]
      348 CALL                             R23 3 1
      349 SETTABLEKS                       R23 R22 K32 ["Content"]
      351 GETUPVAL                         R23 6
      352 GETTABLEKS                       R23 R23 K10 ["createElement"]
      354 GETUPVAL                         R24 14
      355 GETTABLEKS                       R24 R24 K85 ["Actions"]
      357 DUPTABLE                         R25 K95 [{"actions"}]
      358 NEWTABLE                         R26 0 2
      360 LOADK                            R30 K96 ["AvatarScreen"]
      361 LOADK                            R31 K97 ["CancelPromptYes"]
      362 NAMECALL                         R28 R1 K60 ["getText"]
      364 CALL                             R28 3 1
      365 GETUPVAL                         R29 16
      366 GETTABLEKS                       R29 R29 K98 ["Alert"]
      368 GETTABLEKS                       R30 R0 K70 ["onCancel"]
      370 DUPTABLE                         R27 K105 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      371 SETTABLEKS                       R28 R27 K87 ["text"]
      373 SETTABLEKS                       R29 R27 K103 ["variant"]
      375 SETTABLEKS                       R30 R27 K104 ["onActivated"]
      377 LOADK                            R31 K96 ["AvatarScreen"]
      378 LOADK                            R32 K106 ["CancelPromptNo"]
      379 NAMECALL                         R29 R1 K60 ["getText"]
      381 CALL                             R29 3 1
      382 GETUPVAL                         R30 16
      383 GETTABLEKS                       R30 R30 K107 ["Standard"]
      385 GETTABLEKS                       R31 R4 K84 ["disable"]
      387 DUPTABLE                         R28 K105 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      388 SETTABLEKS                       R29 R28 K87 ["text"]
      390 SETTABLEKS                       R30 R28 K103 ["variant"]
      392 SETTABLEKS                       R31 R28 K104 ["onActivated"]
      394 SETLIST                          R26 R27 2 [1]
      396 SETTABLEKS                       R26 R25 K94 ["actions"]
      398 CALL                             R23 2 1
      399 SETTABLEKS                       R23 R22 K85 ["Actions"]
      401 CALL                             R19 3 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R19
      404 SETTABLEKS                       R19 R18 K51 ["CancelDialog"]
      406 GETTABLEKS                       R20 R0 K3 ["phase"]
      408 JUMPIFNOTEQKS                    R20 K54 ["failed"] ; [+23]
      410 GETUPVAL                         R19 6
      411 GETTABLEKS                       R19 R19 K10 ["createElement"]
      413 GETUPVAL                         R20 17
      414 DUPTABLE                         R21 K108 [{"LayoutOrder", "text", "onActivated"}]
      415 MOVE                             R22 R2
      416 CALL                             R22 0 1
      417 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      419 LOADK                            R24 K58 ["AvatarChatScreen"]
      420 LOADK                            R25 K109 ["ButtonBackToChat"]
      421 NAMECALL                         R22 R1 K60 ["getText"]
      423 CALL                             R22 3 1
      424 SETTABLEKS                       R22 R21 K87 ["text"]
      426 GETTABLEKS                       R22 R0 K70 ["onCancel"]
      428 SETTABLEKS                       R22 R21 K104 ["onActivated"]
      430 CALL                             R19 2 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R19
      433 SETTABLEKS                       R19 R18 K52 ["BackToChatButton"]
      435 CALL                             R15 3 -1
      436 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["Button"]
       43 GETTABLEKS                       R7 R5 K16 ["Enums"]
       45 GETTABLEKS                       R7 R7 K17 ["ButtonVariant"]
       47 GETTABLEKS                       R8 R5 K16 ["Enums"]
       49 GETTABLEKS                       R8 R8 K18 ["DialogSize"]
       51 GETTABLEKS                       R9 R5 K19 ["Dialog"]
       53 GETTABLEKS                       R10 R5 K20 ["Text"]
       55 GETTABLEKS                       R11 R5 K21 ["View"]
       57 GETIMPORT                        R12 K9 [require]
       59 GETTABLEKS                       R13 R1 K22 ["Src"]
       61 GETTABLEKS                       R13 R13 K23 ["Components"]
       63 GETTABLEKS                       R13 R13 K24 ["Screens"]
       65 GETTABLEKS                       R13 R13 K25 ["AvatarChatScreen"]
       67 GETTABLEKS                       R13 R13 K26 ["AvatarChatProgressCard"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K9 [require]
       72 GETTABLEKS                       R14 R1 K22 ["Src"]
       74 GETTABLEKS                       R14 R14 K23 ["Components"]
       76 GETTABLEKS                       R14 R14 K27 ["ModelPreview"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K9 [require]
       81 GETTABLEKS                       R15 R1 K22 ["Src"]
       83 GETTABLEKS                       R15 R15 K23 ["Components"]
       85 GETTABLEKS                       R15 R15 K24 ["Screens"]
       87 GETTABLEKS                       R15 R15 K28 ["AvatarScreen"]
       89 GETTABLEKS                       R15 R15 K29 ["Stages"]
       91 GETTABLEKS                       R15 R15 K30 ["StageType"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K9 [require]
       96 GETTABLEKS                       R16 R1 K22 ["Src"]
       98 GETTABLEKS                       R16 R16 K31 ["Resources"]
      100 GETTABLEKS                       R16 R16 K32 ["Theme"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K9 [require]
      105 GETTABLEKS                       R17 R1 K22 ["Src"]
      107 GETTABLEKS                       R17 R17 K23 ["Components"]
      109 GETTABLEKS                       R17 R17 K24 ["Screens"]
      111 GETTABLEKS                       R17 R17 K25 ["AvatarChatScreen"]
      113 GETTABLEKS                       R17 R17 K33 ["stepAvatarCreationProgress"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K9 [require]
      118 GETTABLEKS                       R18 R1 K22 ["Src"]
      120 GETTABLEKS                       R18 R18 K34 ["Types"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K9 [require]
      125 GETTABLEKS                       R19 R1 K22 ["Src"]
      127 GETTABLEKS                       R19 R19 K35 ["Hooks"]
      129 GETTABLEKS                       R19 R19 K36 ["useProgressiveMeshPreview"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K22 ["Src"]
      136 GETTABLEKS                       R20 R20 K35 ["Hooks"]
      138 GETTABLEKS                       R20 R20 K37 ["useToggleState"]
      140 CALL                             R19 1 1
      141 GETTABLEKS                       R20 R2 K38 ["ContextServices"]
      143 GETTABLEKS                       R20 R20 K39 ["Localization"]
      145 GETTABLEKS                       R21 R2 K38 ["ContextServices"]
      147 GETTABLEKS                       R21 R21 K40 ["Stylizer"]
      149 DUPCLOSURE                       R22 K41 [PROTO_0]
      150 DUPCLOSURE                       R23 K42 [PROTO_1]
      151 DUPCLOSURE                       R24 K43 [PROTO_2]
      152 DUPCLOSURE                       R25 K44 [PROTO_11]
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R6
      171 RETURN                           R25 1
