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
       57 JUMPIFNOT                        R10 ; [+45]
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K8 ["createElement"]
       61 GETUPVAL                         R12 12
       62 DUPTABLE                         R13 K14 [{["tag"], ["padding"], ["LayoutOrder"] = 3, ["testId"]}]
       63 NEWTABLE                         R14 4 0
       65 LOADB                            R15 1
       66 SETTABLEKS                       R15 R14 K15 ["auto-xy row gap-small"]
       68 SETTABLEKS                       R9 R14 K16 ["align-x-left"]
       70 NOT                              R15 R9
       71 SETTABLEKS                       R15 R14 K17 ["align-x-right"]
       73 SETTABLEKS                       R14 R13 K9 ["tag"]
       75 JUMPIFNOT                        R9 ; [+12]
       76 DUPTABLE                         R14 K19 [{"top"}]
       77 GETIMPORT                        R15 K22 [UDim.new]
       79 LOADN                            R16 0
       80 GETTABLEKS                       R17 R3 K23 ["Gap"]
       82 GETTABLEKS                       R17 R17 K5 ["Small"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K18 ["top"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R14
       89 SETTABLEKS                       R14 R13 K10 ["padding"]
       91 LOADK                            R15 K24 ["%*--actions"]
       92 GETTABLEKS                       R17 R2 K13 ["testId"]
       94 NAMECALL                         R15 R15 K25 ["format"]
       96 CALL                             R15 2 1
       97 MOVE                             R14 R15
       98 SETTABLEKS                       R14 R13 K13 ["testId"]
      100 MOVE                             R14 R10
      101 CALL                             R11 3 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R11
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R12 R12 K8 ["createElement"]
      107 GETUPVAL                         R13 12
      108 GETUPVAL                         R14 13
      109 MOVE                             R15 R2
      110 DUPTABLE                         R16 K27 [{"tag", "ref"}]
      111 NEWTABLE                         R17 4 0
      113 GETTABLEKS                       R18 R4 K28 ["container"]
      115 GETTABLEKS                       R18 R18 K9 ["tag"]
      117 LOADB                            R19 1
      118 SETTABLE                         R19 R17 R18
      119 GETTABLEKS                       R19 R2 K29 ["description"]
      121 JUMPIFEQKNIL                     R19 ; [+2]
      123 LOADB                            R18 0 +1
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K30 ["align-y-center"]
      127 GETTABLEKS                       R19 R2 K29 ["description"]
      129 JUMPIFNOTEQKNIL                  R19 ; [+2]
      131 LOADB                            R18 0 +1
      132 LOADB                            R18 1
      133 SETTABLEKS                       R18 R17 K31 ["align-y-top"]
      135 SETTABLEKS                       R17 R16 K9 ["tag"]
      137 SETTABLEKS                       R7 R16 K26 ["ref"]
      139 CALL                             R14 2 1
      140 GETUPVAL                         R15 4
      141 GETTABLEKS                       R15 R15 K8 ["createElement"]
      143 GETUPVAL                         R16 14
      144 GETTABLEKS                       R16 R16 K32 ["Provider"]
      146 DUPTABLE                         R17 K34 [{"value"}]
      147 DUPTABLE                         R18 K36 [{"colorMode"}]
      148 GETTABLEKS                       R19 R4 K28 ["container"]
      150 GETTABLEKS                       R19 R19 K35 ["colorMode"]
      152 SETTABLEKS                       R19 R18 K35 ["colorMode"]
      154 SETTABLEKS                       R18 R17 K33 ["value"]
      156 DUPTABLE                         R18 K41 [{"Icon", "Content", "Actions", "Close"}]
      157 GETUPVAL                         R19 4
      158 GETTABLEKS                       R19 R19 K8 ["createElement"]
      160 GETUPVAL                         R20 15
      161 DUPTABLE                         R21 K46 [{["LayoutOrder"] = 1, ["name"], ["size"], [4], ["style"], ["testId"]}]
      162 GETUPVAL                         R23 16
      163 GETTABLEKS                       R24 R2 K1 ["severity"]
      165 GETTABLE                         R22 R23 R24
      166 SETTABLEKS                       R22 R21 K43 ["name"]
      168 GETUPVAL                         R22 17
      169 GETTABLEKS                       R22 R22 K47 ["Large"]
      171 SETTABLEKS                       R22 R21 K44 ["size"]
      173 GETUPVAL                         R22 18
      174 GETTABLEKS                       R22 R22 K48 ["Filled"]
      176 SETTABLEKS                       R22 R21 K0 ["variant"]
      178 GETTABLEKS                       R22 R4 K49 ["icon"]
      180 GETTABLEKS                       R22 R22 K45 ["style"]
      182 SETTABLEKS                       R22 R21 K45 ["style"]
      184 LOADK                            R23 K50 ["%*--icon"]
      185 GETTABLEKS                       R25 R2 K13 ["testId"]
      187 NAMECALL                         R23 R23 K25 ["format"]
      189 CALL                             R23 2 1
      190 MOVE                             R22 R23
      191 SETTABLEKS                       R22 R21 K13 ["testId"]
      193 CALL                             R19 2 1
      194 SETTABLEKS                       R19 R18 K37 ["Icon"]
      196 GETUPVAL                         R19 4
      197 GETTABLEKS                       R19 R19 K8 ["createElement"]
      199 GETUPVAL                         R20 12
      200 DUPTABLE                         R21 K52 [{["LayoutOrder"] = 2, ["tag"], ["testId"]}]
      201 NEWTABLE                         R22 4 0
      203 LOADB                            R23 1
      204 SETTABLEKS                       R23 R22 K53 ["auto-xy fill"]
      206 SETTABLEKS                       R9 R22 K54 ["col"]
      208 NOT                              R23 R9
      209 SETTABLEKS                       R23 R22 K55 ["row"]
      211 SETTABLEKS                       R22 R21 K9 ["tag"]
      213 LOADK                            R23 K56 ["%*--content"]
      214 GETTABLEKS                       R25 R2 K13 ["testId"]
      216 NAMECALL                         R23 R23 K25 ["format"]
      218 CALL                             R23 2 1
      219 MOVE                             R22 R23
      220 SETTABLEKS                       R22 R21 K13 ["testId"]
      222 DUPTABLE                         R22 K58 [{"Text"}]
      223 GETUPVAL                         R23 4
      224 GETTABLEKS                       R23 R23 K8 ["createElement"]
      226 GETUPVAL                         R24 12
      227 DUPTABLE                         R25 K60 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy col"}]
      228 DUPTABLE                         R26 K63 [{"Title", "Description", "Actions"}]
      229 GETUPVAL                         R27 4
      230 GETTABLEKS                       R27 R27 K8 ["createElement"]
      232 GETUPVAL                         R28 19
      233 DUPTABLE                         R29 K65 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      234 GETTABLEKS                       R30 R2 K66 ["title"]
      236 SETTABLEKS                       R30 R29 K57 ["Text"]
      238 GETTABLEKS                       R30 R4 K66 ["title"]
      240 GETTABLEKS                       R30 R30 K45 ["style"]
      242 SETTABLEKS                       R30 R29 K64 ["textStyle"]
      244 GETTABLEKS                       R30 R4 K66 ["title"]
      246 GETTABLEKS                       R30 R30 K9 ["tag"]
      248 SETTABLEKS                       R30 R29 K9 ["tag"]
      250 LOADK                            R31 K67 ["%*--title"]
      251 GETTABLEKS                       R33 R2 K13 ["testId"]
      253 NAMECALL                         R31 R31 K25 ["format"]
      255 CALL                             R31 2 1
      256 MOVE                             R30 R31
      257 SETTABLEKS                       R30 R29 K13 ["testId"]
      259 CALL                             R27 2 1
      260 SETTABLEKS                       R27 R26 K61 ["Title"]
      262 GETTABLEKS                       R28 R2 K29 ["description"]
      264 JUMPIFNOT                        R28 ; [+32]
      265 GETUPVAL                         R27 4
      266 GETTABLEKS                       R27 R27 K8 ["createElement"]
      268 GETUPVAL                         R28 19
      269 DUPTABLE                         R29 K68 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      270 GETTABLEKS                       R30 R2 K29 ["description"]
      272 SETTABLEKS                       R30 R29 K57 ["Text"]
      274 GETTABLEKS                       R30 R4 K29 ["description"]
      276 GETTABLEKS                       R30 R30 K45 ["style"]
      278 SETTABLEKS                       R30 R29 K64 ["textStyle"]
      280 GETTABLEKS                       R30 R4 K29 ["description"]
      282 GETTABLEKS                       R30 R30 K9 ["tag"]
      284 SETTABLEKS                       R30 R29 K9 ["tag"]
      286 LOADK                            R31 K69 ["%*--description"]
      287 GETTABLEKS                       R33 R2 K13 ["testId"]
      289 NAMECALL                         R31 R31 K25 ["format"]
      291 CALL                             R31 2 1
      292 MOVE                             R30 R31
      293 SETTABLEKS                       R30 R29 K13 ["testId"]
      295 CALL                             R27 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R27
      298 SETTABLEKS                       R27 R26 K62 ["Description"]
      300 JUMPIFNOT                        R9 ; [+2]
      301 MOVE                             R27 R11
      302 JUMP                             ; [+1]
      303 LOADNIL                          R27
      304 SETTABLEKS                       R27 R26 K39 ["Actions"]
      306 CALL                             R23 3 1
      307 SETTABLEKS                       R23 R22 K57 ["Text"]
      309 CALL                             R19 3 1
      310 SETTABLEKS                       R19 R18 K38 ["Content"]
      312 JUMPIF                           R9 ; [+2]
      313 MOVE                             R19 R11
      314 JUMP                             ; [+1]
      315 LOADNIL                          R19
      316 SETTABLEKS                       R19 R18 K39 ["Actions"]
      318 GETTABLEKS                       R20 R2 K70 ["onClose"]
      320 JUMPIFEQKNIL                     R20 ; [+31]
      322 GETUPVAL                         R19 4
      323 GETTABLEKS                       R19 R19 K8 ["createElement"]
      325 GETUPVAL                         R20 20
      326 DUPTABLE                         R21 K73 [{["onActivated"], ["size"], [3], ["LayoutOrder"] = 4, ["testId"]}]
      327 GETTABLEKS                       R22 R2 K70 ["onClose"]
      329 SETTABLEKS                       R22 R21 K71 ["onActivated"]
      331 GETUPVAL                         R22 10
      332 GETTABLEKS                       R22 R22 K5 ["Small"]
      334 SETTABLEKS                       R22 R21 K44 ["size"]
      336 GETUPVAL                         R22 21
      337 GETTABLEKS                       R22 R22 K74 ["Utility"]
      339 SETTABLEKS                       R22 R21 K0 ["variant"]
      341 LOADK                            R23 K75 ["%*--close"]
      342 GETTABLEKS                       R25 R2 K13 ["testId"]
      344 NAMECALL                         R23 R23 K25 ["format"]
      346 CALL                             R23 2 1
      347 MOVE                             R22 R23
      348 SETTABLEKS                       R22 R21 K13 ["testId"]
      350 CALL                             R19 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R19
      353 SETTABLEKS                       R19 R18 K40 ["Close"]
      355 CALL                             R15 3 -1
      356 CALL                             R12 -1 -1
      357 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["View"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Components"]
       42 GETTABLEKS                       R8 R8 K13 ["Text"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Components"]
       49 GETTABLEKS                       R9 R9 K14 ["Button"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Components"]
       56 GETTABLEKS                       R10 R10 K15 ["Icon"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Components"]
       63 GETTABLEKS                       R11 R11 K16 ["CloseAffordance"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K17 ["Utility"]
       70 GETTABLEKS                       R12 R12 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K17 ["Utility"]
       77 GETTABLEKS                       R13 R13 K19 ["withCommonProps"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K20 ["Providers"]
       84 GETTABLEKS                       R14 R14 K21 ["Style"]
       86 GETTABLEKS                       R14 R14 K22 ["useTokens"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K20 ["Providers"]
       93 GETTABLEKS                       R15 R15 K21 ["Style"]
       95 GETTABLEKS                       R15 R15 K23 ["PresentationContext"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K24 ["Enums"]
      102 GETTABLEKS                       R16 R16 K25 ["AlertSeverity"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K24 ["Enums"]
      109 GETTABLEKS                       R17 R17 K26 ["AlertVariant"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K24 ["Enums"]
      116 GETTABLEKS                       R18 R18 K27 ["ButtonVariant"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R0 K24 ["Enums"]
      123 GETTABLEKS                       R19 R19 K28 ["CloseAffordanceVariant"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K6 [require]
      128 GETTABLEKS                       R20 R0 K24 ["Enums"]
      130 GETTABLEKS                       R20 R20 K29 ["InputSize"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K6 [require]
      135 GETTABLEKS                       R21 R0 K24 ["Enums"]
      137 GETTABLEKS                       R21 R21 K30 ["IconSize"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K6 [require]
      142 GETTABLEKS                       R22 R1 K31 ["BuilderIcons"]
      144 CALL                             R21 1 1
      145 GETTABLEKS                       R22 R21 K32 ["IconVariant"]
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R24 R0 K17 ["Utility"]
      151 GETTABLEKS                       R24 R24 K33 ["Logger"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K6 [require]
      156 GETTABLEKS                       R25 R0 K24 ["Enums"]
      158 GETTABLEKS                       R25 R25 K34 ["Breakpoint"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K6 [require]
      163 GETTABLEKS                       R26 R0 K20 ["Providers"]
      165 GETTABLEKS                       R26 R26 K35 ["Responsive"]
      167 GETTABLEKS                       R26 R26 K36 ["Hooks"]
      169 GETTABLEKS                       R26 R26 K37 ["useBreakpoint"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K6 [require]
      174 GETIMPORT                        R27 K1 [script]
      176 GETTABLEKS                       R27 R27 K4 ["Parent"]
      178 GETTABLEKS                       R27 R27 K38 ["useSystemBannerVariants"]
      180 CALL                             R26 1 1
      181 DUPTABLE                         R27 K42 [{["variant"], ["testId"] = "--foundation-system-banner"}]
      182 GETTABLEKS                       R28 R16 K43 ["Standard"]
      184 SETTABLEKS                       R28 R27 K39 ["variant"]
      186 NEWTABLE                         R28 4 0
      188 GETTABLEKS                       R29 R15 K44 ["Info"]
      190 LOADK                            R30 K45 ["circle-i"]
      191 SETTABLE                         R30 R28 R29
      192 GETTABLEKS                       R29 R15 K46 ["Warning"]
      194 LOADK                            R30 K47 ["triangle-exclamation"]
      195 SETTABLE                         R30 R28 R29
      196 GETTABLEKS                       R29 R15 K48 ["Success"]
      198 LOADK                            R30 K49 ["circle-check"]
      199 SETTABLE                         R30 R28 R29
      200 GETTABLEKS                       R29 R15 K50 ["Error"]
      202 LOADK                            R30 K51 ["circle-x"]
      203 SETTABLE                         R30 R28 R29
      204 DUPCLOSURE                       R29 K52 [PROTO_1]
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R18
      227 GETTABLEKS                       R30 R2 K53 ["memo"]
      229 GETTABLEKS                       R31 R2 K54 ["forwardRef"]
      231 MOVE                             R32 R29
      232 CALL                             R31 1 -1
      233 CALL                             R30 -1 -1
      234 RETURN                           R30 -1
