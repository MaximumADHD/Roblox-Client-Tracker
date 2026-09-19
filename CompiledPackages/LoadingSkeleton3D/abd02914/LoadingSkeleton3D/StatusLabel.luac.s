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
       50 LOADK                            R13 K22 ["data-testid=%*"]
       51 GETUPVAL                         R15 4
       52 GETTABLEKS                       R15 R15 K12 ["StatusLabel"]
       54 GETTABLEKS                       R15 R15 K14 ["Corner"]
       56 NAMECALL                         R13 R13 K23 ["format"]
       58 CALL                             R13 2 1
       59 SETTABLE                         R13 R11 R12
       60 GETIMPORT                        R12 K26 [UDim.new]
       62 LOADN                            R13 0
       63 GETTABLEKS                       R14 R1 K27 ["Radius"]
       65 GETTABLEKS                       R14 R14 K28 ["Medium"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K29 ["TopLeftRadius"]
       70 GETIMPORT                        R12 K26 [UDim.new]
       72 LOADN                            R13 0
       73 GETTABLEKS                       R14 R1 K27 ["Radius"]
       75 GETTABLEKS                       R14 R14 K28 ["Medium"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K30 ["TopRightRadius"]
       80 GETIMPORT                        R12 K26 [UDim.new]
       82 LOADN                            R13 0
       83 GETTABLEKS                       R14 R1 K27 ["Radius"]
       85 GETTABLEKS                       R14 R14 K28 ["Medium"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K31 ["BottomRightRadius"]
       90 GETIMPORT                        R12 K26 [UDim.new]
       92 LOADN                            R13 0
       93 LOADN                            R14 0
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K32 ["BottomLeftRadius"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K14 ["Corner"]
      100 GETUPVAL                         R9 2
      101 GETTABLEKS                       R9 R9 K6 ["createElement"]
      103 GETUPVAL                         R10 5
      104 DUPTABLE                         R11 K38 [{"LayoutOrder", "name", "variant", "size", "style"}]
      105 MOVE                             R12 R2
      106 CALL                             R12 0 1
      107 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K39 ["Enums"]
      112 GETTABLEKS                       R12 R12 K40 ["IconName"]
      114 GETTABLEKS                       R12 R12 K41 ["Nebula"]
      116 SETTABLEKS                       R12 R11 K34 ["name"]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K39 ["Enums"]
      121 GETTABLEKS                       R12 R12 K42 ["IconVariant"]
      123 GETTABLEKS                       R12 R12 K43 ["Filled"]
      125 SETTABLEKS                       R12 R11 K35 ["variant"]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K39 ["Enums"]
      130 GETTABLEKS                       R12 R12 K44 ["IconSize"]
      132 GETTABLEKS                       R12 R12 K45 ["Small"]
      134 SETTABLEKS                       R12 R11 K36 ["size"]
      136 JUMPIFNOT                        R3 ; [+7]
      137 GETTABLEKS                       R12 R1 K46 ["Color"]
      139 GETTABLEKS                       R12 R12 K47 ["System"]
      141 GETTABLEKS                       R12 R12 K48 ["Alert"]
      143 JUMP                             ; [+6]
      144 GETTABLEKS                       R12 R1 K46 ["Color"]
      146 GETTABLEKS                       R12 R12 K49 ["Content"]
      148 GETTABLEKS                       R12 R12 K50 ["Emphasis"]
      150 SETTABLEKS                       R12 R11 K37 ["style"]
      152 CALL                             R9 2 1
      153 SETTABLEKS                       R9 R8 K15 ["StatusIcon"]
      155 GETUPVAL                         R9 2
      156 GETTABLEKS                       R9 R9 K6 ["createElement"]
      158 GETUPVAL                         R10 6
      159 DUPTABLE                         R11 K56 [{["LayoutOrder"], ["testId"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["sizeConstraint"], ["tag"]}]
      160 MOVE                             R12 R2
      161 CALL                             R12 0 1
      162 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      164 GETUPVAL                         R12 4
      165 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      167 GETTABLEKS                       R12 R12 K16 ["Message"]
      169 SETTABLEKS                       R12 R11 K7 ["testId"]
      171 GETTABLEKS                       R12 R0 K57 ["message"]
      173 SETTABLEKS                       R12 R11 K51 ["Text"]
      175 GETIMPORT                        R12 K60 [Enum.TextXAlignment.Left]
      177 SETTABLEKS                       R12 R11 K54 ["TextXAlignment"]
      179 DUPTABLE                         R12 K63 [{"MinSize", "MaxSize"}]
      180 GETIMPORT                        R13 K66 [Vector2.zero]
      182 SETTABLEKS                       R13 R12 K61 ["MinSize"]
      184 GETIMPORT                        R13 K67 [Vector2.new]
      186 LOADN                            R14 240
      187 LOADK                            R15 K68 [∞]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K62 ["MaxSize"]
      191 SETTABLEKS                       R12 R11 K55 ["sizeConstraint"]
      193 NEWTABLE                         R12 8 0
      195 LOADB                            R13 1
      196 SETTABLEKS                       R13 R12 K69 ["auto-xy"]
      198 LOADB                            R13 1
      199 SETTABLEKS                       R13 R12 K70 ["size-0"]
      201 GETTABLEKS                       R14 R0 K71 ["emphasized"]
      203 NOT                              R13 R14
      204 SETTABLEKS                       R13 R12 K72 ["text-body-small"]
      206 GETTABLEKS                       R13 R0 K71 ["emphasized"]
      208 SETTABLEKS                       R13 R12 K73 ["text-title-small"]
      210 NOT                              R13 R3
      211 SETTABLEKS                       R13 R12 K74 ["content-emphasis"]
      213 SETTABLEKS                       R3 R12 K75 ["content-system-alert"]
      215 SETTABLEKS                       R12 R11 K9 ["tag"]
      217 DUPTABLE                         R12 K77 [{"Shimmer"}]
      218 GETTABLEKS                       R14 R0 K78 ["shimmer"]
      220 JUMPIFNOT                        R14 ; [+6]
      221 GETUPVAL                         R13 2
      222 GETTABLEKS                       R13 R13 K6 ["createElement"]
      224 GETUPVAL                         R14 7
      225 CALL                             R13 1 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R13
      228 SETTABLEKS                       R13 R12 K76 ["Shimmer"]
      230 CALL                             R9 3 1
      231 SETTABLEKS                       R9 R8 K16 ["Message"]
      233 GETTABLEKS                       R10 R0 K5 ["onRevert"]
      235 JUMPIFNOT                        R10 ; [+49]
      236 GETUPVAL                         R9 2
      237 GETTABLEKS                       R9 R9 K6 ["createElement"]
      239 GETUPVAL                         R10 8
      240 DUPTABLE                         R11 K80 [{"LayoutOrder", "testId", "icon", "onActivated", "size", "variant"}]
      241 MOVE                             R12 R2
      242 CALL                             R12 0 1
      243 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      245 GETUPVAL                         R12 4
      246 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      248 GETTABLEKS                       R12 R12 K17 ["Revert"]
      250 SETTABLEKS                       R12 R11 K7 ["testId"]
      252 GETUPVAL                         R12 0
      253 GETTABLEKS                       R12 R12 K39 ["Enums"]
      255 GETTABLEKS                       R12 R12 K40 ["IconName"]
      257 GETTABLEKS                       R12 R12 K81 ["ArrowCurlToLeft"]
      259 SETTABLEKS                       R12 R11 K79 ["icon"]
      261 GETTABLEKS                       R12 R0 K5 ["onRevert"]
      263 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      265 GETUPVAL                         R12 0
      266 GETTABLEKS                       R12 R12 K39 ["Enums"]
      268 GETTABLEKS                       R12 R12 K82 ["InputSize"]
      270 GETTABLEKS                       R12 R12 K45 ["Small"]
      272 SETTABLEKS                       R12 R11 K36 ["size"]
      274 GETUPVAL                         R12 0
      275 GETTABLEKS                       R12 R12 K39 ["Enums"]
      277 GETTABLEKS                       R12 R12 K83 ["ButtonVariant"]
      279 GETTABLEKS                       R12 R12 K84 ["Utility"]
      281 SETTABLEKS                       R12 R11 K35 ["variant"]
      283 CALL                             R9 2 1
      284 JUMP                             ; [+1]
      285 LOADNIL                          R9
      286 SETTABLEKS                       R9 R8 K17 ["Revert"]
      288 JUMPIFNOT                        R4 ; [+58]
      289 GETUPVAL                         R9 2
      290 GETTABLEKS                       R9 R9 K6 ["createElement"]
      292 GETUPVAL                         R10 8
      293 DUPTABLE                         R11 K80 [{"LayoutOrder", "testId", "icon", "onActivated", "size", "variant"}]
      294 MOVE                             R12 R2
      295 CALL                             R12 0 1
      296 SETTABLEKS                       R12 R11 K33 ["LayoutOrder"]
      298 GETUPVAL                         R12 4
      299 GETTABLEKS                       R12 R12 K12 ["StatusLabel"]
      301 GETTABLEKS                       R12 R12 K18 ["Close"]
      303 SETTABLEKS                       R12 R11 K7 ["testId"]
      305 JUMPIFNOT                        R3 ; [+8]
      306 GETUPVAL                         R12 0
      307 GETTABLEKS                       R12 R12 K39 ["Enums"]
      309 GETTABLEKS                       R12 R12 K40 ["IconName"]
      311 GETTABLEKS                       R12 R12 K85 ["X"]
      313 JUMP                             ; [+7]
      314 GETUPVAL                         R12 0
      315 GETTABLEKS                       R12 R12 K39 ["Enums"]
      317 GETTABLEKS                       R12 R12 K40 ["IconName"]
      319 GETTABLEKS                       R12 R12 K86 ["Check"]
      321 SETTABLEKS                       R12 R11 K79 ["icon"]
      323 GETTABLEKS                       R12 R0 K87 ["onClose"]
      325 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      327 GETUPVAL                         R12 0
      328 GETTABLEKS                       R12 R12 K39 ["Enums"]
      330 GETTABLEKS                       R12 R12 K82 ["InputSize"]
      332 GETTABLEKS                       R12 R12 K45 ["Small"]
      334 SETTABLEKS                       R12 R11 K36 ["size"]
      336 GETUPVAL                         R12 0
      337 GETTABLEKS                       R12 R12 K39 ["Enums"]
      339 GETTABLEKS                       R12 R12 K83 ["ButtonVariant"]
      341 GETTABLEKS                       R12 R12 K84 ["Utility"]
      343 SETTABLEKS                       R12 R11 K35 ["variant"]
      345 CALL                             R9 2 1
      346 JUMP                             ; [+1]
      347 LOADNIL                          R9
      348 SETTABLEKS                       R9 R8 K18 ["Close"]
      350 CALL                             R5 3 -1
      351 RETURN                           R5 -1

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
