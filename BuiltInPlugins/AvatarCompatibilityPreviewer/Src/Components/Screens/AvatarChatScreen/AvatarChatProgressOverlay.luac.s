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
        9 MULK                             R2 R3 K3 [6.283185307179586]
       10 MODK                             R1 R2 K3 [6.283185307179586]
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
      184 DUPTABLE                         R18 K54 [{"Title", "ErrorMessage", "Preview", "ProgressCard", "CancelDialog", "BackToChatButton"}]
      185 GETTABLEKS                       R20 R0 K3 ["phase"]
      187 JUMPIFNOTEQKS                    R20 K55 ["failed"] ; [+29]
      189 GETUPVAL                         R19 6
      190 GETTABLEKS                       R19 R19 K10 ["createElement"]
      192 GETUPVAL                         R20 12
      193 DUPTABLE                         R21 K58 [{"LayoutOrder", "Text", "tag"}]
      194 MOVE                             R22 R2
      195 CALL                             R22 0 1
      196 SETTABLEKS                       R22 R21 K56 ["LayoutOrder"]
      198 LOADK                            R24 K59 ["AvatarChatScreen"]
      199 LOADK                            R25 K60 ["ProgressFailed"]
      200 NAMECALL                         R22 R1 K61 ["getText"]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K57 ["Text"]
      205 NEWTABLE                         R22 2 0
      207 LOADB                            R23 1
      208 SETTABLEKS                       R23 R22 K62 ["auto-xy text-heading-small text-wrap text-align-x-center"]
      210 LOADB                            R23 1
      211 SETTABLEKS                       R23 R22 K63 ["content-system-alert"]
      213 SETTABLEKS                       R22 R21 K44 ["tag"]
      215 CALL                             R19 2 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R19
      218 SETTABLEKS                       R19 R18 K48 ["Title"]
      220 GETTABLEKS                       R20 R0 K3 ["phase"]
      222 JUMPIFNOTEQKS                    R20 K55 ["failed"] ; [+30]
      224 GETTABLEKS                       R20 R0 K64 ["errorCode"]
      226 JUMPIFEQKNIL                     R20 ; [+26]
      228 GETUPVAL                         R19 6
      229 GETTABLEKS                       R19 R19 K10 ["createElement"]
      231 GETUPVAL                         R20 12
      232 DUPTABLE                         R21 K66 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium text-wrap text-align-x-center content-default"}]
      233 MOVE                             R22 R2
      234 CALL                             R22 0 1
      235 SETTABLEKS                       R22 R21 K56 ["LayoutOrder"]
      237 LOADK                            R24 K59 ["AvatarChatScreen"]
      238 GETUPVAL                         R26 13
      239 GETTABLEKS                       R26 R26 K67 ["byCode"]
      241 GETTABLEKS                       R27 R0 K64 ["errorCode"]
      243 GETTABLE                         R25 R26 R27
      244 GETTABLEKS                       R25 R25 K68 ["messageKey"]
      246 NAMECALL                         R22 R1 K61 ["getText"]
      248 CALL                             R22 3 1
      249 SETTABLEKS                       R22 R21 K57 ["Text"]
      251 CALL                             R19 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R19
      254 SETTABLEKS                       R19 R18 K49 ["ErrorMessage"]
      256 GETTABLEKS                       R20 R0 K3 ["phase"]
      258 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+17]
      260 JUMPIFEQKNIL                     R9 ; [+15]
      262 GETUPVAL                         R19 6
      263 GETTABLEKS                       R19 R19 K10 ["createElement"]
      265 GETUPVAL                         R20 11
      266 DUPTABLE                         R21 K70 [{["LayoutOrder"], ["tag"] = "grow size-full-0"}]
      267 MOVE                             R22 R2
      268 CALL                             R22 0 1
      269 SETTABLEKS                       R22 R21 K56 ["LayoutOrder"]
      271 DUPTABLE                         R22 K71 [{"Preview"}]
      272 SETTABLEKS                       R9 R22 K50 ["Preview"]
      274 CALL                             R19 3 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R19
      277 SETTABLEKS                       R19 R18 K50 ["Preview"]
      279 GETTABLEKS                       R20 R0 K3 ["phase"]
      281 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+34]
      283 GETUPVAL                         R19 6
      284 GETTABLEKS                       R19 R19 K10 ["createElement"]
      286 GETUPVAL                         R20 14
      287 DUPTABLE                         R21 K77 [{"LayoutOrder", "displayedProgress", "progress", "step", "nodes", "thoughtByNode", "onCancel"}]
      288 MOVE                             R22 R2
      289 CALL                             R22 0 1
      290 SETTABLEKS                       R22 R21 K56 ["LayoutOrder"]
      292 SETTABLEKS                       R13 R21 K72 ["displayedProgress"]
      294 GETTABLEKS                       R22 R0 K40 ["progress"]
      296 SETTABLEKS                       R22 R21 K40 ["progress"]
      298 GETTABLEKS                       R22 R0 K73 ["step"]
      300 SETTABLEKS                       R22 R21 K73 ["step"]
      302 GETTABLEKS                       R22 R0 K74 ["nodes"]
      304 SETTABLEKS                       R22 R21 K74 ["nodes"]
      306 GETTABLEKS                       R22 R0 K75 ["thoughtByNode"]
      308 SETTABLEKS                       R22 R21 K75 ["thoughtByNode"]
      310 GETTABLEKS                       R22 R4 K78 ["enable"]
      312 SETTABLEKS                       R22 R21 K76 ["onCancel"]
      314 CALL                             R19 2 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R19
      317 SETTABLEKS                       R19 R18 K51 ["ProgressCard"]
      319 GETTABLEKS                       R20 R0 K3 ["phase"]
      321 JUMPIFNOTEQKS                    R20 K4 ["generating3D"] ; [+134]
      323 GETTABLEKS                       R20 R4 K79 ["enabled"]
      325 JUMPIFNOT                        R20 ; [+130]
      326 GETUPVAL                         R19 6
      327 GETTABLEKS                       R19 R19 K10 ["createElement"]
      329 GETUPVAL                         R20 15
      330 GETTABLEKS                       R20 R20 K80 ["Root"]
      332 DUPTABLE                         R21 K88 [{["size"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["onClose"], ["testId"] = "avatar-chat-cancel-dialog"}]
      333 GETUPVAL                         R22 16
      334 GETTABLEKS                       R22 R22 K89 ["Small"]
      336 SETTABLEKS                       R22 R21 K81 ["size"]
      338 GETTABLEKS                       R22 R4 K90 ["disable"]
      340 SETTABLEKS                       R22 R21 K86 ["onClose"]
      342 DUPTABLE                         R22 K92 [{"Title", "Content", "Actions"}]
      343 GETUPVAL                         R23 6
      344 GETTABLEKS                       R23 R23 K10 ["createElement"]
      346 GETUPVAL                         R24 15
      347 GETTABLEKS                       R24 R24 K48 ["Title"]
      349 DUPTABLE                         R25 K94 [{"text"}]
      350 LOADK                            R28 K59 ["AvatarChatScreen"]
      351 LOADK                            R29 K95 ["CancelPromptTitle"]
      352 NAMECALL                         R26 R1 K61 ["getText"]
      354 CALL                             R26 3 1
      355 SETTABLEKS                       R26 R25 K93 ["text"]
      357 CALL                             R23 2 1
      358 SETTABLEKS                       R23 R22 K48 ["Title"]
      360 GETUPVAL                         R23 6
      361 GETTABLEKS                       R23 R23 K10 ["createElement"]
      363 GETUPVAL                         R24 15
      364 GETTABLEKS                       R24 R24 K32 ["Content"]
      366 DUPTABLE                         R25 K96 [{"LayoutOrder"}]
      367 GETUPVAL                         R27 17
      368 CALL                             R27 0 1
      369 JUMPIFNOT                        R27 ; [+3]
      370 MOVE                             R26 R2
      371 CALL                             R26 0 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R26
      374 SETTABLEKS                       R26 R25 K56 ["LayoutOrder"]
      376 DUPTABLE                         R26 K97 [{"Text"}]
      377 GETUPVAL                         R27 6
      378 GETTABLEKS                       R27 R27 K10 ["createElement"]
      380 GETUPVAL                         R28 12
      381 DUPTABLE                         R29 K99 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-default"}]
      382 LOADK                            R32 K59 ["AvatarChatScreen"]
      383 LOADK                            R33 K100 ["CancelPromptConfirmText"]
      384 NAMECALL                         R30 R1 K61 ["getText"]
      386 CALL                             R30 3 1
      387 SETTABLEKS                       R30 R29 K57 ["Text"]
      389 CALL                             R27 2 1
      390 SETTABLEKS                       R27 R26 K57 ["Text"]
      392 CALL                             R23 3 1
      393 SETTABLEKS                       R23 R22 K32 ["Content"]
      395 GETUPVAL                         R23 6
      396 GETTABLEKS                       R23 R23 K10 ["createElement"]
      398 GETUPVAL                         R24 15
      399 GETTABLEKS                       R24 R24 K91 ["Actions"]
      401 DUPTABLE                         R25 K102 [{"LayoutOrder", "actions"}]
      402 GETUPVAL                         R27 17
      403 CALL                             R27 0 1
      404 JUMPIFNOT                        R27 ; [+3]
      405 MOVE                             R26 R2
      406 CALL                             R26 0 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R26
      409 SETTABLEKS                       R26 R25 K56 ["LayoutOrder"]
      411 NEWTABLE                         R26 0 2
      413 LOADK                            R30 K103 ["AvatarScreen"]
      414 LOADK                            R31 K104 ["CancelPromptYes"]
      415 NAMECALL                         R28 R1 K61 ["getText"]
      417 CALL                             R28 3 1
      418 GETUPVAL                         R29 18
      419 GETTABLEKS                       R29 R29 K105 ["Alert"]
      421 GETTABLEKS                       R30 R0 K76 ["onCancel"]
      423 DUPTABLE                         R27 K112 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      424 SETTABLEKS                       R28 R27 K93 ["text"]
      426 SETTABLEKS                       R29 R27 K110 ["variant"]
      428 SETTABLEKS                       R30 R27 K111 ["onActivated"]
      430 LOADK                            R31 K103 ["AvatarScreen"]
      431 LOADK                            R32 K113 ["CancelPromptNo"]
      432 NAMECALL                         R29 R1 K61 ["getText"]
      434 CALL                             R29 3 1
      435 GETUPVAL                         R30 18
      436 GETTABLEKS                       R30 R30 K114 ["Standard"]
      438 GETTABLEKS                       R31 R4 K90 ["disable"]
      440 DUPTABLE                         R28 K112 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      441 SETTABLEKS                       R29 R28 K93 ["text"]
      443 SETTABLEKS                       R30 R28 K110 ["variant"]
      445 SETTABLEKS                       R31 R28 K111 ["onActivated"]
      447 SETLIST                          R26 R27 2 [1]
      449 SETTABLEKS                       R26 R25 K101 ["actions"]
      451 CALL                             R23 2 1
      452 SETTABLEKS                       R23 R22 K91 ["Actions"]
      454 CALL                             R19 3 1
      455 JUMP                             ; [+1]
      456 LOADNIL                          R19
      457 SETTABLEKS                       R19 R18 K52 ["CancelDialog"]
      459 GETTABLEKS                       R20 R0 K3 ["phase"]
      461 JUMPIFNOTEQKS                    R20 K55 ["failed"] ; [+23]
      463 GETUPVAL                         R19 6
      464 GETTABLEKS                       R19 R19 K10 ["createElement"]
      466 GETUPVAL                         R20 19
      467 DUPTABLE                         R21 K115 [{"LayoutOrder", "text", "onActivated"}]
      468 MOVE                             R22 R2
      469 CALL                             R22 0 1
      470 SETTABLEKS                       R22 R21 K56 ["LayoutOrder"]
      472 LOADK                            R24 K59 ["AvatarChatScreen"]
      473 LOADK                            R25 K116 ["ButtonBackToChat"]
      474 NAMECALL                         R22 R1 K61 ["getText"]
      476 CALL                             R22 3 1
      477 SETTABLEKS                       R22 R21 K93 ["text"]
      479 GETTABLEKS                       R22 R0 K76 ["onCancel"]
      481 SETTABLEKS                       R22 R21 K111 ["onActivated"]
      483 CALL                             R19 2 1
      484 JUMP                             ; [+1]
      485 LOADNIL                          R19
      486 SETTABLEKS                       R19 R18 K53 ["BackToChatButton"]
      488 CALL                             R15 3 -1
      489 RETURN                           R15 -1

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
       74 GETTABLEKS                       R14 R14 K27 ["Util"]
       76 GETTABLEKS                       R14 R14 K28 ["AvatarCreationErrors"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K9 [require]
       81 GETTABLEKS                       R15 R1 K22 ["Src"]
       83 GETTABLEKS                       R15 R15 K23 ["Components"]
       85 GETTABLEKS                       R15 R15 K29 ["ModelPreview"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K9 [require]
       90 GETTABLEKS                       R16 R1 K22 ["Src"]
       92 GETTABLEKS                       R16 R16 K23 ["Components"]
       94 GETTABLEKS                       R16 R16 K24 ["Screens"]
       96 GETTABLEKS                       R16 R16 K30 ["AvatarScreen"]
       98 GETTABLEKS                       R16 R16 K31 ["Stages"]
      100 GETTABLEKS                       R16 R16 K32 ["StageType"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K9 [require]
      105 GETTABLEKS                       R17 R1 K22 ["Src"]
      107 GETTABLEKS                       R17 R17 K33 ["Resources"]
      109 GETTABLEKS                       R17 R17 K34 ["Theme"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K9 [require]
      114 GETTABLEKS                       R18 R1 K22 ["Src"]
      116 GETTABLEKS                       R18 R18 K23 ["Components"]
      118 GETTABLEKS                       R18 R18 K24 ["Screens"]
      120 GETTABLEKS                       R18 R18 K25 ["AvatarChatScreen"]
      122 GETTABLEKS                       R18 R18 K35 ["stepAvatarCreationProgress"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R19 R1 K22 ["Src"]
      129 GETTABLEKS                       R19 R19 K36 ["Types"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K22 ["Src"]
      136 GETTABLEKS                       R20 R20 K37 ["Flags"]
      138 GETTABLEKS                       R20 R20 K38 ["getFFlagAvatarPreviewerAvatarCreationCancelDialogOrder"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K9 [require]
      143 GETTABLEKS                       R21 R1 K22 ["Src"]
      145 GETTABLEKS                       R21 R21 K39 ["Hooks"]
      147 GETTABLEKS                       R21 R21 K40 ["useProgressiveMeshPreview"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K9 [require]
      152 GETTABLEKS                       R22 R1 K22 ["Src"]
      154 GETTABLEKS                       R22 R22 K39 ["Hooks"]
      156 GETTABLEKS                       R22 R22 K41 ["useToggleState"]
      158 CALL                             R21 1 1
      159 GETTABLEKS                       R22 R2 K42 ["ContextServices"]
      161 GETTABLEKS                       R22 R22 K43 ["Localization"]
      163 GETTABLEKS                       R23 R2 K42 ["ContextServices"]
      165 GETTABLEKS                       R23 R23 K44 ["Stylizer"]
      167 DUPCLOSURE                       R24 K45 [PROTO_0]
      168 DUPCLOSURE                       R25 K46 [PROTO_1]
      169 DUPCLOSURE                       R26 K47 [PROTO_2]
      170 DUPCLOSURE                       R27 K48 [PROTO_11]
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R6
      191 RETURN                           R27 1
