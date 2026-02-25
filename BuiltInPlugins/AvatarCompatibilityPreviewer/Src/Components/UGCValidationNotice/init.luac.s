PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findCachedValidationResponse"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["requestCanUploadBundles"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["validateBundle"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["revalidateBundle"]
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
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R1 R2 K0 ["errors"]
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
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R3 R4 K6 ["duration"]
       37 NAMECALL                         R0 R0 K3 ["report"]
       39 CALL                             R0 3 0
       40 GETUPVAL                         R0 6
       41 LOADK                            R2 K7 ["autoSetupValidationErrorCount"]
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R4 R5 K0 ["errors"]
       45 LENGTH                           R3 R4
       46 NAMECALL                         R0 R0 K3 ["report"]
       48 CALL                             R0 3 0
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R0 R3 K0 ["errors"]
       52 LOADNIL                          R1
       53 LOADNIL                          R2
       54 FORGPREP                         R0
       55 GETTABLEKS                       R6 R4 K8 ["error"]
       57 GETTABLEKS                       R5 R6 K9 ["type"]
       59 JUMPIFNOTEQKS                    R5 K10 ["message"] ; [+11]
       61 GETUPVAL                         R5 6
       62 LOADK                            R7 K11 ["autoSetupValidationError"]
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R10 R4 K8 ["error"]
       66 GETTABLEKS                       R9 R10 K10 ["message"]
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
        9 GETTABLEKS                       R4 R0 K2 ["Avatar"]
       11 GETTABLEKS                       R3 R4 K3 ["WorldModel"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K4 ["useContext"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K5 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 4
       21 LOADB                            R6 1
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 4
       24 LOADB                            R7 0
       25 CALL                             R6 1 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 5
       34 MOVE                             R10 R3
       35 GETTABLEKS                       R11 R4 K7 ["findCachedValidationResponse"]
       37 GETTABLEKS                       R13 R0 K2 ["Avatar"]
       39 GETTABLEKS                       R12 R13 K8 ["LatestWorldModelHash"]
       41 GETTABLEKS                       R14 R0 K2 ["Avatar"]
       43 GETTABLEKS                       R13 R14 K9 ["WorldModelScale"]
       45 GETTABLEKS                       R15 R0 K2 ["Avatar"]
       47 GETTABLEKS                       R14 R15 K10 ["ProportionalScale"]
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
       67 GETTABLEKS                       R13 R4 K13 ["canUploadBundles"]
       69 GETTABLEKS                       R12 R13 K14 ["type"]
       71 JUMPIFNOTEQKS                    R12 K15 ["notAllowed"] ; [+3]
       73 LOADN                            R11 1
       74 JUMP                             ; [+1]
       75 LOADN                            R11 0
       76 ADD                              R9 R10 R11
       77 GETUPVAL                         R11 2
       78 GETTABLEKS                       R10 R11 K16 ["useEffect"]
       80 NEWCLOSURE                       R11 P1
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R12 0 1
       84 GETTABLEKS                       R13 R4 K17 ["requestCanUploadBundles"]
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 0
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R10 R11 K18 ["useCallback"]
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
      105 GETUPVAL                         R12 2
      106 GETTABLEKS                       R11 R12 K6 ["useMemo"]
      108 NEWCLOSURE                       R12 P3
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R10
      111 NEWTABLE                         R13 0 1
      113 MOVE                             R14 R10
      114 SETLIST                          R13 R14 1 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R13 2
      118 GETTABLEKS                       R12 R13 K16 ["useEffect"]
      120 MOVE                             R13 R11
      121 NEWTABLE                         R14 0 3
      123 GETTABLEKS                       R16 R0 K2 ["Avatar"]
      125 GETTABLEKS                       R15 R16 K8 ["LatestWorldModelHash"]
      127 GETTABLEKS                       R17 R0 K2 ["Avatar"]
      129 GETTABLEKS                       R16 R17 K9 ["WorldModelScale"]
      131 GETTABLEKS                       R18 R0 K2 ["Avatar"]
      133 GETTABLEKS                       R17 R18 K10 ["ProportionalScale"]
      135 SETLIST                          R14 R15 3 [1]
      137 CALL                             R12 2 0
      138 GETUPVAL                         R13 2
      139 GETTABLEKS                       R12 R13 K16 ["useEffect"]
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
      161 GETUPVAL                         R17 9
      162 JUMPIFNOT                        R17 ; [+2]
      163 LOADK                            R16 K22 ["ValidationResultReported"]
      164 JUMP                             ; [+1]
      165 LOADK                            R16 K23 ["AutoSetupValidationResultReported"]
      166 LOADB                            R17 0
      167 CALL                             R14 3 2
      168 GETUPVAL                         R16 8
      169 MOVE                             R17 R3
      170 GETUPVAL                         R19 10
      171 GETTABLEKS                       R18 R19 K24 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      173 LOADNIL                          R19
      174 CALL                             R16 3 1
      175 LOADB                            R17 0
      176 JUMPIFEQKNIL                     R7 ; [+3]
      178 GETTABLEKS                       R17 R7 K25 ["completed"]
      180 GETUPVAL                         R19 2
      181 GETTABLEKS                       R18 R19 K18 ["useCallback"]
      183 NEWCLOSURE                       R19 P5
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R3
      186 NEWTABLE                         R20 0 1
      188 MOVE                             R21 R3
      189 SETLIST                          R20 R21 1 [1]
      191 CALL                             R18 2 1
      192 GETUPVAL                         R19 11
      193 NAMECALL                         R19 R19 K0 ["use"]
      195 CALL                             R19 1 1
      196 GETUPVAL                         R21 2
      197 GETTABLEKS                       R20 R21 K16 ["useEffect"]
      199 NEWCLOSURE                       R21 P6
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R16
      208 NEWTABLE                         R22 0 1
      210 MOVE                             R23 R17
      211 SETLIST                          R22 R23 1 [1]
      213 CALL                             R20 2 0
      214 GETUPVAL                         R21 2
      215 GETTABLEKS                       R20 R21 K26 ["createElement"]
      217 GETUPVAL                         R21 12
      218 DUPTABLE                         R22 K29 [{"Position", "Size"}]
      219 GETTABLEKS                       R23 R2 K27 ["Position"]
      221 SETTABLEKS                       R23 R22 K27 ["Position"]
      223 GETTABLEKS                       R23 R2 K28 ["Size"]
      225 SETTABLEKS                       R23 R22 K28 ["Size"]
      227 DUPTABLE                         R23 K33 [{"Alert", "StatusIcon", "FullDetails"}]
      228 LOADB                            R24 0
      229 JUMPIFEQKNIL                     R8 ; [+45]
      231 LOADB                            R24 0
      232 LOADN                            R25 0
      233 JUMPIFNOTLT                      R25 R9 ; [+41]
      235 GETTABLEKS                       R24 R5 K34 ["enabled"]
      237 JUMPIFNOT                        R24 ; [+37]
      238 GETUPVAL                         R25 2
      239 GETTABLEKS                       R24 R25 K26 ["createElement"]
      241 GETUPVAL                         R25 13
      242 DUPTABLE                         R26 K40 [{"Title", "ShortTitle", "PrimaryAction", "OnClose", "Style"}]
      243 SETTABLEKS                       R13 R26 K35 ["Title"]
      245 GETUPVAL                         R27 7
      246 MOVE                             R28 R1
      247 LOADK                            R29 K20 ["UGCValidation"]
      248 LOADK                            R30 K41 ["WarningShortTitle"]
      249 MOVE                             R31 R9
      250 CALL                             R27 4 1
      251 SETTABLEKS                       R27 R26 K36 ["ShortTitle"]
      253 DUPTABLE                         R27 K44 [{"Text", "OnClick"}]
      254 LOADK                            R30 K20 ["UGCValidation"]
      255 LOADK                            R31 K45 ["WarningAction"]
      256 NAMECALL                         R28 R1 K46 ["getText"]
      258 CALL                             R28 3 1
      259 SETTABLEKS                       R28 R27 K42 ["Text"]
      261 GETTABLEKS                       R28 R6 K47 ["enable"]
      263 SETTABLEKS                       R28 R27 K43 ["OnClick"]
      265 SETTABLEKS                       R27 R26 K37 ["PrimaryAction"]
      267 GETTABLEKS                       R27 R5 K48 ["disable"]
      269 SETTABLEKS                       R27 R26 K38 ["OnClose"]
      271 LOADK                            R27 K49 ["WarningLong"]
      272 SETTABLEKS                       R27 R26 K39 ["Style"]
      274 CALL                             R24 2 1
      275 SETTABLEKS                       R24 R23 K30 ["Alert"]
      277 LOADN                            R25 0
      278 JUMPIFNOTLT                      R25 R9 ; [+20]
      280 GETTABLEKS                       R25 R5 K34 ["enabled"]
      282 JUMPIF                           R25 ; [+16]
      283 GETUPVAL                         R25 2
      284 GETTABLEKS                       R24 R25 K26 ["createElement"]
      286 GETUPVAL                         R25 14
      287 DUPTABLE                         R26 K51 [{"Style", "TooltipText", "OnClick"}]
      288 LOADK                            R27 K52 ["Failure"]
      289 SETTABLEKS                       R27 R26 K39 ["Style"]
      291 SETTABLEKS                       R13 R26 K50 ["TooltipText"]
      293 GETTABLEKS                       R27 R6 K47 ["enable"]
      295 SETTABLEKS                       R27 R26 K43 ["OnClick"]
      297 CALL                             R24 2 1
      298 JUMP                             ; [+57]
      299 JUMPIFNOTEQKN                    R9 K53 [0] ; [+27]
      301 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      303 JUMPIFEQKNIL                     R25 ; [+23]
      305 JUMPIFEQKNIL                     R7 ; [+21]
      307 GETTABLEKS                       R25 R7 K25 ["completed"]
      309 JUMPIFNOT                        R25 ; [+17]
      310 GETUPVAL                         R25 2
      311 GETTABLEKS                       R24 R25 K26 ["createElement"]
      313 GETUPVAL                         R25 14
      314 DUPTABLE                         R26 K54 [{"Style", "TooltipText"}]
      315 LOADK                            R27 K55 ["Success"]
      316 SETTABLEKS                       R27 R26 K39 ["Style"]
      318 LOADK                            R29 K20 ["UGCValidation"]
      319 LOADK                            R30 K56 ["SuccessTooltip"]
      320 NAMECALL                         R27 R1 K46 ["getText"]
      322 CALL                             R27 3 1
      323 SETTABLEKS                       R27 R26 K50 ["TooltipText"]
      325 CALL                             R24 2 1
      326 JUMP                             ; [+29]
      327 JUMPIFNOTEQKN                    R9 K53 [0] ; [+27]
      329 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      331 JUMPIFEQKNIL                     R25 ; [+23]
      333 JUMPIFEQKNIL                     R7 ; [+21]
      335 GETTABLEKS                       R25 R7 K25 ["completed"]
      337 JUMPIF                           R25 ; [+17]
      338 GETUPVAL                         R25 2
      339 GETTABLEKS                       R24 R25 K26 ["createElement"]
      341 GETUPVAL                         R25 14
      342 DUPTABLE                         R26 K54 [{"Style", "TooltipText"}]
      343 LOADK                            R27 K57 ["InProgress"]
      344 SETTABLEKS                       R27 R26 K39 ["Style"]
      346 LOADK                            R29 K20 ["UGCValidation"]
      347 LOADK                            R30 K58 ["InProgressTooltip"]
      348 NAMECALL                         R27 R1 K46 ["getText"]
      350 CALL                             R27 3 1
      351 SETTABLEKS                       R27 R26 K50 ["TooltipText"]
      353 CALL                             R24 2 1
      354 JUMP                             ; [+1]
      355 LOADNIL                          R24
      356 SETTABLEKS                       R24 R23 K31 ["StatusIcon"]
      358 LOADB                            R24 0
      359 JUMPIFEQKNIL                     R8 ; [+26]
      361 LOADB                            R24 0
      362 LOADN                            R25 0
      363 JUMPIFNOTLT                      R25 R9 ; [+22]
      365 GETTABLEKS                       R24 R6 K34 ["enabled"]
      367 JUMPIFNOT                        R24 ; [+18]
      368 GETUPVAL                         R25 2
      369 GETTABLEKS                       R24 R25 K26 ["createElement"]
      371 GETUPVAL                         R25 15
      372 DUPTABLE                         R26 K62 [{"Errors", "OnClose", "RunValidation", "ValidationCompleted"}]
      373 GETTABLEKS                       R27 R8 K12 ["errors"]
      375 SETTABLEKS                       R27 R26 K59 ["Errors"]
      377 GETTABLEKS                       R27 R6 K48 ["disable"]
      379 SETTABLEKS                       R27 R26 K38 ["OnClose"]
      381 SETTABLEKS                       R18 R26 K60 ["RunValidation"]
      383 SETTABLEKS                       R17 R26 K61 ["ValidationCompleted"]
      385 CALL                             R24 2 1
      386 SETTABLEKS                       R24 R23 K32 ["FullDetails"]
      388 CALL                             R20 3 -1
      389 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["StatusIcon"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["UGCValidationErrorDialog"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Components"]
       41 GETTABLEKS                       R6 R7 K13 ["UGCValidationContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Util"]
       50 GETTABLEKS                       R7 R8 K15 ["Constants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K11 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Resources"]
       59 GETTABLEKS                       R8 R9 K17 ["Theme"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R10 K18 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K11 ["Src"]
       73 GETTABLEKS                       R11 R12 K14 ["Util"]
       75 GETTABLEKS                       R10 R11 K19 ["createCallThrottler"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K11 ["Src"]
       82 GETTABLEKS                       R12 R13 K14 ["Util"]
       84 GETTABLEKS                       R11 R12 K20 ["localizePlural"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R14 R0 K11 ["Src"]
       91 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       93 GETTABLEKS                       R12 R13 K22 ["useCreatedByAutoSetup"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R15 R0 K11 ["Src"]
      100 GETTABLEKS                       R14 R15 K21 ["Hooks"]
      102 GETTABLEKS                       R13 R14 K23 ["useToggleState"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R16 R0 K11 ["Src"]
      109 GETTABLEKS                       R15 R16 K21 ["Hooks"]
      111 GETTABLEKS                       R14 R15 K24 ["useSerializedState"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K26 [game]
      116 LOADK                            R16 K27 ["AvatarPreviewerShortenAttributeName"]
      117 LOADB                            R17 0
      118 NAMECALL                         R14 R14 K28 ["DefineFastFlag"]
      120 CALL                             R14 3 1
      121 GETTABLEKS                       R15 R1 K29 ["UI"]
      123 GETTABLEKS                       R16 R15 K30 ["Alert"]
      125 GETTABLEKS                       R17 R15 K31 ["Pane"]
      127 GETTABLEKS                       R19 R1 K32 ["ContextServices"]
      129 GETTABLEKS                       R18 R19 K33 ["Analytics"]
      131 GETTABLEKS                       R20 R1 K32 ["ContextServices"]
      133 GETTABLEKS                       R19 R20 K34 ["Localization"]
      135 GETTABLEKS                       R21 R1 K32 ["ContextServices"]
      137 GETTABLEKS                       R20 R21 K35 ["Stylizer"]
      139 DUPCLOSURE                       R21 K36 [PROTO_7]
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R4
      156 RETURN                           R21 1
