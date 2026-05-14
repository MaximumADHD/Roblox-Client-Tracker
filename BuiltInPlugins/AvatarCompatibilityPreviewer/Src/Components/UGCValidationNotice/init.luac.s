PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findCachedValidationResponse"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestCanUploadBundles"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["validateBundle"]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["revalidateBundle"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+71]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+69]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+67]
        6 GETUPVAL                         R0 3
        7 JUMPIFEQKNIL                     R0 ; [+65]
        9 GETUPVAL                         R0 4
       10 JUMPIFEQKNIL                     R0 ; [+62]
       12 GETUPVAL                         R0 5
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K0 ["errors"]
       18 LENGTH                           R0 R1
       19 JUMPIFNOTEQKN                    R0 K1 [0] ; [+7]
       21 GETUPVAL                         R0 6
       22 LOADK                            R2 K2 ["autoSetupPassedValidation"]
       23 NAMECALL                         R0 R0 K3 ["report"]
       25 CALL                             R0 2 0
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R0 6
       28 LOADK                            R2 K4 ["autoSetupFailedValidation"]
       29 NAMECALL                         R0 R0 K3 ["report"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 6
       33 LOADK                            R2 K5 ["autoSetupValidationDuration"]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K6 ["duration"]
       37 NAMECALL                         R0 R0 K3 ["report"]
       39 CALL                             R0 3 0
       40 GETUPVAL                         R0 6
       41 LOADK                            R2 K7 ["autoSetupValidationErrorCount"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K0 ["errors"]
       45 LENGTH                           R3 R4
       46 NAMECALL                         R0 R0 K3 ["report"]
       48 CALL                             R0 3 0
       49 GETUPVAL                         R0 4
       50 GETTABLEKS                       R0 R0 K0 ["errors"]
       52 LOADNIL                          R1
       53 LOADNIL                          R2
       54 FORGPREP                         R0
       55 GETTABLEKS                       R5 R4 K8 ["error"]
       57 GETTABLEKS                       R5 R5 K9 ["type"]
       59 JUMPIFNOTEQKS                    R5 K10 ["message"] ; [+11]
       61 GETUPVAL                         R5 6
       62 LOADK                            R7 K11 ["autoSetupValidationError"]
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R9 R4 K8 ["error"]
       66 GETTABLEKS                       R9 R9 K10 ["message"]
       68 NAMECALL                         R5 R5 K3 ["report"]
       70 CALL                             R5 4 0
       71 FORGLOOP                         R0 2 ; [-17]
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["UGCValidationNotice"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K2 ["Avatar"]
       11 GETTABLEKS                       R3 R3 K3 ["WorldModel"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["useContext"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K5 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 4
       21 LOADB                            R6 1
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 4
       24 LOADB                            R7 0
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 5
       34 MOVE                             R10 R3
       35 GETTABLEKS                       R11 R4 K7 ["findCachedValidationResponse"]
       37 GETTABLEKS                       R12 R0 K2 ["Avatar"]
       39 GETTABLEKS                       R12 R12 K8 ["LatestWorldModelHash"]
       41 GETTABLEKS                       R13 R0 K2 ["Avatar"]
       43 GETTABLEKS                       R13 R13 K9 ["WorldModelScale"]
       45 GETTABLEKS                       R14 R0 K2 ["Avatar"]
       47 GETTABLEKS                       R14 R14 K10 ["ProportionalScale"]
       49 SETLIST                          R9 R10 5 [1]
       51 CALL                             R7 2 1
       52 MOVE                             R8 R7
       53 JUMPIFNOT                        R8 ; [+2]
       54 GETTABLEKS                       R8 R7 K11 ["ugcValidationResponse"]
       56 JUMPIFNOTEQKNIL                  R8 ; [+3]
       58 LOADN                            R10 0
       59 JUMP                             ; [+3]
       60 GETTABLEKS                       R11 R8 K12 ["errors"]
       62 LENGTH                           R10 R11
       63 GETTABLEKS                       R12 R4 K13 ["canUploadBundles"]
       65 JUMPIFEQKNIL                     R12 ; [+9]
       67 GETTABLEKS                       R12 R4 K13 ["canUploadBundles"]
       69 GETTABLEKS                       R12 R12 K14 ["type"]
       71 JUMPIFNOTEQKS                    R12 K15 ["notAllowed"] ; [+3]
       73 LOADN                            R11 1
       74 JUMP                             ; [+1]
       75 LOADN                            R11 0
       76 ADD                              R9 R10 R11
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K16 ["useEffect"]
       80 NEWCLOSURE                       R11 P1
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R12 0 1
       84 GETTABLEKS                       R13 R4 K17 ["requestCanUploadBundles"]
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 0
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K18 ["useCallback"]
       92 NEWCLOSURE                       R11 P2
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 NEWTABLE                         R12 0 3
       98 MOVE                             R13 R7
       99 GETTABLEKS                       R14 R4 K19 ["validateBundle"]
      101 MOVE                             R15 R3
      102 SETLIST                          R12 R13 3 [1]
      104 CALL                             R10 2 1
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K6 ["useMemo"]
      108 NEWCLOSURE                       R12 P3
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R10
      111 NEWTABLE                         R13 0 1
      113 MOVE                             R14 R10
      114 SETLIST                          R13 R14 1 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K16 ["useEffect"]
      120 MOVE                             R13 R11
      121 NEWTABLE                         R14 0 3
      123 GETTABLEKS                       R15 R0 K2 ["Avatar"]
      125 GETTABLEKS                       R15 R15 K8 ["LatestWorldModelHash"]
      127 GETTABLEKS                       R16 R0 K2 ["Avatar"]
      129 GETTABLEKS                       R16 R16 K9 ["WorldModelScale"]
      131 GETTABLEKS                       R17 R0 K2 ["Avatar"]
      133 GETTABLEKS                       R17 R17 K10 ["ProportionalScale"]
      135 SETLIST                          R14 R15 3 [1]
      137 CALL                             R12 2 0
      138 GETUPVAL                         R12 2
      139 GETTABLEKS                       R12 R12 K16 ["useEffect"]
      141 NEWCLOSURE                       R13 P4
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R6
      144 NEWTABLE                         R14 0 1
      146 MOVE                             R15 R3
      147 SETLIST                          R14 R15 1 [1]
      149 CALL                             R12 2 0
      150 GETUPVAL                         R12 6
      151 MOVE                             R13 R3
      152 CALL                             R12 1 1
      153 GETUPVAL                         R13 7
      154 MOVE                             R14 R1
      155 LOADK                            R15 K20 ["UGCValidation"]
      156 LOADK                            R16 K21 ["WarningLongTitle"]
      157 MOVE                             R17 R9
      158 CALL                             R13 4 1
      159 GETUPVAL                         R14 8
      160 MOVE                             R15 R3
      161 LOADK                            R16 K22 ["ValidationResultReported"]
      162 LOADB                            R17 0
      163 CALL                             R14 3 2
      164 GETUPVAL                         R16 8
      165 MOVE                             R17 R3
      166 GETUPVAL                         R18 9
      167 GETTABLEKS                       R18 R18 K23 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      169 LOADNIL                          R19
      170 CALL                             R16 3 1
      171 LOADB                            R17 0
      172 JUMPIFEQKNIL                     R7 ; [+3]
      174 GETTABLEKS                       R17 R7 K24 ["completed"]
      176 GETUPVAL                         R18 2
      177 GETTABLEKS                       R18 R18 K18 ["useCallback"]
      179 NEWCLOSURE                       R19 P5
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R3
      182 NEWTABLE                         R20 0 1
      184 MOVE                             R21 R3
      185 SETLIST                          R20 R21 1 [1]
      187 CALL                             R18 2 1
      188 GETUPVAL                         R19 10
      189 NAMECALL                         R19 R19 K0 ["use"]
      191 CALL                             R19 1 1
      192 GETUPVAL                         R20 2
      193 GETTABLEKS                       R20 R20 K16 ["useEffect"]
      195 NEWCLOSURE                       R21 P6
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R16
      204 NEWTABLE                         R22 0 1
      206 MOVE                             R23 R17
      207 SETLIST                          R22 R23 1 [1]
      209 CALL                             R20 2 0
      210 GETUPVAL                         R20 2
      211 GETTABLEKS                       R20 R20 K25 ["createElement"]
      213 GETUPVAL                         R21 11
      214 DUPTABLE                         R22 K28 [{"Position", "Size"}]
      215 GETTABLEKS                       R23 R2 K26 ["Position"]
      217 SETTABLEKS                       R23 R22 K26 ["Position"]
      219 GETTABLEKS                       R23 R2 K27 ["Size"]
      221 SETTABLEKS                       R23 R22 K27 ["Size"]
      223 DUPTABLE                         R23 K32 [{"Alert", "StatusIcon", "FullDetails"}]
      224 LOADB                            R24 0
      225 JUMPIFEQKNIL                     R8 ; [+45]
      227 LOADB                            R24 0
      228 LOADN                            R25 0
      229 JUMPIFNOTLT                      R25 R9 ; [+41]
      231 GETTABLEKS                       R24 R5 K33 ["enabled"]
      233 JUMPIFNOT                        R24 ; [+37]
      234 GETUPVAL                         R24 2
      235 GETTABLEKS                       R24 R24 K25 ["createElement"]
      237 GETUPVAL                         R25 12
      238 DUPTABLE                         R26 K39 [{"Title", "ShortTitle", "PrimaryAction", "OnClose", "Style"}]
      239 SETTABLEKS                       R13 R26 K34 ["Title"]
      241 GETUPVAL                         R27 7
      242 MOVE                             R28 R1
      243 LOADK                            R29 K20 ["UGCValidation"]
      244 LOADK                            R30 K40 ["WarningShortTitle"]
      245 MOVE                             R31 R9
      246 CALL                             R27 4 1
      247 SETTABLEKS                       R27 R26 K35 ["ShortTitle"]
      249 DUPTABLE                         R27 K43 [{"Text", "OnClick"}]
      250 LOADK                            R30 K20 ["UGCValidation"]
      251 LOADK                            R31 K44 ["WarningAction"]
      252 NAMECALL                         R28 R1 K45 ["getText"]
      254 CALL                             R28 3 1
      255 SETTABLEKS                       R28 R27 K41 ["Text"]
      257 GETTABLEKS                       R28 R6 K46 ["enable"]
      259 SETTABLEKS                       R28 R27 K42 ["OnClick"]
      261 SETTABLEKS                       R27 R26 K36 ["PrimaryAction"]
      263 GETTABLEKS                       R27 R5 K47 ["disable"]
      265 SETTABLEKS                       R27 R26 K37 ["OnClose"]
      267 LOADK                            R27 K48 ["WarningLong"]
      268 SETTABLEKS                       R27 R26 K38 ["Style"]
      270 CALL                             R24 2 1
      271 SETTABLEKS                       R24 R23 K29 ["Alert"]
      273 LOADN                            R25 0
      274 JUMPIFNOTLT                      R25 R9 ; [+20]
      276 GETTABLEKS                       R25 R5 K33 ["enabled"]
      278 JUMPIF                           R25 ; [+16]
      279 GETUPVAL                         R24 2
      280 GETTABLEKS                       R24 R24 K25 ["createElement"]
      282 GETUPVAL                         R25 13
      283 DUPTABLE                         R26 K50 [{"Style", "TooltipText", "OnClick"}]
      284 LOADK                            R27 K51 ["Failure"]
      285 SETTABLEKS                       R27 R26 K38 ["Style"]
      287 SETTABLEKS                       R13 R26 K49 ["TooltipText"]
      289 GETTABLEKS                       R27 R6 K46 ["enable"]
      291 SETTABLEKS                       R27 R26 K42 ["OnClick"]
      293 CALL                             R24 2 1
      294 JUMP                             ; [+57]
      295 JUMPIFNOTEQKN                    R9 K52 [0] ; [+27]
      297 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      299 JUMPIFEQKNIL                     R25 ; [+23]
      301 JUMPIFEQKNIL                     R7 ; [+21]
      303 GETTABLEKS                       R25 R7 K24 ["completed"]
      305 JUMPIFNOT                        R25 ; [+17]
      306 GETUPVAL                         R24 2
      307 GETTABLEKS                       R24 R24 K25 ["createElement"]
      309 GETUPVAL                         R25 13
      310 DUPTABLE                         R26 K53 [{"Style", "TooltipText"}]
      311 LOADK                            R27 K54 ["Success"]
      312 SETTABLEKS                       R27 R26 K38 ["Style"]
      314 LOADK                            R29 K20 ["UGCValidation"]
      315 LOADK                            R30 K55 ["SuccessTooltip"]
      316 NAMECALL                         R27 R1 K45 ["getText"]
      318 CALL                             R27 3 1
      319 SETTABLEKS                       R27 R26 K49 ["TooltipText"]
      321 CALL                             R24 2 1
      322 JUMP                             ; [+29]
      323 JUMPIFNOTEQKN                    R9 K52 [0] ; [+27]
      325 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      327 JUMPIFEQKNIL                     R25 ; [+23]
      329 JUMPIFEQKNIL                     R7 ; [+21]
      331 GETTABLEKS                       R25 R7 K24 ["completed"]
      333 JUMPIF                           R25 ; [+17]
      334 GETUPVAL                         R24 2
      335 GETTABLEKS                       R24 R24 K25 ["createElement"]
      337 GETUPVAL                         R25 13
      338 DUPTABLE                         R26 K53 [{"Style", "TooltipText"}]
      339 LOADK                            R27 K56 ["InProgress"]
      340 SETTABLEKS                       R27 R26 K38 ["Style"]
      342 LOADK                            R29 K20 ["UGCValidation"]
      343 LOADK                            R30 K57 ["InProgressTooltip"]
      344 NAMECALL                         R27 R1 K45 ["getText"]
      346 CALL                             R27 3 1
      347 SETTABLEKS                       R27 R26 K49 ["TooltipText"]
      349 CALL                             R24 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R24
      352 SETTABLEKS                       R24 R23 K30 ["StatusIcon"]
      354 LOADB                            R24 0
      355 JUMPIFEQKNIL                     R8 ; [+26]
      357 LOADB                            R24 0
      358 LOADN                            R25 0
      359 JUMPIFNOTLT                      R25 R9 ; [+22]
      361 GETTABLEKS                       R24 R6 K33 ["enabled"]
      363 JUMPIFNOT                        R24 ; [+18]
      364 GETUPVAL                         R24 2
      365 GETTABLEKS                       R24 R24 K25 ["createElement"]
      367 GETUPVAL                         R25 14
      368 DUPTABLE                         R26 K61 [{"Errors", "OnClose", "RunValidation", "ValidationCompleted"}]
      369 GETTABLEKS                       R27 R8 K12 ["errors"]
      371 SETTABLEKS                       R27 R26 K58 ["Errors"]
      373 GETTABLEKS                       R27 R6 K47 ["disable"]
      375 SETTABLEKS                       R27 R26 K37 ["OnClose"]
      377 SETTABLEKS                       R18 R26 K59 ["RunValidation"]
      379 SETTABLEKS                       R17 R26 K60 ["ValidationCompleted"]
      381 CALL                             R24 2 1
      382 SETTABLEKS                       R24 R23 K31 ["FullDetails"]
      384 CALL                             R20 3 -1
      385 RETURN                           R20 -1

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
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["StatusIcon"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["UGCValidationErrorDialog"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["UGCValidationContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["Constants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Resources"]
       59 GETTABLEKS                       R8 R8 K17 ["Theme"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K18 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R10 K14 ["Util"]
       75 GETTABLEKS                       R10 R10 K19 ["createCallThrottler"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K11 ["Src"]
       82 GETTABLEKS                       R11 R11 K14 ["Util"]
       84 GETTABLEKS                       R11 R11 K20 ["localizePlural"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Src"]
       91 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       93 GETTABLEKS                       R12 R12 K22 ["useCreatedByAutoSetup"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K21 ["Hooks"]
      102 GETTABLEKS                       R13 R13 K23 ["useToggleState"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      111 GETTABLEKS                       R14 R14 K24 ["useSerializedState"]
      113 CALL                             R13 1 1
      114 GETTABLEKS                       R14 R1 K25 ["UI"]
      116 GETTABLEKS                       R15 R14 K26 ["Alert"]
      118 GETTABLEKS                       R16 R14 K27 ["Pane"]
      120 GETTABLEKS                       R17 R1 K28 ["ContextServices"]
      122 GETTABLEKS                       R17 R17 K29 ["Analytics"]
      124 GETTABLEKS                       R18 R1 K28 ["ContextServices"]
      126 GETTABLEKS                       R18 R18 K30 ["Localization"]
      128 GETTABLEKS                       R19 R1 K28 ["ContextServices"]
      130 GETTABLEKS                       R19 R19 K31 ["Stylizer"]
      132 DUPCLOSURE                       R20 K32 [PROTO_7]
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R4
      148 RETURN                           R20 1
