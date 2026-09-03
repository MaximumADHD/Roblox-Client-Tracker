PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R0 K3 ["status"]
       12 JUMPIFEQKS                       R4 K4 ["failed"] ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 MOVE                             R4 R3
       17 JUMPIF                           R4 ; [+6]
       18 GETTABLEKS                       R5 R0 K5 ["onRevert"]
       20 JUMPIFNOTEQKNIL                  R5 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K6 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K11 [{["testId"], ["onActivated"], ["tag"] = "row align-y-center gap-small size-0 auto-xy padding-x-small padding-y-xsmall bg-surface-100"}]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K12 ["StatusLabel"]
       32 GETTABLEKS                       R8 R8 K13 ["Container"]
       34 SETTABLEKS                       R8 R7 K7 ["testId"]
       36 GETTABLEKS                       R8 R0 K8 ["onActivated"]
       38 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       40 DUPTABLE                         R8 K19 [{"Corner", "StatusIcon", "Message", "Revert", "Close"}]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K6 ["createElement"]
       44 LOADK                            R10 K20 ["UICorner"]
       45 NEWTABLE                         R11 8 0
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R12 R12 K21 ["Tag"]
       50 LOADK                            R14 K22 ["data-testid=%*"]
       51 GETUPVAL                         R16 4
       52 GETTABLEKS                       R16 R16 K12 ["StatusLabel"]
       54 GETTABLEKS                       R16 R16 K14 ["Corner"]
       56 NAMECALL                         R14 R14 K23 ["format"]
       58 CALL                             R14 2 1
       59 MOVE                             R13 R14
       60 SETTABLE                         R13 R11 R12
       61 GETIMPORT                        R12 K26 [UDim.new]
       63 LOADN                            R13 0
       64 GETTABLEKS                       R14 R1 K27 ["Radius"]
       66 GETTABLEKS                       R14 R14 K28 ["Medium"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K29 ["TopLeftRadius"]
       71 GETIMPORT                        R12 K26 [UDim.new]
       73 LOADN                            R13 0
       74 GETTABLEKS                       R14 R1 K27 ["Radius"]
       76 GETTABLEKS                       R14 R14 K28 ["Medium"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K30 ["TopRightRadius"]
       81 GETIMPORT                        R12 K26 [UDim.new]
       83 LOADN                            R13 0
       84 GETTABLEKS                       R14 R1 K27 ["Radius"]
       86 GETTABLEKS                       R14 R14 K28 ["Medium"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K31 ["BottomRightRadius"]
       91 GETIMPORT                        R12 K26 [UDim.new]
       93 LOADN                            R13 0
       94 LOADN                            R14 0
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K32 ["BottomLeftRadius"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K14 ["Corner"]
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R9 R9 K6 ["createElement"]
      104 GETUPVAL                         R10 5
      105 DUPTABLE                         R11 K38 [{"LayoutOrder", "name", "variant", "size", "style"}]
      106 MOVE                             R12 R2
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K39 ["Enums"]
      113 GETTABLEKS                       R12 R12 K40 ["IconName"]
      115 GETTABLEKS                       R12 R12 K41 ["Nebula"]
      117 SETTABLEKS                       R12 R11 K34 ["name"]
      119 GETUPVAL                         R12 0
      120 GETTABLEKS                       R12 R12 K39 ["Enums"]
      122 GETTABLEKS                       R12 R12 K42 ["IconVariant"]
      124 GETTABLEKS                       R12 R12 K43 ["Filled"]
      126 SETTABLEKS                       R12 R11 K35 ["variant"]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K39 ["Enums"]
      131 GETTABLEKS                       R12 R12 K44 ["IconSize"]
      133 GETTABLEKS                       R12 R12 K45 ["Small"]
      135 SETTABLEKS                       R12 R11 K36 ["size"]
      137 JUMPIFNOT                        R3 ; [+7]
      138 GETTABLEKS                       R12 R1 K46 ["Color"]
      140 GETTABLEKS                       R12 R12 K47 ["System"]
      142 GETTABLEKS                       R12 R12 K48 ["Alert"]
      144 JUMP                             ; [+6]
      145 GETTABLEKS                       R12 R1 K46 ["Color"]
      147 GETTABLEKS                       R12 R12 K49 ["Content"]
      149 GETTABLEKS                       R12 R12 K50 ["Emphasis"]
      151 SETTABLEKS                       R12 R11 K37 ["style"]
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K15 ["StatusIcon"]
      156 GETUPVAL                         R9 2
      157 GETTABLEKS                       R9 R9 K6 ["createElement"]
      159 GETUPVAL                         R10 6
      160 DUPTABLE                         R11 K56 [{["LayoutOrder"], ["testId"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["sizeConstraint"], ["tag"]}]
      161 MOVE                             R12 R2
      162 CALL                             R12 0 1
      163 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      165 GETUPVAL                         R12 4
      166 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      168 GETTABLEKS                       R12 R12 K16 ["Message"]
      170 SETTABLEKS                       R12 R11 K7 ["testId"]
      172 GETTABLEKS                       R12 R0 K57 ["message"]
      174 SETTABLEKS                       R12 R11 K51 ["Text"]
      176 GETIMPORT                        R12 K60 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R12 R11 K54 ["TextXAlignment"]
      180 DUPTABLE                         R12 K63 [{"MinSize", "MaxSize"}]
      181 GETIMPORT                        R13 K66 [Vector2.zero]
      183 SETTABLEKS                       R13 R12 K61 ["MinSize"]
      185 GETIMPORT                        R13 K67 [Vector2.new]
      187 LOADN                            R14 240
      188 LOADK                            R15 K68 [∞]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K62 ["MaxSize"]
      192 SETTABLEKS                       R12 R11 K55 ["sizeConstraint"]
      194 NEWTABLE                         R12 8 0
      196 LOADB                            R13 1
      197 SETTABLEKS                       R13 R12 K69 ["auto-xy"]
      199 LOADB                            R13 1
      200 SETTABLEKS                       R13 R12 K70 ["size-0"]
      202 GETTABLEKS                       R14 R0 K71 ["emphasized"]
      204 NOT                              R13 R14
      205 SETTABLEKS                       R13 R12 K72 ["text-body-small"]
      207 GETTABLEKS                       R13 R0 K71 ["emphasized"]
      209 SETTABLEKS                       R13 R12 K73 ["text-title-small"]
      211 NOT                              R13 R3
      212 SETTABLEKS                       R13 R12 K74 ["content-emphasis"]
      214 SETTABLEKS                       R3 R12 K75 ["content-system-alert"]
      216 SETTABLEKS                       R12 R11 K9 ["tag"]
      218 DUPTABLE                         R12 K77 [{"Shimmer"}]
      219 GETTABLEKS                       R14 R0 K78 ["shimmer"]
      221 JUMPIFNOT                        R14 ; [+6]
      222 GETUPVAL                         R13 2
      223 GETTABLEKS                       R13 R13 K6 ["createElement"]
      225 GETUPVAL                         R14 7
      226 CALL                             R13 1 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R13
      229 SETTABLEKS                       R13 R12 K76 ["Shimmer"]
      231 CALL                             R9 3 1
      232 SETTABLEKS                       R9 R8 K16 ["Message"]
      234 GETTABLEKS                       R10 R0 K5 ["onRevert"]
      236 JUMPIFNOT                        R10 ; [+49]
      237 GETUPVAL                         R9 2
      238 GETTABLEKS                       R9 R9 K6 ["createElement"]
      240 GETUPVAL                         R10 8
      241 DUPTABLE                         R11 K80 [{"LayoutOrder", "testId", "icon", "onActivated", "size", "variant"}]
      242 MOVE                             R12 R2
      243 CALL                             R12 0 1
      244 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      246 GETUPVAL                         R12 4
      247 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      249 GETTABLEKS                       R12 R12 K17 ["Revert"]
      251 SETTABLEKS                       R12 R11 K7 ["testId"]
      253 GETUPVAL                         R12 0
      254 GETTABLEKS                       R12 R12 K39 ["Enums"]
      256 GETTABLEKS                       R12 R12 K40 ["IconName"]
      258 GETTABLEKS                       R12 R12 K81 ["ArrowCurlToLeft"]
      260 SETTABLEKS                       R12 R11 K79 ["icon"]
      262 GETTABLEKS                       R12 R0 K5 ["onRevert"]
      264 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      266 GETUPVAL                         R12 0
      267 GETTABLEKS                       R12 R12 K39 ["Enums"]
      269 GETTABLEKS                       R12 R12 K82 ["InputSize"]
      271 GETTABLEKS                       R12 R12 K45 ["Small"]
      273 SETTABLEKS                       R12 R11 K36 ["size"]
      275 GETUPVAL                         R12 0
      276 GETTABLEKS                       R12 R12 K39 ["Enums"]
      278 GETTABLEKS                       R12 R12 K83 ["ButtonVariant"]
      280 GETTABLEKS                       R12 R12 K84 ["Utility"]
      282 SETTABLEKS                       R12 R11 K35 ["variant"]
      284 CALL                             R9 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R9
      287 SETTABLEKS                       R9 R8 K17 ["Revert"]
      289 JUMPIFNOT                        R4 ; [+58]
      290 GETUPVAL                         R9 2
      291 GETTABLEKS                       R9 R9 K6 ["createElement"]
      293 GETUPVAL                         R10 8
      294 DUPTABLE                         R11 K80 [{"LayoutOrder", "testId", "icon", "onActivated", "size", "variant"}]
      295 MOVE                             R12 R2
      296 CALL                             R12 0 1
      297 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      299 GETUPVAL                         R12 4
      300 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      302 GETTABLEKS                       R12 R12 K18 ["Close"]
      304 SETTABLEKS                       R12 R11 K7 ["testId"]
      306 JUMPIFNOT                        R3 ; [+8]
      307 GETUPVAL                         R12 0
      308 GETTABLEKS                       R12 R12 K39 ["Enums"]
      310 GETTABLEKS                       R12 R12 K40 ["IconName"]
      312 GETTABLEKS                       R12 R12 K85 ["X"]
      314 JUMP                             ; [+7]
      315 GETUPVAL                         R12 0
      316 GETTABLEKS                       R12 R12 K39 ["Enums"]
      318 GETTABLEKS                       R12 R12 K40 ["IconName"]
      320 GETTABLEKS                       R12 R12 K86 ["Check"]
      322 SETTABLEKS                       R12 R11 K79 ["icon"]
      324 GETTABLEKS                       R12 R0 K87 ["onClose"]
      326 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      328 GETUPVAL                         R12 0
      329 GETTABLEKS                       R12 R12 K39 ["Enums"]
      331 GETTABLEKS                       R12 R12 K82 ["InputSize"]
      333 GETTABLEKS                       R12 R12 K45 ["Small"]
      335 SETTABLEKS                       R12 R11 K36 ["size"]
      337 GETUPVAL                         R12 0
      338 GETTABLEKS                       R12 R12 K39 ["Enums"]
      340 GETTABLEKS                       R12 R12 K83 ["ButtonVariant"]
      342 GETTABLEKS                       R12 R12 K84 ["Utility"]
      344 SETTABLEKS                       R12 R11 K35 ["variant"]
      346 CALL                             R9 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R9
      349 SETTABLEKS                       R9 R8 K18 ["Close"]
      351 CALL                             R5 3 -1
      352 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoadingSkeleton3D"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["ShimmerGradient"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["TestIds"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Types"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K13 ["View"]
       45 GETTABLEKS                       R8 R1 K14 ["Text"]
       47 GETTABLEKS                       R9 R1 K15 ["Icon"]
       49 GETTABLEKS                       R10 R1 K16 ["IconButton"]
       51 DUPCLOSURE                       R11 K17 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R10
       61 RETURN                           R11 1
