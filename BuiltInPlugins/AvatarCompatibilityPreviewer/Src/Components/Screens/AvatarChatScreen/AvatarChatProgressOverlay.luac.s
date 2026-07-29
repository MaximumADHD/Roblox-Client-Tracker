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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["previewModel"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTLT                      R1 R0 ; [+2]
        5 RETURN                           R1 1
        6 JUMPIFNOTLE                      R1 R0 ; [+2]
        8 RETURN                           R0 1
        9 GETUPVAL                         R5 1
       10 DIVK                             R4 R5 K1 [360]
       11 ADD                              R3 R0 R4
       12 FASTCALL2                        MATH_MIN R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K4 [math.min]
       17 CALL                             R2 2 1
       18 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R1 R0 R2
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["phase"]
        3 JUMPIFEQKS                       R0 K1 ["generating3D"] ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADN                            R1 0
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETIMPORT                        R0 K4 [os.clock]
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["RenderStepped"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          REF R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R1 R1 K6 ["Connect"]
       22 CALL                             R1 2 1
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R1
       25 CLOSEUPVALS                      R0
       26 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R6 0 1
       18 GETTABLEKS                       R7 R0 K3 ["previewModel"]
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R6 R0 K5 ["progress"]
       25 ORK                              R5 R6 K4 [0]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K6 ["useRefToState"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K7 ["useState"]
       34 LOADN                            R8 0
       35 CALL                             R7 1 2
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R8
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R11 0 1
       46 GETTABLEKS                       R12 R0 K9 ["phase"]
       48 SETLIST                          R11 R12 1 [1]
       50 CALL                             R9 2 0
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K10 ["createElement"]
       54 GETUPVAL                         R10 6
       55 DUPTABLE                         R11 K14 [{["tag"] = "col align-x-center align-y-center gap-large size-full padding-large", ["testId"]}]
       56 GETTABLEKS                       R12 R0 K13 ["testId"]
       58 SETTABLEKS                       R12 R11 K13 ["testId"]
       60 DUPTABLE                         R12 K20 [{"Title", "Preview", "ProgressBar", "CancelButton", "BackToChatButton"}]
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K10 ["createElement"]
       64 GETUPVAL                         R14 7
       65 DUPTABLE                         R15 K23 [{"LayoutOrder", "Text", "tag"}]
       66 MOVE                             R16 R2
       67 CALL                             R16 0 1
       68 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       70 GETTABLEKS                       R17 R0 K9 ["phase"]
       72 JUMPIFNOTEQKS                    R17 K24 ["failed"] ; [+7]
       74 LOADK                            R18 K25 ["AvatarChatScreen"]
       75 LOADK                            R19 K26 ["ProgressFailed"]
       76 NAMECALL                         R16 R1 K27 ["getText"]
       78 CALL                             R16 3 1
       79 JUMP                             ; [+5]
       80 LOADK                            R18 K25 ["AvatarChatScreen"]
       81 LOADK                            R19 K28 ["ProgressTitle"]
       82 NAMECALL                         R16 R1 K27 ["getText"]
       84 CALL                             R16 3 1
       85 SETTABLEKS                       R16 R15 K22 ["Text"]
       87 NEWTABLE                         R16 4 0
       89 LOADB                            R17 1
       90 SETTABLEKS                       R17 R16 K29 ["auto-xy text-heading-small text-wrap text-align-x-center"]
       92 GETTABLEKS                       R18 R0 K9 ["phase"]
       94 JUMPIFEQKS                       R18 K24 ["failed"] ; [+2]
       96 LOADB                            R17 0 +1
       97 LOADB                            R17 1
       98 SETTABLEKS                       R17 R16 K30 ["content-system-alert"]
      100 GETTABLEKS                       R18 R0 K9 ["phase"]
      102 JUMPIFNOTEQKS                    R18 K24 ["failed"] ; [+2]
      104 LOADB                            R17 0 +1
      105 LOADB                            R17 1
      106 SETTABLEKS                       R17 R16 K31 ["content-default"]
      108 SETTABLEKS                       R16 R15 K11 ["tag"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K15 ["Title"]
      113 GETTABLEKS                       R14 R0 K9 ["phase"]
      115 JUMPIFNOTEQKS                    R14 K32 ["generating3D"] ; [+47]
      117 JUMPIFEQKNIL                     R4 ; [+45]
      119 GETUPVAL                         R13 3
      120 GETTABLEKS                       R13 R13 K10 ["createElement"]
      122 GETUPVAL                         R14 6
      123 DUPTABLE                         R15 K35 [{"LayoutOrder", "Size", "sizeConstraint"}]
      124 MOVE                             R16 R2
      125 CALL                             R16 0 1
      126 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      128 GETIMPORT                        R16 K38 [UDim2.new]
      130 LOADN                            R17 1
      131 LOADN                            R18 0
      132 LOADN                            R19 0
      133 LOADN                            R20 240
      134 CALL                             R16 4 1
      135 SETTABLEKS                       R16 R15 K33 ["Size"]
      137 DUPTABLE                         R16 K40 [{"MaxSize"}]
      138 GETIMPORT                        R17 K42 [Vector2.new]
      140 LOADN                            R18 360
      141 LOADK                            R19 K43 [∞]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K39 ["MaxSize"]
      145 SETTABLEKS                       R16 R15 K34 ["sizeConstraint"]
      147 DUPTABLE                         R16 K44 [{"Preview"}]
      148 GETUPVAL                         R17 3
      149 GETTABLEKS                       R17 R17 K10 ["createElement"]
      151 GETUPVAL                         R18 8
      152 DUPTABLE                         R19 K47 [{"Model", "GetCameraModifications"}]
      153 SETTABLEKS                       R4 R19 K45 ["Model"]
      155 GETUPVAL                         R20 9
      156 SETTABLEKS                       R20 R19 K46 ["GetCameraModifications"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K16 ["Preview"]
      161 CALL                             R13 3 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R13
      164 SETTABLEKS                       R13 R12 K16 ["Preview"]
      166 GETTABLEKS                       R14 R0 K9 ["phase"]
      168 JUMPIFNOTEQKS                    R14 K32 ["generating3D"] ; [+127]
      170 GETUPVAL                         R13 3
      171 GETTABLEKS                       R13 R13 K10 ["createElement"]
      173 GETUPVAL                         R14 6
      174 DUPTABLE                         R15 K49 [{["LayoutOrder"], ["Size"], ["sizeConstraint"], ["tag"] = "row align-y-center gap-medium"}]
      175 MOVE                             R16 R2
      176 CALL                             R16 0 1
      177 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      179 GETIMPORT                        R16 K38 [UDim2.new]
      181 LOADN                            R17 1
      182 LOADN                            R18 0
      183 LOADN                            R19 0
      184 GETTABLEKS                       R20 R3 K33 ["Size"]
      186 GETTABLEKS                       R20 R20 K50 ["Size_300"]
      188 CALL                             R16 4 1
      189 SETTABLEKS                       R16 R15 K33 ["Size"]
      191 DUPTABLE                         R16 K40 [{"MaxSize"}]
      192 GETIMPORT                        R17 K42 [Vector2.new]
      194 LOADN                            R18 360
      195 LOADK                            R19 K43 [∞]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K39 ["MaxSize"]
      199 SETTABLEKS                       R16 R15 K34 ["sizeConstraint"]
      201 DUPTABLE                         R16 K53 [{"BarWrap", "Percent"}]
      202 GETUPVAL                         R17 3
      203 GETTABLEKS                       R17 R17 K10 ["createElement"]
      205 GETUPVAL                         R18 6
      206 DUPTABLE                         R19 K55 [{["LayoutOrder"], ["Size"], ["tag"] = "grow"}]
      207 MOVE                             R20 R2
      208 CALL                             R20 0 1
      209 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      211 GETIMPORT                        R20 K38 [UDim2.new]
      213 LOADN                            R21 1
      214 LOADN                            R22 0
      215 LOADN                            R23 0
      216 GETTABLEKS                       R24 R3 K33 ["Size"]
      218 GETTABLEKS                       R24 R24 K50 ["Size_300"]
      220 CALL                             R20 4 1
      221 SETTABLEKS                       R20 R19 K33 ["Size"]
      223 DUPTABLE                         R20 K57 [{"Bar"}]
      224 GETUPVAL                         R21 3
      225 GETTABLEKS                       R21 R21 K10 ["createElement"]
      227 GETUPVAL                         R22 10
      228 GETTABLEKS                       R22 R22 K58 ["Progress"]
      230 DUPTABLE                         R23 K62 [{"value", "shape", "size"}]
      231 MULK                             R24 R7 K63 [100]
      232 SETTABLEKS                       R24 R23 K59 ["value"]
      234 GETUPVAL                         R24 10
      235 GETTABLEKS                       R24 R24 K64 ["Enums"]
      237 GETTABLEKS                       R24 R24 K65 ["ProgressShape"]
      239 GETTABLEKS                       R24 R24 K56 ["Bar"]
      241 SETTABLEKS                       R24 R23 K60 ["shape"]
      243 GETUPVAL                         R24 10
      244 GETTABLEKS                       R24 R24 K64 ["Enums"]
      246 GETTABLEKS                       R24 R24 K66 ["ProgressSize"]
      248 GETTABLEKS                       R24 R24 K67 ["Medium"]
      250 SETTABLEKS                       R24 R23 K61 ["size"]
      252 CALL                             R21 2 1
      253 SETTABLEKS                       R21 R20 K56 ["Bar"]
      255 CALL                             R17 3 1
      256 SETTABLEKS                       R17 R16 K51 ["BarWrap"]
      258 GETUPVAL                         R17 3
      259 GETTABLEKS                       R17 R17 K10 ["createElement"]
      261 GETUPVAL                         R18 7
      262 DUPTABLE                         R19 K69 [{["LayoutOrder"], ["Size"], ["Text"], ["tag"] = "text-body-small text-align-x-left content-default"}]
      263 MOVE                             R20 R2
      264 CALL                             R20 0 1
      265 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      267 GETIMPORT                        R20 K71 [UDim2.fromOffset]
      269 GETTABLEKS                       R21 R3 K33 ["Size"]
      271 GETTABLEKS                       R21 R21 K72 ["Size_1000"]
      273 GETTABLEKS                       R22 R3 K33 ["Size"]
      275 GETTABLEKS                       R22 R22 K50 ["Size_300"]
      277 CALL                             R20 2 1
      278 SETTABLEKS                       R20 R19 K33 ["Size"]
      280 GETIMPORT                        R20 K75 [string.format]
      282 LOADK                            R21 K76 ["%d%%"]
      283 MULK                             R23 R7 K63 [100]
      284 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      285 GETIMPORT                        R22 K79 [math.floor]
      287 CALL                             R22 1 1
      288 CALL                             R20 2 1
      289 SETTABLEKS                       R20 R19 K22 ["Text"]
      291 CALL                             R17 2 1
      292 SETTABLEKS                       R17 R16 K52 ["Percent"]
      294 CALL                             R13 3 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R13
      297 SETTABLEKS                       R13 R12 K17 ["ProgressBar"]
      299 GETTABLEKS                       R14 R0 K9 ["phase"]
      301 JUMPIFNOTEQKS                    R14 K32 ["generating3D"] ; [+23]
      303 GETUPVAL                         R13 3
      304 GETTABLEKS                       R13 R13 K10 ["createElement"]
      306 GETUPVAL                         R14 11
      307 DUPTABLE                         R15 K83 [{["LayoutOrder"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-generating-cancel"}]
      308 MOVE                             R16 R2
      309 CALL                             R16 0 1
      310 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      312 LOADK                            R18 K25 ["AvatarChatScreen"]
      313 LOADK                            R19 K84 ["ButtonCancel"]
      314 NAMECALL                         R16 R1 K27 ["getText"]
      316 CALL                             R16 3 1
      317 SETTABLEKS                       R16 R15 K80 ["text"]
      319 GETTABLEKS                       R16 R0 K85 ["onCancel"]
      321 SETTABLEKS                       R16 R15 K81 ["onActivated"]
      323 CALL                             R13 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R13
      326 SETTABLEKS                       R13 R12 K18 ["CancelButton"]
      328 GETTABLEKS                       R14 R0 K9 ["phase"]
      330 JUMPIFNOTEQKS                    R14 K24 ["failed"] ; [+23]
      332 GETUPVAL                         R13 3
      333 GETTABLEKS                       R13 R13 K10 ["createElement"]
      335 GETUPVAL                         R14 11
      336 DUPTABLE                         R15 K86 [{"LayoutOrder", "text", "onActivated"}]
      337 MOVE                             R16 R2
      338 CALL                             R16 0 1
      339 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      341 LOADK                            R18 K25 ["AvatarChatScreen"]
      342 LOADK                            R19 K87 ["ButtonBackToChat"]
      343 NAMECALL                         R16 R1 K27 ["getText"]
      345 CALL                             R16 3 1
      346 SETTABLEKS                       R16 R15 K80 ["text"]
      348 GETTABLEKS                       R16 R0 K85 ["onCancel"]
      350 SETTABLEKS                       R16 R15 K81 ["onActivated"]
      352 CALL                             R13 2 1
      353 JUMP                             ; [+1]
      354 LOADNIL                          R13
      355 SETTABLEKS                       R13 R12 K19 ["BackToChatButton"]
      357 CALL                             R9 3 -1
      358 RETURN                           R9 -1

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
       43 GETTABLEKS                       R7 R5 K16 ["Text"]
       45 GETTABLEKS                       R8 R5 K17 ["View"]
       47 GETTABLEKS                       R9 R5 K18 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K19 ["useTokens"]
       51 GETIMPORT                        R10 K9 [require]
       53 GETTABLEKS                       R11 R1 K20 ["Src"]
       55 GETTABLEKS                       R11 R11 K21 ["Components"]
       57 GETTABLEKS                       R11 R11 K22 ["ModelPreview"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K9 [require]
       62 GETTABLEKS                       R12 R1 K20 ["Src"]
       64 GETTABLEKS                       R12 R12 K23 ["Types"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R2 K24 ["ContextServices"]
       69 GETTABLEKS                       R12 R12 K25 ["Localization"]
       71 DUPCLOSURE                       R13 K26 [PROTO_0]
       72 DUPCLOSURE                       R14 K27 [PROTO_1]
       73 DUPCLOSURE                       R15 K28 [PROTO_7]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 RETURN                           R15 1
