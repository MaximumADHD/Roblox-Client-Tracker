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
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+10]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K0 ["ATTRIBUTE_PLATFORM"]
       11 NAMECALL                         R0 R0 K1 ["GetAttribute"]
       13 CALL                             R0 2 1
       14 JUMPIFEQKB                       R0 TRUE ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K2 ["validateBundle"]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

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
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R4
       98 NEWTABLE                         R12 0 3
      100 MOVE                             R13 R7
      101 GETTABLEKS                       R14 R4 K19 ["validateBundle"]
      103 MOVE                             R15 R3
      104 SETLIST                          R12 R13 3 [1]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 2
      108 GETTABLEKS                       R11 R11 K6 ["useMemo"]
      110 NEWCLOSURE                       R12 P3
      111 CAPTURE                          UPVAL U7
      112 CAPTURE                          VAL R10
      113 NEWTABLE                         R13 0 1
      115 MOVE                             R14 R10
      116 SETLIST                          R13 R14 1 [1]
      118 CALL                             R11 2 1
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R12 R12 K16 ["useEffect"]
      122 MOVE                             R13 R11
      123 NEWTABLE                         R14 0 3
      125 GETTABLEKS                       R15 R0 K2 ["Avatar"]
      127 GETTABLEKS                       R15 R15 K8 ["LatestWorldModelHash"]
      129 GETTABLEKS                       R16 R0 K2 ["Avatar"]
      131 GETTABLEKS                       R16 R16 K9 ["WorldModelScale"]
      133 GETTABLEKS                       R17 R0 K2 ["Avatar"]
      135 GETTABLEKS                       R17 R17 K10 ["ProportionalScale"]
      137 SETLIST                          R14 R15 3 [1]
      139 CALL                             R12 2 0
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R12 R12 K16 ["useEffect"]
      143 NEWCLOSURE                       R13 P4
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 NEWTABLE                         R14 0 1
      148 MOVE                             R15 R3
      149 SETLIST                          R14 R15 1 [1]
      151 CALL                             R12 2 0
      152 GETUPVAL                         R12 8
      153 MOVE                             R13 R3
      154 CALL                             R12 1 1
      155 GETUPVAL                         R13 9
      156 MOVE                             R14 R1
      157 LOADK                            R15 K20 ["UGCValidation"]
      158 LOADK                            R16 K21 ["WarningLongTitle"]
      159 MOVE                             R17 R9
      160 CALL                             R13 4 1
      161 GETUPVAL                         R14 10
      162 MOVE                             R15 R3
      163 LOADK                            R16 K22 ["ValidationResultReported"]
      164 LOADB                            R17 0
      165 CALL                             R14 3 2
      166 GETUPVAL                         R16 10
      167 MOVE                             R17 R3
      168 GETUPVAL                         R18 6
      169 GETTABLEKS                       R18 R18 K23 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      171 LOADNIL                          R19
      172 CALL                             R16 3 1
      173 LOADB                            R17 0
      174 JUMPIFEQKNIL                     R7 ; [+3]
      176 GETTABLEKS                       R17 R7 K24 ["completed"]
      178 GETUPVAL                         R18 2
      179 GETTABLEKS                       R18 R18 K18 ["useCallback"]
      181 NEWCLOSURE                       R19 P5
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R3
      184 NEWTABLE                         R20 0 1
      186 MOVE                             R21 R3
      187 SETLIST                          R20 R21 1 [1]
      189 CALL                             R18 2 1
      190 GETUPVAL                         R19 11
      191 NAMECALL                         R19 R19 K0 ["use"]
      193 CALL                             R19 1 1
      194 GETUPVAL                         R20 2
      195 GETTABLEKS                       R20 R20 K16 ["useEffect"]
      197 NEWCLOSURE                       R21 P6
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R16
      206 NEWTABLE                         R22 0 1
      208 MOVE                             R23 R17
      209 SETLIST                          R22 R23 1 [1]
      211 CALL                             R20 2 0
      212 GETUPVAL                         R20 2
      213 GETTABLEKS                       R20 R20 K25 ["createElement"]
      215 GETUPVAL                         R21 12
      216 DUPTABLE                         R22 K28 [{"Position", "Size"}]
      217 GETTABLEKS                       R23 R2 K26 ["Position"]
      219 SETTABLEKS                       R23 R22 K26 ["Position"]
      221 GETTABLEKS                       R23 R2 K27 ["Size"]
      223 SETTABLEKS                       R23 R22 K27 ["Size"]
      225 DUPTABLE                         R23 K32 [{"Alert", "StatusIcon", "FullDetails"}]
      226 LOADB                            R24 0
      227 JUMPIFEQKNIL                     R8 ; [+42]
      229 LOADB                            R24 0
      230 LOADN                            R25 0
      231 JUMPIFNOTLT                      R25 R9 ; [+38]
      233 GETTABLEKS                       R24 R5 K33 ["enabled"]
      235 JUMPIFNOT                        R24 ; [+34]
      236 GETUPVAL                         R24 2
      237 GETTABLEKS                       R24 R24 K25 ["createElement"]
      239 GETUPVAL                         R25 13
      240 DUPTABLE                         R26 K40 [{["Title"], ["ShortTitle"], ["PrimaryAction"], ["OnClose"], ["Style"] = "WarningLong"}]
      241 SETTABLEKS                       R13 R26 K34 ["Title"]
      243 GETUPVAL                         R27 9
      244 MOVE                             R28 R1
      245 LOADK                            R29 K20 ["UGCValidation"]
      246 LOADK                            R30 K41 ["WarningShortTitle"]
      247 MOVE                             R31 R9
      248 CALL                             R27 4 1
      249 SETTABLEKS                       R27 R26 K35 ["ShortTitle"]
      251 DUPTABLE                         R27 K44 [{"Text", "OnClick"}]
      252 LOADK                            R30 K20 ["UGCValidation"]
      253 LOADK                            R31 K45 ["WarningAction"]
      254 NAMECALL                         R28 R1 K46 ["getText"]
      256 CALL                             R28 3 1
      257 SETTABLEKS                       R28 R27 K42 ["Text"]
      259 GETTABLEKS                       R28 R6 K47 ["enable"]
      261 SETTABLEKS                       R28 R27 K43 ["OnClick"]
      263 SETTABLEKS                       R27 R26 K36 ["PrimaryAction"]
      265 GETTABLEKS                       R27 R5 K48 ["disable"]
      267 SETTABLEKS                       R27 R26 K37 ["OnClose"]
      269 CALL                             R24 2 1
      270 SETTABLEKS                       R24 R23 K29 ["Alert"]
      272 LOADN                            R25 0
      273 JUMPIFNOTLT                      R25 R9 ; [+17]
      275 GETTABLEKS                       R25 R5 K33 ["enabled"]
      277 JUMPIF                           R25 ; [+13]
      278 GETUPVAL                         R24 2
      279 GETTABLEKS                       R24 R24 K25 ["createElement"]
      281 GETUPVAL                         R25 14
      282 DUPTABLE                         R26 K51 [{["Style"] = "Failure", ["TooltipText"], ["OnClick"]}]
      283 SETTABLEKS                       R13 R26 K50 ["TooltipText"]
      285 GETTABLEKS                       R27 R6 K47 ["enable"]
      287 SETTABLEKS                       R27 R26 K43 ["OnClick"]
      289 CALL                             R24 2 1
      290 JUMP                             ; [+51]
      291 JUMPIFNOTEQKN                    R9 K52 [0] ; [+24]
      293 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      295 JUMPIFEQKNIL                     R25 ; [+20]
      297 JUMPIFEQKNIL                     R7 ; [+18]
      299 GETTABLEKS                       R25 R7 K24 ["completed"]
      301 JUMPIFNOT                        R25 ; [+14]
      302 GETUPVAL                         R24 2
      303 GETTABLEKS                       R24 R24 K25 ["createElement"]
      305 GETUPVAL                         R25 14
      306 DUPTABLE                         R26 K54 [{["Style"] = "Success", ["TooltipText"]}]
      307 LOADK                            R29 K20 ["UGCValidation"]
      308 LOADK                            R30 K55 ["SuccessTooltip"]
      309 NAMECALL                         R27 R1 K46 ["getText"]
      311 CALL                             R27 3 1
      312 SETTABLEKS                       R27 R26 K50 ["TooltipText"]
      314 CALL                             R24 2 1
      315 JUMP                             ; [+26]
      316 JUMPIFNOTEQKN                    R9 K52 [0] ; [+24]
      318 GETTABLEKS                       R25 R4 K13 ["canUploadBundles"]
      320 JUMPIFEQKNIL                     R25 ; [+20]
      322 JUMPIFEQKNIL                     R7 ; [+18]
      324 GETTABLEKS                       R25 R7 K24 ["completed"]
      326 JUMPIF                           R25 ; [+14]
      327 GETUPVAL                         R24 2
      328 GETTABLEKS                       R24 R24 K25 ["createElement"]
      330 GETUPVAL                         R25 14
      331 DUPTABLE                         R26 K57 [{["Style"] = "InProgress", ["TooltipText"]}]
      332 LOADK                            R29 K20 ["UGCValidation"]
      333 LOADK                            R30 K58 ["InProgressTooltip"]
      334 NAMECALL                         R27 R1 K46 ["getText"]
      336 CALL                             R27 3 1
      337 SETTABLEKS                       R27 R26 K50 ["TooltipText"]
      339 CALL                             R24 2 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R24
      342 SETTABLEKS                       R24 R23 K30 ["StatusIcon"]
      344 LOADB                            R24 0
      345 JUMPIFEQKNIL                     R8 ; [+26]
      347 LOADB                            R24 0
      348 LOADN                            R25 0
      349 JUMPIFNOTLT                      R25 R9 ; [+22]
      351 GETTABLEKS                       R24 R6 K33 ["enabled"]
      353 JUMPIFNOT                        R24 ; [+18]
      354 GETUPVAL                         R24 2
      355 GETTABLEKS                       R24 R24 K25 ["createElement"]
      357 GETUPVAL                         R25 15
      358 DUPTABLE                         R26 K62 [{"Errors", "OnClose", "RunValidation", "ValidationCompleted"}]
      359 GETTABLEKS                       R27 R8 K12 ["errors"]
      361 SETTABLEKS                       R27 R26 K59 ["Errors"]
      363 GETTABLEKS                       R27 R6 K48 ["disable"]
      365 SETTABLEKS                       R27 R26 K37 ["OnClose"]
      367 SETTABLEKS                       R18 R26 K60 ["RunValidation"]
      369 SETTABLEKS                       R17 R26 K61 ["ValidationCompleted"]
      371 CALL                             R24 2 1
      372 SETTABLEKS                       R24 R23 K31 ["FullDetails"]
      374 CALL                             R20 3 -1
      375 RETURN                           R20 -1

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
       91 GETTABLEKS                       R12 R12 K21 ["Flags"]
       93 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerAutoValidatePlatformOnly"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K23 ["Hooks"]
      102 GETTABLEKS                       R13 R13 K24 ["useCreatedByAutoSetup"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K23 ["Hooks"]
      111 GETTABLEKS                       R14 R14 K25 ["useToggleState"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Src"]
      118 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      120 GETTABLEKS                       R15 R15 K26 ["useSerializedState"]
      122 CALL                             R14 1 1
      123 GETTABLEKS                       R15 R1 K27 ["UI"]
      125 GETTABLEKS                       R16 R15 K28 ["Alert"]
      127 GETTABLEKS                       R17 R15 K29 ["Pane"]
      129 GETTABLEKS                       R18 R1 K30 ["ContextServices"]
      131 GETTABLEKS                       R18 R18 K31 ["Analytics"]
      133 GETTABLEKS                       R19 R1 K30 ["ContextServices"]
      135 GETTABLEKS                       R19 R19 K32 ["Localization"]
      137 GETTABLEKS                       R20 R1 K30 ["ContextServices"]
      139 GETTABLEKS                       R20 R20 K33 ["Stylizer"]
      141 DUPCLOSURE                       R21 K34 [PROTO_7]
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R4
      158 RETURN                           R21 1
