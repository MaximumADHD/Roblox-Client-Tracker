PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationSystemBannerUseSharedAlertActions"]
        3 JUMPIFNOT                        R0 ; [+54]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["createElement"]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K8 [{["actions"], ["testId"], ["LayoutOrder"] = 3, ["tag"], ["padding"]}]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["actions"]
       12 SETTABLEKS                       R3 R2 K2 ["actions"]
       14 LOADK                            R4 K9 ["%*--actions"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["testId"]
       18 NAMECALL                         R4 R4 K10 ["format"]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 SETTABLEKS                       R3 R2 K3 ["testId"]
       24 NEWTABLE                         R3 4 0
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K11 ["row gap-small auto-xy"]
       29 GETUPVAL                         R4 4
       30 SETTABLEKS                       R4 R3 K12 ["align-x-left"]
       32 GETUPVAL                         R5 4
       33 NOT                              R4 R5
       34 SETTABLEKS                       R4 R3 K13 ["align-x-right"]
       36 SETTABLEKS                       R3 R2 K6 ["tag"]
       38 GETUPVAL                         R4 4
       39 JUMPIFNOT                        R4 ; [+13]
       40 DUPTABLE                         R3 K15 [{"top"}]
       41 GETIMPORT                        R4 K18 [UDim.new]
       43 LOADN                            R5 0
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K19 ["Gap"]
       47 GETTABLEKS                       R6 R6 K20 ["Small"]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K14 ["top"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K7 ["padding"]
       56 CALL                             R0 2 1
       57 RETURN                           R0 1
       58 LOADNIL                          R0
       59 GETUPVAL                         R1 3
       60 GETTABLEKS                       R1 R1 K2 ["actions"]
       62 JUMPIFNOT                        R1 ; [+65]
       63 GETUPVAL                         R2 3
       64 GETTABLEKS                       R2 R2 K2 ["actions"]
       66 LENGTH                           R1 R2
       67 LOADN                            R2 0
       68 JUMPIFNOTLT                      R2 R1 ; [+59]
       70 NEWTABLE                         R0 0 0
       72 GETUPVAL                         R1 3
       73 GETTABLEKS                       R1 R1 K2 ["actions"]
       75 LOADNIL                          R2
       76 LOADNIL                          R3
       77 FORGPREP                         R1
       78 LOADN                            R6 3
       79 JUMPIFNOTLT                      R6 R4 ; [+12]
       81 GETUPVAL                         R6 6
       82 LOADK                            R9 K21 ["SystemBanner only supports up to %* actions"]
       83 LOADN                            R11 3
       84 NAMECALL                         R9 R9 K10 ["format"]
       86 CALL                             R9 2 1
       87 MOVE                             R8 R9
       88 NAMECALL                         R6 R6 K22 ["warning"]
       90 CALL                             R6 2 0
       91 RETURN                           R0 1
       92 GETUPVAL                         R6 7
       93 GETTABLEKS                       R6 R6 K23 ["join"]
       95 MOVE                             R7 R5
       96 DUPTABLE                         R8 K25 [{"LayoutOrder", "size", "testId"}]
       97 SETTABLEKS                       R4 R8 K4 ["LayoutOrder"]
       99 GETUPVAL                         R9 8
      100 GETTABLEKS                       R9 R9 K20 ["Small"]
      102 SETTABLEKS                       R9 R8 K24 ["size"]
      104 LOADK                            R10 K26 ["%*--action-%*"]
      105 GETUPVAL                         R12 3
      106 GETTABLEKS                       R12 R12 K3 ["testId"]
      108 MOVE                             R13 R4
      109 NAMECALL                         R10 R10 K10 ["format"]
      111 CALL                             R10 3 1
      112 MOVE                             R9 R10
      113 SETTABLEKS                       R9 R8 K3 ["testId"]
      115 CALL                             R6 2 1
      116 LOADK                            R8 K27 ["ActionButton"]
      117 MOVE                             R9 R4
      118 CONCAT                           R7 R8 R9
      119 GETUPVAL                         R8 1
      120 GETTABLEKS                       R8 R8 K1 ["createElement"]
      122 GETUPVAL                         R9 9
      123 MOVE                             R10 R6
      124 CALL                             R8 2 1
      125 SETTABLE                         R8 R0 R7
      126 FORGLOOP                         R1 2 ; [-49]
      128 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["variant"]
       10 GETTABLEKS                       R7 R2 K1 ["severity"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K2 ["useState"]
       16 LOADNIL                          R6
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K3 ["useComposedRef"]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 6
       25 MOVE                             R9 R5
       26 CALL                             R8 1 1
       27 LOADB                            R9 1
       28 GETUPVAL                         R10 7
       29 GETTABLEKS                       R10 R10 K4 ["XSmall"]
       31 JUMPIFEQ                         R8 R10 ; [+8]
       33 GETUPVAL                         R10 7
       34 GETTABLEKS                       R10 R10 K5 ["Small"]
       36 JUMPIFEQ                         R8 R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          UPVAL U12
       53 CAPTURE                          UPVAL U13
       54 NEWTABLE                         R12 0 4
       56 GETTABLEKS                       R13 R2 K7 ["actions"]
       58 GETTABLEKS                       R14 R2 K8 ["testId"]
       60 MOVE                             R15 R9
       61 GETTABLEKS                       R16 R3 K9 ["Gap"]
       63 GETTABLEKS                       R16 R16 K5 ["Small"]
       65 SETLIST                          R12 R13 4 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R12 8
       69 GETTABLEKS                       R12 R12 K10 ["FoundationSystemBannerUseSharedAlertActions"]
       71 JUMPIF                           R12 ; [+46]
       72 JUMPIFNOT                        R10 ; [+45]
       73 GETUPVAL                         R11 4
       74 GETTABLEKS                       R11 R11 K11 ["createElement"]
       76 GETUPVAL                         R12 14
       77 DUPTABLE                         R13 K16 [{["tag"], ["padding"], ["LayoutOrder"] = 3, ["testId"]}]
       78 NEWTABLE                         R14 4 0
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K17 ["row gap-small auto-xy"]
       83 SETTABLEKS                       R9 R14 K18 ["align-x-left"]
       85 NOT                              R15 R9
       86 SETTABLEKS                       R15 R14 K19 ["align-x-right"]
       88 SETTABLEKS                       R14 R13 K12 ["tag"]
       90 JUMPIFNOT                        R9 ; [+12]
       91 DUPTABLE                         R14 K21 [{"top"}]
       92 GETIMPORT                        R15 K24 [UDim.new]
       94 LOADN                            R16 0
       95 GETTABLEKS                       R17 R3 K9 ["Gap"]
       97 GETTABLEKS                       R17 R17 K5 ["Small"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K20 ["top"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R14
      104 SETTABLEKS                       R14 R13 K13 ["padding"]
      106 LOADK                            R15 K25 ["%*--actions"]
      107 GETTABLEKS                       R17 R2 K8 ["testId"]
      109 NAMECALL                         R15 R15 K26 ["format"]
      111 CALL                             R15 2 1
      112 MOVE                             R14 R15
      113 SETTABLEKS                       R14 R13 K8 ["testId"]
      115 MOVE                             R14 R10
      116 CALL                             R11 3 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R11
      119 GETUPVAL                         R12 4
      120 GETTABLEKS                       R12 R12 K11 ["createElement"]
      122 GETUPVAL                         R13 14
      123 GETUPVAL                         R14 15
      124 MOVE                             R15 R2
      125 DUPTABLE                         R16 K28 [{"tag", "ref"}]
      126 NEWTABLE                         R17 4 0
      128 GETTABLEKS                       R18 R4 K29 ["container"]
      130 GETTABLEKS                       R18 R18 K12 ["tag"]
      132 LOADB                            R19 1
      133 SETTABLE                         R19 R17 R18
      134 GETUPVAL                         R19 8
      135 GETTABLEKS                       R19 R19 K30 ["FoundationSystemBannerOptionalTitle"]
      137 JUMPIFNOT                        R19 ; [+12]
      138 LOADB                            R18 1
      139 GETTABLEKS                       R19 R2 K31 ["title"]
      141 JUMPIFEQKS                       R19 K32 [""] ; [+14]
      143 GETTABLEKS                       R19 R2 K33 ["description"]
      145 JUMPIFEQKNIL                     R19 ; [+2]
      147 LOADB                            R18 0 +1
      148 LOADB                            R18 1
      149 JUMP                             ; [+6]
      150 GETTABLEKS                       R19 R2 K33 ["description"]
      152 JUMPIFEQKNIL                     R19 ; [+2]
      154 LOADB                            R18 0 +1
      155 LOADB                            R18 1
      156 SETTABLEKS                       R18 R17 K34 ["align-y-center"]
      158 GETUPVAL                         R19 8
      159 GETTABLEKS                       R19 R19 K30 ["FoundationSystemBannerOptionalTitle"]
      161 JUMPIFNOT                        R19 ; [+12]
      162 LOADB                            R18 0
      163 GETTABLEKS                       R19 R2 K31 ["title"]
      165 JUMPIFEQKS                       R19 K32 [""] ; [+14]
      167 GETTABLEKS                       R19 R2 K33 ["description"]
      169 JUMPIFNOTEQKNIL                  R19 ; [+2]
      171 LOADB                            R18 0 +1
      172 LOADB                            R18 1
      173 JUMP                             ; [+6]
      174 GETTABLEKS                       R19 R2 K33 ["description"]
      176 JUMPIFNOTEQKNIL                  R19 ; [+2]
      178 LOADB                            R18 0 +1
      179 LOADB                            R18 1
      180 SETTABLEKS                       R18 R17 K35 ["align-y-top"]
      182 SETTABLEKS                       R17 R16 K12 ["tag"]
      184 SETTABLEKS                       R7 R16 K27 ["ref"]
      186 CALL                             R14 2 1
      187 GETUPVAL                         R15 4
      188 GETTABLEKS                       R15 R15 K11 ["createElement"]
      190 GETUPVAL                         R16 16
      191 GETTABLEKS                       R16 R16 K36 ["Provider"]
      193 DUPTABLE                         R17 K38 [{"value"}]
      194 DUPTABLE                         R18 K40 [{"colorMode"}]
      195 GETTABLEKS                       R19 R4 K29 ["container"]
      197 GETTABLEKS                       R19 R19 K39 ["colorMode"]
      199 SETTABLEKS                       R19 R18 K39 ["colorMode"]
      201 SETTABLEKS                       R18 R17 K37 ["value"]
      203 DUPTABLE                         R18 K45 [{"Icon", "Content", "Actions", "Close"}]
      204 GETUPVAL                         R19 4
      205 GETTABLEKS                       R19 R19 K11 ["createElement"]
      207 GETUPVAL                         R20 17
      208 DUPTABLE                         R21 K50 [{["LayoutOrder"] = 1, ["name"], ["size"], [4], ["style"], ["testId"]}]
      209 GETUPVAL                         R23 18
      210 GETTABLEKS                       R24 R2 K1 ["severity"]
      212 GETTABLE                         R22 R23 R24
      213 SETTABLEKS                       R22 R21 K47 ["name"]
      215 GETUPVAL                         R22 19
      216 GETTABLEKS                       R22 R22 K51 ["Large"]
      218 SETTABLEKS                       R22 R21 K48 ["size"]
      220 GETUPVAL                         R22 20
      221 GETTABLEKS                       R22 R22 K52 ["Filled"]
      223 SETTABLEKS                       R22 R21 K0 ["variant"]
      225 GETTABLEKS                       R22 R4 K53 ["icon"]
      227 GETTABLEKS                       R22 R22 K49 ["style"]
      229 SETTABLEKS                       R22 R21 K49 ["style"]
      231 LOADK                            R23 K54 ["%*--icon"]
      232 GETTABLEKS                       R25 R2 K8 ["testId"]
      234 NAMECALL                         R23 R23 K26 ["format"]
      236 CALL                             R23 2 1
      237 MOVE                             R22 R23
      238 SETTABLEKS                       R22 R21 K8 ["testId"]
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K41 ["Icon"]
      243 GETUPVAL                         R19 4
      244 GETTABLEKS                       R19 R19 K11 ["createElement"]
      246 GETUPVAL                         R20 14
      247 DUPTABLE                         R21 K56 [{["LayoutOrder"] = 2, ["tag"], ["testId"]}]
      248 NEWTABLE                         R22 4 0
      250 LOADB                            R23 1
      251 SETTABLEKS                       R23 R22 K57 ["fill auto-xy"]
      253 SETTABLEKS                       R9 R22 K58 ["col"]
      255 NOT                              R23 R9
      256 SETTABLEKS                       R23 R22 K59 ["row"]
      258 SETTABLEKS                       R22 R21 K12 ["tag"]
      260 LOADK                            R23 K60 ["%*--content"]
      261 GETTABLEKS                       R25 R2 K8 ["testId"]
      263 NAMECALL                         R23 R23 K26 ["format"]
      265 CALL                             R23 2 1
      266 MOVE                             R22 R23
      267 SETTABLEKS                       R22 R21 K8 ["testId"]
      269 DUPTABLE                         R22 K62 [{"Text"}]
      270 GETUPVAL                         R23 4
      271 GETTABLEKS                       R23 R23 K11 ["createElement"]
      273 GETUPVAL                         R24 14
      274 DUPTABLE                         R25 K64 [{["LayoutOrder"] = 2, ["tag"] = "col auto-xy"}]
      275 DUPTABLE                         R26 K67 [{"Title", "Description", "Actions"}]
      276 GETUPVAL                         R28 8
      277 GETTABLEKS                       R28 R28 K30 ["FoundationSystemBannerOptionalTitle"]
      279 JUMPIFNOT                        R28 ; [+38]
      280 GETTABLEKS                       R28 R2 K31 ["title"]
      282 JUMPIFEQKS                       R28 K32 [""] ; [+33]
      284 GETUPVAL                         R27 4
      285 GETTABLEKS                       R27 R27 K11 ["createElement"]
      287 GETUPVAL                         R28 21
      288 DUPTABLE                         R29 K69 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      289 GETTABLEKS                       R30 R2 K31 ["title"]
      291 SETTABLEKS                       R30 R29 K61 ["Text"]
      293 GETTABLEKS                       R30 R4 K31 ["title"]
      295 GETTABLEKS                       R30 R30 K49 ["style"]
      297 SETTABLEKS                       R30 R29 K68 ["textStyle"]
      299 GETTABLEKS                       R30 R4 K31 ["title"]
      301 GETTABLEKS                       R30 R30 K12 ["tag"]
      303 SETTABLEKS                       R30 R29 K12 ["tag"]
      305 LOADK                            R31 K70 ["%*--title"]
      306 GETTABLEKS                       R33 R2 K8 ["testId"]
      308 NAMECALL                         R31 R31 K26 ["format"]
      310 CALL                             R31 2 1
      311 MOVE                             R30 R31
      312 SETTABLEKS                       R30 R29 K8 ["testId"]
      314 CALL                             R27 2 1
      315 JUMP                             ; [+33]
      316 LOADNIL                          R27
      317 JUMP                             ; [+31]
      318 GETUPVAL                         R27 4
      319 GETTABLEKS                       R27 R27 K11 ["createElement"]
      321 GETUPVAL                         R28 21
      322 DUPTABLE                         R29 K69 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      323 GETTABLEKS                       R30 R2 K31 ["title"]
      325 SETTABLEKS                       R30 R29 K61 ["Text"]
      327 GETTABLEKS                       R30 R4 K31 ["title"]
      329 GETTABLEKS                       R30 R30 K49 ["style"]
      331 SETTABLEKS                       R30 R29 K68 ["textStyle"]
      333 GETTABLEKS                       R30 R4 K31 ["title"]
      335 GETTABLEKS                       R30 R30 K12 ["tag"]
      337 SETTABLEKS                       R30 R29 K12 ["tag"]
      339 LOADK                            R31 K70 ["%*--title"]
      340 GETTABLEKS                       R33 R2 K8 ["testId"]
      342 NAMECALL                         R31 R31 K26 ["format"]
      344 CALL                             R31 2 1
      345 MOVE                             R30 R31
      346 SETTABLEKS                       R30 R29 K8 ["testId"]
      348 CALL                             R27 2 1
      349 SETTABLEKS                       R27 R26 K65 ["Title"]
      351 GETTABLEKS                       R28 R2 K33 ["description"]
      353 JUMPIFNOT                        R28 ; [+32]
      354 GETUPVAL                         R27 4
      355 GETTABLEKS                       R27 R27 K11 ["createElement"]
      357 GETUPVAL                         R28 21
      358 DUPTABLE                         R29 K71 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      359 GETTABLEKS                       R30 R2 K33 ["description"]
      361 SETTABLEKS                       R30 R29 K61 ["Text"]
      363 GETTABLEKS                       R30 R4 K33 ["description"]
      365 GETTABLEKS                       R30 R30 K49 ["style"]
      367 SETTABLEKS                       R30 R29 K68 ["textStyle"]
      369 GETTABLEKS                       R30 R4 K33 ["description"]
      371 GETTABLEKS                       R30 R30 K12 ["tag"]
      373 SETTABLEKS                       R30 R29 K12 ["tag"]
      375 LOADK                            R31 K72 ["%*--description"]
      376 GETTABLEKS                       R33 R2 K8 ["testId"]
      378 NAMECALL                         R31 R31 K26 ["format"]
      380 CALL                             R31 2 1
      381 MOVE                             R30 R31
      382 SETTABLEKS                       R30 R29 K8 ["testId"]
      384 CALL                             R27 2 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R27
      387 SETTABLEKS                       R27 R26 K66 ["Description"]
      389 JUMPIFNOT                        R9 ; [+8]
      390 GETUPVAL                         R28 8
      391 GETTABLEKS                       R28 R28 K10 ["FoundationSystemBannerUseSharedAlertActions"]
      393 JUMPIFNOT                        R28 ; [+2]
      394 MOVE                             R27 R10
      395 JUMP                             ; [+3]
      396 MOVE                             R27 R11
      397 JUMP                             ; [+1]
      398 LOADNIL                          R27
      399 SETTABLEKS                       R27 R26 K43 ["Actions"]
      401 CALL                             R23 3 1
      402 SETTABLEKS                       R23 R22 K61 ["Text"]
      404 CALL                             R19 3 1
      405 SETTABLEKS                       R19 R18 K42 ["Content"]
      407 JUMPIF                           R9 ; [+8]
      408 GETUPVAL                         R20 8
      409 GETTABLEKS                       R20 R20 K10 ["FoundationSystemBannerUseSharedAlertActions"]
      411 JUMPIFNOT                        R20 ; [+2]
      412 MOVE                             R19 R10
      413 JUMP                             ; [+3]
      414 MOVE                             R19 R11
      415 JUMP                             ; [+1]
      416 LOADNIL                          R19
      417 SETTABLEKS                       R19 R18 K43 ["Actions"]
      419 GETTABLEKS                       R20 R2 K73 ["onClose"]
      421 JUMPIFEQKNIL                     R20 ; [+31]
      423 GETUPVAL                         R19 4
      424 GETTABLEKS                       R19 R19 K11 ["createElement"]
      426 GETUPVAL                         R20 22
      427 DUPTABLE                         R21 K76 [{["onActivated"], ["size"], [3], ["LayoutOrder"] = 4, ["testId"]}]
      428 GETTABLEKS                       R22 R2 K73 ["onClose"]
      430 SETTABLEKS                       R22 R21 K74 ["onActivated"]
      432 GETUPVAL                         R22 12
      433 GETTABLEKS                       R22 R22 K5 ["Small"]
      435 SETTABLEKS                       R22 R21 K48 ["size"]
      437 GETUPVAL                         R22 23
      438 GETTABLEKS                       R22 R22 K77 ["Utility"]
      440 SETTABLEKS                       R22 R21 K0 ["variant"]
      442 LOADK                            R23 K78 ["%*--close"]
      443 GETTABLEKS                       R25 R2 K8 ["testId"]
      445 NAMECALL                         R23 R23 K26 ["format"]
      447 CALL                             R23 2 1
      448 MOVE                             R22 R23
      449 SETTABLEKS                       R22 R21 K8 ["testId"]
      451 CALL                             R19 2 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R19
      454 SETTABLEKS                       R19 R18 K44 ["Close"]
      456 CALL                             R15 3 -1
      457 CALL                             R12 -1 -1
      458 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["AlertActions"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K11 ["AlertActions"]
       37 GETTABLEKS                       R7 R7 K12 ["AlertConstants"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["AlertSeverity"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["AlertVariant"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["Breakpoint"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R1 K17 ["BuilderIcons"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Components"]
       70 GETTABLEKS                       R12 R12 K18 ["Button"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K13 ["Enums"]
       77 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K10 ["Components"]
       84 GETTABLEKS                       R14 R14 K20 ["CloseAffordance"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K13 ["Enums"]
       91 GETTABLEKS                       R15 R15 K21 ["CloseAffordanceVariant"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R16 K23 ["Flags"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K10 ["Components"]
      105 GETTABLEKS                       R17 R17 K24 ["Icon"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R0 K13 ["Enums"]
      112 GETTABLEKS                       R18 R18 K25 ["IconSize"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R18 R10 K26 ["IconVariant"]
      117 GETIMPORT                        R19 K6 [require]
      119 GETTABLEKS                       R20 R0 K13 ["Enums"]
      121 GETTABLEKS                       R20 R20 K27 ["InputSize"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R21 R0 K22 ["Utility"]
      128 GETTABLEKS                       R21 R21 K28 ["Logger"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R22 R0 K29 ["Providers"]
      135 GETTABLEKS                       R22 R22 K30 ["Style"]
      137 GETTABLEKS                       R22 R22 K31 ["PresentationContext"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K6 [require]
      142 GETTABLEKS                       R23 R0 K10 ["Components"]
      144 GETTABLEKS                       R23 R23 K32 ["Text"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R24 R0 K10 ["Components"]
      151 GETTABLEKS                       R24 R24 K33 ["Types"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K6 [require]
      156 GETTABLEKS                       R25 R0 K10 ["Components"]
      158 GETTABLEKS                       R25 R25 K34 ["View"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K6 [require]
      163 GETTABLEKS                       R26 R0 K29 ["Providers"]
      165 GETTABLEKS                       R26 R26 K35 ["Responsive"]
      167 GETTABLEKS                       R26 R26 K36 ["Hooks"]
      169 GETTABLEKS                       R26 R26 K37 ["useBreakpoint"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K6 [require]
      174 GETTABLEKS                       R27 R0 K29 ["Providers"]
      176 GETTABLEKS                       R27 R27 K30 ["Style"]
      178 GETTABLEKS                       R27 R27 K38 ["useTokens"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K6 [require]
      183 GETTABLEKS                       R28 R0 K22 ["Utility"]
      185 GETTABLEKS                       R28 R28 K39 ["withCommonProps"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K6 [require]
      190 GETTABLEKS                       R29 R0 K22 ["Utility"]
      192 GETTABLEKS                       R29 R29 K40 ["withDefaults"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K6 [require]
      197 GETIMPORT                        R30 K1 [script]
      199 GETTABLEKS                       R30 R30 K4 ["Parent"]
      201 GETTABLEKS                       R30 R30 K41 ["useSystemBannerVariants"]
      203 CALL                             R29 1 1
      204 GETTABLEKS                       R31 R15 K42 ["FoundationSystemBannerUseSharedAlertActions"]
      206 JUMPIFNOT                        R31 ; [+3]
      207 GETTABLEKS                       R30 R6 K43 ["SEVERITY_TO_ICON"]
      209 JUMP                             ; [+18]
      210 NEWTABLE                         R30 4 0
      212 GETTABLEKS                       R31 R7 K44 ["Info"]
      214 LOADK                            R32 K45 ["circle-i"]
      215 SETTABLE                         R32 R30 R31
      216 GETTABLEKS                       R31 R7 K46 ["Warning"]
      218 LOADK                            R32 K47 ["triangle-exclamation"]
      219 SETTABLE                         R32 R30 R31
      220 GETTABLEKS                       R31 R7 K48 ["Success"]
      222 LOADK                            R32 K49 ["circle-check"]
      223 SETTABLE                         R32 R30 R31
      224 GETTABLEKS                       R31 R7 K50 ["Error"]
      226 LOADK                            R32 K51 ["circle-x"]
      227 SETTABLE                         R32 R30 R31
      228 DUPTABLE                         R31 K55 [{["variant"], ["testId"] = "--foundation-system-banner"}]
      229 GETTABLEKS                       R32 R8 K56 ["Standard"]
      231 SETTABLEKS                       R32 R31 K52 ["variant"]
      233 DUPCLOSURE                       R32 K57 [PROTO_1]
      234 CAPTURE                          VAL R28
      235 CAPTURE                          VAL R31
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R21
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R18
      255 CAPTURE                          VAL R22
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R14
      258 GETTABLEKS                       R33 R3 K58 ["memo"]
      260 GETTABLEKS                       R34 R3 K59 ["forwardRef"]
      262 MOVE                             R35 R32
      263 CALL                             R34 1 -1
      264 CALL                             R33 -1 -1
      265 RETURN                           R33 -1
