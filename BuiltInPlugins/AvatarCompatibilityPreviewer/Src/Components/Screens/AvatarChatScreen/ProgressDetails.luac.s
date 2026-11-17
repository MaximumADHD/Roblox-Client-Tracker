PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K4 [{"LayoutOrder", "tag"}]
        9 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 NEWTABLE                         R5 2 0
       15 LOADB                            R6 1
       16 SETTABLEKS                       R6 R5 K5 ["col align-x-left gap-xxsmall size-full-0 auto-y"]
       18 GETTABLEKS                       R7 R0 K6 ["separated"]
       20 JUMPIFEQKB                       R7 TRUE ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K7 ["padding-top-small"]
       26 SETTABLEKS                       R5 R4 K3 ["tag"]
       28 DUPTABLE                         R5 K10 [{"Label", "Thought"}]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K1 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
       34 MOVE                             R9 R1
       35 CALL                             R9 0 1
       36 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       38 DUPTABLE                         R9 K15 [{"Check", "Text"}]
       39 GETTABLEKS                       R11 R0 K16 ["status"]
       41 JUMPIFNOTEQKS                    R11 K17 ["completed"] ; [+22]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K1 ["createElement"]
       46 GETUPVAL                         R11 3
       47 DUPTABLE                         R12 K20 [{"name", "size", "LayoutOrder"}]
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R13 R13 K13 ["Check"]
       51 SETTABLEKS                       R13 R12 K18 ["name"]
       53 GETUPVAL                         R13 5
       54 GETTABLEKS                       R13 R13 K21 ["Small"]
       56 SETTABLEKS                       R13 R12 K19 ["size"]
       58 MOVE                             R13 R1
       59 CALL                             R13 0 1
       60 SETTABLEKS                       R13 R12 K2 ["LayoutOrder"]
       62 CALL                             R10 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K13 ["Check"]
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R10 R10 K1 ["createElement"]
       70 GETUPVAL                         R11 6
       71 DUPTABLE                         R12 K25 [{["Text"], ["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left text-truncate-none content-default", ["testId"] = "avatar-chat-progress-detail"}]
       72 GETTABLEKS                       R13 R0 K26 ["label"]
       74 SETTABLEKS                       R13 R12 K14 ["Text"]
       76 MOVE                             R13 R1
       77 CALL                             R13 0 1
       78 SETTABLEKS                       R13 R12 K2 ["LayoutOrder"]
       80 DUPTABLE                         R13 K28 [{"Shimmer"}]
       81 GETTABLEKS                       R15 R0 K16 ["status"]
       83 JUMPIFNOTEQKS                    R15 K29 ["running"] ; [+7]
       85 GETUPVAL                         R14 1
       86 GETTABLEKS                       R14 R14 K1 ["createElement"]
       88 GETUPVAL                         R15 7
       89 CALL                             R14 1 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R14
       92 SETTABLEKS                       R14 R13 K27 ["Shimmer"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K14 ["Text"]
       97 CALL                             R6 3 1
       98 SETTABLEKS                       R6 R5 K8 ["Label"]
      100 GETTABLEKS                       R7 R0 K30 ["thought"]
      102 JUMPIFEQKNIL                     R7 ; [+16]
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K1 ["createElement"]
      107 GETUPVAL                         R7 8
      108 DUPTABLE                         R8 K32 [{"text", "LayoutOrder"}]
      109 GETTABLEKS                       R9 R0 K30 ["thought"]
      111 SETTABLEKS                       R9 R8 K31 ["text"]
      113 MOVE                             R9 R1
      114 CALL                             R9 0 1
      115 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
      117 CALL                             R6 2 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R6
      120 SETTABLEKS                       R6 R5 K9 ["Thought"]
      122 CALL                             R2 3 -1
      123 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R0 K1 ["stages"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["createNextOrder"]
       12 CALL                             R4 0 1
       13 NEWTABLE                         R5 0 0
       15 GETTABLEKS                       R6 R3 K3 ["running"]
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 LOADK                            R11 K4 ["running-%*"]
       21 GETTABLEKS                       R13 R10 K5 ["id"]
       23 NAMECALL                         R11 R11 K6 ["format"]
       25 CALL                             R11 2 1
       26 GETUPVAL                         R12 3
       27 GETTABLEKS                       R12 R12 K7 ["createElement"]
       29 GETUPVAL                         R13 4
       30 DUPTABLE                         R14 K12 [{["label"], ["thought"], ["status"] = "running", ["LayoutOrder"]}]
       31 GETTABLEKS                       R15 R10 K8 ["label"]
       33 SETTABLEKS                       R15 R14 K8 ["label"]
       35 GETTABLEKS                       R15 R10 K9 ["thought"]
       37 SETTABLEKS                       R15 R14 K9 ["thought"]
       39 MOVE                             R15 R4
       40 CALL                             R15 0 1
       41 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       43 CALL                             R12 2 1
       44 SETTABLE                         R12 R5 R11
       45 FORGLOOP                         R6 2 ; [-26]
       47 GETTABLEKS                       R6 R3 K13 ["waiting"]
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 LOADK                            R11 K14 ["waiting-%*"]
       53 GETTABLEKS                       R13 R10 K5 ["id"]
       55 NAMECALL                         R11 R11 K6 ["format"]
       57 CALL                             R11 2 1
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K7 ["createElement"]
       61 GETUPVAL                         R13 4
       62 DUPTABLE                         R14 K15 [{["label"], ["thought"], ["status"] = "waiting", ["LayoutOrder"]}]
       63 GETTABLEKS                       R15 R10 K8 ["label"]
       65 SETTABLEKS                       R15 R14 K8 ["label"]
       67 GETTABLEKS                       R15 R10 K9 ["thought"]
       69 SETTABLEKS                       R15 R14 K9 ["thought"]
       71 MOVE                             R15 R4
       72 CALL                             R15 0 1
       73 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       75 CALL                             R12 2 1
       76 SETTABLE                         R12 R5 R11
       77 FORGLOOP                         R6 2 ; [-26]
       79 GETTABLEKS                       R6 R3 K16 ["completed"]
       81 LOADNIL                          R7
       82 LOADNIL                          R8
       83 FORGPREP                         R6
       84 LOADK                            R11 K17 ["completed-%*"]
       85 GETTABLEKS                       R13 R10 K5 ["id"]
       87 NAMECALL                         R11 R11 K6 ["format"]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R12 R12 K7 ["createElement"]
       93 GETUPVAL                         R13 4
       94 DUPTABLE                         R14 K19 [{["label"], ["status"] = "completed", ["separated"], ["LayoutOrder"]}]
       95 GETTABLEKS                       R15 R10 K8 ["label"]
       97 SETTABLEKS                       R15 R14 K8 ["label"]
       99 LOADB                            R15 0
      100 JUMPIFNOTEQKN                    R9 K20 [1] ; [+13]
      102 GETTABLEKS                       R18 R3 K3 ["running"]
      104 LENGTH                           R17 R18
      105 GETTABLEKS                       R19 R3 K13 ["waiting"]
      107 LENGTH                           R18 R19
      108 ADD                              R16 R17 R18
      109 LOADN                            R17 0
      110 JUMPIFLT                         R17 R16 ; [+2]
      112 LOADB                            R15 0 +1
      113 LOADB                            R15 1
      114 SETTABLEKS                       R15 R14 K18 ["separated"]
      116 MOVE                             R15 R4
      117 CALL                             R15 0 1
      118 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      120 CALL                             R12 2 1
      121 SETTABLE                         R12 R5 R11
      122 FORGLOOP                         R6 2 ; [-39]
      124 GETTABLEKS                       R8 R3 K3 ["running"]
      126 LENGTH                           R7 R8
      127 GETTABLEKS                       R9 R3 K13 ["waiting"]
      129 LENGTH                           R8 R9
      130 ADD                              R6 R7 R8
      131 JUMPIFNOTEQKN                    R6 K21 [0] ; [+3]
      133 LOADK                            R7 K22 [""]
      134 JUMP                             ; [+21]
      135 LOADK                            R9 K23 ["AvatarChatScreen"]
      136 GETTABLEKS                       R12 R3 K3 ["running"]
      138 LENGTH                           R11 R12
      139 LOADN                            R12 0
      140 JUMPIFNOTLT                      R12 R11 ; [+3]
      142 LOADK                            R10 K24 ["StagesRunning"]
      143 JUMP                             ; [+1]
      144 LOADK                            R10 K25 ["StagesWaiting"]
      145 DUPTABLE                         R11 K27 [{"count"}]
      146 FASTCALL1                        TOSTRING R6 ; [+3]
      147 MOVE                             R13 R6
      148 GETIMPORT                        R12 K29 [tostring]
      150 CALL                             R12 1 1
      151 SETTABLEKS                       R12 R11 K26 ["count"]
      153 NAMECALL                         R7 R1 K30 ["getText"]
      155 CALL                             R7 4 1
      156 GETTABLEKS                       R9 R2 K31 ["enabled"]
      158 JUMPIFNOT                        R9 ; [+2]
      159 MOVE                             R8 R7
      160 JUMP                             ; [+2]
      161 GETTABLEKS                       R8 R3 K32 ["summary"]
      163 LOADK                            R11 K23 ["AvatarChatScreen"]
      164 LOADK                            R12 K33 ["StagesCompleted"]
      165 DUPTABLE                         R13 K27 [{"count"}]
      166 GETTABLEKS                       R16 R3 K16 ["completed"]
      168 LENGTH                           R15 R16
      169 FASTCALL1                        TOSTRING R15 ; [+2]
      170 GETIMPORT                        R14 K29 [tostring]
      172 CALL                             R14 1 1
      173 SETTABLEKS                       R14 R13 K26 ["count"]
      175 NAMECALL                         R9 R1 K30 ["getText"]
      177 CALL                             R9 4 1
      178 GETUPVAL                         R10 3
      179 GETTABLEKS                       R10 R10 K7 ["createElement"]
      181 GETUPVAL                         R11 5
      182 GETTABLEKS                       R11 R11 K34 ["Root"]
      184 DUPTABLE                         R12 K37 [{"expanded", "onToggle"}]
      185 GETTABLEKS                       R13 R2 K31 ["enabled"]
      187 SETTABLEKS                       R13 R12 K35 ["expanded"]
      189 GETTABLEKS                       R13 R2 K38 ["toggle"]
      191 SETTABLEKS                       R13 R12 K36 ["onToggle"]
      193 DUPTABLE                         R13 K41 [{"Header", "Content"}]
      194 GETUPVAL                         R14 3
      195 GETTABLEKS                       R14 R14 K7 ["createElement"]
      197 GETUPVAL                         R15 5
      198 GETTABLEKS                       R15 R15 K39 ["Header"]
      200 DUPTABLE                         R16 K44 [{["LayoutOrder"], ["testId"] = "avatar-chat-progress-stages"}]
      201 MOVE                             R17 R4
      202 CALL                             R17 0 1
      203 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      205 DUPTABLE                         R17 K48 [{"Headline", "OtherStages", "Completed"}]
      206 JUMPIFNOTEQKS                    R8 K22 [""] ; [+3]
      208 LOADNIL                          R18
      209 JUMP                             ; [+31]
      210 GETUPVAL                         R18 3
      211 GETTABLEKS                       R18 R18 K7 ["createElement"]
      213 GETUPVAL                         R19 6
      214 DUPTABLE                         R20 K52 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink auto-xy text-body-small text-align-x-left text-truncate-end content-default"}]
      215 MOVE                             R21 R4
      216 CALL                             R21 0 1
      217 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      219 SETTABLEKS                       R8 R20 K49 ["Text"]
      221 DUPTABLE                         R21 K54 [{"Shimmer"}]
      222 GETTABLEKS                       R23 R2 K31 ["enabled"]
      224 JUMPIF                           R23 ; [+12]
      225 GETTABLEKS                       R24 R3 K3 ["running"]
      227 LENGTH                           R23 R24
      228 LOADN                            R24 0
      229 JUMPIFNOTLT                      R24 R23 ; [+7]
      231 GETUPVAL                         R22 3
      232 GETTABLEKS                       R22 R22 K7 ["createElement"]
      234 GETUPVAL                         R23 7
      235 CALL                             R22 1 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R22
      238 SETTABLEKS                       R22 R21 K53 ["Shimmer"]
      240 CALL                             R18 3 1
      241 SETTABLEKS                       R18 R17 K45 ["Headline"]
      243 GETTABLEKS                       R19 R2 K31 ["enabled"]
      245 JUMPIF                           R19 ; [+3]
      246 LOADN                            R19 1
      247 JUMPIFNOTLE                      R6 R19 ; [+3]
      249 LOADNIL                          R18
      250 JUMP                             ; [+29]
      251 GETUPVAL                         R18 3
      252 GETTABLEKS                       R18 R18 K7 ["createElement"]
      254 GETUPVAL                         R19 6
      255 DUPTABLE                         R20 K58 [{["LayoutOrder"], ["Text"], ["RichText"] = True, ["tag"] = "auto-xy text-body-small content-default"}]
      256 MOVE                             R21 R4
      257 CALL                             R21 0 1
      258 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      260 LOADK                            R21 K59 ["<i>%*</i>"]
      261 LOADK                            R25 K23 ["AvatarChatScreen"]
      262 LOADK                            R26 K46 ["OtherStages"]
      263 DUPTABLE                         R27 K27 [{"count"}]
      264 SUBK                             R29 R6 K20 [1]
      265 FASTCALL1                        TOSTRING R29 ; [+2]
      266 GETIMPORT                        R28 K29 [tostring]
      268 CALL                             R28 1 1
      269 SETTABLEKS                       R28 R27 K26 ["count"]
      271 NAMECALL                         R23 R1 K30 ["getText"]
      273 CALL                             R23 4 1
      274 NAMECALL                         R21 R21 K6 ["format"]
      276 CALL                             R21 2 1
      277 SETTABLEKS                       R21 R20 K49 ["Text"]
      279 CALL                             R18 2 1
      280 SETTABLEKS                       R18 R17 K46 ["OtherStages"]
      282 GETTABLEKS                       R20 R3 K16 ["completed"]
      284 LENGTH                           R19 R20
      285 JUMPIFNOTEQKN                    R19 K21 [0] ; [+3]
      287 LOADNIL                          R18
      288 JUMP                             ; [+21]
      289 GETUPVAL                         R18 3
      290 GETTABLEKS                       R18 R18 K7 ["createElement"]
      292 GETUPVAL                         R19 6
      293 DUPTABLE                         R20 K61 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small content-muted"}]
      294 MOVE                             R21 R4
      295 CALL                             R21 0 1
      296 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      298 JUMPIFNOTEQKS                    R8 K22 [""] ; [+3]
      300 MOVE                             R21 R9
      301 JUMP                             ; [+5]
      302 LOADK                            R21 K62 ["• %*"]
      303 MOVE                             R23 R9
      304 NAMECALL                         R21 R21 K6 ["format"]
      306 CALL                             R21 2 1
      307 SETTABLEKS                       R21 R20 K49 ["Text"]
      309 CALL                             R18 2 1
      310 SETTABLEKS                       R18 R17 K47 ["Completed"]
      312 CALL                             R14 3 1
      313 SETTABLEKS                       R14 R13 K39 ["Header"]
      315 GETUPVAL                         R14 3
      316 GETTABLEKS                       R14 R14 K7 ["createElement"]
      318 GETUPVAL                         R15 5
      319 GETTABLEKS                       R15 R15 K40 ["Content"]
      321 DUPTABLE                         R16 K64 [{["LayoutOrder"], ["tag"] = "col align-x-left fill gap-xxsmall auto-y"}]
      322 MOVE                             R17 R4
      323 CALL                             R17 0 1
      324 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      326 MOVE                             R17 R5
      327 CALL                             R14 3 1
      328 SETTABLEKS                       R14 R13 K40 ["Content"]
      330 CALL                             R10 3 -1
      331 RETURN                           R10 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+15]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["createElement"]
       13 GETUPVAL                         R4 3
       14 DUPTABLE                         R5 K5 [{["label"], ["status"] = "running"}]
       15 LOADK                            R8 K6 ["ProgressBar"]
       16 LOADK                            R9 K7 ["Initializing"]
       17 NAMECALL                         R6 R1 K8 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K2 ["label"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K1 ["createElement"]
       27 GETUPVAL                         R4 4
       28 DUPTABLE                         R5 K10 [{"stages"}]
       29 SETTABLEKS                       R2 R5 K9 ["stages"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Icon"]
       37 GETTABLEKS                       R6 R4 K12 ["Enums"]
       39 GETTABLEKS                       R6 R6 K13 ["IconName"]
       41 GETTABLEKS                       R7 R4 K12 ["Enums"]
       43 GETTABLEKS                       R7 R7 K14 ["IconSize"]
       45 GETTABLEKS                       R8 R4 K15 ["Text"]
       47 GETTABLEKS                       R9 R4 K16 ["View"]
       49 GETTABLEKS                       R10 R1 K17 ["ContextServices"]
       51 GETTABLEKS                       R10 R10 K18 ["Localization"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K19 ["Src"]
       57 GETTABLEKS                       R12 R12 K20 ["Components"]
       59 GETTABLEKS                       R12 R12 K21 ["Screens"]
       61 GETTABLEKS                       R12 R12 K22 ["AvatarChatScreen"]
       63 GETTABLEKS                       R12 R12 K23 ["Accordion"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K19 ["Src"]
       70 GETTABLEKS                       R13 R13 K20 ["Components"]
       72 GETTABLEKS                       R13 R13 K21 ["Screens"]
       74 GETTABLEKS                       R13 R13 K22 ["AvatarChatScreen"]
       76 GETTABLEKS                       R13 R13 K24 ["ProgressThoughtText"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K19 ["Src"]
       83 GETTABLEKS                       R14 R14 K20 ["Components"]
       85 GETTABLEKS                       R14 R14 K21 ["Screens"]
       87 GETTABLEKS                       R14 R14 K22 ["AvatarChatScreen"]
       89 GETTABLEKS                       R14 R14 K25 ["ShimmerGradient"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K19 ["Src"]
       96 GETTABLEKS                       R15 R15 K26 ["Types"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K19 ["Src"]
      103 GETTABLEKS                       R16 R16 K20 ["Components"]
      105 GETTABLEKS                       R16 R16 K21 ["Screens"]
      107 GETTABLEKS                       R16 R16 K22 ["AvatarChatScreen"]
      109 GETTABLEKS                       R16 R16 K27 ["buildProgressStages"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K19 ["Src"]
      116 GETTABLEKS                       R17 R17 K28 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K29 ["useToggleState"]
      120 CALL                             R16 1 1
      121 DUPCLOSURE                       R17 K30 [PROTO_0]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R12
      131 DUPCLOSURE                       R18 K31 [PROTO_1]
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R13
      140 DUPCLOSURE                       R19 K32 [PROTO_2]
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R18
      146 RETURN                           R19 1
