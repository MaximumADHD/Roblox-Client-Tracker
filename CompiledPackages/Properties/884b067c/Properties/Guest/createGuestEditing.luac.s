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
       55 GETUPVAL                         R10 5
       56 GETTABLEKS                       R10 R10 K12 ["tryToCreateLuauExpression"]
       58 MOVE                             R11 R2
       59 CALL                             R10 1 2
       60 JUMPIFNOTEQKNIL                  R10 ; [+9]
       62 JUMPIFEQKNIL                     R11 ; [+7]
       64 GETUPVAL                         R12 6
       65 DUPTABLE                         R13 K16 [{["type"] = "expressionParseError", ["problem"]}]
       66 SETTABLEKS                       R11 R13 K15 ["problem"]
       68 CALL                             R12 1 0
       69 RETURN                           R0 0
       70 LOADB                            R12 0
       71 MOVE                             R13 R4
       72 LOADNIL                          R14
       73 LOADNIL                          R15
       74 FORGPREP                         R13
       75 GETUPVAL                         R18 7
       76 MOVE                             R19 R17
       77 MOVE                             R20 R0
       78 CALL                             R18 2 1
       79 JUMPIFNOT                        R18 ; [+167]
       80 GETUPVAL                         R18 8
       81 MOVE                             R19 R17
       82 MOVE                             R20 R0
       83 CALL                             R18 2 1
       84 JUMPIF                           R6 ; [+22]
       85 LOADB                            R6 1
       86 GETUPVAL                         R19 9
       87 MOVE                             R20 R0
       88 MOVE                             R21 R17
       89 GETUPVAL                         R22 10
       90 CALL                             R19 3 1
       91 MOVE                             R7 R19
       92 GETUPVAL                         R19 11
       93 GETTABLEKS                       R20 R7 K13 ["type"]
       95 CALL                             R19 1 1
       96 MOVE                             R8 R19
       97 GETUPVAL                         R19 8
       98 MOVE                             R20 R17
       99 MOVE                             R21 R0
      100 CALL                             R19 2 1
      101 GETTABLEKS                       R20 R8 K17 ["initParts"]
      103 GETUPVAL                         R21 12
      104 MOVE                             R22 R19
      105 CALL                             R20 2 1
      106 MOVE                             R9 R20
      107 MOVE                             R19 R2
      108 JUMPIFEQKNIL                     R10 ; [+105]
      110 MOVE                             R20 R18
      111 JUMPIFEQKNIL                     R1 ; [+18]
      113 GETUPVAL                         R22 13
      114 GETTABLEKS                       R23 R7 K13 ["type"]
      116 MOVE                             R24 R18
      117 CALL                             R22 2 1
      118 GETTABLE                         R21 R22 R1
      119 GETTABLEKS                       R24 R21 K18 ["multiple"]
      121 NOT                              R23 R24
      122 FASTCALL2K                       ASSERT R23 K19 ; [+4]
      124 LOADK                            R24 K19 ["Aggregate parts can't be multiple for one object"]
      125 GETIMPORT                        R22 K2 [assert]
      127 CALL                             R22 2 0
      128 GETTABLEKS                       R20 R21 K9 ["value"]
      130 NEWTABLE                         R23 1 0
      132 GETUPVAL                         R24 5
      133 GETTABLEKS                       R24 R24 K20 ["CURRENT_VALUE_VARIABLE"]
      135 SETTABLE                         R20 R23 R24
      136 NAMECALL                         R21 R10 K21 ["Evaluate"]
      138 CALL                             R21 2 1
      139 GETTABLEKS                       R22 R21 K22 ["Error"]
      141 JUMPIFEQKNIL                     R22 ; [+11]
      143 JUMPIF                           R12 ; [+103]
      144 GETUPVAL                         R22 6
      145 DUPTABLE                         R23 K24 [{["type"] = "expressionEvaluateError", ["problem"]}]
      146 GETTABLEKS                       R24 R21 K22 ["Error"]
      148 SETTABLEKS                       R24 R23 K15 ["problem"]
      150 CALL                             R22 1 0
      151 LOADB                            R12 1
      152 JUMP                             ; [+94]
      153 GETTABLEKS                       R23 R21 K25 ["Results"]
      155 LENGTH                           R22 R23
      156 JUMPIFEQKN                       R22 K11 [0] ; [+90]
      158 GETTABLEKS                       R22 R8 K26 ["parsePartFromExpressionResults"]
      160 JUMPIFNOT                        R22 ; [+20]
      161 GETTABLEKS                       R22 R8 K26 ["parsePartFromExpressionResults"]
      163 ORK                              R23 R1 K9 ["value"]
      164 GETTABLEKS                       R24 R21 K25 ["Results"]
      166 MOVE                             R25 R18
      167 CALL                             R22 3 1
      168 GETTABLEKS                       R23 R22 K13 ["type"]
      170 JUMPIFNOTEQKS                    R23 K27 ["ok"] ; [+4]
      172 GETTABLEKS                       R19 R22 K9 ["value"]
      174 JUMP                             ; [+39]
      175 GETUPVAL                         R23 6
      176 GETTABLEKS                       R24 R22 K28 ["warning"]
      178 CALL                             R23 1 0
      179 JUMP                             ; [+67]
      180 JUMP                             ; [+33]
      181 GETTABLEKS                       R22 R21 K25 ["Results"]
      183 GETTABLEN                        R19 R22 1
      184 FASTCALL1                        TYPEOF R19 ; [+3]
      185 MOVE                             R23 R19
      186 GETIMPORT                        R22 K30 [typeof]
      188 CALL                             R22 1 1
      189 FASTCALL1                        TYPEOF R18 ; [+3]
      190 MOVE                             R24 R18
      191 GETIMPORT                        R23 K30 [typeof]
      193 CALL                             R23 1 1
      194 JUMPIFEQ                         R22 R23 ; [+19]
      196 GETUPVAL                         R22 6
      197 DUPTABLE                         R23 K34 [{["type"] = "expressionWrongType", ["expected"], ["received"]}]
      198 FASTCALL1                        TYPEOF R18 ; [+3]
      199 MOVE                             R25 R18
      200 GETIMPORT                        R24 K30 [typeof]
      202 CALL                             R24 1 1
      203 SETTABLEKS                       R24 R23 K32 ["expected"]
      205 FASTCALL1                        TYPEOF R19 ; [+3]
      206 MOVE                             R25 R19
      207 GETIMPORT                        R24 K30 [typeof]
      209 CALL                             R24 1 1
      210 SETTABLEKS                       R24 R23 K33 ["received"]
      212 CALL                             R22 1 0
      213 JUMP                             ; [+33]
      214 NEWTABLE                         R20 0 1
      216 MOVE                             R21 R18
      217 SETLIST                          R20 R21 1 [1]
      219 GETTABLEKS                       R21 R8 K35 ["setPart"]
      221 GETUPVAL                         R22 12
      222 MOVE                             R23 R20
      223 LOADN                            R24 1
      224 LOADN                            R25 1
      225 MOVE                             R26 R3
      226 MOVE                             R27 R19
      227 CALL                             R21 6 0
      228 GETTABLEN                        R21 R20 1
      229 GETUPVAL                         R22 14
      230 MOVE                             R23 R17
      231 MOVE                             R24 R0
      232 GETTABLEN                        R25 R20 1
      233 CALL                             R22 3 0
      234 GETUPVAL                         R22 8
      235 MOVE                             R23 R17
      236 MOVE                             R24 R0
      237 CALL                             R22 2 1
      238 GETTABLEKS                       R23 R8 K36 ["addToAggregation"]
      240 GETUPVAL                         R24 12
      241 MOVE                             R25 R9
      242 MOVE                             R26 R18
      243 CALL                             R23 3 0
      244 JUMPIFEQ                         R22 R21 ; [+2]
      246 LOADB                            R5 0
      247 FORGLOOP                         R13 2 ; [-173]
      249 JUMPIF                           R6 ; [+1]
      250 RETURN                           R0 0
      251 JUMPIFNOT                        R5 ; [+1]
      252 RETURN                           R0 0
      253 GETUPVAL                         R13 15
      254 GETTABLEKS                       R13 R13 K37 ["fromInfoAndParts"]
      256 MOVE                             R14 R7
      257 MOVE                             R15 R9
      258 CALL                             R13 2 1
      259 GETUPVAL                         R14 16
      260 GETTABLEKS                       R14 R14 K38 ["showProperties"]
      262 NEWTABLE                         R15 0 1
      264 MOVE                             R16 R0
      265 SETLIST                          R15 R16 1 [1]
      267 NEWTABLE                         R16 0 1
      269 MOVE                             R17 R13
      270 SETLIST                          R16 R17 1 [1]
      272 CALL                             R14 2 0
      273 RETURN                           R0 0

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
       30 CAPTURE                          VAL R0
       31 NEWCLOSURE                       R12 P3
       32 CAPTURE                          REF R6
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          REF R7
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R13 K2 [PROTO_4]
       37 NEWCLOSURE                       R14 P5
       38 CAPTURE                          REF R7
       39 CAPTURE                          VAL R1
       40 DUPTABLE                         R15 K8 [{"beginEditingAsync", "continueEditing", "finishEditing", "resetProperty", "destroy"}]
       41 SETTABLEKS                       R10 R15 K3 ["beginEditingAsync"]
       43 SETTABLEKS                       R11 R15 K4 ["continueEditing"]
       45 SETTABLEKS                       R12 R15 K5 ["finishEditing"]
       47 SETTABLEKS                       R13 R15 K6 ["resetProperty"]
       49 SETTABLEKS                       R14 R15 K7 ["destroy"]
       51 CLOSEUPVALS                      R6
       52 RETURN                           R15 1

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
       40 GETTABLEKS                       R7 R0 K6 ["PropertyInteraction"]
       42 GETTABLEKS                       R7 R7 K14 ["canWriteToProperty"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["PropertyInteraction"]
       49 GETTABLEKS                       R8 R8 K15 ["getAggregateParts"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Guest"]
       56 GETTABLEKS                       R9 R9 K16 ["Methods"]
       58 GETTABLEKS                       R9 R9 K17 ["getCollisionGroupNames"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["PropertyInteraction"]
       65 GETTABLEKS                       R10 R10 K18 ["getPropertyInfo"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Guest"]
       72 GETTABLEKS                       R11 R11 K19 ["getValueAggregator"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["PropertyInteraction"]
       79 GETTABLEKS                       R12 R12 K20 ["readProperty"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["PropertyInteraction"]
       86 GETTABLEKS                       R13 R13 K21 ["samePropertyId"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K6 ["PropertyInteraction"]
       93 GETTABLEKS                       R14 R14 K22 ["writeProperty"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K23 [PROTO_6]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R1
      107 RETURN                           R14 1
