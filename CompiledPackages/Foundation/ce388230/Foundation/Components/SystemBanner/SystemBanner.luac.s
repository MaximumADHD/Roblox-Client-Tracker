PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["actions"]
        4 JUMPIFNOT                        R1 ; [+65]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["actions"]
        8 LENGTH                           R1 R2
        9 LOADN                            R2 0
       10 JUMPIFNOTLT                      R2 R1 ; [+59]
       12 NEWTABLE                         R0 0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["actions"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 LOADN                            R6 3
       21 JUMPIFNOTLT                      R6 R4 ; [+12]
       23 GETUPVAL                         R6 1
       24 LOADK                            R9 K1 ["SystemBanner only supports up to %* actions"]
       25 LOADN                            R11 3
       26 NAMECALL                         R9 R9 K2 ["format"]
       28 CALL                             R9 2 1
       29 MOVE                             R8 R9
       30 NAMECALL                         R6 R6 K3 ["warning"]
       32 CALL                             R6 2 0
       33 RETURN                           R0 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K4 ["join"]
       37 MOVE                             R7 R5
       38 DUPTABLE                         R8 K8 [{"LayoutOrder", "size", "testId"}]
       39 SETTABLEKS                       R4 R8 K5 ["LayoutOrder"]
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R9 R9 K9 ["Small"]
       44 SETTABLEKS                       R9 R8 K6 ["size"]
       46 LOADK                            R10 K10 ["%*--action-%*"]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K7 ["testId"]
       50 MOVE                             R13 R4
       51 NAMECALL                         R10 R10 K2 ["format"]
       53 CALL                             R10 3 1
       54 MOVE                             R9 R10
       55 SETTABLEKS                       R9 R8 K7 ["testId"]
       57 CALL                             R6 2 1
       58 LOADK                            R8 K11 ["ActionButton"]
       59 MOVE                             R9 R4
       60 CONCAT                           R7 R8 R9
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K12 ["createElement"]
       64 GETUPVAL                         R9 5
       65 MOVE                             R10 R6
       66 CALL                             R8 2 1
       67 SETTABLE                         R8 R0 R7
       68 FORGLOOP                         R1 2 ; [-49]
       70 RETURN                           R0 1

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
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U11
       50 NEWTABLE                         R12 0 1
       52 GETTABLEKS                       R13 R2 K7 ["actions"]
       54 SETLIST                          R12 R13 1 [1]
       56 CALL                             R10 2 1
       57 JUMPIFNOT                        R10 ; [+48]
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K8 ["createElement"]
       61 GETUPVAL                         R12 12
       62 DUPTABLE                         R13 K13 [{"tag", "padding", "LayoutOrder", "testId"}]
       63 NEWTABLE                         R14 4 0
       65 LOADB                            R15 1
       66 SETTABLEKS                       R15 R14 K14 ["auto-xy row gap-small"]
       68 SETTABLEKS                       R9 R14 K15 ["align-x-left"]
       70 NOT                              R15 R9
       71 SETTABLEKS                       R15 R14 K16 ["align-x-right"]
       73 SETTABLEKS                       R14 R13 K9 ["tag"]
       75 JUMPIFNOT                        R9 ; [+12]
       76 DUPTABLE                         R14 K18 [{"top"}]
       77 GETIMPORT                        R15 K21 [UDim.new]
       79 LOADN                            R16 0
       80 GETTABLEKS                       R17 R3 K22 ["Gap"]
       82 GETTABLEKS                       R17 R17 K5 ["Small"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K17 ["top"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R14
       89 SETTABLEKS                       R14 R13 K10 ["padding"]
       91 LOADN                            R14 3
       92 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       94 LOADK                            R15 K23 ["%*--actions"]
       95 GETTABLEKS                       R17 R2 K12 ["testId"]
       97 NAMECALL                         R15 R15 K24 ["format"]
       99 CALL                             R15 2 1
      100 MOVE                             R14 R15
      101 SETTABLEKS                       R14 R13 K12 ["testId"]
      103 MOVE                             R14 R10
      104 CALL                             R11 3 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R11
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R12 R12 K8 ["createElement"]
      110 GETUPVAL                         R13 12
      111 GETUPVAL                         R14 13
      112 MOVE                             R15 R2
      113 DUPTABLE                         R16 K26 [{"tag", "ref"}]
      114 NEWTABLE                         R17 4 0
      116 GETTABLEKS                       R18 R4 K27 ["container"]
      118 GETTABLEKS                       R18 R18 K9 ["tag"]
      120 LOADB                            R19 1
      121 SETTABLE                         R19 R17 R18
      122 GETTABLEKS                       R19 R2 K28 ["description"]
      124 JUMPIFEQKNIL                     R19 ; [+2]
      126 LOADB                            R18 0 +1
      127 LOADB                            R18 1
      128 SETTABLEKS                       R18 R17 K29 ["align-y-center"]
      130 GETTABLEKS                       R19 R2 K28 ["description"]
      132 JUMPIFNOTEQKNIL                  R19 ; [+2]
      134 LOADB                            R18 0 +1
      135 LOADB                            R18 1
      136 SETTABLEKS                       R18 R17 K30 ["align-y-top"]
      138 SETTABLEKS                       R17 R16 K9 ["tag"]
      140 SETTABLEKS                       R7 R16 K25 ["ref"]
      142 CALL                             R14 2 1
      143 GETUPVAL                         R15 4
      144 GETTABLEKS                       R15 R15 K8 ["createElement"]
      146 GETUPVAL                         R16 14
      147 GETTABLEKS                       R16 R16 K31 ["Provider"]
      149 DUPTABLE                         R17 K33 [{"value"}]
      150 DUPTABLE                         R18 K35 [{"colorMode"}]
      151 GETTABLEKS                       R19 R4 K27 ["container"]
      153 GETTABLEKS                       R19 R19 K34 ["colorMode"]
      155 SETTABLEKS                       R19 R18 K34 ["colorMode"]
      157 SETTABLEKS                       R18 R17 K32 ["value"]
      159 DUPTABLE                         R18 K40 [{"Icon", "Content", "Actions", "Close"}]
      160 GETUPVAL                         R19 4
      161 GETTABLEKS                       R19 R19 K8 ["createElement"]
      163 GETUPVAL                         R20 15
      164 DUPTABLE                         R21 K44 [{"LayoutOrder", "name", "size", "variant", "style", "testId"}]
      165 LOADN                            R22 1
      166 SETTABLEKS                       R22 R21 K11 ["LayoutOrder"]
      168 GETUPVAL                         R23 16
      169 GETTABLEKS                       R24 R2 K1 ["severity"]
      171 GETTABLE                         R22 R23 R24
      172 SETTABLEKS                       R22 R21 K41 ["name"]
      174 GETUPVAL                         R22 17
      175 GETTABLEKS                       R22 R22 K45 ["Large"]
      177 SETTABLEKS                       R22 R21 K42 ["size"]
      179 GETUPVAL                         R22 18
      180 GETTABLEKS                       R22 R22 K46 ["Filled"]
      182 SETTABLEKS                       R22 R21 K0 ["variant"]
      184 GETTABLEKS                       R22 R4 K47 ["icon"]
      186 GETTABLEKS                       R22 R22 K43 ["style"]
      188 SETTABLEKS                       R22 R21 K43 ["style"]
      190 LOADK                            R23 K48 ["%*--icon"]
      191 GETTABLEKS                       R25 R2 K12 ["testId"]
      193 NAMECALL                         R23 R23 K24 ["format"]
      195 CALL                             R23 2 1
      196 MOVE                             R22 R23
      197 SETTABLEKS                       R22 R21 K12 ["testId"]
      199 CALL                             R19 2 1
      200 SETTABLEKS                       R19 R18 K36 ["Icon"]
      202 GETUPVAL                         R19 4
      203 GETTABLEKS                       R19 R19 K8 ["createElement"]
      205 GETUPVAL                         R20 12
      206 DUPTABLE                         R21 K49 [{"LayoutOrder", "tag", "testId"}]
      207 LOADN                            R22 2
      208 SETTABLEKS                       R22 R21 K11 ["LayoutOrder"]
      210 NEWTABLE                         R22 4 0
      212 LOADB                            R23 1
      213 SETTABLEKS                       R23 R22 K50 ["auto-xy fill"]
      215 SETTABLEKS                       R9 R22 K51 ["col"]
      217 NOT                              R23 R9
      218 SETTABLEKS                       R23 R22 K52 ["row"]
      220 SETTABLEKS                       R22 R21 K9 ["tag"]
      222 LOADK                            R23 K53 ["%*--content"]
      223 GETTABLEKS                       R25 R2 K12 ["testId"]
      225 NAMECALL                         R23 R23 K24 ["format"]
      227 CALL                             R23 2 1
      228 MOVE                             R22 R23
      229 SETTABLEKS                       R22 R21 K12 ["testId"]
      231 DUPTABLE                         R22 K55 [{"Text"}]
      232 GETUPVAL                         R23 4
      233 GETTABLEKS                       R23 R23 K8 ["createElement"]
      235 GETUPVAL                         R24 12
      236 DUPTABLE                         R25 K56 [{"LayoutOrder", "tag"}]
      237 LOADN                            R26 2
      238 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      240 LOADK                            R26 K57 ["auto-xy col"]
      241 SETTABLEKS                       R26 R25 K9 ["tag"]
      243 DUPTABLE                         R26 K60 [{"Title", "Description", "Actions"}]
      244 GETUPVAL                         R27 4
      245 GETTABLEKS                       R27 R27 K8 ["createElement"]
      247 GETUPVAL                         R28 19
      248 DUPTABLE                         R29 K62 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      249 GETTABLEKS                       R30 R2 K63 ["title"]
      251 SETTABLEKS                       R30 R29 K54 ["Text"]
      253 GETTABLEKS                       R30 R4 K63 ["title"]
      255 GETTABLEKS                       R30 R30 K43 ["style"]
      257 SETTABLEKS                       R30 R29 K61 ["textStyle"]
      259 GETTABLEKS                       R30 R4 K63 ["title"]
      261 GETTABLEKS                       R30 R30 K9 ["tag"]
      263 SETTABLEKS                       R30 R29 K9 ["tag"]
      265 LOADN                            R30 1
      266 SETTABLEKS                       R30 R29 K11 ["LayoutOrder"]
      268 LOADK                            R31 K64 ["%*--title"]
      269 GETTABLEKS                       R33 R2 K12 ["testId"]
      271 NAMECALL                         R31 R31 K24 ["format"]
      273 CALL                             R31 2 1
      274 MOVE                             R30 R31
      275 SETTABLEKS                       R30 R29 K12 ["testId"]
      277 CALL                             R27 2 1
      278 SETTABLEKS                       R27 R26 K58 ["Title"]
      280 GETTABLEKS                       R28 R2 K28 ["description"]
      282 JUMPIFNOT                        R28 ; [+35]
      283 GETUPVAL                         R27 4
      284 GETTABLEKS                       R27 R27 K8 ["createElement"]
      286 GETUPVAL                         R28 19
      287 DUPTABLE                         R29 K62 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      288 GETTABLEKS                       R30 R2 K28 ["description"]
      290 SETTABLEKS                       R30 R29 K54 ["Text"]
      292 GETTABLEKS                       R30 R4 K28 ["description"]
      294 GETTABLEKS                       R30 R30 K43 ["style"]
      296 SETTABLEKS                       R30 R29 K61 ["textStyle"]
      298 GETTABLEKS                       R30 R4 K28 ["description"]
      300 GETTABLEKS                       R30 R30 K9 ["tag"]
      302 SETTABLEKS                       R30 R29 K9 ["tag"]
      304 LOADN                            R30 2
      305 SETTABLEKS                       R30 R29 K11 ["LayoutOrder"]
      307 LOADK                            R31 K65 ["%*--description"]
      308 GETTABLEKS                       R33 R2 K12 ["testId"]
      310 NAMECALL                         R31 R31 K24 ["format"]
      312 CALL                             R31 2 1
      313 MOVE                             R30 R31
      314 SETTABLEKS                       R30 R29 K12 ["testId"]
      316 CALL                             R27 2 1
      317 JUMP                             ; [+1]
      318 LOADNIL                          R27
      319 SETTABLEKS                       R27 R26 K59 ["Description"]
      321 JUMPIFNOT                        R9 ; [+2]
      322 MOVE                             R27 R11
      323 JUMP                             ; [+1]
      324 LOADNIL                          R27
      325 SETTABLEKS                       R27 R26 K38 ["Actions"]
      327 CALL                             R23 3 1
      328 SETTABLEKS                       R23 R22 K54 ["Text"]
      330 CALL                             R19 3 1
      331 SETTABLEKS                       R19 R18 K37 ["Content"]
      333 JUMPIF                           R9 ; [+2]
      334 MOVE                             R19 R11
      335 JUMP                             ; [+1]
      336 LOADNIL                          R19
      337 SETTABLEKS                       R19 R18 K38 ["Actions"]
      339 GETTABLEKS                       R20 R2 K66 ["onClose"]
      341 JUMPIFEQKNIL                     R20 ; [+34]
      343 GETUPVAL                         R19 4
      344 GETTABLEKS                       R19 R19 K8 ["createElement"]
      346 GETUPVAL                         R20 20
      347 DUPTABLE                         R21 K68 [{"onActivated", "size", "variant", "LayoutOrder", "testId"}]
      348 GETTABLEKS                       R22 R2 K66 ["onClose"]
      350 SETTABLEKS                       R22 R21 K67 ["onActivated"]
      352 GETUPVAL                         R22 10
      353 GETTABLEKS                       R22 R22 K5 ["Small"]
      355 SETTABLEKS                       R22 R21 K42 ["size"]
      357 GETUPVAL                         R22 21
      358 GETTABLEKS                       R22 R22 K69 ["Utility"]
      360 SETTABLEKS                       R22 R21 K0 ["variant"]
      362 LOADN                            R22 4
      363 SETTABLEKS                       R22 R21 K11 ["LayoutOrder"]
      365 LOADK                            R23 K70 ["%*--close"]
      366 GETTABLEKS                       R25 R2 K12 ["testId"]
      368 NAMECALL                         R23 R23 K24 ["format"]
      370 CALL                             R23 2 1
      371 MOVE                             R22 R23
      372 SETTABLEKS                       R22 R21 K12 ["testId"]
      374 CALL                             R19 2 1
      375 JUMP                             ; [+1]
      376 LOADNIL                          R19
      377 SETTABLEKS                       R19 R18 K39 ["Close"]
      379 CALL                             R15 3 -1
      380 CALL                             R12 -1 -1
      381 RETURN                           R12 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["AlertSeverity"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R7 K12 ["AlertVariant"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["Button"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Enums"]
       49 GETTABLEKS                       R9 R9 K15 ["ButtonVariant"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Components"]
       56 GETTABLEKS                       R10 R10 K16 ["CloseAffordance"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K13 ["Components"]
       63 GETTABLEKS                       R11 R11 K17 ["Icon"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K18 ["Providers"]
       70 GETTABLEKS                       R12 R12 K19 ["Style"]
       72 GETTABLEKS                       R12 R12 K20 ["PresentationContext"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K13 ["Components"]
       79 GETTABLEKS                       R13 R13 K21 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K13 ["Components"]
       86 GETTABLEKS                       R14 R14 K22 ["Types"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K13 ["Components"]
       93 GETTABLEKS                       R15 R15 K23 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K18 ["Providers"]
      100 GETTABLEKS                       R16 R16 K19 ["Style"]
      102 GETTABLEKS                       R16 R16 K24 ["useTokens"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K25 ["Utility"]
      109 GETTABLEKS                       R17 R17 K26 ["withCommonProps"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K25 ["Utility"]
      116 GETTABLEKS                       R18 R18 K27 ["withDefaults"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R1 K28 ["BuilderIcons"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R20 R0 K10 ["Enums"]
      128 GETTABLEKS                       R20 R20 K29 ["CloseAffordanceVariant"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R21 R0 K10 ["Enums"]
      135 GETTABLEKS                       R21 R21 K30 ["IconSize"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K6 [require]
      140 GETTABLEKS                       R22 R0 K10 ["Enums"]
      142 GETTABLEKS                       R22 R22 K31 ["InputSize"]
      144 CALL                             R21 1 1
      145 GETTABLEKS                       R22 R18 K32 ["IconVariant"]
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R24 R0 K10 ["Enums"]
      151 GETTABLEKS                       R24 R24 K33 ["Breakpoint"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K6 [require]
      156 GETTABLEKS                       R25 R0 K25 ["Utility"]
      158 GETTABLEKS                       R25 R25 K34 ["Logger"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K6 [require]
      163 GETTABLEKS                       R26 R0 K18 ["Providers"]
      165 GETTABLEKS                       R26 R26 K35 ["Responsive"]
      167 GETTABLEKS                       R26 R26 K36 ["Hooks"]
      169 GETTABLEKS                       R26 R26 K37 ["useBreakpoint"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K6 [require]
      174 GETIMPORT                        R27 K1 [script]
      176 GETTABLEKS                       R27 R27 K4 ["Parent"]
      178 GETTABLEKS                       R27 R27 K38 ["useSystemBannerVariants"]
      180 CALL                             R26 1 1
      181 DUPTABLE                         R27 K41 [{"variant", "testId"}]
      182 GETTABLEKS                       R28 R6 K42 ["Standard"]
      184 SETTABLEKS                       R28 R27 K39 ["variant"]
      186 LOADK                            R28 K43 ["--foundation-system-banner"]
      187 SETTABLEKS                       R28 R27 K40 ["testId"]
      189 NEWTABLE                         R28 4 0
      191 GETTABLEKS                       R29 R5 K44 ["Info"]
      193 LOADK                            R30 K45 ["circle-i"]
      194 SETTABLE                         R30 R28 R29
      195 GETTABLEKS                       R29 R5 K46 ["Warning"]
      197 LOADK                            R30 K47 ["triangle-exclamation"]
      198 SETTABLE                         R30 R28 R29
      199 GETTABLEKS                       R29 R5 K48 ["Success"]
      201 LOADK                            R30 K49 ["circle-check"]
      202 SETTABLE                         R30 R28 R29
      203 GETTABLEKS                       R29 R5 K50 ["Error"]
      205 LOADK                            R30 K51 ["circle-x"]
      206 SETTABLE                         R30 R28 R29
      207 DUPCLOSURE                       R29 K52 [PROTO_1]
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R19
      230 GETTABLEKS                       R30 R3 K53 ["memo"]
      232 GETTABLEKS                       R31 R3 K54 ["forwardRef"]
      234 MOVE                             R32 R29
      235 CALL                             R31 1 -1
      236 CALL                             R30 -1 -1
      237 RETURN                           R30 -1
