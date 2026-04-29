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
       83 JUMPIFEQKNIL                     R6 ; [+140]
       85 LOADB                            R6 0
       86 GETTABLEKS                       R7 R3 K19 ["expectedAqsData"]
       88 LOADNIL                          R8
       89 LOADNIL                          R9
       90 FORGPREP                         R7
       91 GETTABLEKS                       R13 R1 K20 ["aqsSummaryData"]
       93 GETTABLE                         R12 R13 R10
       94 LOADB                            R13 0
       95 JUMPIFNOT                        R12 ; [+84]
       96 GETTABLEKS                       R14 R12 K21 ["Error"]
       98 JUMPIFNOT                        R14 ; [+81]
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
      116 JUMP                             ; [+46]
      117 GETIMPORT                        R19 K25 [table.find]
      119 GETUPVAL                         R21 5
      120 GETTABLEKS                       R20 R21 K26 ["AQSInternalErrorEnum"]
      122 MOVE                             R21 R18
      123 CALL                             R19 2 1
      124 JUMPIFEQKNIL                     R19 ; [+14]
      126 JUMPIFNOTEQKB                    R13 FALSE ; [+12]
      128 GETUPVAL                         R23 6
      129 GETTABLEKS                       R22 R23 K27 ["Keys"]
      131 GETTABLEKS                       R21 R22 K28 ["AQSInternalError"]
      133 NAMECALL                         R19 R4 K23 ["fail"]
      135 CALL                             R19 2 0
      136 LOADB                            R6 1
      137 LOADB                            R13 1
      138 JUMP                             ; [+24]
      139 LOADK                            R22 K29 ["Unexpected error enum %*"]
      140 MOVE                             R24 R18
      141 NAMECALL                         R22 R22 K15 ["format"]
      143 CALL                             R22 2 1
      144 MOVE                             R21 R22
      145 NAMECALL                         R19 R4 K16 ["err"]
      147 CALL                             R19 2 0
      148 NAMECALL                         R20 R4 K5 ["complete"]
      150 CALL                             R20 1 1
      151 GETUPVAL                         R21 3
      152 MOVE                             R22 R0
      153 MOVE                             R23 R1
      154 GETTABLEKS                       R24 R20 K6 ["status"]
      156 GETTABLEKS                       R25 R20 K7 ["telemetryContext"]
      158 GETTABLEKS                       R26 R20 K8 ["duration"]
      160 CALL                             R21 5 0
      161 MOVE                             R19 R20
      162 RETURN                           R19 1
      163 FORGLOOP                         R14 2 ; [-60]
      165 NAMECALL                         R15 R4 K5 ["complete"]
      167 CALL                             R15 1 1
      168 GETUPVAL                         R16 3
      169 MOVE                             R17 R0
      170 MOVE                             R18 R1
      171 GETTABLEKS                       R19 R15 K6 ["status"]
      173 GETTABLEKS                       R20 R15 K7 ["telemetryContext"]
      175 GETTABLEKS                       R21 R15 K8 ["duration"]
      177 CALL                             R16 5 0
      178 MOVE                             R14 R15
      179 RETURN                           R14 1
      180 FORGLOOP                         R7 2 ; [-90]
      182 JUMPIFNOT                        R6 ; [+15]
      183 NAMECALL                         R8 R4 K5 ["complete"]
      185 CALL                             R8 1 1
      186 GETUPVAL                         R9 3
      187 MOVE                             R10 R0
      188 MOVE                             R11 R1
      189 GETTABLEKS                       R12 R8 K6 ["status"]
      191 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      193 GETTABLEKS                       R14 R8 K8 ["duration"]
      195 CALL                             R9 5 0
      196 MOVE                             R7 R8
      197 RETURN                           R7 1
      198 GETUPVAL                         R7 7
      199 GETTABLEKS                       R8 R1 K20 ["aqsSummaryData"]
      201 GETTABLEKS                       R9 R3 K19 ["expectedAqsData"]
      203 CALL                             R7 2 1
      204 JUMPIF                           R7 ; [+19]
      205 LOADK                            R9 K30 ["Missing expected AQS schema"]
      206 NAMECALL                         R7 R4 K16 ["err"]
      208 CALL                             R7 2 0
      209 NAMECALL                         R8 R4 K5 ["complete"]
      211 CALL                             R8 1 1
      212 GETUPVAL                         R9 3
      213 MOVE                             R10 R0
      214 MOVE                             R11 R1
      215 GETTABLEKS                       R12 R8 K6 ["status"]
      217 GETTABLEKS                       R13 R8 K7 ["telemetryContext"]
      219 GETTABLEKS                       R14 R8 K8 ["duration"]
      221 CALL                             R9 5 0
      222 MOVE                             R7 R8
      223 RETURN                           R7 1
      224 NAMECALL                         R6 R4 K31 ["begin"]
      226 CALL                             R6 1 0
      227 GETUPVAL                         R7 4
      228 MOVE                             R8 R1
      229 GETTABLEKS                       R9 R3 K32 ["conditionalData"]
      231 CALL                             R7 2 1
      232 LENGTH                           R6 R7
      233 LOADN                            R7 0
      234 JUMPIFNOTLT                      R7 R6 ; [+16]
      236 NAMECALL                         R7 R4 K5 ["complete"]
      238 CALL                             R7 1 1
      239 GETUPVAL                         R8 3
      240 MOVE                             R9 R0
      241 MOVE                             R10 R1
      242 GETTABLEKS                       R11 R7 K6 ["status"]
      244 GETTABLEKS                       R12 R7 K7 ["telemetryContext"]
      246 GETTABLEKS                       R13 R7 K8 ["duration"]
      248 CALL                             R8 5 0
      249 MOVE                             R6 R7
      250 RETURN                           R6 1
      251 GETIMPORT                        R6 K34 [pcall]
      253 NEWCLOSURE                       R7 P0
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R4
      256 CAPTURE                          VAL R1
      257 CALL                             R6 1 2
      258 JUMPIF                           R6 ; [+21]
      259 GETUPVAL                         R8 8
      260 CALL                             R8 0 1
      261 JUMPIFNOT                        R8 ; [+14]
      262 GETIMPORT                        R8 K36 [print]
      264 LOADK                            R9 K37 ["Validation error:"]
      265 MOVE                             R10 R7
      266 CALL                             R8 2 0
      267 GETIMPORT                        R8 K36 [print]
      269 LOADK                            R9 K38 ["As this is in debug mode, we will re-call the function for a full error trace: "]
      270 CALL                             R8 1 0
      271 GETTABLEKS                       R8 R3 K39 ["run"]
      273 MOVE                             R9 R4
      274 MOVE                             R10 R1
      275 CALL                             R8 2 0
      276 MOVE                             R10 R7
      277 NAMECALL                         R8 R4 K16 ["err"]
      279 CALL                             R8 2 0
      280 NAMECALL                         R9 R4 K5 ["complete"]
      282 CALL                             R9 1 1
      283 GETUPVAL                         R10 3
      284 MOVE                             R11 R0
      285 MOVE                             R12 R1
      286 GETTABLEKS                       R13 R9 K6 ["status"]
      288 GETTABLEKS                       R14 R9 K7 ["telemetryContext"]
      290 GETTABLEKS                       R15 R9 K8 ["duration"]
      292 CALL                             R10 5 0
      293 MOVE                             R8 R9
      294 RETURN                           R8 1

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
       53 GETTABLEKS                       R9 R0 K7 ["validationSystem"]
       55 GETTABLEKS                       R8 R9 K15 ["ValidationConstants"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R10 R0 K7 ["validationSystem"]
       62 GETTABLEKS                       R9 R10 K16 ["ErrorSourceStrings"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K18 [game]
       67 LOADK                            R11 K19 ["TelemetryService"]
       68 NAMECALL                         R9 R9 K20 ["GetService"]
       70 CALL                             R9 2 1
       71 GETIMPORT                        R10 K18 [game]
       73 LOADK                            R12 K21 ["SingleValidationTelemetryThrottleHundrethsPercent"]
       74 LOADN                            R13 16
       75 NAMECALL                         R10 R10 K22 ["DefineFastInt"]
       77 CALL                             R10 3 0
       78 DUPTABLE                         R10 K29 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       79 LOADK                            R11 K30 ["UgcSingleValidationFinished"]
       80 SETTABLEKS                       R11 R10 K23 ["eventName"]
       82 NEWTABLE                         R11 0 1
       84 LOADK                            R12 K31 ["EventIngest"]
       85 SETLIST                          R11 R12 1 [1]
       87 SETTABLEKS                       R11 R10 K24 ["backends"]
       89 GETIMPORT                        R11 K18 [game]
       91 LOADK                            R13 K21 ["SingleValidationTelemetryThrottleHundrethsPercent"]
       92 NAMECALL                         R11 R11 K32 ["GetFastInt"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K25 ["throttlingPercentage"]
       97 NEWTABLE                         R11 0 3
       99 LOADN                            R12 25
      100 LOADN                            R13 9
      101 LOADN                            R14 24
      102 SETLIST                          R11 R12 3 [1]
      104 SETTABLEKS                       R11 R10 K26 ["lastUpdated"]
      106 LOADK                            R11 K33 ["Report single ugc validation result to EventIngest backend."]
      107 SETTABLEKS                       R11 R10 K27 ["description"]
      109 LOADK                            R11 K34 ["https://create.roblox.com/docs/art/validation-errors"]
      110 SETTABLEKS                       R11 R10 K28 ["links"]
      112 DUPCLOSURE                       R11 K35 [PROTO_0]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 DUPCLOSURE                       R12 K36 [PROTO_1]
      116 CAPTURE                          VAL R4
      117 DUPCLOSURE                       R13 K37 [PROTO_2]
      118 CAPTURE                          VAL R13
      119 DUPCLOSURE                       R14 K38 [PROTO_3]
      120 CAPTURE                          VAL R11
      121 DUPCLOSURE                       R15 K39 [PROTO_5]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R6
      131 RETURN                           R15 1
