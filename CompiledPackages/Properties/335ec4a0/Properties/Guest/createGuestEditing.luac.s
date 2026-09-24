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
       42 CALL                             R4 0 1
       43 LENGTH                           R5 R4
       44 JUMPIFNOTEQKN                    R5 K10 [0] ; [+2]
       46 RETURN                           R0 0
       47 LOADB                            R5 1
       48 LOADB                            R6 0
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 GETUPVAL                         R11 5
       54 GETTABLEKS                       R11 R11 K11 ["tryToCreateLuauExpression"]
       56 MOVE                             R12 R2
       57 CALL                             R11 1 2
       58 JUMPIFNOTEQKNIL                  R11 ; [+9]
       60 JUMPIFEQKNIL                     R12 ; [+7]
       62 GETUPVAL                         R13 6
       63 DUPTABLE                         R14 K15 [{["type"] = "expressionParseError", ["problem"]}]
       64 SETTABLEKS                       R12 R14 K14 ["problem"]
       66 CALL                             R13 1 0
       67 RETURN                           R0 0
       68 LOADB                            R13 0
       69 MOVE                             R14 R4
       70 LOADNIL                          R15
       71 LOADNIL                          R16
       72 FORGPREP                         R14
       73 GETUPVAL                         R19 7
       74 MOVE                             R20 R18
       75 MOVE                             R21 R0
       76 CALL                             R19 2 1
       77 JUMPIFNOT                        R19 ; [+232]
       78 GETUPVAL                         R19 8
       79 MOVE                             R20 R18
       80 MOVE                             R21 R0
       81 CALL                             R19 2 1
       82 JUMPIF                           R6 ; [+38]
       83 LOADB                            R6 1
       84 GETUPVAL                         R20 9
       85 MOVE                             R21 R0
       86 MOVE                             R22 R18
       87 GETUPVAL                         R23 10
       88 CALL                             R20 3 1
       89 MOVE                             R7 R20
       90 GETTABLEKS                       R20 R7 K16 ["extra"]
       92 JUMPIFEQKNIL                     R20 ; [+12]
       94 GETTABLEKS                       R20 R7 K16 ["extra"]
       96 GETTABLEKS                       R20 R20 K12 ["type"]
       98 JUMPIFNOTEQKS                    R20 K17 ["number"] ; [+6]
      100 GETTABLEKS                       R20 R7 K16 ["extra"]
      102 GETTABLEKS                       R10 R20 K18 ["unit"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R10
      106 GETUPVAL                         R20 11
      107 GETTABLEKS                       R21 R7 K12 ["type"]
      109 CALL                             R20 1 1
      110 MOVE                             R8 R20
      111 GETUPVAL                         R20 8
      112 MOVE                             R21 R18
      113 MOVE                             R22 R0
      114 CALL                             R20 2 1
      115 GETTABLEKS                       R21 R8 K19 ["initParts"]
      117 GETUPVAL                         R22 12
      118 MOVE                             R23 R20
      119 CALL                             R21 2 1
      120 MOVE                             R9 R21
      121 MOVE                             R20 R2
      122 JUMPIFEQKNIL                     R11 ; [+130]
      124 MOVE                             R21 R19
      125 JUMPIFEQKNIL                     R1 ; [+18]
      127 GETUPVAL                         R23 13
      128 GETTABLEKS                       R24 R7 K12 ["type"]
      130 MOVE                             R25 R19
      131 CALL                             R23 2 1
      132 GETTABLE                         R22 R23 R1
      133 GETTABLEKS                       R25 R22 K20 ["multiple"]
      135 NOT                              R24 R25
      136 FASTCALL2K                       ASSERT R24 K21 ; [+4]
      138 LOADK                            R25 K21 ["Aggregate parts can't be multiple for one object"]
      139 GETIMPORT                        R23 K2 [assert]
      141 CALL                             R23 2 0
      142 GETTABLEKS                       R21 R22 K9 ["value"]
      144 MOVE                             R22 R21
      145 JUMPIFEQKNIL                     R10 ; [+23]
      147 FASTCALL1                        TYPEOF R21 ; [+3]
      148 MOVE                             R26 R21
      149 GETIMPORT                        R25 K23 [typeof]
      151 CALL                             R25 1 1
      152 JUMPIFEQKS                       R25 K17 ["number"] ; [+2]
      154 LOADB                            R24 0 +1
      155 LOADB                            R24 1
      156 FASTCALL2K                       ASSERT R24 K24 ; [+4]
      158 LOADK                            R25 K24 ["units are only attached to number properties"]
      159 GETIMPORT                        R23 K2 [assert]
      161 CALL                             R23 2 0
      162 GETUPVAL                         R23 14
      163 GETTABLEKS                       R23 R23 K25 ["toDisplayValue"]
      165 MOVE                             R24 R10
      166 MOVE                             R25 R21
      167 CALL                             R23 2 1
      168 MOVE                             R22 R23
      169 NEWTABLE                         R25 1 0
      171 GETUPVAL                         R26 5
      172 GETTABLEKS                       R26 R26 K26 ["CURRENT_VALUE_VARIABLE"]
      174 SETTABLE                         R22 R25 R26
      175 NAMECALL                         R23 R11 K27 ["Evaluate"]
      177 CALL                             R23 2 1
      178 GETTABLEKS                       R24 R23 K28 ["Error"]
      180 JUMPIFEQKNIL                     R24 ; [+11]
      182 JUMPIF                           R13 ; [+127]
      183 GETUPVAL                         R24 6
      184 DUPTABLE                         R25 K30 [{["type"] = "expressionEvaluateError", ["problem"]}]
      185 GETTABLEKS                       R26 R23 K28 ["Error"]
      187 SETTABLEKS                       R26 R25 K14 ["problem"]
      189 CALL                             R24 1 0
      190 LOADB                            R13 1
      191 JUMP                             ; [+118]
      192 GETTABLEKS                       R25 R23 K31 ["Results"]
      194 LENGTH                           R24 R25
      195 JUMPIFEQKN                       R24 K10 [0] ; [+114]
      197 GETTABLEKS                       R24 R8 K32 ["parsePartFromExpressionResults"]
      199 JUMPIFNOT                        R24 ; [+20]
      200 GETTABLEKS                       R24 R8 K32 ["parsePartFromExpressionResults"]
      202 ORK                              R25 R1 K9 ["value"]
      203 GETTABLEKS                       R26 R23 K31 ["Results"]
      205 MOVE                             R27 R19
      206 CALL                             R24 3 1
      207 GETTABLEKS                       R25 R24 K12 ["type"]
      209 JUMPIFNOTEQKS                    R25 K33 ["ok"] ; [+4]
      211 GETTABLEKS                       R20 R24 K9 ["value"]
      213 JUMP                             ; [+39]
      214 GETUPVAL                         R25 6
      215 GETTABLEKS                       R26 R24 K34 ["warning"]
      217 CALL                             R25 1 0
      218 JUMP                             ; [+91]
      219 JUMP                             ; [+33]
      220 GETTABLEKS                       R24 R23 K31 ["Results"]
      222 GETTABLEN                        R20 R24 1
      223 FASTCALL1                        TYPEOF R20 ; [+3]
      224 MOVE                             R25 R20
      225 GETIMPORT                        R24 K23 [typeof]
      227 CALL                             R24 1 1
      228 FASTCALL1                        TYPEOF R19 ; [+3]
      229 MOVE                             R26 R19
      230 GETIMPORT                        R25 K23 [typeof]
      232 CALL                             R25 1 1
      233 JUMPIFEQ                         R24 R25 ; [+19]
      235 GETUPVAL                         R24 6
      236 DUPTABLE                         R25 K38 [{["type"] = "expressionWrongType", ["expected"], ["received"]}]
      237 FASTCALL1                        TYPEOF R19 ; [+3]
      238 MOVE                             R27 R19
      239 GETIMPORT                        R26 K23 [typeof]
      241 CALL                             R26 1 1
      242 SETTABLEKS                       R26 R25 K36 ["expected"]
      244 FASTCALL1                        TYPEOF R20 ; [+3]
      245 MOVE                             R27 R20
      246 GETIMPORT                        R26 K23 [typeof]
      248 CALL                             R26 1 1
      249 SETTABLEKS                       R26 R25 K37 ["received"]
      251 CALL                             R24 1 0
      252 JUMP                             ; [+57]
      253 JUMPIFEQKNIL                     R10 ; [+23]
      255 FASTCALL1                        TYPEOF R20 ; [+3]
      256 MOVE                             R24 R20
      257 GETIMPORT                        R23 K23 [typeof]
      259 CALL                             R23 1 1
      260 JUMPIFEQKS                       R23 K17 ["number"] ; [+2]
      262 LOADB                            R22 0 +1
      263 LOADB                            R22 1
      264 FASTCALL2K                       ASSERT R22 K24 ; [+4]
      266 LOADK                            R23 K24 ["units are only attached to number properties"]
      267 GETIMPORT                        R21 K2 [assert]
      269 CALL                             R21 2 0
      270 GETUPVAL                         R21 14
      271 GETTABLEKS                       R21 R21 K39 ["fromDisplayValue"]
      273 MOVE                             R22 R10
      274 MOVE                             R23 R20
      275 CALL                             R21 2 1
      276 MOVE                             R20 R21
      277 NEWTABLE                         R21 0 1
      279 MOVE                             R22 R19
      280 SETLIST                          R21 R22 1 [1]
      282 GETTABLEKS                       R22 R8 K40 ["setPart"]
      284 GETUPVAL                         R23 12
      285 MOVE                             R24 R21
      286 LOADN                            R25 1
      287 LOADN                            R26 1
      288 MOVE                             R27 R3
      289 MOVE                             R28 R20
      290 CALL                             R22 6 0
      291 GETTABLEN                        R22 R21 1
      292 GETUPVAL                         R23 15
      293 MOVE                             R24 R18
      294 MOVE                             R25 R0
      295 GETTABLEN                        R26 R21 1
      296 CALL                             R23 3 0
      297 GETUPVAL                         R23 8
      298 MOVE                             R24 R18
      299 MOVE                             R25 R0
      300 CALL                             R23 2 1
      301 GETTABLEKS                       R24 R8 K41 ["addToAggregation"]
      303 GETUPVAL                         R25 12
      304 MOVE                             R26 R9
      305 MOVE                             R27 R19
      306 CALL                             R24 3 0
      307 JUMPIFEQ                         R23 R22 ; [+2]
      309 LOADB                            R5 0
      310 FORGLOOP                         R14 2 ; [-238]
      312 JUMPIF                           R6 ; [+1]
      313 RETURN                           R0 0
      314 JUMPIFNOT                        R5 ; [+1]
      315 RETURN                           R0 0
      316 GETUPVAL                         R14 16
      317 GETTABLEKS                       R14 R14 K42 ["fromInfoAndParts"]
      319 MOVE                             R15 R7
      320 MOVE                             R16 R9
      321 CALL                             R14 2 1
      322 GETUPVAL                         R15 17
      323 GETTABLEKS                       R15 R15 K43 ["showProperties"]
      325 NEWTABLE                         R16 0 1
      327 MOVE                             R17 R0
      328 SETLIST                          R16 R17 1 [1]
      330 NEWTABLE                         R17 0 1
      332 MOVE                             R18 R14
      333 SETLIST                          R17 R18 1 [1]
      335 CALL                             R15 2 0
      336 RETURN                           R0 0

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
