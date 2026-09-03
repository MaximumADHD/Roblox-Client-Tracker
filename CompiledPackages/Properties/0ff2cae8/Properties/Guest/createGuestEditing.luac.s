PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["BeginRecording"]
        7 LOADK                            R2 K1 ["EditProperty"]
        8 LOADK                            R4 K2 ["Edit property %*"]
        9 GETTABLEKS                       R6 R0 K3 ["name"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R2 0
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["Already editing a property"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["BeginRecording"]
       18 LOADK                            R3 K4 ["EditProperty"]
       19 LOADK                            R5 K5 ["Edit property %*"]
       20 GETTABLEKS                       R7 R0 K6 ["name"]
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 CALL                             R2 2 1
       27 SETUPVAL                         R2 1
       28 GETUPVAL                         R3 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMPIFNOTEQKS                    R1 K8 ["CollisionGroup"] ; [+4]
       35 GETUPVAL                         R2 3
       36 CALL                             R2 0 -1
       37 RETURN                           R2 -1
       38 JUMPIFEQKNIL                     R1 ; [+10]
       40 GETIMPORT                        R2 K10 [warn]
       42 LOADK                            R4 K11 ["Got an unknown key: %*"]
       43 MOVE                             R6 R1
       44 NAMECALL                         R4 R4 K7 ["format"]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 CALL                             R2 1 0
       49 LOADNIL                          R2
       50 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Not editing a property"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R0
       10 CALL                             R4 2 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Editing a different property"]
       14 GETIMPORT                        R3 K2 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 2
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADB                            R3 1
       20 JUMP                             ; [+18]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["BeginRecording"]
       24 LOADK                            R5 K5 ["EditProperty"]
       25 LOADK                            R7 K6 ["Edit property %*"]
       26 GETTABLEKS                       R9 R0 K7 ["name"]
       28 NAMECALL                         R7 R7 K8 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 CALL                             R4 2 1
       33 SETUPVAL                         R4 2
       34 GETUPVAL                         R4 2
       35 JUMPIFNOTEQKNIL                  R4 ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 JUMPIF                           R3 ; [+1]
       40 RETURN                           R0 0
       41 ORK                              R3 R1 K9 ["value"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K10 ["Get"]
       45 CALL                             R4 0 1
       46 LENGTH                           R5 R4
       47 JUMPIFNOTEQKN                    R5 K11 [0] ; [+2]
       49 RETURN                           R0 0
       50 LOADB                            R5 1
       51 LOADB                            R6 0
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R11 R11 K12 ["tryToCreateLuauExpression"]
       59 MOVE                             R12 R2
       60 CALL                             R11 1 2
       61 JUMPIFNOTEQKNIL                  R11 ; [+9]
       63 JUMPIFEQKNIL                     R12 ; [+7]
       65 GETUPVAL                         R13 6
       66 DUPTABLE                         R14 K16 [{["type"] = "expressionParseError", ["problem"]}]
       67 SETTABLEKS                       R12 R14 K15 ["problem"]
       69 CALL                             R13 1 0
       70 RETURN                           R0 0
       71 LOADB                            R13 0
       72 MOVE                             R14 R4
       73 LOADNIL                          R15
       74 LOADNIL                          R16
       75 FORGPREP                         R14
       76 GETUPVAL                         R19 7
       77 MOVE                             R20 R18
       78 MOVE                             R21 R0
       79 CALL                             R19 2 1
       80 JUMPIFNOT                        R19 ; [+232]
       81 GETUPVAL                         R19 8
       82 MOVE                             R20 R18
       83 MOVE                             R21 R0
       84 CALL                             R19 2 1
       85 JUMPIF                           R6 ; [+38]
       86 LOADB                            R6 1
       87 GETUPVAL                         R20 9
       88 MOVE                             R21 R0
       89 MOVE                             R22 R18
       90 GETUPVAL                         R23 10
       91 CALL                             R20 3 1
       92 MOVE                             R7 R20
       93 GETTABLEKS                       R20 R7 K17 ["extra"]
       95 JUMPIFEQKNIL                     R20 ; [+12]
       97 GETTABLEKS                       R20 R7 K17 ["extra"]
       99 GETTABLEKS                       R20 R20 K13 ["type"]
      101 JUMPIFNOTEQKS                    R20 K18 ["number"] ; [+6]
      103 GETTABLEKS                       R20 R7 K17 ["extra"]
      105 GETTABLEKS                       R10 R20 K19 ["unit"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R10
      109 GETUPVAL                         R20 11
      110 GETTABLEKS                       R21 R7 K13 ["type"]
      112 CALL                             R20 1 1
      113 MOVE                             R8 R20
      114 GETUPVAL                         R20 8
      115 MOVE                             R21 R18
      116 MOVE                             R22 R0
      117 CALL                             R20 2 1
      118 GETTABLEKS                       R21 R8 K20 ["initParts"]
      120 GETUPVAL                         R22 12
      121 MOVE                             R23 R20
      122 CALL                             R21 2 1
      123 MOVE                             R9 R21
      124 MOVE                             R20 R2
      125 JUMPIFEQKNIL                     R11 ; [+130]
      127 MOVE                             R21 R19
      128 JUMPIFEQKNIL                     R1 ; [+18]
      130 GETUPVAL                         R23 13
      131 GETTABLEKS                       R24 R7 K13 ["type"]
      133 MOVE                             R25 R19
      134 CALL                             R23 2 1
      135 GETTABLE                         R22 R23 R1
      136 GETTABLEKS                       R25 R22 K21 ["multiple"]
      138 NOT                              R24 R25
      139 FASTCALL2K                       ASSERT R24 K22 ; [+4]
      141 LOADK                            R25 K22 ["Aggregate parts can't be multiple for one object"]
      142 GETIMPORT                        R23 K2 [assert]
      144 CALL                             R23 2 0
      145 GETTABLEKS                       R21 R22 K9 ["value"]
      147 MOVE                             R22 R21
      148 JUMPIFEQKNIL                     R10 ; [+23]
      150 FASTCALL1                        TYPEOF R21 ; [+3]
      151 MOVE                             R26 R21
      152 GETIMPORT                        R25 K24 [typeof]
      154 CALL                             R25 1 1
      155 JUMPIFEQKS                       R25 K18 ["number"] ; [+2]
      157 LOADB                            R24 0 +1
      158 LOADB                            R24 1
      159 FASTCALL2K                       ASSERT R24 K25 ; [+4]
      161 LOADK                            R25 K25 ["units are only attached to number properties"]
      162 GETIMPORT                        R23 K2 [assert]
      164 CALL                             R23 2 0
      165 GETUPVAL                         R23 14
      166 GETTABLEKS                       R23 R23 K26 ["toDisplayValue"]
      168 MOVE                             R24 R10
      169 MOVE                             R25 R21
      170 CALL                             R23 2 1
      171 MOVE                             R22 R23
      172 NEWTABLE                         R25 1 0
      174 GETUPVAL                         R26 5
      175 GETTABLEKS                       R26 R26 K27 ["CURRENT_VALUE_VARIABLE"]
      177 SETTABLE                         R22 R25 R26
      178 NAMECALL                         R23 R11 K28 ["Evaluate"]
      180 CALL                             R23 2 1
      181 GETTABLEKS                       R24 R23 K29 ["Error"]
      183 JUMPIFEQKNIL                     R24 ; [+11]
      185 JUMPIF                           R13 ; [+127]
      186 GETUPVAL                         R24 6
      187 DUPTABLE                         R25 K31 [{["type"] = "expressionEvaluateError", ["problem"]}]
      188 GETTABLEKS                       R26 R23 K29 ["Error"]
      190 SETTABLEKS                       R26 R25 K15 ["problem"]
      192 CALL                             R24 1 0
      193 LOADB                            R13 1
      194 JUMP                             ; [+118]
      195 GETTABLEKS                       R25 R23 K32 ["Results"]
      197 LENGTH                           R24 R25
      198 JUMPIFEQKN                       R24 K11 [0] ; [+114]
      200 GETTABLEKS                       R24 R8 K33 ["parsePartFromExpressionResults"]
      202 JUMPIFNOT                        R24 ; [+20]
      203 GETTABLEKS                       R24 R8 K33 ["parsePartFromExpressionResults"]
      205 ORK                              R25 R1 K9 ["value"]
      206 GETTABLEKS                       R26 R23 K32 ["Results"]
      208 MOVE                             R27 R19
      209 CALL                             R24 3 1
      210 GETTABLEKS                       R25 R24 K13 ["type"]
      212 JUMPIFNOTEQKS                    R25 K34 ["ok"] ; [+4]
      214 GETTABLEKS                       R20 R24 K9 ["value"]
      216 JUMP                             ; [+39]
      217 GETUPVAL                         R25 6
      218 GETTABLEKS                       R26 R24 K35 ["warning"]
      220 CALL                             R25 1 0
      221 JUMP                             ; [+91]
      222 JUMP                             ; [+33]
      223 GETTABLEKS                       R24 R23 K32 ["Results"]
      225 GETTABLEN                        R20 R24 1
      226 FASTCALL1                        TYPEOF R20 ; [+3]
      227 MOVE                             R25 R20
      228 GETIMPORT                        R24 K24 [typeof]
      230 CALL                             R24 1 1
      231 FASTCALL1                        TYPEOF R19 ; [+3]
      232 MOVE                             R26 R19
      233 GETIMPORT                        R25 K24 [typeof]
      235 CALL                             R25 1 1
      236 JUMPIFEQ                         R24 R25 ; [+19]
      238 GETUPVAL                         R24 6
      239 DUPTABLE                         R25 K39 [{["type"] = "expressionWrongType", ["expected"], ["received"]}]
      240 FASTCALL1                        TYPEOF R19 ; [+3]
      241 MOVE                             R27 R19
      242 GETIMPORT                        R26 K24 [typeof]
      244 CALL                             R26 1 1
      245 SETTABLEKS                       R26 R25 K37 ["expected"]
      247 FASTCALL1                        TYPEOF R20 ; [+3]
      248 MOVE                             R27 R20
      249 GETIMPORT                        R26 K24 [typeof]
      251 CALL                             R26 1 1
      252 SETTABLEKS                       R26 R25 K38 ["received"]
      254 CALL                             R24 1 0
      255 JUMP                             ; [+57]
      256 JUMPIFEQKNIL                     R10 ; [+23]
      258 FASTCALL1                        TYPEOF R20 ; [+3]
      259 MOVE                             R24 R20
      260 GETIMPORT                        R23 K24 [typeof]
      262 CALL                             R23 1 1
      263 JUMPIFEQKS                       R23 K18 ["number"] ; [+2]
      265 LOADB                            R22 0 +1
      266 LOADB                            R22 1
      267 FASTCALL2K                       ASSERT R22 K25 ; [+4]
      269 LOADK                            R23 K25 ["units are only attached to number properties"]
      270 GETIMPORT                        R21 K2 [assert]
      272 CALL                             R21 2 0
      273 GETUPVAL                         R21 14
      274 GETTABLEKS                       R21 R21 K40 ["fromDisplayValue"]
      276 MOVE                             R22 R10
      277 MOVE                             R23 R20
      278 CALL                             R21 2 1
      279 MOVE                             R20 R21
      280 NEWTABLE                         R21 0 1
      282 MOVE                             R22 R19
      283 SETLIST                          R21 R22 1 [1]
      285 GETTABLEKS                       R22 R8 K41 ["setPart"]
      287 GETUPVAL                         R23 12
      288 MOVE                             R24 R21
      289 LOADN                            R25 1
      290 LOADN                            R26 1
      291 MOVE                             R27 R3
      292 MOVE                             R28 R20
      293 CALL                             R22 6 0
      294 GETTABLEN                        R22 R21 1
      295 GETUPVAL                         R23 15
      296 MOVE                             R24 R18
      297 MOVE                             R25 R0
      298 GETTABLEN                        R26 R21 1
      299 CALL                             R23 3 0
      300 GETUPVAL                         R23 8
      301 MOVE                             R24 R18
      302 MOVE                             R25 R0
      303 CALL                             R23 2 1
      304 GETTABLEKS                       R24 R8 K42 ["addToAggregation"]
      306 GETUPVAL                         R25 12
      307 MOVE                             R26 R9
      308 MOVE                             R27 R19
      309 CALL                             R24 3 0
      310 JUMPIFEQ                         R23 R22 ; [+2]
      312 LOADB                            R5 0
      313 FORGLOOP                         R14 2 ; [-238]
      315 JUMPIF                           R6 ; [+1]
      316 RETURN                           R0 0
      317 JUMPIFNOT                        R5 ; [+1]
      318 RETURN                           R0 0
      319 GETUPVAL                         R14 16
      320 GETTABLEKS                       R14 R14 K43 ["fromInfoAndParts"]
      322 MOVE                             R15 R7
      323 MOVE                             R16 R9
      324 CALL                             R14 2 1
      325 GETUPVAL                         R15 17
      326 GETTABLEKS                       R15 R15 K44 ["showProperties"]
      328 NEWTABLE                         R16 0 1
      330 MOVE                             R17 R0
      331 SETLIST                          R16 R17 1 [1]
      333 NEWTABLE                         R17 0 1
      335 MOVE                             R18 R14
      336 SETLIST                          R17 R18 1 [1]
      338 CALL                             R15 2 0
      339 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Not editing a property"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Editing a different property"]
       14 GETIMPORT                        R2 K2 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K4 ["FinishRecording"]
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 LOADNIL                          R2
       26 SETUPVAL                         R2 2
       27 JUMP                             ; [+14]
       28 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Cancel]
       30 JUMPIFEQ                         R1 R2 ; [+11]
       32 GETIMPORT                        R2 K10 [warn]
       34 LOADK                            R4 K11 ["Couldn't edit %* because another edit is in progress."]
       35 GETTABLEKS                       R6 R0 K12 ["name"]
       37 NAMECALL                         R4 R4 K13 ["format"]
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 CALL                             R2 1 0
       42 LOADNIL                          R2
       43 SETUPVAL                         R2 0
       44 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Not yet implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Canceling edit due to disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["FinishRecording"]
        9 GETUPVAL                         R1 0
       10 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Cancel]
       12 CALL                             R0 2 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 DUPTABLE                         R8 K1 [{"instanceRegistry"}]
        3 SETTABLEKS                       R4 R8 K0 ["instanceRegistry"]
        5 NEWCLOSURE                       R9 P0
        6 CAPTURE                          REF R7
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R10 P1
        9 CAPTURE                          REF R6
       10 CAPTURE                          REF R7
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 NEWCLOSURE                       R11 P2
       14 CAPTURE                          REF R6
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          REF R7
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          VAL R0
       32 NEWCLOSURE                       R12 P3
       33 CAPTURE                          REF R6
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          REF R7
       36 CAPTURE                          VAL R1
       37 DUPCLOSURE                       R13 K2 [PROTO_4]
       38 NEWCLOSURE                       R14 P5
       39 CAPTURE                          REF R7
       40 CAPTURE                          VAL R1
       41 DUPTABLE                         R15 K8 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "destroy"}]
       42 SETTABLEKS                       R10 R15 K3 ["beginEditingAsync"]
       44 SETTABLEKS                       R11 R15 K4 ["continueEditing"]
       46 SETTABLEKS                       R12 R15 K5 ["finishEditing"]
       48 SETTABLEKS                       R13 R15 K6 ["resetProperty"]
       50 SETTABLEKS                       R14 R15 K7 ["destroy"]
       52 CLOSEUPVALS                      R6
       53 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["AggregatePropertyInfo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["CapturableWarnings"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Expressions"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K14 ["Components"]
       42 GETTABLEKS                       R7 R7 K10 ["Util"]
       44 GETTABLEKS                       R7 R7 K15 ["Units"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["PropertyInteraction"]
       51 GETTABLEKS                       R8 R8 K16 ["canWriteToProperty"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["PropertyInteraction"]
       58 GETTABLEKS                       R9 R9 K17 ["getAggregateParts"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Guest"]
       65 GETTABLEKS                       R10 R10 K18 ["Methods"]
       67 GETTABLEKS                       R10 R10 K19 ["getCollisionGroupNames"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["PropertyInteraction"]
       74 GETTABLEKS                       R11 R11 K20 ["getPropertyInfo"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K8 ["Guest"]
       81 GETTABLEKS                       R12 R12 K21 ["getValueAggregator"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["PropertyInteraction"]
       88 GETTABLEKS                       R13 R13 K22 ["readProperty"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["PropertyInteraction"]
       95 GETTABLEKS                       R14 R14 K23 ["samePropertyId"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["PropertyInteraction"]
      102 GETTABLEKS                       R15 R15 K24 ["writeProperty"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K25 [PROTO_6]
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R1
      117 RETURN                           R15 1
