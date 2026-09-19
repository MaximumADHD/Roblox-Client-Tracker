PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["BeginRecording"]
        7 LOADK                            R2 K1 ["EditProperty"]
        8 LOADK                            R3 K2 ["Edit property %*"]
        9 GETTABLEKS                       R5 R0 K3 ["name"]
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R1 2 1
       15 SETUPVAL                         R1 0
       16 GETUPVAL                         R2 0
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

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
       14 JUMP                             ; [+17]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["BeginRecording"]
       18 LOADK                            R3 K4 ["EditProperty"]
       19 LOADK                            R4 K5 ["Edit property %*"]
       20 GETTABLEKS                       R6 R0 K6 ["name"]
       22 NAMECALL                         R4 R4 K7 ["format"]
       24 CALL                             R4 2 1
       25 CALL                             R2 2 1
       26 SETUPVAL                         R2 1
       27 GETUPVAL                         R3 1
       28 JUMPIFNOTEQKNIL                  R3 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 JUMPIFNOTEQKS                    R1 K8 ["CollisionGroup"] ; [+4]
       34 GETUPVAL                         R2 3
       35 CALL                             R2 0 -1
       36 RETURN                           R2 -1
       37 JUMPIFEQKNIL                     R1 ; [+9]
       39 GETIMPORT                        R2 K10 [warn]
       41 LOADK                            R3 K11 ["Got an unknown key: %*"]
       42 MOVE                             R5 R1
       43 NAMECALL                         R3 R3 K7 ["format"]
       45 CALL                             R3 2 1
       46 CALL                             R2 1 0
       47 LOADNIL                          R2
       48 RETURN                           R2 1

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
       20 JUMP                             ; [+17]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["BeginRecording"]
       24 LOADK                            R5 K5 ["EditProperty"]
       25 LOADK                            R6 K6 ["Edit property %*"]
       26 GETTABLEKS                       R8 R0 K7 ["name"]
       28 NAMECALL                         R6 R6 K8 ["format"]
       30 CALL                             R6 2 1
       31 CALL                             R4 2 1
       32 SETUPVAL                         R4 2
       33 GETUPVAL                         R4 2
       34 JUMPIFNOTEQKNIL                  R4 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIF                           R3 ; [+1]
       39 RETURN                           R0 0
       40 ORK                              R3 R1 K9 ["value"]
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K10 ["Get"]
       44 CALL                             R4 0 1
       45 LENGTH                           R5 R4
       46 JUMPIFNOTEQKN                    R5 K11 [0] ; [+2]
       48 RETURN                           R0 0
       49 LOADB                            R5 1
       50 LOADB                            R6 0
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 GETUPVAL                         R11 5
       56 GETTABLEKS                       R11 R11 K12 ["tryToCreateLuauExpression"]
       58 MOVE                             R12 R2
       59 CALL                             R11 1 2
       60 JUMPIFNOTEQKNIL                  R11 ; [+9]
       62 JUMPIFEQKNIL                     R12 ; [+7]
       64 GETUPVAL                         R13 6
       65 DUPTABLE                         R14 K16 [{["type"] = "expressionParseError", ["problem"]}]
       66 SETTABLEKS                       R12 R14 K15 ["problem"]
       68 CALL                             R13 1 0
       69 RETURN                           R0 0
       70 LOADB                            R13 0
       71 MOVE                             R14 R4
       72 LOADNIL                          R15
       73 LOADNIL                          R16
       74 FORGPREP                         R14
       75 GETUPVAL                         R19 7
       76 MOVE                             R20 R18
       77 MOVE                             R21 R0
       78 CALL                             R19 2 1
       79 JUMPIFNOT                        R19 ; [+232]
       80 GETUPVAL                         R19 8
       81 MOVE                             R20 R18
       82 MOVE                             R21 R0
       83 CALL                             R19 2 1
       84 JUMPIF                           R6 ; [+38]
       85 LOADB                            R6 1
       86 GETUPVAL                         R20 9
       87 MOVE                             R21 R0
       88 MOVE                             R22 R18
       89 GETUPVAL                         R23 10
       90 CALL                             R20 3 1
       91 MOVE                             R7 R20
       92 GETTABLEKS                       R20 R7 K17 ["extra"]
       94 JUMPIFEQKNIL                     R20 ; [+12]
       96 GETTABLEKS                       R20 R7 K17 ["extra"]
       98 GETTABLEKS                       R20 R20 K13 ["type"]
      100 JUMPIFNOTEQKS                    R20 K18 ["number"] ; [+6]
      102 GETTABLEKS                       R20 R7 K17 ["extra"]
      104 GETTABLEKS                       R10 R20 K19 ["unit"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R10
      108 GETUPVAL                         R20 11
      109 GETTABLEKS                       R21 R7 K13 ["type"]
      111 CALL                             R20 1 1
      112 MOVE                             R8 R20
      113 GETUPVAL                         R20 8
      114 MOVE                             R21 R18
      115 MOVE                             R22 R0
      116 CALL                             R20 2 1
      117 GETTABLEKS                       R21 R8 K20 ["initParts"]
      119 GETUPVAL                         R22 12
      120 MOVE                             R23 R20
      121 CALL                             R21 2 1
      122 MOVE                             R9 R21
      123 MOVE                             R20 R2
      124 JUMPIFEQKNIL                     R11 ; [+130]
      126 MOVE                             R21 R19
      127 JUMPIFEQKNIL                     R1 ; [+18]
      129 GETUPVAL                         R23 13
      130 GETTABLEKS                       R24 R7 K13 ["type"]
      132 MOVE                             R25 R19
      133 CALL                             R23 2 1
      134 GETTABLE                         R22 R23 R1
      135 GETTABLEKS                       R25 R22 K21 ["multiple"]
      137 NOT                              R24 R25
      138 FASTCALL2K                       ASSERT R24 K22 ; [+4]
      140 LOADK                            R25 K22 ["Aggregate parts can't be multiple for one object"]
      141 GETIMPORT                        R23 K2 [assert]
      143 CALL                             R23 2 0
      144 GETTABLEKS                       R21 R22 K9 ["value"]
      146 MOVE                             R22 R21
      147 JUMPIFEQKNIL                     R10 ; [+23]
      149 FASTCALL1                        TYPEOF R21 ; [+3]
      150 MOVE                             R26 R21
      151 GETIMPORT                        R25 K24 [typeof]
      153 CALL                             R25 1 1
      154 JUMPIFEQKS                       R25 K18 ["number"] ; [+2]
      156 LOADB                            R24 0 +1
      157 LOADB                            R24 1
      158 FASTCALL2K                       ASSERT R24 K25 ; [+4]
      160 LOADK                            R25 K25 ["units are only attached to number properties"]
      161 GETIMPORT                        R23 K2 [assert]
      163 CALL                             R23 2 0
      164 GETUPVAL                         R23 14
      165 GETTABLEKS                       R23 R23 K26 ["toDisplayValue"]
      167 MOVE                             R24 R10
      168 MOVE                             R25 R21
      169 CALL                             R23 2 1
      170 MOVE                             R22 R23
      171 NEWTABLE                         R25 1 0
      173 GETUPVAL                         R26 5
      174 GETTABLEKS                       R26 R26 K27 ["CURRENT_VALUE_VARIABLE"]
      176 SETTABLE                         R22 R25 R26
      177 NAMECALL                         R23 R11 K28 ["Evaluate"]
      179 CALL                             R23 2 1
      180 GETTABLEKS                       R24 R23 K29 ["Error"]
      182 JUMPIFEQKNIL                     R24 ; [+11]
      184 JUMPIF                           R13 ; [+127]
      185 GETUPVAL                         R24 6
      186 DUPTABLE                         R25 K31 [{["type"] = "expressionEvaluateError", ["problem"]}]
      187 GETTABLEKS                       R26 R23 K29 ["Error"]
      189 SETTABLEKS                       R26 R25 K15 ["problem"]
      191 CALL                             R24 1 0
      192 LOADB                            R13 1
      193 JUMP                             ; [+118]
      194 GETTABLEKS                       R25 R23 K32 ["Results"]
      196 LENGTH                           R24 R25
      197 JUMPIFEQKN                       R24 K11 [0] ; [+114]
      199 GETTABLEKS                       R24 R8 K33 ["parsePartFromExpressionResults"]
      201 JUMPIFNOT                        R24 ; [+20]
      202 GETTABLEKS                       R24 R8 K33 ["parsePartFromExpressionResults"]
      204 ORK                              R25 R1 K9 ["value"]
      205 GETTABLEKS                       R26 R23 K32 ["Results"]
      207 MOVE                             R27 R19
      208 CALL                             R24 3 1
      209 GETTABLEKS                       R25 R24 K13 ["type"]
      211 JUMPIFNOTEQKS                    R25 K34 ["ok"] ; [+4]
      213 GETTABLEKS                       R20 R24 K9 ["value"]
      215 JUMP                             ; [+39]
      216 GETUPVAL                         R25 6
      217 GETTABLEKS                       R26 R24 K35 ["warning"]
      219 CALL                             R25 1 0
      220 JUMP                             ; [+91]
      221 JUMP                             ; [+33]
      222 GETTABLEKS                       R24 R23 K32 ["Results"]
      224 GETTABLEN                        R20 R24 1
      225 FASTCALL1                        TYPEOF R20 ; [+3]
      226 MOVE                             R25 R20
      227 GETIMPORT                        R24 K24 [typeof]
      229 CALL                             R24 1 1
      230 FASTCALL1                        TYPEOF R19 ; [+3]
      231 MOVE                             R26 R19
      232 GETIMPORT                        R25 K24 [typeof]
      234 CALL                             R25 1 1
      235 JUMPIFEQ                         R24 R25 ; [+19]
      237 GETUPVAL                         R24 6
      238 DUPTABLE                         R25 K39 [{["type"] = "expressionWrongType", ["expected"], ["received"]}]
      239 FASTCALL1                        TYPEOF R19 ; [+3]
      240 MOVE                             R27 R19
      241 GETIMPORT                        R26 K24 [typeof]
      243 CALL                             R26 1 1
      244 SETTABLEKS                       R26 R25 K37 ["expected"]
      246 FASTCALL1                        TYPEOF R20 ; [+3]
      247 MOVE                             R27 R20
      248 GETIMPORT                        R26 K24 [typeof]
      250 CALL                             R26 1 1
      251 SETTABLEKS                       R26 R25 K38 ["received"]
      253 CALL                             R24 1 0
      254 JUMP                             ; [+57]
      255 JUMPIFEQKNIL                     R10 ; [+23]
      257 FASTCALL1                        TYPEOF R20 ; [+3]
      258 MOVE                             R24 R20
      259 GETIMPORT                        R23 K24 [typeof]
      261 CALL                             R23 1 1
      262 JUMPIFEQKS                       R23 K18 ["number"] ; [+2]
      264 LOADB                            R22 0 +1
      265 LOADB                            R22 1
      266 FASTCALL2K                       ASSERT R22 K25 ; [+4]
      268 LOADK                            R23 K25 ["units are only attached to number properties"]
      269 GETIMPORT                        R21 K2 [assert]
      271 CALL                             R21 2 0
      272 GETUPVAL                         R21 14
      273 GETTABLEKS                       R21 R21 K40 ["fromDisplayValue"]
      275 MOVE                             R22 R10
      276 MOVE                             R23 R20
      277 CALL                             R21 2 1
      278 MOVE                             R20 R21
      279 NEWTABLE                         R21 0 1
      281 MOVE                             R22 R19
      282 SETLIST                          R21 R22 1 [1]
      284 GETTABLEKS                       R22 R8 K41 ["setPart"]
      286 GETUPVAL                         R23 12
      287 MOVE                             R24 R21
      288 LOADN                            R25 1
      289 LOADN                            R26 1
      290 MOVE                             R27 R3
      291 MOVE                             R28 R20
      292 CALL                             R22 6 0
      293 GETTABLEN                        R22 R21 1
      294 GETUPVAL                         R23 15
      295 MOVE                             R24 R18
      296 MOVE                             R25 R0
      297 GETTABLEN                        R26 R21 1
      298 CALL                             R23 3 0
      299 GETUPVAL                         R23 8
      300 MOVE                             R24 R18
      301 MOVE                             R25 R0
      302 CALL                             R23 2 1
      303 GETTABLEKS                       R24 R8 K42 ["addToAggregation"]
      305 GETUPVAL                         R25 12
      306 MOVE                             R26 R9
      307 MOVE                             R27 R19
      308 CALL                             R24 3 0
      309 JUMPIFEQ                         R23 R22 ; [+2]
      311 LOADB                            R5 0
      312 FORGLOOP                         R14 2 ; [-238]
      314 JUMPIF                           R6 ; [+1]
      315 RETURN                           R0 0
      316 JUMPIFNOT                        R5 ; [+1]
      317 RETURN                           R0 0
      318 GETUPVAL                         R14 16
      319 GETTABLEKS                       R14 R14 K43 ["fromInfoAndParts"]
      321 MOVE                             R15 R7
      322 MOVE                             R16 R9
      323 CALL                             R14 2 1
      324 GETUPVAL                         R15 17
      325 GETTABLEKS                       R15 R15 K44 ["showProperties"]
      327 NEWTABLE                         R16 0 1
      329 MOVE                             R17 R0
      330 SETLIST                          R16 R17 1 [1]
      332 NEWTABLE                         R17 0 1
      334 MOVE                             R18 R14
      335 SETLIST                          R17 R18 1 [1]
      337 CALL                             R15 2 0
      338 RETURN                           R0 0

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
       27 JUMP                             ; [+13]
       28 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Cancel]
       30 JUMPIFEQ                         R1 R2 ; [+10]
       32 GETIMPORT                        R2 K10 [warn]
       34 LOADK                            R3 K11 ["Couldn't edit %* because another edit is in progress."]
       35 GETTABLEKS                       R5 R0 K12 ["name"]
       37 NAMECALL                         R3 R3 K13 ["format"]
       39 CALL                             R3 2 1
       40 CALL                             R2 1 0
       41 LOADNIL                          R2
       42 SETUPVAL                         R2 0
       43 RETURN                           R0 0

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
