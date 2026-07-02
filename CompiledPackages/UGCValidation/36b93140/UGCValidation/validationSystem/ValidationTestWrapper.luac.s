PROTO_0:
        0 DUPTABLE                         R5 K6 [{"validationJobId", "validationSource", "validationEnum", "status", "durationMs", "additional_info"}]
        1 GETTABLEKS                       R6 R1 K7 ["jobId"]
        3 SETTABLEKS                       R6 R5 K0 ["validationJobId"]
        5 GETTABLEKS                       R6 R1 K8 ["consumerConfig"]
        7 GETTABLEKS                       R6 R6 K9 ["source"]
        9 SETTABLEKS                       R6 R5 K1 ["validationSource"]
       11 SETTABLEKS                       R0 R5 K2 ["validationEnum"]
       13 SETTABLEKS                       R2 R5 K3 ["status"]
       15 SETTABLEKS                       R4 R5 K4 ["durationMs"]
       17 SETTABLEKS                       R3 R5 K5 ["additional_info"]
       19 GETUPVAL                         R6 0
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K11 [{"customFields"}]
       22 SETTABLEKS                       R5 R9 K10 ["customFields"]
       24 NAMECALL                         R6 R6 K12 ["LogEvent"]
       26 CALL                             R6 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R0 R7
        7 JUMPIFEQKNIL                     R8 ; [+7]
        9 GETTABLE                         R8 R0 R7
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K0 ["DATA_FETCH_FAILURE"]
       13 JUMPIFNOTEQ                      R8 R9 ; [+8]
       15 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K3 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-17]
       24 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 FASTCALL1                        TYPE R6 ; [+3]
       14 MOVE                             R8 R6
       15 GETIMPORT                        R7 K4 [type]
       17 CALL                             R7 1 1
       18 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+8]
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R8 R0 R5
       22 MOVE                             R9 R6
       23 CALL                             R7 2 1
       24 JUMPIF                           R7 ; [+2]
       25 LOADB                            R7 0
       26 RETURN                           R7 1
       27 FASTCALL1                        TYPE R6 ; [+3]
       28 MOVE                             R8 R6
       29 GETIMPORT                        R7 K4 [type]
       31 CALL                             R7 1 1
       32 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+9]
       34 GETTABLE                         R8 R0 R6
       35 FASTCALL1                        TONUMBER R8 ; [+2]
       36 GETIMPORT                        R7 K7 [tonumber]
       38 CALL                             R7 1 1
       39 JUMPIF                           R7 ; [+2]
       40 LOADB                            R7 0
       41 RETURN                           R7 1
       42 FORGLOOP                         R2 2 ; [-30]
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R3 R2 K0 ["complete"]
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 GETTABLEKS                       R7 R3 K1 ["status"]
        8 GETTABLEKS                       R8 R3 K2 ["telemetryContext"]
       10 GETTABLEKS                       R9 R3 K3 ["duration"]
       12 CALL                             R4 5 0
       13 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["run"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getValidationModule"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["new"]
        8 MOVE                             R5 R0
        9 GETUPVAL                         R7 2
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 CALL                             R4 2 1
       16 GETTABLEKS                       R5 R3 K2 ["prereqTests"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLE                         R10 R2 R9
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R11 R11 K3 ["Status"]
       25 GETTABLEKS                       R11 R11 K4 ["PASS"]
       27 JUMPIFEQ                         R10 R11 ; [+16]
       29 NAMECALL                         R11 R4 K5 ["complete"]
       31 CALL                             R11 1 1
       32 GETUPVAL                         R12 4
       33 MOVE                             R13 R0
       34 MOVE                             R14 R1
       35 GETTABLEKS                       R15 R11 K6 ["status"]
       37 GETTABLEKS                       R16 R11 K7 ["telemetryContext"]
       39 GETTABLEKS                       R17 R11 K8 ["duration"]
       41 CALL                             R12 5 0
       42 MOVE                             R10 R11
       43 RETURN                           R10 1
       44 FORGLOOP                         R5 2 ; [-24]
       46 GETUPVAL                         R5 5
       47 MOVE                             R6 R1
       48 GETTABLEKS                       R7 R3 K9 ["requiredData"]
       50 CALL                             R5 2 1
       51 LENGTH                           R6 R5
       52 LOADN                            R7 0
       53 JUMPIFNOTLT                      R7 R6 ; [+30]
       55 GETIMPORT                        R6 K12 [table.concat]
       57 MOVE                             R7 R5
       58 LOADK                            R8 K13 [", "]
       59 CALL                             R6 2 1
       60 LOADK                            R10 K14 ["Missing required data: %*"]
       61 MOVE                             R12 R6
       62 NAMECALL                         R10 R10 K15 ["format"]
       64 CALL                             R10 2 1
       65 MOVE                             R9 R10
       66 NAMECALL                         R7 R4 K16 ["err"]
       68 CALL                             R7 2 0
       69 NAMECALL                         R8 R4 K5 ["complete"]
       71 CALL                             R8 1 1
       72 GETUPVAL                         R9 4
       73 MOVE                             R10 R0
       74 MOVE                             R11 R1
       75 GETTABLEKS                       R12 R8 K6 ["status"]
       77 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
       79 GETTABLEKS                       R14 R8 K8 ["duration"]
       81 CALL                             R9 5 0
       82 MOVE                             R7 R8
       83 RETURN                           R7 1
       84 GETUPVAL                         R6 2
       85 CALL                             R6 0 1
       86 JUMPIFNOT                        R6 ; [+91]
       87 GETTABLEKS                       R6 R3 K17 ["isAssetQualityModule"]
       89 JUMPIFNOT                        R6 ; [+237]
       90 GETTABLEKS                       R7 R1 K18 ["aqsSummaryData"]
       92 GETTABLE                         R6 R7 R0
       93 JUMPIFNOT                        R6 ; [+233]
       94 GETTABLEKS                       R7 R6 K19 ["Error"]
       96 JUMPIFNOT                        R7 ; [+230]
       97 LOADB                            R7 0
       98 GETTABLEKS                       R8 R6 K19 ["Error"]
      100 LOADNIL                          R9
      101 LOADNIL                          R10
      102 FORGPREP                         R8
      103 GETTABLEKS                       R14 R3 K20 ["knownAqsUserErrors"]
      105 GETTABLE                         R13 R14 R12
      106 JUMPIFEQKNIL                     R13 ; [+8]
      108 GETTABLEKS                       R16 R3 K20 ["knownAqsUserErrors"]
      110 GETTABLE                         R15 R16 R12
      111 NAMECALL                         R13 R4 K21 ["fail"]
      113 CALL                             R13 2 0
      114 JUMP                             ; [+45]
      115 GETIMPORT                        R13 K23 [table.find]
      117 GETUPVAL                         R14 6
      118 GETTABLEKS                       R14 R14 K24 ["AQSInternalErrorEnum"]
      120 MOVE                             R15 R12
      121 CALL                             R13 2 1
      122 JUMPIFEQKNIL                     R13 ; [+13]
      124 JUMPIFNOTEQKB                    R7 FALSE ; [+11]
      126 GETUPVAL                         R15 7
      127 GETTABLEKS                       R15 R15 K25 ["Keys"]
      129 GETTABLEKS                       R15 R15 K26 ["AQSInternalError"]
      131 NAMECALL                         R13 R4 K21 ["fail"]
      133 CALL                             R13 2 0
      134 LOADB                            R7 1
      135 JUMP                             ; [+24]
      136 LOADK                            R16 K27 ["Unexpected error enum %*"]
      137 MOVE                             R18 R12
      138 NAMECALL                         R16 R16 K15 ["format"]
      140 CALL                             R16 2 1
      141 MOVE                             R15 R16
      142 NAMECALL                         R13 R4 K16 ["err"]
      144 CALL                             R13 2 0
      145 NAMECALL                         R14 R4 K5 ["complete"]
      147 CALL                             R14 1 1
      148 GETUPVAL                         R15 4
      149 MOVE                             R16 R0
      150 MOVE                             R17 R1
      151 GETTABLEKS                       R18 R14 K6 ["status"]
      153 GETTABLEKS                       R19 R14 K7 ["telemetryContext"]
      155 GETTABLEKS                       R20 R14 K8 ["duration"]
      157 CALL                             R15 5 0
      158 MOVE                             R13 R14
      159 RETURN                           R13 1
      160 FORGLOOP                         R8 2 ; [-58]
      162 NAMECALL                         R9 R4 K5 ["complete"]
      164 CALL                             R9 1 1
      165 GETUPVAL                         R10 4
      166 MOVE                             R11 R0
      167 MOVE                             R12 R1
      168 GETTABLEKS                       R13 R9 K6 ["status"]
      170 GETTABLEKS                       R14 R9 K7 ["telemetryContext"]
      172 GETTABLEKS                       R15 R9 K8 ["duration"]
      174 CALL                             R10 5 0
      175 MOVE                             R8 R9
      176 RETURN                           R8 1
      177 JUMP                             ; [+149]
      178 GETUPVAL                         R6 2
      179 CALL                             R6 0 1
      180 JUMPIF                           R6 ; [+146]
      181 GETIMPORT                        R6 K29 [next]
      183 GETTABLEKS                       R7 R3 K30 ["expectedAqsData"]
      185 CALL                             R6 1 1
      186 JUMPIFEQKNIL                     R6 ; [+140]
      188 LOADB                            R6 0
      189 GETTABLEKS                       R7 R3 K30 ["expectedAqsData"]
      191 LOADNIL                          R8
      192 LOADNIL                          R9
      193 FORGPREP                         R7
      194 GETTABLEKS                       R13 R1 K18 ["aqsSummaryData"]
      196 GETTABLE                         R12 R13 R10
      197 LOADB                            R13 0
      198 JUMPIFNOT                        R12 ; [+84]
      199 GETTABLEKS                       R14 R12 K19 ["Error"]
      201 JUMPIFNOT                        R14 ; [+81]
      202 GETTABLEKS                       R14 R12 K19 ["Error"]
      204 LOADNIL                          R15
      205 LOADNIL                          R16
      206 FORGPREP                         R14
      207 GETTABLEKS                       R20 R3 K20 ["knownAqsUserErrors"]
      209 GETTABLE                         R19 R20 R18
      210 JUMPIFEQKNIL                     R19 ; [+9]
      212 GETTABLEKS                       R22 R3 K20 ["knownAqsUserErrors"]
      214 GETTABLE                         R21 R22 R18
      215 NAMECALL                         R19 R4 K21 ["fail"]
      217 CALL                             R19 2 0
      218 LOADB                            R6 1
      219 JUMP                             ; [+46]
      220 GETIMPORT                        R19 K23 [table.find]
      222 GETUPVAL                         R20 6
      223 GETTABLEKS                       R20 R20 K24 ["AQSInternalErrorEnum"]
      225 MOVE                             R21 R18
      226 CALL                             R19 2 1
      227 JUMPIFEQKNIL                     R19 ; [+14]
      229 JUMPIFNOTEQKB                    R13 FALSE ; [+12]
      231 GETUPVAL                         R21 7
      232 GETTABLEKS                       R21 R21 K25 ["Keys"]
      234 GETTABLEKS                       R21 R21 K26 ["AQSInternalError"]
      236 NAMECALL                         R19 R4 K21 ["fail"]
      238 CALL                             R19 2 0
      239 LOADB                            R6 1
      240 LOADB                            R13 1
      241 JUMP                             ; [+24]
      242 LOADK                            R22 K27 ["Unexpected error enum %*"]
      243 MOVE                             R24 R18
      244 NAMECALL                         R22 R22 K15 ["format"]
      246 CALL                             R22 2 1
      247 MOVE                             R21 R22
      248 NAMECALL                         R19 R4 K16 ["err"]
      250 CALL                             R19 2 0
      251 NAMECALL                         R20 R4 K5 ["complete"]
      253 CALL                             R20 1 1
      254 GETUPVAL                         R21 4
      255 MOVE                             R22 R0
      256 MOVE                             R23 R1
      257 GETTABLEKS                       R24 R20 K6 ["status"]
      259 GETTABLEKS                       R25 R20 K7 ["telemetryContext"]
      261 GETTABLEKS                       R26 R20 K8 ["duration"]
      263 CALL                             R21 5 0
      264 MOVE                             R19 R20
      265 RETURN                           R19 1
      266 FORGLOOP                         R14 2 ; [-60]
      268 NAMECALL                         R15 R4 K5 ["complete"]
      270 CALL                             R15 1 1
      271 GETUPVAL                         R16 4
      272 MOVE                             R17 R0
      273 MOVE                             R18 R1
      274 GETTABLEKS                       R19 R15 K6 ["status"]
      276 GETTABLEKS                       R20 R15 K7 ["telemetryContext"]
      278 GETTABLEKS                       R21 R15 K8 ["duration"]
      280 CALL                             R16 5 0
      281 MOVE                             R14 R15
      282 RETURN                           R14 1
      283 FORGLOOP                         R7 2 ; [-90]
      285 JUMPIFNOT                        R6 ; [+15]
      286 NAMECALL                         R8 R4 K5 ["complete"]
      288 CALL                             R8 1 1
      289 GETUPVAL                         R9 4
      290 MOVE                             R10 R0
      291 MOVE                             R11 R1
      292 GETTABLEKS                       R12 R8 K6 ["status"]
      294 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      296 GETTABLEKS                       R14 R8 K8 ["duration"]
      298 CALL                             R9 5 0
      299 MOVE                             R7 R8
      300 RETURN                           R7 1
      301 GETUPVAL                         R7 8
      302 GETTABLEKS                       R8 R1 K18 ["aqsSummaryData"]
      304 GETTABLEKS                       R9 R3 K30 ["expectedAqsData"]
      306 CALL                             R7 2 1
      307 JUMPIF                           R7 ; [+19]
      308 LOADK                            R9 K31 ["Missing expected AQS schema"]
      309 NAMECALL                         R7 R4 K16 ["err"]
      311 CALL                             R7 2 0
      312 NAMECALL                         R8 R4 K5 ["complete"]
      314 CALL                             R8 1 1
      315 GETUPVAL                         R9 4
      316 MOVE                             R10 R0
      317 MOVE                             R11 R1
      318 GETTABLEKS                       R12 R8 K6 ["status"]
      320 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      322 GETTABLEKS                       R14 R8 K8 ["duration"]
      324 CALL                             R9 5 0
      325 MOVE                             R7 R8
      326 RETURN                           R7 1
      327 NAMECALL                         R6 R4 K32 ["begin"]
      329 CALL                             R6 1 0
      330 GETUPVAL                         R7 5
      331 MOVE                             R8 R1
      332 GETTABLEKS                       R9 R3 K33 ["conditionalData"]
      334 CALL                             R7 2 1
      335 LENGTH                           R6 R7
      336 LOADN                            R7 0
      337 JUMPIFNOTLT                      R7 R6 ; [+16]
      339 NAMECALL                         R7 R4 K5 ["complete"]
      341 CALL                             R7 1 1
      342 GETUPVAL                         R8 4
      343 MOVE                             R9 R0
      344 MOVE                             R10 R1
      345 GETTABLEKS                       R11 R7 K6 ["status"]
      347 GETTABLEKS                       R12 R7 K7 ["telemetryContext"]
      349 GETTABLEKS                       R13 R7 K8 ["duration"]
      351 CALL                             R8 5 0
      352 MOVE                             R6 R7
      353 RETURN                           R6 1
      354 GETIMPORT                        R6 K35 [pcall]
      356 NEWCLOSURE                       R7 P0
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R4
      359 CAPTURE                          VAL R1
      360 CALL                             R6 1 2
      361 JUMPIF                           R6 ; [+90]
      362 GETUPVAL                         R8 9
      363 CALL                             R8 0 1
      364 JUMPIFNOT                        R8 ; [+16]
      365 FASTCALL1                        TYPE R7 ; [+3]
      366 MOVE                             R9 R7
      367 GETIMPORT                        R8 K37 [type]
      369 CALL                             R8 1 1
      370 JUMPIFNOTEQKS                    R8 K10 ["table"] ; [+10]
      372 GETTABLEKS                       R8 R7 K38 ["__forceError"]
      374 JUMPIFNOT                        R8 ; [+6]
      375 GETIMPORT                        R8 K40 [error]
      377 GETTABLEKS                       R9 R7 K41 ["message"]
      379 LOADN                            R10 0
      380 CALL                             R8 2 0
      381 GETUPVAL                         R8 10
      382 CALL                             R8 0 1
      383 JUMPIFNOT                        R8 ; [+47]
      384 FASTCALL1                        TYPE R7 ; [+3]
      385 MOVE                             R9 R7
      386 GETIMPORT                        R8 K37 [type]
      388 CALL                             R8 1 1
      389 JUMPIFNOTEQKS                    R8 K10 ["table"] ; [+41]
      391 GETTABLEKS                       R8 R7 K42 ["__fetchError"]
      393 JUMPIFNOT                        R8 ; [+37]
      394 GETTABLEKS                       R8 R1 K43 ["consumerConfig"]
      396 GETTABLEKS                       R8 R8 K44 ["consumerEnv"]
      398 GETUPVAL                         R9 3
      399 GETTABLEKS                       R9 R9 K45 ["ConsumerEnv"]
      401 GETTABLEKS                       R9 R9 K46 ["Backend"]
      403 JUMPIFNOTEQ                      R8 R9 ; [+7]
      405 GETIMPORT                        R8 K40 [error]
      407 GETTABLEKS                       R9 R7 K41 ["message"]
      409 LOADN                            R10 0
      410 CALL                             R8 2 0
      411 GETTABLEKS                       R10 R7 K41 ["message"]
      413 NAMECALL                         R8 R4 K16 ["err"]
      415 CALL                             R8 2 0
      416 NAMECALL                         R9 R4 K5 ["complete"]
      418 CALL                             R9 1 1
      419 GETUPVAL                         R10 4
      420 MOVE                             R11 R0
      421 MOVE                             R12 R1
      422 GETTABLEKS                       R13 R9 K6 ["status"]
      424 GETTABLEKS                       R14 R9 K7 ["telemetryContext"]
      426 GETTABLEKS                       R15 R9 K8 ["duration"]
      428 CALL                             R10 5 0
      429 MOVE                             R8 R9
      430 RETURN                           R8 1
      431 GETUPVAL                         R8 11
      432 CALL                             R8 0 1
      433 JUMPIFNOT                        R8 ; [+14]
      434 GETIMPORT                        R8 K48 [print]
      436 LOADK                            R9 K49 ["Validation error:"]
      437 MOVE                             R10 R7
      438 CALL                             R8 2 0
      439 GETIMPORT                        R8 K48 [print]
      441 LOADK                            R9 K50 ["As this is in debug mode, we will re-call the function for a full error trace: "]
      442 CALL                             R8 1 0
      443 GETTABLEKS                       R8 R3 K51 ["run"]
      445 MOVE                             R9 R4
      446 MOVE                             R10 R1
      447 CALL                             R8 2 0
      448 MOVE                             R10 R7
      449 NAMECALL                         R8 R4 K16 ["err"]
      451 CALL                             R8 2 0
      452 NAMECALL                         R9 R4 K5 ["complete"]
      454 CALL                             R9 1 1
      455 GETUPVAL                         R10 4
      456 MOVE                             R11 R0
      457 MOVE                             R12 R1
      458 GETTABLEKS                       R13 R9 K6 ["status"]
      460 GETTABLEKS                       R14 R9 K7 ["telemetryContext"]
      462 GETTABLEKS                       R15 R9 K8 ["duration"]
      464 CALL                             R10 5 0
      465 MOVE                             R8 R9
      466 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationModuleLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["dataFetchModules"]
       34 GETTABLEKS                       R5 R5 K11 ["FetchAllDesiredData"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K7 ["validationSystem"]
       41 GETTABLEKS                       R6 R6 K12 ["ValidationReporter"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K13 ["flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K13 ["flags"]
       55 GETTABLEKS                       R8 R8 K15 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K13 ["flags"]
       62 GETTABLEKS                       R9 R9 K16 ["getFFlagUGCValidateMigrateSchemaProperties"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K13 ["flags"]
       69 GETTABLEKS                       R10 R10 K17 ["getFFlagUGCValidationFetchErrorMethod"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K4 [require]
       74 GETTABLEKS                       R11 R0 K7 ["validationSystem"]
       76 GETTABLEKS                       R11 R11 K18 ["ValidationConstants"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K4 [require]
       81 GETTABLEKS                       R12 R0 K7 ["validationSystem"]
       83 GETTABLEKS                       R12 R12 K19 ["ErrorSourceStrings"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K21 [game]
       88 LOADK                            R14 K22 ["TelemetryService"]
       89 NAMECALL                         R12 R12 K23 ["GetService"]
       91 CALL                             R12 2 1
       92 GETIMPORT                        R13 K21 [game]
       94 LOADK                            R15 K24 ["SingleValidationTelemetryThrottleHundrethsPercent"]
       95 LOADN                            R16 10000
       96 NAMECALL                         R13 R13 K25 ["DefineFastInt"]
       98 CALL                             R13 3 0
       99 DUPTABLE                         R13 K35 [{["eventName"] = "UgcSingleValidationFinished", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Report single ugc validation result to EventIngest backend.", ["links"] = "https://create.roblox.com/docs/art/validation-errors"}]
      100 NEWTABLE                         R14 0 1
      102 LOADK                            R15 K36 ["EventIngest"]
      103 SETLIST                          R14 R15 1 [1]
      105 SETTABLEKS                       R14 R13 K28 ["backends"]
      107 GETIMPORT                        R14 K21 [game]
      109 LOADK                            R16 K24 ["SingleValidationTelemetryThrottleHundrethsPercent"]
      110 NAMECALL                         R14 R14 K37 ["GetFastInt"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K29 ["throttlingPercentage"]
      115 NEWTABLE                         R14 0 3
      117 LOADN                            R15 25
      118 LOADN                            R16 9
      119 LOADN                            R17 24
      120 SETLIST                          R14 R15 3 [1]
      122 SETTABLEKS                       R14 R13 K30 ["lastUpdated"]
      124 DUPCLOSURE                       R14 K38 [PROTO_0]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R13
      127 DUPCLOSURE                       R15 K39 [PROTO_1]
      128 CAPTURE                          VAL R4
      129 DUPCLOSURE                       R16 K40 [PROTO_2]
      130 CAPTURE                          VAL R16
      131 DUPCLOSURE                       R17 K41 [PROTO_3]
      132 CAPTURE                          VAL R14
      133 DUPCLOSURE                       R18 K42 [PROTO_5]
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R6
      146 RETURN                           R18 1
