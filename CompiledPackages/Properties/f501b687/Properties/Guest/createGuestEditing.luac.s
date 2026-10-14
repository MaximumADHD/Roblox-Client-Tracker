PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFEQKS                       R2 K1 ["Commit"] ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["type"]
        6 JUMPIFNOTEQKS                    R2 K2 ["Cancel"] ; [+3]
        8 DUPTABLE                         R2 K5 [{["result"] = "Success"}]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 LENGTH                           R3 R2
       13 JUMPIFNOTEQKN                    R3 K6 [0] ; [+3]
       15 DUPTABLE                         R3 K5 [{["result"] = "Success"}]
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R1 K7 ["part"]
       19 GETTABLEKS                       R3 R3 K8 ["name"]
       21 GETTABLEKS                       R4 R1 K7 ["part"]
       23 GETTABLEKS                       R4 R4 K9 ["value"]
       25 LOADB                            R5 1
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K10 ["tryToCreateLuauExpression"]
       33 MOVE                             R11 R4
       34 CALL                             R10 1 2
       35 JUMPIFNOTEQKNIL                  R10 ; [+10]
       37 JUMPIFEQKNIL                     R11 ; [+8]
       39 GETUPVAL                         R12 2
       40 DUPTABLE                         R13 K13 [{[1] = "expressionParseError", ["problem"]}]
       41 SETTABLEKS                       R11 R13 K12 ["problem"]
       43 CALL                             R12 1 0
       44 DUPTABLE                         R12 K5 [{["result"] = "Success"}]
       45 RETURN                           R12 1
       46 LOADB                            R12 0
       47 MOVE                             R13 R2
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 GETUPVAL                         R18 3
       52 MOVE                             R19 R17
       53 MOVE                             R20 R0
       54 CALL                             R18 2 1
       55 JUMPIFNOT                        R18 ; [+230]
       56 GETUPVAL                         R18 4
       57 MOVE                             R19 R17
       58 MOVE                             R20 R0
       59 CALL                             R18 2 1
       60 GETUPVAL                         R19 5
       61 MOVE                             R20 R0
       62 MOVE                             R21 R17
       63 GETUPVAL                         R22 6
       64 CALL                             R19 3 1
       65 MOVE                             R6 R19
       66 GETTABLEKS                       R19 R6 K14 ["extra"]
       68 JUMPIFEQKNIL                     R19 ; [+12]
       70 GETTABLEKS                       R19 R6 K14 ["extra"]
       72 GETTABLEKS                       R19 R19 K0 ["type"]
       74 JUMPIFNOTEQKS                    R19 K15 ["number"] ; [+6]
       76 GETTABLEKS                       R19 R6 K14 ["extra"]
       78 GETTABLEKS                       R9 R19 K16 ["unit"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 GETUPVAL                         R19 7
       83 GETTABLEKS                       R20 R6 K0 ["type"]
       85 CALL                             R19 1 1
       86 MOVE                             R7 R19
       87 GETUPVAL                         R19 4
       88 MOVE                             R20 R17
       89 MOVE                             R21 R0
       90 CALL                             R19 2 1
       91 GETTABLEKS                       R20 R7 K17 ["initParts"]
       93 GETUPVAL                         R21 8
       94 MOVE                             R22 R19
       95 CALL                             R20 2 1
       96 MOVE                             R8 R20
       97 MOVE                             R20 R4
       98 JUMPIFEQKNIL                     R10 ; [+130]
      100 MOVE                             R21 R18
      101 JUMPIFEQKNIL                     R3 ; [+18]
      103 GETUPVAL                         R23 9
      104 GETTABLEKS                       R24 R6 K0 ["type"]
      106 MOVE                             R25 R18
      107 CALL                             R23 2 1
      108 GETTABLE                         R22 R23 R3
      109 GETTABLEKS                       R25 R22 K18 ["multiple"]
      111 NOT                              R24 R25
      112 FASTCALL2K                       ASSERT R24 K19 ; [+4]
      114 LOADK                            R25 K19 ["Aggregate parts can't be multiple for one object"]
      115 GETIMPORT                        R23 K21 [assert]
      117 CALL                             R23 2 0
      118 GETTABLEKS                       R21 R22 K9 ["value"]
      120 MOVE                             R22 R21
      121 JUMPIFEQKNIL                     R9 ; [+23]
      123 FASTCALL1                        TYPEOF R21 ; [+3]
      124 MOVE                             R26 R21
      125 GETIMPORT                        R25 K23 [typeof]
      127 CALL                             R25 1 1
      128 JUMPIFEQKS                       R25 K15 ["number"] ; [+2]
      130 LOADB                            R24 0 +1
      131 LOADB                            R24 1
      132 FASTCALL2K                       ASSERT R24 K24 ; [+4]
      134 LOADK                            R25 K24 ["units are only attached to number properties"]
      135 GETIMPORT                        R23 K21 [assert]
      137 CALL                             R23 2 0
      138 GETUPVAL                         R23 10
      139 GETTABLEKS                       R23 R23 K25 ["toDisplayValue"]
      141 MOVE                             R24 R9
      142 MOVE                             R25 R21
      143 CALL                             R23 2 1
      144 MOVE                             R22 R23
      145 NEWTABLE                         R25 1 0
      147 GETUPVAL                         R26 1
      148 GETTABLEKS                       R26 R26 K26 ["CURRENT_VALUE_VARIABLE"]
      150 SETTABLE                         R22 R25 R26
      151 NAMECALL                         R23 R10 K27 ["Evaluate"]
      153 CALL                             R23 2 1
      154 GETTABLEKS                       R24 R23 K28 ["Error"]
      156 JUMPIFEQKNIL                     R24 ; [+11]
      158 JUMPIF                           R12 ; [+127]
      159 GETUPVAL                         R24 2
      160 DUPTABLE                         R25 K30 [{[1] = "expressionEvaluateError", ["problem"]}]
      161 GETTABLEKS                       R26 R23 K28 ["Error"]
      163 SETTABLEKS                       R26 R25 K12 ["problem"]
      165 CALL                             R24 1 0
      166 LOADB                            R12 1
      167 JUMP                             ; [+118]
      168 GETTABLEKS                       R25 R23 K31 ["Results"]
      170 LENGTH                           R24 R25
      171 JUMPIFEQKN                       R24 K6 [0] ; [+114]
      173 GETTABLEKS                       R24 R7 K32 ["parsePartFromExpressionResults"]
      175 JUMPIFNOT                        R24 ; [+20]
      176 GETTABLEKS                       R24 R7 K32 ["parsePartFromExpressionResults"]
      178 ORK                              R25 R3 K9 ["value"]
      179 GETTABLEKS                       R26 R23 K31 ["Results"]
      181 MOVE                             R27 R18
      182 CALL                             R24 3 1
      183 GETTABLEKS                       R25 R24 K0 ["type"]
      185 JUMPIFNOTEQKS                    R25 K33 ["ok"] ; [+4]
      187 GETTABLEKS                       R20 R24 K9 ["value"]
      189 JUMP                             ; [+39]
      190 GETUPVAL                         R25 2
      191 GETTABLEKS                       R26 R24 K34 ["warning"]
      193 CALL                             R25 1 0
      194 JUMP                             ; [+91]
      195 JUMP                             ; [+33]
      196 GETTABLEKS                       R24 R23 K31 ["Results"]
      198 GETTABLEN                        R20 R24 1
      199 FASTCALL1                        TYPEOF R20 ; [+3]
      200 MOVE                             R25 R20
      201 GETIMPORT                        R24 K23 [typeof]
      203 CALL                             R24 1 1
      204 FASTCALL1                        TYPEOF R18 ; [+3]
      205 MOVE                             R26 R18
      206 GETIMPORT                        R25 K23 [typeof]
      208 CALL                             R25 1 1
      209 JUMPIFEQ                         R24 R25 ; [+19]
      211 GETUPVAL                         R24 2
      212 DUPTABLE                         R25 K38 [{[1] = "expressionWrongType", ["expected"], ["received"]}]
      213 FASTCALL1                        TYPEOF R18 ; [+3]
      214 MOVE                             R27 R18
      215 GETIMPORT                        R26 K23 [typeof]
      217 CALL                             R26 1 1
      218 SETTABLEKS                       R26 R25 K36 ["expected"]
      220 FASTCALL1                        TYPEOF R20 ; [+3]
      221 MOVE                             R27 R20
      222 GETIMPORT                        R26 K23 [typeof]
      224 CALL                             R26 1 1
      225 SETTABLEKS                       R26 R25 K37 ["received"]
      227 CALL                             R24 1 0
      228 JUMP                             ; [+57]
      229 JUMPIFEQKNIL                     R9 ; [+23]
      231 FASTCALL1                        TYPEOF R20 ; [+3]
      232 MOVE                             R24 R20
      233 GETIMPORT                        R23 K23 [typeof]
      235 CALL                             R23 1 1
      236 JUMPIFEQKS                       R23 K15 ["number"] ; [+2]
      238 LOADB                            R22 0 +1
      239 LOADB                            R22 1
      240 FASTCALL2K                       ASSERT R22 K24 ; [+4]
      242 LOADK                            R23 K24 ["units are only attached to number properties"]
      243 GETIMPORT                        R21 K21 [assert]
      245 CALL                             R21 2 0
      246 GETUPVAL                         R21 10
      247 GETTABLEKS                       R21 R21 K39 ["fromDisplayValue"]
      249 MOVE                             R22 R9
      250 MOVE                             R23 R20
      251 CALL                             R21 2 1
      252 MOVE                             R20 R21
      253 NEWTABLE                         R21 0 1
      255 MOVE                             R22 R18
      256 SETLIST                          R21 R22 1 [1]
      258 GETTABLEKS                       R22 R7 K40 ["setPart"]
      260 GETUPVAL                         R23 8
      261 MOVE                             R24 R21
      262 LOADN                            R25 1
      263 LOADN                            R26 1
      264 MOVE                             R27 R3
      265 MOVE                             R28 R20
      266 CALL                             R22 6 0
      267 GETTABLEN                        R22 R21 1
      268 GETUPVAL                         R23 11
      269 MOVE                             R24 R17
      270 MOVE                             R25 R0
      271 GETTABLEN                        R26 R21 1
      272 CALL                             R23 3 0
      273 GETUPVAL                         R23 4
      274 MOVE                             R24 R17
      275 MOVE                             R25 R0
      276 CALL                             R23 2 1
      277 GETTABLEKS                       R24 R7 K41 ["addToAggregation"]
      279 GETUPVAL                         R25 8
      280 MOVE                             R26 R8
      281 MOVE                             R27 R18
      282 CALL                             R24 3 0
      283 JUMPIFEQ                         R23 R22 ; [+2]
      285 LOADB                            R5 0
      286 FORGLOOP                         R13 2 ; [-236]
      288 JUMPIFNOT                        R5 ; [+2]
      289 DUPTABLE                         R13 K5 [{["result"] = "Success"}]
      290 RETURN                           R13 1
      291 DUPTABLE                         R13 K44 [{["result"] = "WriteFailed", ["correctedPropertyInfo"]}]
      292 GETUPVAL                         R14 12
      293 GETTABLEKS                       R14 R14 K45 ["fromInfoAndParts"]
      295 MOVE                             R15 R6
      296 MOVE                             R16 R8
      297 CALL                             R14 2 1
      298 SETTABLEKS                       R14 R13 K43 ["correctedPropertyInfo"]
      300 RETURN                           R13 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+19]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+13]
        8 GETIMPORT                        R2 K1 [error]
       10 LOADK                            R3 K2 ["Tried to start edit on %*, but %* was already being edited."]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 GETUPVAL                         R7 0
       16 CALL                             R6 1 1
       17 NAMECALL                         R3 R3 K3 ["format"]
       19 CALL                             R3 3 1
       20 CALL                             R2 1 0
       21 SETUPVAL                         R0 0
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["BeforePropertyChange"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K5 ["AfterPropertyChange"]
       34 MOVE                             R4 R0
       35 GETTABLEKS                       R6 R1 K6 ["type"]
       37 JUMPIFEQKS                       R6 K7 ["Commit"] ; [+5]
       39 GETTABLEKS                       R6 R1 K6 ["type"]
       41 JUMPIFNOTEQKS                    R6 K8 ["Edit"] ; [+4]
       43 GETIMPORT                        R5 K11 [Enum.FinishRecordingOperation.Commit]
       45 JUMP                             ; [+17]
       46 GETTABLEKS                       R6 R1 K6 ["type"]
       48 JUMPIFNOTEQKS                    R6 K12 ["Cancel"] ; [+4]
       50 GETIMPORT                        R5 K13 [Enum.FinishRecordingOperation.Cancel]
       52 JUMP                             ; [+10]
       53 GETTABLEKS                       R6 R1 K6 ["type"]
       55 JUMPIFNOTEQKS                    R6 K14 ["Stage"] ; [+3]
       57 LOADNIL                          R5
       58 JUMP                             ; [+4]
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R6 R1 K6 ["type"]
       62 CALL                             R5 1 1
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R3 R1 K6 ["type"]
       66 JUMPIFEQKS                       R3 K14 ["Stage"] ; [+3]
       68 LOADNIL                          R3
       69 SETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R2 K15 ["result"]
       72 JUMPIFNOTEQKS                    R3 K16 ["Success"] ; [+2]
       74 RETURN                           R0 0
       75 GETTABLEKS                       R3 R2 K15 ["result"]
       77 JUMPIFNOTEQKS                    R3 K17 ["WriteFailed"] ; [+17]
       79 GETUPVAL                         R3 6
       80 GETTABLEKS                       R3 R3 K18 ["showProperties"]
       82 NEWTABLE                         R4 0 1
       84 MOVE                             R5 R0
       85 SETLIST                          R4 R5 1 [1]
       87 NEWTABLE                         R5 0 1
       89 GETTABLEKS                       R6 R2 K19 ["correctedPropertyInfo"]
       91 SETLIST                          R5 R6 1 [1]
       93 CALL                             R3 2 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R3 5
       96 GETTABLEKS                       R4 R2 K15 ["result"]
       98 CALL                             R3 1 0
       99 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Not yet implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R6 K1 [{"instanceRegistry"}]
        1 SETTABLEKS                       R4 R6 K0 ["instanceRegistry"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R6
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 LOADNIL                          R8
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          REF R8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R7
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          VAL R0
       26 DUPCLOSURE                       R10 K2 [PROTO_2]
       27 DUPTABLE                         R11 K5 [{"editProperty", "resetProperty"}]
       28 SETTABLEKS                       R9 R11 K3 ["editProperty"]
       30 SETTABLEKS                       R10 R11 K4 ["resetProperty"]
       32 CLOSEUPVALS                      R8
       33 RETURN                           R11 1

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
       56 GETTABLEKS                       R9 R0 K14 ["Components"]
       58 GETTABLEKS                       R9 R9 K10 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["exhaustiveMatch"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["PropertyInteraction"]
       67 GETTABLEKS                       R10 R10 K18 ["getAggregateParts"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["PropertyInteraction"]
       74 GETTABLEKS                       R11 R11 K19 ["getPropertyInfo"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K8 ["Guest"]
       81 GETTABLEKS                       R12 R12 K20 ["getValueAggregator"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["PropertyInteraction"]
       88 GETTABLEKS                       R13 R13 K21 ["propertyIdToString"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["PropertyInteraction"]
       95 GETTABLEKS                       R14 R14 K22 ["readProperty"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["PropertyInteraction"]
      102 GETTABLEKS                       R15 R15 K23 ["samePropertyId"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K6 ["PropertyInteraction"]
      109 GETTABLEKS                       R16 R16 K24 ["writeProperty"]
      111 CALL                             R15 1 1
      112 DUPCLOSURE                       R16 K25 [PROTO_3]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R8
      125 RETURN                           R16 1
