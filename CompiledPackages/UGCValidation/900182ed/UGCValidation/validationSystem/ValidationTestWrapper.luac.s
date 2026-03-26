PROTO_0:
        0 DUPTABLE                         R5 K6 [{"validationJobId", "validationSource", "validationEnum", "status", "durationMs", "additional_info"}]
        1 GETTABLEKS                       R6 R1 K7 ["jobId"]
        3 SETTABLEKS                       R6 R5 K0 ["validationJobId"]
        5 GETTABLEKS                       R7 R1 K8 ["consumerConfig"]
        7 GETTABLEKS                       R6 R7 K9 ["source"]
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
       10 GETUPVAL                         R10 0
       11 GETTABLEKS                       R9 R10 K0 ["DATA_FETCH_FAILURE"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["run"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getValidationModule"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["new"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R3 K2 ["prereqTests"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLE                         R10 R2 R9
       16 GETUPVAL                         R13 2
       17 GETTABLEKS                       R12 R13 K3 ["Status"]
       19 GETTABLEKS                       R11 R12 K4 ["PASS"]
       21 JUMPIFEQ                         R10 R11 ; [+16]
       23 NAMECALL                         R11 R4 K5 ["complete"]
       25 CALL                             R11 1 1
       26 GETUPVAL                         R12 3
       27 MOVE                             R13 R0
       28 MOVE                             R14 R1
       29 GETTABLEKS                       R15 R11 K6 ["status"]
       31 GETTABLEKS                       R16 R11 K7 ["telemetryContext"]
       33 GETTABLEKS                       R17 R11 K8 ["duration"]
       35 CALL                             R12 5 0
       36 MOVE                             R10 R11
       37 RETURN                           R10 1
       38 FORGLOOP                         R5 2 ; [-24]
       40 GETUPVAL                         R5 4
       41 MOVE                             R6 R1
       42 GETTABLEKS                       R7 R3 K9 ["requiredData"]
       44 CALL                             R5 2 1
       45 LENGTH                           R6 R5
       46 LOADN                            R7 0
       47 JUMPIFNOTLT                      R7 R6 ; [+30]
       49 GETIMPORT                        R6 K12 [table.concat]
       51 MOVE                             R7 R5
       52 LOADK                            R8 K13 [", "]
       53 CALL                             R6 2 1
       54 LOADK                            R10 K14 ["Missing required data: %*"]
       55 MOVE                             R12 R6
       56 NAMECALL                         R10 R10 K15 ["format"]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 NAMECALL                         R7 R4 K16 ["err"]
       62 CALL                             R7 2 0
       63 NAMECALL                         R8 R4 K5 ["complete"]
       65 CALL                             R8 1 1
       66 GETUPVAL                         R9 3
       67 MOVE                             R10 R0
       68 MOVE                             R11 R1
       69 GETTABLEKS                       R12 R8 K6 ["status"]
       71 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
       73 GETTABLEKS                       R14 R8 K8 ["duration"]
       75 CALL                             R9 5 0
       76 MOVE                             R7 R8
       77 RETURN                           R7 1
       78 GETIMPORT                        R6 K18 [next]
       80 GETTABLEKS                       R7 R3 K19 ["expectedAqsData"]
       82 CALL                             R6 1 1
       83 JUMPIFEQKNIL                     R6 ; [+168]
       85 LOADB                            R6 0
       86 GETTABLEKS                       R7 R3 K19 ["expectedAqsData"]
       88 LOADNIL                          R8
       89 LOADNIL                          R9
       90 FORGPREP                         R7
       91 GETTABLEKS                       R13 R1 K20 ["aqsSummaryData"]
       93 GETTABLE                         R12 R13 R10
       94 LOADB                            R13 0
       95 JUMPIFNOT                        R12 ; [+112]
       96 GETTABLEKS                       R14 R12 K21 ["Error"]
       98 JUMPIFNOT                        R14 ; [+109]
       99 GETTABLEKS                       R14 R12 K21 ["Error"]
      101 LOADNIL                          R15
      102 LOADNIL                          R16
      103 FORGPREP                         R14
      104 GETTABLEKS                       R20 R3 K22 ["knownAqsUserErrors"]
      106 GETTABLE                         R19 R20 R18
      107 JUMPIFEQKNIL                     R19 ; [+9]
      109 GETTABLEKS                       R22 R3 K22 ["knownAqsUserErrors"]
      111 GETTABLE                         R21 R22 R18
      112 NAMECALL                         R19 R4 K23 ["fail"]
      114 CALL                             R19 2 0
      115 LOADB                            R6 1
      116 JUMP                             ; [+74]
      117 GETUPVAL                         R19 5
      118 CALL                             R19 0 1
      119 JUMPIFNOT                        R19 ; [+47]
      120 GETIMPORT                        R19 K25 [table.find]
      122 GETUPVAL                         R21 6
      123 GETTABLEKS                       R20 R21 K26 ["AQSInternalErrorEnum"]
      125 MOVE                             R21 R18
      126 CALL                             R19 2 1
      127 JUMPIFEQKNIL                     R19 ; [+14]
      129 JUMPIFNOTEQKB                    R13 FALSE ; [+12]
      131 GETUPVAL                         R23 7
      132 GETTABLEKS                       R22 R23 K27 ["Keys"]
      134 GETTABLEKS                       R21 R22 K28 ["AQSInternalError"]
      136 NAMECALL                         R19 R4 K23 ["fail"]
      138 CALL                             R19 2 0
      139 LOADB                            R6 1
      140 LOADB                            R13 1
      141 JUMP                             ; [+49]
      142 LOADK                            R22 K29 ["Unexpected error enum %*"]
      143 MOVE                             R24 R18
      144 NAMECALL                         R22 R22 K15 ["format"]
      146 CALL                             R22 2 1
      147 MOVE                             R21 R22
      148 NAMECALL                         R19 R4 K16 ["err"]
      150 CALL                             R19 2 0
      151 NAMECALL                         R20 R4 K5 ["complete"]
      153 CALL                             R20 1 1
      154 GETUPVAL                         R21 3
      155 MOVE                             R22 R0
      156 MOVE                             R23 R1
      157 GETTABLEKS                       R24 R20 K6 ["status"]
      159 GETTABLEKS                       R25 R20 K7 ["telemetryContext"]
      161 GETTABLEKS                       R26 R20 K8 ["duration"]
      163 CALL                             R21 5 0
      164 MOVE                             R19 R20
      165 RETURN                           R19 1
      166 JUMP                             ; [+24]
      167 LOADK                            R22 K29 ["Unexpected error enum %*"]
      168 MOVE                             R24 R18
      169 NAMECALL                         R22 R22 K15 ["format"]
      171 CALL                             R22 2 1
      172 MOVE                             R21 R22
      173 NAMECALL                         R19 R4 K16 ["err"]
      175 CALL                             R19 2 0
      176 NAMECALL                         R20 R4 K5 ["complete"]
      178 CALL                             R20 1 1
      179 GETUPVAL                         R21 3
      180 MOVE                             R22 R0
      181 MOVE                             R23 R1
      182 GETTABLEKS                       R24 R20 K6 ["status"]
      184 GETTABLEKS                       R25 R20 K7 ["telemetryContext"]
      186 GETTABLEKS                       R26 R20 K8 ["duration"]
      188 CALL                             R21 5 0
      189 MOVE                             R19 R20
      190 RETURN                           R19 1
      191 FORGLOOP                         R14 2 ; [-88]
      193 NAMECALL                         R15 R4 K5 ["complete"]
      195 CALL                             R15 1 1
      196 GETUPVAL                         R16 3
      197 MOVE                             R17 R0
      198 MOVE                             R18 R1
      199 GETTABLEKS                       R19 R15 K6 ["status"]
      201 GETTABLEKS                       R20 R15 K7 ["telemetryContext"]
      203 GETTABLEKS                       R21 R15 K8 ["duration"]
      205 CALL                             R16 5 0
      206 MOVE                             R14 R15
      207 RETURN                           R14 1
      208 FORGLOOP                         R7 2 ; [-118]
      210 JUMPIFNOT                        R6 ; [+15]
      211 NAMECALL                         R8 R4 K5 ["complete"]
      213 CALL                             R8 1 1
      214 GETUPVAL                         R9 3
      215 MOVE                             R10 R0
      216 MOVE                             R11 R1
      217 GETTABLEKS                       R12 R8 K6 ["status"]
      219 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      221 GETTABLEKS                       R14 R8 K8 ["duration"]
      223 CALL                             R9 5 0
      224 MOVE                             R7 R8
      225 RETURN                           R7 1
      226 GETUPVAL                         R7 8
      227 GETTABLEKS                       R8 R1 K20 ["aqsSummaryData"]
      229 GETTABLEKS                       R9 R3 K19 ["expectedAqsData"]
      231 CALL                             R7 2 1
      232 JUMPIF                           R7 ; [+19]
      233 LOADK                            R9 K30 ["Missing expected AQS schema"]
      234 NAMECALL                         R7 R4 K16 ["err"]
      236 CALL                             R7 2 0
      237 NAMECALL                         R8 R4 K5 ["complete"]
      239 CALL                             R8 1 1
      240 GETUPVAL                         R9 3
      241 MOVE                             R10 R0
      242 MOVE                             R11 R1
      243 GETTABLEKS                       R12 R8 K6 ["status"]
      245 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      247 GETTABLEKS                       R14 R8 K8 ["duration"]
      249 CALL                             R9 5 0
      250 MOVE                             R7 R8
      251 RETURN                           R7 1
      252 NAMECALL                         R6 R4 K31 ["begin"]
      254 CALL                             R6 1 0
      255 GETUPVAL                         R7 4
      256 MOVE                             R8 R1
      257 GETTABLEKS                       R9 R3 K32 ["conditionalData"]
      259 CALL                             R7 2 1
      260 LENGTH                           R6 R7
      261 LOADN                            R7 0
      262 JUMPIFNOTLT                      R7 R6 ; [+16]
      264 NAMECALL                         R7 R4 K5 ["complete"]
      266 CALL                             R7 1 1
      267 GETUPVAL                         R8 3
      268 MOVE                             R9 R0
      269 MOVE                             R10 R1
      270 GETTABLEKS                       R11 R7 K6 ["status"]
      272 GETTABLEKS                       R12 R7 K7 ["telemetryContext"]
      274 GETTABLEKS                       R13 R7 K8 ["duration"]
      276 CALL                             R8 5 0
      277 MOVE                             R6 R7
      278 RETURN                           R6 1
      279 GETIMPORT                        R6 K34 [pcall]
      281 NEWCLOSURE                       R7 P0
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R1
      285 CALL                             R6 1 2
      286 JUMPIF                           R6 ; [+21]
      287 GETUPVAL                         R8 9
      288 CALL                             R8 0 1
      289 JUMPIFNOT                        R8 ; [+14]
      290 GETIMPORT                        R8 K36 [print]
      292 LOADK                            R9 K37 ["Validation error:"]
      293 MOVE                             R10 R7
      294 CALL                             R8 2 0
      295 GETIMPORT                        R8 K36 [print]
      297 LOADK                            R9 K38 ["As this is in debug mode, we will re-call the function for a full error trace: "]
      298 CALL                             R8 1 0
      299 GETTABLEKS                       R8 R3 K39 ["run"]
      301 MOVE                             R9 R4
      302 MOVE                             R10 R1
      303 CALL                             R8 2 0
      304 MOVE                             R10 R7
      305 NAMECALL                         R8 R4 K16 ["err"]
      307 CALL                             R8 2 0
      308 NAMECALL                         R9 R4 K5 ["complete"]
      310 CALL                             R9 1 1
      311 GETUPVAL                         R10 3
      312 MOVE                             R11 R0
      313 MOVE                             R12 R1
      314 GETTABLEKS                       R13 R9 K6 ["status"]
      316 GETTABLEKS                       R14 R9 K7 ["telemetryContext"]
      318 GETTABLEKS                       R15 R9 K8 ["duration"]
      320 CALL                             R10 5 0
      321 MOVE                             R8 R9
      322 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       25 GETTABLEKS                       R4 R5 K9 ["ValidationModuleLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R7 R0 K7 ["validationSystem"]
       32 GETTABLEKS                       R6 R7 K10 ["dataFetchModules"]
       34 GETTABLEKS                       R5 R6 K11 ["FetchAllDesiredData"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K7 ["validationSystem"]
       41 GETTABLEKS                       R6 R7 K12 ["ValidationReporter"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K13 ["flags"]
       48 GETTABLEKS                       R7 R8 K14 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R9 R0 K13 ["flags"]
       55 GETTABLEKS                       R8 R9 K15 ["getFFlagUGCValidationUpdateHeadIsDynamic"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R10 R0 K7 ["validationSystem"]
       62 GETTABLEKS                       R9 R10 K16 ["ValidationConstants"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R11 R0 K7 ["validationSystem"]
       69 GETTABLEKS                       R10 R11 K17 ["ErrorSourceStrings"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K19 [game]
       74 LOADK                            R12 K20 ["TelemetryService"]
       75 NAMECALL                         R10 R10 K21 ["GetService"]
       77 CALL                             R10 2 1
       78 GETIMPORT                        R11 K19 [game]
       80 LOADK                            R13 K22 ["SingleValidationTelemetryThrottleHundrethsPercent"]
       81 LOADN                            R14 16
       82 NAMECALL                         R11 R11 K23 ["DefineFastInt"]
       84 CALL                             R11 3 0
       85 DUPTABLE                         R11 K30 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       86 LOADK                            R12 K31 ["UgcSingleValidationFinished"]
       87 SETTABLEKS                       R12 R11 K24 ["eventName"]
       89 NEWTABLE                         R12 0 1
       91 LOADK                            R13 K32 ["EventIngest"]
       92 SETLIST                          R12 R13 1 [1]
       94 SETTABLEKS                       R12 R11 K25 ["backends"]
       96 GETIMPORT                        R12 K19 [game]
       98 LOADK                            R14 K22 ["SingleValidationTelemetryThrottleHundrethsPercent"]
       99 NAMECALL                         R12 R12 K33 ["GetFastInt"]
      101 CALL                             R12 2 1
      102 SETTABLEKS                       R12 R11 K26 ["throttlingPercentage"]
      104 NEWTABLE                         R12 0 3
      106 LOADN                            R13 25
      107 LOADN                            R14 9
      108 LOADN                            R15 24
      109 SETLIST                          R12 R13 3 [1]
      111 SETTABLEKS                       R12 R11 K27 ["lastUpdated"]
      113 LOADK                            R12 K34 ["Report single ugc validation result to EventIngest backend."]
      114 SETTABLEKS                       R12 R11 K28 ["description"]
      116 LOADK                            R12 K35 ["https://create.roblox.com/docs/art/validation-errors"]
      117 SETTABLEKS                       R12 R11 K29 ["links"]
      119 DUPCLOSURE                       R12 K36 [PROTO_0]
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 DUPCLOSURE                       R13 K37 [PROTO_1]
      123 CAPTURE                          VAL R4
      124 DUPCLOSURE                       R14 K38 [PROTO_2]
      125 CAPTURE                          VAL R14
      126 DUPCLOSURE                       R15 K39 [PROTO_3]
      127 CAPTURE                          VAL R12
      128 DUPCLOSURE                       R16 K40 [PROTO_5]
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R6
      139 RETURN                           R16 1
