PROTO_0:
        0 DUPTABLE                         R1 K1 [{"pipeline"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["pipeline"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["effort"]
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K3 ["dynamicHead"]
       16 GETUPVAL                         R2 5
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K4 ["r15Plus"]
       22 GETUPVAL                         R2 7
       23 GETTABLEKS                       R2 R2 K5 ["avatarCreation"]
       25 GETTABLEKS                       R2 R2 K6 ["submitPrompt"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["confirmedTurnId"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFEQKS                       R2 K1 ["generating"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useState"]
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 LOADK                            R4 K3 ["modesty"]
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K4 ["npc"]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["useState"]
       21 LOADK                            R6 K5 ["balanced"]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["useState"]
       26 GETUPVAL                         R9 4
       27 CALL                             R9 0 1
       28 NOT                              R8 R9
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K2 ["useState"]
       33 GETUPVAL                         R10 5
       34 CALL                             R10 0 -1
       35 CALL                             R9 -1 2
       36 GETUPVAL                         R11 6
       37 LOADB                            R12 0
       38 CALL                             R11 1 1
       39 GETTABLEKS                       R12 R0 K6 ["avatarCreation"]
       41 GETTABLEKS                       R12 R12 K7 ["state"]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K8 ["useEventCallback"]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R0
       55 CALL                             R13 1 1
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K8 ["useEventCallback"]
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          VAL R6
       61 CALL                             R14 1 1
       62 GETTABLEKS                       R15 R12 K9 ["type"]
       64 JUMPIFNOTEQKS                    R15 K10 ["inactive"] ; [+3]
       66 LOADNIL                          R15
       67 RETURN                           R15 1
       68 GETTABLEKS                       R15 R12 K9 ["type"]
       70 JUMPIFNOTEQKS                    R15 K11 ["generating3D"] ; [+58]
       72 GETUPVAL                         R15 10
       73 GETTABLEKS                       R15 R15 K12 ["find"]
       75 GETTABLEKS                       R16 R12 K13 ["turns"]
       77 NEWCLOSURE                       R17 P2
       78 CAPTURE                          VAL R12
       79 CALL                             R15 2 1
       80 GETUPVAL                         R16 2
       81 GETTABLEKS                       R16 R16 K14 ["createElement"]
       83 GETUPVAL                         R17 11
       84 DUPTABLE                         R18 K27 [{["phase"] = "generating3D", ["progress"], ["progressUpper"], ["planPending"], ["previewModel"], ["previewImage"], ["step"], ["nodes"], ["thoughtByNode"], ["onCancel"], ["testId"] = "avatar-chat-generating"}]
       85 GETTABLEKS                       R19 R12 K16 ["progress"]
       87 SETTABLEKS                       R19 R18 K16 ["progress"]
       89 GETTABLEKS                       R19 R12 K17 ["progressUpper"]
       91 SETTABLEKS                       R19 R18 K17 ["progressUpper"]
       93 GETTABLEKS                       R19 R12 K18 ["planPending"]
       95 SETTABLEKS                       R19 R18 K18 ["planPending"]
       97 GETTABLEKS                       R19 R12 K19 ["previewModel"]
       99 SETTABLEKS                       R19 R18 K19 ["previewModel"]
      101 JUMPIFEQKNIL                     R15 ; [+4]
      103 GETTABLEKS                       R19 R15 K20 ["previewImage"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R19
      107 SETTABLEKS                       R19 R18 K20 ["previewImage"]
      109 GETTABLEKS                       R19 R12 K21 ["step"]
      111 SETTABLEKS                       R19 R18 K21 ["step"]
      113 GETTABLEKS                       R19 R12 K22 ["nodes"]
      115 SETTABLEKS                       R19 R18 K22 ["nodes"]
      117 GETTABLEKS                       R19 R12 K23 ["thoughtByNode"]
      119 SETTABLEKS                       R19 R18 K23 ["thoughtByNode"]
      121 GETTABLEKS                       R19 R0 K6 ["avatarCreation"]
      123 GETTABLEKS                       R19 R19 K28 ["cancelGeneration"]
      125 SETTABLEKS                       R19 R18 K24 ["onCancel"]
      127 CALL                             R16 2 -1
      128 RETURN                           R16 -1
      129 GETTABLEKS                       R15 R12 K9 ["type"]
      131 JUMPIFNOTEQKS                    R15 K29 ["failed"] ; [+14]
      133 GETUPVAL                         R15 2
      134 GETTABLEKS                       R15 R15 K14 ["createElement"]
      136 GETUPVAL                         R16 11
      137 DUPTABLE                         R17 K31 [{["phase"] = "failed", ["onCancel"], ["testId"] = "avatar-chat-failed"}]
      138 GETTABLEKS                       R18 R0 K6 ["avatarCreation"]
      140 GETTABLEKS                       R18 R18 K28 ["cancelGeneration"]
      142 SETTABLEKS                       R18 R17 K24 ["onCancel"]
      144 CALL                             R15 2 -1
      145 RETURN                           R15 -1
      146 GETUPVAL                         R15 10
      147 GETTABLEKS                       R15 R15 K32 ["some"]
      149 GETTABLEKS                       R16 R12 K13 ["turns"]
      151 DUPCLOSURE                       R17 K33 [PROTO_3]
      152 CALL                             R15 2 1
      153 GETUPVAL                         R16 2
      154 GETTABLEKS                       R16 R16 K14 ["createElement"]
      156 GETUPVAL                         R17 12
      157 DUPTABLE                         R18 K37 [{["tag"] = "col gap-small size-full padding-small", ["testId"] = "avatar-chat-screen"}]
      158 DUPTABLE                         R19 K41 [{"Header", "History", "Input"}]
      159 GETUPVAL                         R20 2
      160 GETTABLEKS                       R20 R20 K14 ["createElement"]
      162 GETUPVAL                         R21 12
      163 DUPTABLE                         R22 K44 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      164 MOVE                             R23 R2
      165 CALL                             R23 0 1
      166 SETTABLEKS                       R23 R22 K43 ["LayoutOrder"]
      168 DUPTABLE                         R23 K47 [{"BackButton", "Title"}]
      169 GETUPVAL                         R24 2
      170 GETTABLEKS                       R24 R24 K14 ["createElement"]
      172 GETUPVAL                         R25 13
      173 DUPTABLE                         R26 K53 [{["LayoutOrder"], ["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-back"}]
      174 MOVE                             R27 R2
      175 CALL                             R27 0 1
      176 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      178 GETUPVAL                         R27 14
      179 GETTABLEKS                       R27 R27 K54 ["ChevronLargeLeft"]
      181 SETTABLEKS                       R27 R26 K48 ["icon"]
      183 GETUPVAL                         R27 15
      184 GETTABLEKS                       R27 R27 K55 ["Small"]
      186 SETTABLEKS                       R27 R26 K49 ["size"]
      188 GETUPVAL                         R27 16
      189 GETTABLEKS                       R27 R27 K56 ["Utility"]
      191 SETTABLEKS                       R27 R26 K50 ["variant"]
      193 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      195 GETTABLEKS                       R27 R27 K57 ["resetGeneration"]
      197 SETTABLEKS                       R27 R26 K51 ["onActivated"]
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K45 ["BackButton"]
      202 GETUPVAL                         R24 2
      203 GETTABLEKS                       R24 R24 K14 ["createElement"]
      205 GETUPVAL                         R25 17
      206 DUPTABLE                         R26 K60 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-title-small content-default"}]
      207 MOVE                             R27 R2
      208 CALL                             R27 0 1
      209 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      211 LOADK                            R29 K61 ["AvatarChatScreen"]
      212 LOADK                            R30 K46 ["Title"]
      213 NAMECALL                         R27 R1 K62 ["getText"]
      215 CALL                             R27 3 1
      216 SETTABLEKS                       R27 R26 K58 ["Text"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K46 ["Title"]
      221 CALL                             R20 3 1
      222 SETTABLEKS                       R20 R19 K38 ["Header"]
      224 GETUPVAL                         R20 2
      225 GETTABLEKS                       R20 R20 K14 ["createElement"]
      227 GETUPVAL                         R21 12
      228 DUPTABLE                         R22 K64 [{["tag"] = "col grow gap-small size-full-0 padding-small", ["LayoutOrder"]}]
      229 MOVE                             R23 R2
      230 CALL                             R23 0 1
      231 SETTABLEKS                       R23 R22 K43 ["LayoutOrder"]
      233 DUPTABLE                         R23 K66 [{"Content"}]
      234 GETTABLEKS                       R26 R12 K13 ["turns"]
      236 LENGTH                           R25 R26
      237 JUMPIFNOTEQKN                    R25 K67 [0] ; [+19]
      239 GETUPVAL                         R24 2
      240 GETTABLEKS                       R24 R24 K14 ["createElement"]
      242 GETUPVAL                         R25 17
      243 DUPTABLE                         R26 K70 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["testId"] = "avatar-chat-empty"}]
      244 MOVE                             R27 R2
      245 CALL                             R27 0 1
      246 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      248 LOADK                            R29 K61 ["AvatarChatScreen"]
      249 LOADK                            R30 K71 ["EmptyHint"]
      250 NAMECALL                         R27 R1 K62 ["getText"]
      252 CALL                             R27 3 1
      253 SETTABLEKS                       R27 R26 K58 ["Text"]
      255 CALL                             R24 2 1
      256 JUMP                             ; [+28]
      257 GETUPVAL                         R24 2
      258 GETTABLEKS                       R24 R24 K14 ["createElement"]
      260 GETUPVAL                         R25 18
      261 DUPTABLE                         R26 K74 [{"turns", "onRegenerate", "onConfirm", "onCancel"}]
      262 GETTABLEKS                       R27 R12 K13 ["turns"]
      264 SETTABLEKS                       R27 R26 K13 ["turns"]
      266 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      268 GETTABLEKS                       R27 R27 K75 ["regenerate"]
      270 SETTABLEKS                       R27 R26 K72 ["onRegenerate"]
      272 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      274 GETTABLEKS                       R27 R27 K76 ["generate3D"]
      276 SETTABLEKS                       R27 R26 K73 ["onConfirm"]
      278 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      280 GETTABLEKS                       R27 R27 K28 ["cancelGeneration"]
      282 SETTABLEKS                       R27 R26 K24 ["onCancel"]
      284 CALL                             R24 2 1
      285 SETTABLEKS                       R24 R23 K65 ["Content"]
      287 CALL                             R20 3 1
      288 SETTABLEKS                       R20 R19 K39 ["History"]
      290 GETUPVAL                         R20 2
      291 GETTABLEKS                       R20 R20 K14 ["createElement"]
      293 GETUPVAL                         R21 12
      294 DUPTABLE                         R22 K78 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      295 MOVE                             R23 R2
      296 CALL                             R23 0 1
      297 SETTABLEKS                       R23 R22 K43 ["LayoutOrder"]
      299 DUPTABLE                         R23 K81 [{"Options", "Prompt"}]
      300 GETTABLEKS                       R26 R12 K13 ["turns"]
      302 LENGTH                           R25 R26
      303 JUMPIFNOTEQKN                    R25 K67 [0] ; [+35]
      305 GETTABLEKS                       R25 R11 K82 ["enabled"]
      307 JUMPIF                           R25 ; [+31]
      308 GETUPVAL                         R24 2
      309 GETTABLEKS                       R24 R24 K14 ["createElement"]
      311 GETUPVAL                         R25 19
      312 DUPTABLE                         R26 K92 [{"LayoutOrder", "pipeline", "effort", "dynamicHead", "r15Plus", "setPipeline", "setEffort", "setDynamicHead", "setR15Plus", "onDismiss"}]
      313 MOVE                             R27 R2
      314 CALL                             R27 0 1
      315 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      317 SETTABLEKS                       R3 R26 K83 ["pipeline"]
      319 SETTABLEKS                       R5 R26 K84 ["effort"]
      321 SETTABLEKS                       R7 R26 K85 ["dynamicHead"]
      323 SETTABLEKS                       R9 R26 K86 ["r15Plus"]
      325 SETTABLEKS                       R4 R26 K87 ["setPipeline"]
      327 SETTABLEKS                       R14 R26 K88 ["setEffort"]
      329 SETTABLEKS                       R8 R26 K89 ["setDynamicHead"]
      331 SETTABLEKS                       R10 R26 K90 ["setR15Plus"]
      333 GETTABLEKS                       R27 R11 K93 ["enable"]
      335 SETTABLEKS                       R27 R26 K91 ["onDismiss"]
      337 CALL                             R24 2 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R24
      340 SETTABLEKS                       R24 R23 K79 ["Options"]
      342 GETUPVAL                         R24 2
      343 GETTABLEKS                       R24 R24 K14 ["createElement"]
      345 GETUPVAL                         R25 20
      346 DUPTABLE                         R26 K96 [{"LayoutOrder", "isGenerating", "onSubmit", "onCancel"}]
      347 MOVE                             R27 R2
      348 CALL                             R27 0 1
      349 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      351 SETTABLEKS                       R15 R26 K94 ["isGenerating"]
      353 SETTABLEKS                       R13 R26 K95 ["onSubmit"]
      355 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      357 GETTABLEKS                       R27 R27 K28 ["cancelGeneration"]
      359 SETTABLEKS                       R27 R26 K24 ["onCancel"]
      361 CALL                             R24 2 1
      362 SETTABLEKS                       R24 R23 K80 ["Prompt"]
      364 CALL                             R20 3 1
      365 SETTABLEKS                       R20 R19 K40 ["Input"]
      367 CALL                             R16 3 -1
      368 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["Enums"]
       44 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       46 GETTABLEKS                       R7 R5 K12 ["Enums"]
       48 GETTABLEKS                       R7 R7 K14 ["IconName"]
       50 GETTABLEKS                       R8 R5 K12 ["Enums"]
       52 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       54 GETTABLEKS                       R9 R5 K16 ["IconButton"]
       56 GETTABLEKS                       R10 R5 K17 ["Text"]
       58 GETTABLEKS                       R11 R5 K18 ["View"]
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K19 ["Src"]
       64 GETTABLEKS                       R13 R13 K20 ["Components"]
       66 GETTABLEKS                       R13 R13 K21 ["Screens"]
       68 GETTABLEKS                       R13 R13 K22 ["AvatarChatScreen"]
       70 GETTABLEKS                       R13 R13 K23 ["AvatarChatProgressOverlay"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K19 ["Src"]
       77 GETTABLEKS                       R14 R14 K20 ["Components"]
       79 GETTABLEKS                       R14 R14 K21 ["Screens"]
       81 GETTABLEKS                       R14 R14 K22 ["AvatarChatScreen"]
       83 GETTABLEKS                       R14 R14 K24 ["ChatHistory"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K19 ["Src"]
       90 GETTABLEKS                       R15 R15 K20 ["Components"]
       92 GETTABLEKS                       R15 R15 K21 ["Screens"]
       94 GETTABLEKS                       R15 R15 K22 ["AvatarChatScreen"]
       96 GETTABLEKS                       R15 R15 K25 ["ChatInput"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K19 ["Src"]
      103 GETTABLEKS                       R16 R16 K20 ["Components"]
      105 GETTABLEKS                       R16 R16 K21 ["Screens"]
      107 GETTABLEKS                       R16 R16 K22 ["AvatarChatScreen"]
      109 GETTABLEKS                       R16 R16 K26 ["GenerationOptionsCard"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K19 ["Src"]
      116 GETTABLEKS                       R17 R17 K27 ["Flags"]
      118 GETTABLEKS                       R17 R17 K28 ["getFFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K19 ["Src"]
      125 GETTABLEKS                       R18 R18 K27 ["Flags"]
      127 GETTABLEKS                       R18 R18 K29 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K19 ["Src"]
      134 GETTABLEKS                       R19 R19 K27 ["Flags"]
      136 GETTABLEKS                       R19 R19 K30 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K19 ["Src"]
      143 GETTABLEKS                       R20 R20 K27 ["Flags"]
      145 GETTABLEKS                       R20 R20 K31 ["getFFlagAvatarPreviewerAvatarCreationPipelineOptions"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K19 ["Src"]
      152 GETTABLEKS                       R21 R21 K27 ["Flags"]
      154 GETTABLEKS                       R21 R21 K32 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOn"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K19 ["Src"]
      161 GETTABLEKS                       R22 R22 K27 ["Flags"]
      163 GETTABLEKS                       R22 R22 K33 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K5 [require]
      168 GETTABLEKS                       R23 R0 K19 ["Src"]
      170 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      172 GETTABLEKS                       R23 R23 K35 ["useAvatarCreationState"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K19 ["Src"]
      179 GETTABLEKS                       R24 R24 K34 ["Hooks"]
      181 GETTABLEKS                       R24 R24 K36 ["useToggleState"]
      183 CALL                             R23 1 1
      184 GETTABLEKS                       R24 R2 K37 ["ContextServices"]
      186 GETTABLEKS                       R24 R24 K38 ["Localization"]
      188 GETIMPORT                        R25 K5 [require]
      190 GETTABLEKS                       R26 R0 K19 ["Src"]
      192 GETTABLEKS                       R26 R26 K39 ["Types"]
      194 CALL                             R25 1 1
      195 DUPCLOSURE                       R26 K40 [PROTO_4]
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R14
      217 RETURN                           R26 1
