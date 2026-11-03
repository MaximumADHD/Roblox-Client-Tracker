PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFEQKS                       R2 K1 ["Commit"] ; [+9]
        4 GETTABLEKS                       R2 R1 K0 ["type"]
        6 JUMPIFEQKS                       R2 K2 ["Cancel"] ; [+5]
        8 GETTABLEKS                       R2 R1 K0 ["type"]
       10 JUMPIFNOTEQKS                    R2 K3 ["Capture"] ; [+3]
       12 DUPTABLE                         R2 K6 [{["result"] = "Success"}]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 0
       15 CALL                             R2 0 1
       16 LENGTH                           R3 R2
       17 JUMPIFNOTEQKN                    R3 K7 [0] ; [+3]
       19 DUPTABLE                         R3 K6 [{["result"] = "Success"}]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K8 ["part"]
       23 GETTABLEKS                       R3 R3 K9 ["name"]
       25 GETTABLEKS                       R4 R1 K8 ["part"]
       27 GETTABLEKS                       R4 R4 K10 ["value"]
       29 LOADB                            R5 1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K11 ["tryToCreateLuauExpression"]
       37 MOVE                             R11 R4
       38 CALL                             R10 1 2
       39 JUMPIFNOTEQKNIL                  R10 ; [+10]
       41 JUMPIFEQKNIL                     R11 ; [+8]
       43 GETUPVAL                         R12 2
       44 DUPTABLE                         R13 K14 [{[1] = "expressionParseError", ["problem"]}]
       45 SETTABLEKS                       R11 R13 K13 ["problem"]
       47 CALL                             R12 1 0
       48 DUPTABLE                         R12 K6 [{["result"] = "Success"}]
       49 RETURN                           R12 1
       50 LOADB                            R12 0
       51 MOVE                             R13 R2
       52 LOADNIL                          R14
       53 LOADNIL                          R15
       54 FORGPREP                         R13
       55 GETUPVAL                         R18 3
       56 MOVE                             R19 R17
       57 MOVE                             R20 R0
       58 CALL                             R18 2 1
       59 JUMPIFNOT                        R18 ; [+230]
       60 GETUPVAL                         R18 4
       61 MOVE                             R19 R17
       62 MOVE                             R20 R0
       63 CALL                             R18 2 1
       64 GETUPVAL                         R19 5
       65 MOVE                             R20 R0
       66 MOVE                             R21 R17
       67 GETUPVAL                         R22 6
       68 CALL                             R19 3 1
       69 MOVE                             R6 R19
       70 GETTABLEKS                       R19 R6 K15 ["extra"]
       72 JUMPIFEQKNIL                     R19 ; [+12]
       74 GETTABLEKS                       R19 R6 K15 ["extra"]
       76 GETTABLEKS                       R19 R19 K0 ["type"]
       78 JUMPIFNOTEQKS                    R19 K16 ["number"] ; [+6]
       80 GETTABLEKS                       R19 R6 K15 ["extra"]
       82 GETTABLEKS                       R9 R19 K17 ["unit"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 GETUPVAL                         R19 7
       87 GETTABLEKS                       R20 R6 K0 ["type"]
       89 CALL                             R19 1 1
       90 MOVE                             R7 R19
       91 GETUPVAL                         R19 4
       92 MOVE                             R20 R17
       93 MOVE                             R21 R0
       94 CALL                             R19 2 1
       95 GETTABLEKS                       R20 R7 K18 ["initParts"]
       97 GETUPVAL                         R21 8
       98 MOVE                             R22 R19
       99 CALL                             R20 2 1
      100 MOVE                             R8 R20
      101 MOVE                             R20 R4
      102 JUMPIFEQKNIL                     R10 ; [+130]
      104 MOVE                             R21 R18
      105 JUMPIFEQKNIL                     R3 ; [+18]
      107 GETUPVAL                         R23 9
      108 GETTABLEKS                       R24 R6 K0 ["type"]
      110 MOVE                             R25 R18
      111 CALL                             R23 2 1
      112 GETTABLE                         R22 R23 R3
      113 GETTABLEKS                       R25 R22 K19 ["multiple"]
      115 NOT                              R24 R25
      116 FASTCALL2K                       ASSERT R24 K20 ; [+4]
      118 LOADK                            R25 K20 ["Aggregate parts can't be multiple for one object"]
      119 GETIMPORT                        R23 K22 [assert]
      121 CALL                             R23 2 0
      122 GETTABLEKS                       R21 R22 K10 ["value"]
      124 MOVE                             R22 R21
      125 JUMPIFEQKNIL                     R9 ; [+23]
      127 FASTCALL1                        TYPEOF R21 ; [+3]
      128 MOVE                             R26 R21
      129 GETIMPORT                        R25 K24 [typeof]
      131 CALL                             R25 1 1
      132 JUMPIFEQKS                       R25 K16 ["number"] ; [+2]
      134 LOADB                            R24 0 +1
      135 LOADB                            R24 1
      136 FASTCALL2K                       ASSERT R24 K25 ; [+4]
      138 LOADK                            R25 K25 ["units are only attached to number properties"]
      139 GETIMPORT                        R23 K22 [assert]
      141 CALL                             R23 2 0
      142 GETUPVAL                         R23 10
      143 GETTABLEKS                       R23 R23 K26 ["toDisplayValue"]
      145 MOVE                             R24 R9
      146 MOVE                             R25 R21
      147 CALL                             R23 2 1
      148 MOVE                             R22 R23
      149 NEWTABLE                         R25 1 0
      151 GETUPVAL                         R26 1
      152 GETTABLEKS                       R26 R26 K27 ["CURRENT_VALUE_VARIABLE"]
      154 SETTABLE                         R22 R25 R26
      155 NAMECALL                         R23 R10 K28 ["Evaluate"]
      157 CALL                             R23 2 1
      158 GETTABLEKS                       R24 R23 K29 ["Error"]
      160 JUMPIFEQKNIL                     R24 ; [+11]
      162 JUMPIF                           R12 ; [+127]
      163 GETUPVAL                         R24 2
      164 DUPTABLE                         R25 K31 [{[1] = "expressionEvaluateError", ["problem"]}]
      165 GETTABLEKS                       R26 R23 K29 ["Error"]
      167 SETTABLEKS                       R26 R25 K13 ["problem"]
      169 CALL                             R24 1 0
      170 LOADB                            R12 1
      171 JUMP                             ; [+118]
      172 GETTABLEKS                       R25 R23 K32 ["Results"]
      174 LENGTH                           R24 R25
      175 JUMPIFEQKN                       R24 K7 [0] ; [+114]
      177 GETTABLEKS                       R24 R7 K33 ["parsePartFromExpressionResults"]
      179 JUMPIFNOT                        R24 ; [+20]
      180 GETTABLEKS                       R24 R7 K33 ["parsePartFromExpressionResults"]
      182 ORK                              R25 R3 K10 ["value"]
      183 GETTABLEKS                       R26 R23 K32 ["Results"]
      185 MOVE                             R27 R18
      186 CALL                             R24 3 1
      187 GETTABLEKS                       R25 R24 K0 ["type"]
      189 JUMPIFNOTEQKS                    R25 K34 ["ok"] ; [+4]
      191 GETTABLEKS                       R20 R24 K10 ["value"]
      193 JUMP                             ; [+39]
      194 GETUPVAL                         R25 2
      195 GETTABLEKS                       R26 R24 K35 ["warning"]
      197 CALL                             R25 1 0
      198 JUMP                             ; [+91]
      199 JUMP                             ; [+33]
      200 GETTABLEKS                       R24 R23 K32 ["Results"]
      202 GETTABLEN                        R20 R24 1
      203 FASTCALL1                        TYPEOF R20 ; [+3]
      204 MOVE                             R25 R20
      205 GETIMPORT                        R24 K24 [typeof]
      207 CALL                             R24 1 1
      208 FASTCALL1                        TYPEOF R18 ; [+3]
      209 MOVE                             R26 R18
      210 GETIMPORT                        R25 K24 [typeof]
      212 CALL                             R25 1 1
      213 JUMPIFEQ                         R24 R25 ; [+19]
      215 GETUPVAL                         R24 2
      216 DUPTABLE                         R25 K39 [{[1] = "expressionWrongType", ["expected"], ["received"]}]
      217 FASTCALL1                        TYPEOF R18 ; [+3]
      218 MOVE                             R27 R18
      219 GETIMPORT                        R26 K24 [typeof]
      221 CALL                             R26 1 1
      222 SETTABLEKS                       R26 R25 K37 ["expected"]
      224 FASTCALL1                        TYPEOF R20 ; [+3]
      225 MOVE                             R27 R20
      226 GETIMPORT                        R26 K24 [typeof]
      228 CALL                             R26 1 1
      229 SETTABLEKS                       R26 R25 K38 ["received"]
      231 CALL                             R24 1 0
      232 JUMP                             ; [+57]
      233 JUMPIFEQKNIL                     R9 ; [+23]
      235 FASTCALL1                        TYPEOF R20 ; [+3]
      236 MOVE                             R24 R20
      237 GETIMPORT                        R23 K24 [typeof]
      239 CALL                             R23 1 1
      240 JUMPIFEQKS                       R23 K16 ["number"] ; [+2]
      242 LOADB                            R22 0 +1
      243 LOADB                            R22 1
      244 FASTCALL2K                       ASSERT R22 K25 ; [+4]
      246 LOADK                            R23 K25 ["units are only attached to number properties"]
      247 GETIMPORT                        R21 K22 [assert]
      249 CALL                             R21 2 0
      250 GETUPVAL                         R21 10
      251 GETTABLEKS                       R21 R21 K40 ["fromDisplayValue"]
      253 MOVE                             R22 R9
      254 MOVE                             R23 R20
      255 CALL                             R21 2 1
      256 MOVE                             R20 R21
      257 NEWTABLE                         R21 0 1
      259 MOVE                             R22 R18
      260 SETLIST                          R21 R22 1 [1]
      262 GETTABLEKS                       R22 R7 K41 ["setPart"]
      264 GETUPVAL                         R23 8
      265 MOVE                             R24 R21
      266 LOADN                            R25 1
      267 LOADN                            R26 1
      268 MOVE                             R27 R3
      269 MOVE                             R28 R20
      270 CALL                             R22 6 0
      271 GETTABLEN                        R22 R21 1
      272 GETUPVAL                         R23 11
      273 MOVE                             R24 R17
      274 MOVE                             R25 R0
      275 GETTABLEN                        R26 R21 1
      276 CALL                             R23 3 0
      277 GETUPVAL                         R23 4
      278 MOVE                             R24 R17
      279 MOVE                             R25 R0
      280 CALL                             R23 2 1
      281 GETTABLEKS                       R24 R7 K42 ["addToAggregation"]
      283 GETUPVAL                         R25 8
      284 MOVE                             R26 R8
      285 MOVE                             R27 R18
      286 CALL                             R24 3 0
      287 JUMPIFEQ                         R23 R22 ; [+2]
      289 LOADB                            R5 0
      290 FORGLOOP                         R13 2 ; [-236]
      292 JUMPIFNOT                        R5 ; [+2]
      293 DUPTABLE                         R13 K6 [{["result"] = "Success"}]
      294 RETURN                           R13 1
      295 DUPTABLE                         R13 K45 [{["result"] = "WriteFailed", ["correctedPropertyInfo"]}]
      296 GETUPVAL                         R14 12
      297 GETTABLEKS                       R14 R14 K46 ["fromInfoAndParts"]
      299 MOVE                             R15 R6
      300 MOVE                             R16 R8
      301 CALL                             R14 2 1
      302 SETTABLEKS                       R14 R13 K44 ["correctedPropertyInfo"]
      304 RETURN                           R13 1

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
       45 JUMP                             ; [+21]
       46 GETTABLEKS                       R6 R1 K6 ["type"]
       48 JUMPIFNOTEQKS                    R6 K12 ["Cancel"] ; [+4]
       50 GETIMPORT                        R5 K13 [Enum.FinishRecordingOperation.Cancel]
       52 JUMP                             ; [+14]
       53 GETTABLEKS                       R6 R1 K6 ["type"]
       55 JUMPIFEQKS                       R6 K14 ["Stage"] ; [+5]
       57 GETTABLEKS                       R6 R1 K6 ["type"]
       59 JUMPIFNOTEQKS                    R6 K15 ["Capture"] ; [+3]
       61 LOADNIL                          R5
       62 JUMP                             ; [+4]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R6 R1 K6 ["type"]
       66 CALL                             R5 1 1
       67 CALL                             R3 2 0
       68 GETTABLEKS                       R3 R1 K6 ["type"]
       70 JUMPIFEQKS                       R3 K14 ["Stage"] ; [+7]
       72 GETTABLEKS                       R3 R1 K6 ["type"]
       74 JUMPIFEQKS                       R3 K15 ["Capture"] ; [+3]
       76 LOADNIL                          R3
       77 SETUPVAL                         R3 0
       78 GETTABLEKS                       R3 R2 K16 ["result"]
       80 JUMPIFNOTEQKS                    R3 K17 ["Success"] ; [+2]
       82 RETURN                           R0 0
       83 GETTABLEKS                       R3 R2 K16 ["result"]
       85 JUMPIFNOTEQKS                    R3 K18 ["WriteFailed"] ; [+17]
       87 GETUPVAL                         R3 6
       88 GETTABLEKS                       R3 R3 K19 ["showProperties"]
       90 NEWTABLE                         R4 0 1
       92 MOVE                             R5 R0
       93 SETLIST                          R4 R5 1 [1]
       95 NEWTABLE                         R5 0 1
       97 GETTABLEKS                       R6 R2 K20 ["correctedPropertyInfo"]
       99 SETLIST                          R5 R6 1 [1]
      101 CALL                             R3 2 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R3 5
      104 GETTABLEKS                       R4 R2 K16 ["result"]
      106 CALL                             R3 1 0
      107 RETURN                           R0 0

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
