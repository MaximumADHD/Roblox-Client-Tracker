PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["tooltip"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K8 [{"LayoutOrder", "testId", "icon", "onActivated", "size", "variant"}]
       12 JUMPIFNOT                        R3 ; [+2]
       13 LOADNIL                          R7
       14 JUMP                             ; [+1]
       15 MOVE                             R7 R2
       16 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R1 R6 K3 ["testId"]
       20 GETTABLEKS                       R7 R0 K4 ["icon"]
       22 SETTABLEKS                       R7 R6 K4 ["icon"]
       24 GETTABLEKS                       R7 R0 K5 ["onActivated"]
       26 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K9 ["Enums"]
       31 GETTABLEKS                       R7 R7 K10 ["InputSize"]
       33 GETTABLEKS                       R7 R7 K11 ["Small"]
       35 SETTABLEKS                       R7 R6 K6 ["size"]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K9 ["Enums"]
       40 GETTABLEKS                       R7 R7 K12 ["ButtonVariant"]
       42 GETTABLEKS                       R7 R7 K13 ["Utility"]
       44 SETTABLEKS                       R7 R6 K7 ["variant"]
       46 CALL                             R4 2 1
       47 JUMPIF                           R3 ; [+1]
       48 RETURN                           R4 1
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K1 ["createElement"]
       52 GETUPVAL                         R6 4
       53 DUPTABLE                         R7 K17 [{"LayoutOrder", "title", "side", "align", "testId"}]
       54 SETTABLEKS                       R2 R7 K2 ["LayoutOrder"]
       56 SETTABLEKS                       R3 R7 K14 ["title"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K9 ["Enums"]
       61 GETTABLEKS                       R8 R8 K18 ["PopoverSide"]
       63 GETTABLEKS                       R8 R8 K19 ["Top"]
       65 SETTABLEKS                       R8 R7 K15 ["side"]
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R8 R8 K9 ["Enums"]
       70 GETTABLEKS                       R8 R8 K20 ["PopoverAlign"]
       72 GETTABLEKS                       R8 R8 K21 ["Center"]
       74 SETTABLEKS                       R8 R7 K16 ["align"]
       76 LOADK                            R8 K22 ["%*--tooltip"]
       77 MOVE                             R10 R1
       78 NAMECALL                         R8 R8 K23 ["format"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K3 ["testId"]
       83 MOVE                             R8 R4
       84 CALL                             R5 3 -1
       85 RETURN                           R5 -1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R2 R0
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R0
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 LOADK                            R8 K1 ["Action%*"]
       14 MOVE                             R10 R6
       15 NAMECALL                         R8 R8 K2 ["format"]
       17 CALL                             R8 2 1
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R7
       20 GETTABLEKS                       R11 R7 K3 ["testId"]
       22 JUMPIF                           R11 ; [+10]
       23 LOADK                            R11 K4 ["%*-%*"]
       24 GETUPVAL                         R13 1
       25 GETTABLEKS                       R13 R13 K5 ["StatusLabel"]
       27 GETTABLEKS                       R13 R13 K6 ["Action"]
       29 MOVE                             R14 R6
       30 NAMECALL                         R11 R11 K2 ["format"]
       32 CALL                             R11 3 1
       33 MOVE                             R12 R1
       34 CALL                             R12 0 -1
       35 CALL                             R9 -1 1
       36 SETTABLE                         R9 R2 R8
       37 FORGLOOP                         R3 2 ; [-25]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K7 ["createElement"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K8 ["Fragment"]
       45 LOADNIL                          R5
       46 MOVE                             R6 R2
       47 CALL                             R3 3 -1
       48 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disable"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_3:
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
       16 GETTABLEKS                       R4 R0 K5 ["onRevert"]
       18 LOADB                            R5 0
       19 GETTABLEKS                       R6 R0 K6 ["actions"]
       21 JUMPIFEQKNIL                     R6 ; [+9]
       23 GETTABLEKS                       R7 R0 K6 ["actions"]
       25 LENGTH                           R6 R7
       26 LOADN                            R7 0
       27 JUMPIFLT                         R7 R6 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R6 R3
       32 JUMPIF                           R6 ; [+4]
       33 LOADB                            R6 1
       34 JUMPIFNOTEQKNIL                  R4 ; [+2]
       36 MOVE                             R6 R5
       37 GETUPVAL                         R8 2
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+3]
       40 GETTABLEKS                       R7 R0 K7 ["details"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K8 ["useToggleState"]
       47 LOADB                            R9 0
       48 CALL                             R8 1 1
       49 GETUPVAL                         R9 3
       50 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 NEWTABLE                         R11 0 2
       57 JUMPIFEQKNIL                     R7 ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 GETTABLEKS                       R13 R8 K10 ["disable"]
       63 SETLIST                          R11 R12 2 [1]
       65 CALL                             R9 2 0
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K11 ["createElement"]
       69 LOADK                            R10 K12 ["UICorner"]
       70 NEWTABLE                         R11 8 0
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K13 ["Tag"]
       75 LOADK                            R13 K14 ["data-testid=%*"]
       76 GETUPVAL                         R15 4
       77 GETTABLEKS                       R15 R15 K15 ["StatusLabel"]
       79 GETTABLEKS                       R15 R15 K16 ["Corner"]
       81 NAMECALL                         R13 R13 K17 ["format"]
       83 CALL                             R13 2 1
       84 SETTABLE                         R13 R11 R12
       85 GETIMPORT                        R12 K20 [UDim.new]
       87 LOADN                            R13 0
       88 GETTABLEKS                       R14 R1 K21 ["Radius"]
       90 GETTABLEKS                       R14 R14 K22 ["Medium"]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K23 ["TopLeftRadius"]
       95 GETIMPORT                        R12 K20 [UDim.new]
       97 LOADN                            R13 0
       98 GETTABLEKS                       R14 R1 K21 ["Radius"]
      100 GETTABLEKS                       R14 R14 K22 ["Medium"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K24 ["TopRightRadius"]
      105 GETIMPORT                        R12 K20 [UDim.new]
      107 LOADN                            R13 0
      108 GETTABLEKS                       R14 R1 K21 ["Radius"]
      110 GETTABLEKS                       R14 R14 K22 ["Medium"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K25 ["BottomRightRadius"]
      115 GETIMPORT                        R12 K20 [UDim.new]
      117 LOADN                            R13 0
      118 LOADN                            R14 0
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K26 ["BottomLeftRadius"]
      122 CALL                             R9 2 1
      123 DUPTABLE                         R10 K32 [{"StatusIcon", "Message", "Revert", "Actions", "Close", "Corner"}]
      124 GETUPVAL                         R11 3
      125 GETTABLEKS                       R11 R11 K11 ["createElement"]
      127 GETUPVAL                         R12 5
      128 DUPTABLE                         R13 K38 [{"LayoutOrder", "name", "variant", "size", "style"}]
      129 MOVE                             R14 R2
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R14 R14 K39 ["Enums"]
      136 GETTABLEKS                       R14 R14 K40 ["IconName"]
      138 GETTABLEKS                       R14 R14 K41 ["Nebula"]
      140 SETTABLEKS                       R14 R13 K34 ["name"]
      142 GETUPVAL                         R14 0
      143 GETTABLEKS                       R14 R14 K39 ["Enums"]
      145 GETTABLEKS                       R14 R14 K42 ["IconVariant"]
      147 GETTABLEKS                       R14 R14 K43 ["Filled"]
      149 SETTABLEKS                       R14 R13 K35 ["variant"]
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R14 R14 K39 ["Enums"]
      154 GETTABLEKS                       R14 R14 K44 ["IconSize"]
      156 GETTABLEKS                       R14 R14 K45 ["Small"]
      158 SETTABLEKS                       R14 R13 K36 ["size"]
      160 JUMPIFNOT                        R3 ; [+7]
      161 GETTABLEKS                       R14 R1 K46 ["Color"]
      163 GETTABLEKS                       R14 R14 K47 ["System"]
      165 GETTABLEKS                       R14 R14 K48 ["Alert"]
      167 JUMP                             ; [+6]
      168 GETTABLEKS                       R14 R1 K46 ["Color"]
      170 GETTABLEKS                       R14 R14 K49 ["Content"]
      172 GETTABLEKS                       R14 R14 K50 ["Emphasis"]
      174 SETTABLEKS                       R14 R13 K37 ["style"]
      176 CALL                             R11 2 1
      177 SETTABLEKS                       R11 R10 K27 ["StatusIcon"]
      179 GETUPVAL                         R11 3
      180 GETTABLEKS                       R11 R11 K11 ["createElement"]
      182 GETUPVAL                         R12 6
      183 DUPTABLE                         R13 K58 [{["LayoutOrder"], ["testId"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["sizeConstraint"], ["tag"]}]
      184 MOVE                             R14 R2
      185 CALL                             R14 0 1
      186 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      188 GETUPVAL                         R14 4
      189 GETTABLEKS                       R14 R14 K15 ["StatusLabel"]
      191 GETTABLEKS                       R14 R14 K28 ["Message"]
      193 SETTABLEKS                       R14 R13 K51 ["testId"]
      195 GETTABLEKS                       R14 R0 K59 ["message"]
      197 SETTABLEKS                       R14 R13 K52 ["Text"]
      199 GETIMPORT                        R14 K62 [Enum.TextXAlignment.Left]
      201 SETTABLEKS                       R14 R13 K55 ["TextXAlignment"]
      203 DUPTABLE                         R14 K65 [{"MinSize", "MaxSize"}]
      204 GETIMPORT                        R15 K68 [Vector2.zero]
      206 SETTABLEKS                       R15 R14 K63 ["MinSize"]
      208 GETIMPORT                        R15 K69 [Vector2.new]
      210 LOADN                            R16 240
      211 LOADK                            R17 K70 [Infinity]
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K64 ["MaxSize"]
      215 SETTABLEKS                       R14 R13 K56 ["sizeConstraint"]
      217 NEWTABLE                         R14 8 0
      219 LOADB                            R15 1
      220 SETTABLEKS                       R15 R14 K71 ["auto-xy"]
      222 LOADB                            R15 1
      223 SETTABLEKS                       R15 R14 K72 ["size-0"]
      225 GETTABLEKS                       R16 R0 K73 ["emphasized"]
      227 NOT                              R15 R16
      228 SETTABLEKS                       R15 R14 K74 ["text-body-small"]
      230 GETTABLEKS                       R15 R0 K73 ["emphasized"]
      232 SETTABLEKS                       R15 R14 K75 ["text-title-small"]
      234 NOT                              R15 R3
      235 SETTABLEKS                       R15 R14 K76 ["content-emphasis"]
      237 SETTABLEKS                       R3 R14 K77 ["content-system-alert"]
      239 SETTABLEKS                       R14 R13 K57 ["tag"]
      241 DUPTABLE                         R14 K79 [{"Shimmer"}]
      242 GETTABLEKS                       R16 R0 K80 ["shimmer"]
      244 JUMPIFNOT                        R16 ; [+6]
      245 GETUPVAL                         R15 3
      246 GETTABLEKS                       R15 R15 K11 ["createElement"]
      248 GETUPVAL                         R16 7
      249 CALL                             R15 1 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R15
      252 SETTABLEKS                       R15 R14 K78 ["Shimmer"]
      254 CALL                             R11 3 1
      255 SETTABLEKS                       R11 R10 K28 ["Message"]
      257 JUMPIFNOT                        R4 ; [+26]
      258 GETUPVAL                         R11 8
      259 DUPTABLE                         R12 K84 [{"icon", "onActivated", "tooltip"}]
      260 GETUPVAL                         R13 0
      261 GETTABLEKS                       R13 R13 K39 ["Enums"]
      263 GETTABLEKS                       R13 R13 K40 ["IconName"]
      265 GETTABLEKS                       R13 R13 K85 ["ArrowCurlToLeft"]
      267 SETTABLEKS                       R13 R12 K81 ["icon"]
      269 SETTABLEKS                       R4 R12 K82 ["onActivated"]
      271 GETTABLEKS                       R13 R0 K86 ["revertTooltip"]
      273 SETTABLEKS                       R13 R12 K83 ["tooltip"]
      275 GETUPVAL                         R13 4
      276 GETTABLEKS                       R13 R13 K15 ["StatusLabel"]
      278 GETTABLEKS                       R13 R13 K29 ["Revert"]
      280 MOVE                             R14 R2
      281 CALL                             R14 0 -1
      282 CALL                             R11 -1 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R11
      285 SETTABLEKS                       R11 R10 K29 ["Revert"]
      287 GETUPVAL                         R11 9
      288 GETTABLEKS                       R12 R0 K6 ["actions"]
      290 MOVE                             R13 R2
      291 CALL                             R11 2 1
      292 SETTABLEKS                       R11 R10 K30 ["Actions"]
      294 JUMPIFNOT                        R6 ; [+37]
      295 GETUPVAL                         R11 8
      296 DUPTABLE                         R12 K84 [{"icon", "onActivated", "tooltip"}]
      297 JUMPIFNOT                        R3 ; [+8]
      298 GETUPVAL                         R13 0
      299 GETTABLEKS                       R13 R13 K39 ["Enums"]
      301 GETTABLEKS                       R13 R13 K40 ["IconName"]
      303 GETTABLEKS                       R13 R13 K87 ["X"]
      305 JUMP                             ; [+7]
      306 GETUPVAL                         R13 0
      307 GETTABLEKS                       R13 R13 K39 ["Enums"]
      309 GETTABLEKS                       R13 R13 K40 ["IconName"]
      311 GETTABLEKS                       R13 R13 K88 ["Check"]
      313 SETTABLEKS                       R13 R12 K81 ["icon"]
      315 GETTABLEKS                       R13 R0 K89 ["onClose"]
      317 SETTABLEKS                       R13 R12 K82 ["onActivated"]
      319 GETTABLEKS                       R13 R0 K90 ["closeTooltip"]
      321 SETTABLEKS                       R13 R12 K83 ["tooltip"]
      323 GETUPVAL                         R13 4
      324 GETTABLEKS                       R13 R13 K15 ["StatusLabel"]
      326 GETTABLEKS                       R13 R13 K31 ["Close"]
      328 MOVE                             R14 R2
      329 CALL                             R14 0 -1
      330 CALL                             R11 -1 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R11
      333 SETTABLEKS                       R11 R10 K31 ["Close"]
      335 JUMPIFNOTEQKNIL                  R7 ; [+3]
      337 MOVE                             R11 R9
      338 JUMP                             ; [+1]
      339 LOADNIL                          R11
      340 SETTABLEKS                       R11 R10 K16 ["Corner"]
      342 JUMPIFNOTEQKNIL                  R7 ; [+20]
      344 GETUPVAL                         R11 3
      345 GETTABLEKS                       R11 R11 K11 ["createElement"]
      347 GETUPVAL                         R12 10
      348 DUPTABLE                         R13 K92 [{["testId"], ["onActivated"], ["tag"] = "row align-y-center gap-small size-0 auto-xy padding-x-small padding-y-xsmall bg-surface-100"}]
      349 GETUPVAL                         R14 4
      350 GETTABLEKS                       R14 R14 K15 ["StatusLabel"]
      352 GETTABLEKS                       R14 R14 K93 ["Container"]
      354 SETTABLEKS                       R14 R13 K51 ["testId"]
      356 GETTABLEKS                       R14 R0 K82 ["onActivated"]
      358 SETTABLEKS                       R14 R13 K82 ["onActivated"]
      360 MOVE                             R14 R10
      361 CALL                             R11 3 -1
      362 RETURN                           R11 -1
      363 GETUPVAL                         R11 1
      364 GETTABLEKS                       R11 R11 K2 ["createNextOrder"]
      366 CALL                             R11 0 1
      367 GETUPVAL                         R12 3
      368 GETTABLEKS                       R12 R12 K11 ["createElement"]
      370 GETUPVAL                         R13 10
      371 DUPTABLE                         R14 K95 [{["testId"], ["onActivated"], ["tag"] = "col gap-small size-0 auto-xy padding-x-small padding-y-xsmall bg-surface-100"}]
      372 GETUPVAL                         R15 4
      373 GETTABLEKS                       R15 R15 K15 ["StatusLabel"]
      375 GETTABLEKS                       R15 R15 K93 ["Container"]
      377 SETTABLEKS                       R15 R14 K51 ["testId"]
      379 GETTABLEKS                       R16 R8 K96 ["enabled"]
      381 JUMPIFNOT                        R16 ; [+3]
      382 GETTABLEKS                       R15 R8 K10 ["disable"]
      384 JUMP                             ; [+2]
      385 GETTABLEKS                       R15 R8 K97 ["enable"]
      387 SETTABLEKS                       R15 R14 K82 ["onActivated"]
      389 DUPTABLE                         R15 K100 [{"Corner", "Header", "Details"}]
      390 SETTABLEKS                       R9 R15 K16 ["Corner"]
      392 GETUPVAL                         R16 3
      393 GETTABLEKS                       R16 R16 K11 ["createElement"]
      395 GETUPVAL                         R17 10
      396 DUPTABLE                         R18 K102 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-0 auto-xy"}]
      397 MOVE                             R19 R11
      398 CALL                             R19 0 1
      399 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      401 MOVE                             R19 R10
      402 CALL                             R16 3 1
      403 SETTABLEKS                       R16 R15 K98 ["Header"]
      405 GETTABLEKS                       R17 R8 K96 ["enabled"]
      407 JUMPIFNOT                        R17 ; [+23]
      408 GETUPVAL                         R16 3
      409 GETTABLEKS                       R16 R16 K11 ["createElement"]
      411 GETUPVAL                         R17 11
      412 DUPTABLE                         R18 K106 [{"LayoutOrder", "stepText", "cancelText", "onCancel"}]
      413 MOVE                             R19 R11
      414 CALL                             R19 0 1
      415 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      417 GETTABLEKS                       R19 R7 K103 ["stepText"]
      419 SETTABLEKS                       R19 R18 K103 ["stepText"]
      421 GETTABLEKS                       R19 R7 K104 ["cancelText"]
      423 SETTABLEKS                       R19 R18 K104 ["cancelText"]
      425 GETTABLEKS                       R19 R7 K105 ["onCancel"]
      427 SETTABLEKS                       R19 R18 K105 ["onCancel"]
      429 CALL                             R16 2 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R16
      432 SETTABLEKS                       R16 R15 K99 ["Details"]
      434 CALL                             R12 3 -1
      435 RETURN                           R12 -1

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
       35 GETTABLEKS                       R6 R0 K11 ["StatusDetails"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["TestIds"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K14 ["Flags"]
       52 GETTABLEKS                       R9 R9 K15 ["getFFlagLoadingSkeleton3DActionTooltips"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K14 ["Flags"]
       59 GETTABLEKS                       R10 R10 K16 ["getFFlagLoadingSkeleton3DStatusDetails"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R1 K17 ["View"]
       64 GETTABLEKS                       R11 R1 K18 ["Text"]
       66 GETTABLEKS                       R12 R1 K19 ["Icon"]
       68 GETTABLEKS                       R13 R1 K20 ["IconButton"]
       70 GETTABLEKS                       R14 R1 K21 ["Tooltip"]
       72 DUPCLOSURE                       R15 K22 [PROTO_0]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R14
       78 DUPCLOSURE                       R16 K23 [PROTO_1]
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 DUPCLOSURE                       R17 K24 [PROTO_3]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R5
       95 RETURN                           R17 1
