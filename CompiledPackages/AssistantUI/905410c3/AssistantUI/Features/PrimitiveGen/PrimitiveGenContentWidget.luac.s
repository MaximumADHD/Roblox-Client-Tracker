PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K3 ["\n"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 JUMPIFNOTLE                      R1 R2 ; [+13]
       15 LOADN                            R7 1
       16 SUBK                             R8 R1 K4 [1]
       17 FASTCALL3                        STRING_SUB R0 R7 R8
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K6 [string.sub]
       22 CALL                             R5 3 1
       23 MOVE                             R3 R5
       24 LOADK                            R4 K7 ["...(truncated)"]
       25 CONCAT                           R2 R3 R4
       26 RETURN                           R2 1
       27 LENGTH                           R2 R0
       28 GETUPVAL                         R3 1
       29 JUMPIFNOTLT                      R3 R2 ; [+13]
       31 LOADN                            R7 1
       32 GETUPVAL                         R8 1
       33 FASTCALL3                        STRING_SUB R0 R7 R8
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K6 [string.sub]
       38 CALL                             R5 3 1
       39 MOVE                             R3 R5
       40 LOADK                            R4 K7 ["...(truncated)"]
       41 CONCAT                           R2 R3 R4
       42 RETURN                           R2 1
       43 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "VerticalAlignment", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 LOADK                            R9 K13 ["center"]
       40 SETTABLEKS                       R9 R8 K11 ["VerticalAlignment"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K14 ["headerChildren"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K7 ["Header"]
       51 GETTABLEKS                       R6 R0 K15 ["children"]
       53 JUMPIFNOT                        R6 ; [+15]
       54 GETUPVAL                         R6 1
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K8 ["Content"]
       58 DUPTABLE                         R8 K17 [{"tag", "LayoutOrder"}]
       59 LOADK                            R9 K18 ["col size-0-0 fill auto-y gap-small"]
       60 SETTABLEKS                       R9 R8 K16 ["tag"]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       66 GETTABLEKS                       R9 R0 K15 ["children"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K8 ["Content"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isError"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["mode"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Preparing"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R0 K0 ["isError"]
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R3 R0 K3 ["errorMessage"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 LOADK                            R3 K4 ["%*: %*"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K5 ["GenerationFailed"]
       24 GETTABLEKS                       R6 R0 K3 ["errorMessage"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 JUMP                             ; [+7]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K7 ["Generating"]
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 1
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R5 4
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R6 R7 K8 ["assign"]
       45 DUPTABLE                         R7 K11 [{"canToggle", "headerChildren"}]
       46 LOADB                            R8 0
       47 SETTABLEKS                       R8 R7 K9 ["canToggle"]
       49 DUPTABLE                         R8 K13 [{"Text"}]
       50 GETUPVAL                         R9 3
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K16 [{"tag", "Text", "LayoutOrder"}]
       53 LOADK                            R12 K17 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       54 SETTABLEKS                       R12 R11 K14 ["tag"]
       56 SETTABLEKS                       R2 R11 K12 ["Text"]
       58 MOVE                             R12 R3
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       62 DUPTABLE                         R12 K19 [{"Shimmer"}]
       63 MOVE                             R13 R1
       64 JUMPIFNOT                        R13 ; [+3]
       65 GETUPVAL                         R13 3
       66 GETUPVAL                         R14 7
       67 CALL                             R13 1 1
       68 SETTABLEKS                       R13 R12 K18 ["Shimmer"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K12 ["Text"]
       73 SETTABLEKS                       R8 R7 K10 ["headerChildren"]
       75 MOVE                             R8 R0
       76 CALL                             R6 2 -1
       77 CALL                             R4 -1 -1
       78 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R1 K2 [os.clock]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTLE                      R1 R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 SUB                              R1 R2 R0
       20 GETIMPORT                        R2 K5 [task.delay]
       22 MOVE                             R3 R1
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U1
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useState"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["useEffect"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R7 0 3
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R2
       18 SETLIST                          R7 R8 3 [1]
       20 CALL                             R5 2 0
       21 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Generating"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R3 R0 K0 ["previewState"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["Inserted"]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETTABLEKS                       R4 R0 K0 ["previewState"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K3 ["Failed"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 GETTABLEKS                       R5 R0 K0 ["previewState"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K4 ["Cancelled"]
       32 JUMPIFEQ                         R5 R6 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R6 R0 K5 ["startTime"]
       39 MOVE                             R7 R1
       40 GETTABLEKS                       R8 R0 K6 ["generationStage"]
       42 CALL                             R5 3 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R7 R0 K7 ["previewImages"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R8 R0 K8 ["className"]
       50 CALL                             R7 1 1
       51 LOADNIL                          R8
       52 GETTABLEKS                       R10 R0 K8 ["className"]
       54 JUMPIFNOTEQKNIL                  R10 ; [+2]
       56 LOADB                            R9 0 +1
       57 LOADB                            R9 1
       58 JUMPIFNOT                        R1 ; [+12]
       59 JUMPIF                           R9 ; [+32]
       60 LOADK                            R10 K9 ["%* %*"]
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R12 R13 K10 ["GeneratingPrefix"]
       64 GETTABLEKS                       R13 R0 K11 ["displayName"]
       66 NAMECALL                         R10 R10 K12 ["format"]
       68 CALL                             R10 3 1
       69 MOVE                             R8 R10
       70 JUMP                             ; [+21]
       71 JUMPIFNOT                        R2 ; [+8]
       72 JUMPIFNOT                        R9 ; [+4]
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R8 R10 K2 ["Inserted"]
       76 JUMP                             ; [+15]
       77 GETTABLEKS                       R8 R0 K11 ["displayName"]
       79 JUMP                             ; [+12]
       80 JUMPIFNOT                        R4 ; [+4]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R8 R10 K13 ["GenerationCancelled"]
       84 JUMP                             ; [+7]
       85 JUMPIFNOT                        R3 ; [+4]
       86 GETUPVAL                         R10 4
       87 GETTABLEKS                       R8 R10 K14 ["GenerationFailed"]
       89 JUMP                             ; [+2]
       90 GETTABLEKS                       R8 R0 K0 ["previewState"]
       92 GETUPVAL                         R10 5
       93 MOVE                             R11 R8
       94 CALL                             R10 1 1
       95 MOVE                             R8 R10
       96 GETUPVAL                         R10 6
       97 CALL                             R10 0 1
       98 GETUPVAL                         R12 7
       99 LOADN                            R13 60
      100 JUMPIFNOTLE                      R13 R12 ; [+21]
      102 GETUPVAL                         R11 8
      103 LOADK                            R13 K15 ["PrimitiveGen"]
      104 LOADK                            R14 K16 ["ExpectedTimeMinutes"]
      105 DUPTABLE                         R15 K18 [{"minutes"}]
      106 GETIMPORT                        R16 K20 [string.format]
      108 LOADK                            R17 K21 ["%d"]
      109 GETUPVAL                         R20 7
      110 DIVK                             R19 R20 K22 [60]
      111 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      112 GETIMPORT                        R18 K25 [math.floor]
      114 CALL                             R18 1 1
      115 CALL                             R16 2 1
      116 SETTABLEKS                       R16 R15 K17 ["minutes"]
      118 NAMECALL                         R11 R11 K26 ["getText"]
      120 CALL                             R11 4 1
      121 JUMP                             ; [+14]
      122 GETUPVAL                         R11 8
      123 LOADK                            R13 K15 ["PrimitiveGen"]
      124 LOADK                            R14 K27 ["ExpectedTimeSeconds"]
      125 DUPTABLE                         R15 K29 [{"seconds"}]
      126 GETIMPORT                        R16 K20 [string.format]
      128 LOADK                            R17 K21 ["%d"]
      129 GETUPVAL                         R18 7
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K28 ["seconds"]
      133 NAMECALL                         R11 R11 K26 ["getText"]
      135 CALL                             R11 4 1
      136 GETUPVAL                         R12 9
      137 GETUPVAL                         R13 10
      138 GETUPVAL                         R15 11
      139 GETTABLEKS                       R14 R15 K30 ["assign"]
      141 DUPTABLE                         R15 K33 [{"canToggle", "headerChildren"}]
      142 LOADB                            R16 1
      143 SETTABLEKS                       R16 R15 K31 ["canToggle"]
      145 DUPTABLE                         R16 K35 [{"HeaderContent"}]
      146 GETUPVAL                         R17 9
      147 GETUPVAL                         R18 12
      148 DUPTABLE                         R19 K38 [{"tag", "LayoutOrder"}]
      149 LOADK                            R20 K39 ["row size-0-full auto-x align-y-center gap-xsmall"]
      150 SETTABLEKS                       R20 R19 K36 ["tag"]
      152 MOVE                             R20 R10
      153 CALL                             R20 0 1
      154 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      156 DUPTABLE                         R20 K43 [{"Text", "ChipArea", "StageInfo"}]
      157 GETUPVAL                         R21 9
      158 GETUPVAL                         R22 13
      159 DUPTABLE                         R23 K44 [{"tag", "Text", "LayoutOrder"}]
      160 LOADK                            R24 K45 ["size-0-0 auto-xy text-label-small content-default"]
      161 SETTABLEKS                       R24 R23 K36 ["tag"]
      163 SETTABLEKS                       R8 R23 K40 ["Text"]
      165 MOVE                             R24 R10
      166 CALL                             R24 0 1
      167 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      169 DUPTABLE                         R24 K47 [{"Shimmer"}]
      170 MOVE                             R25 R1
      171 JUMPIFNOT                        R25 ; [+3]
      172 GETUPVAL                         R25 9
      173 GETUPVAL                         R26 14
      174 CALL                             R25 1 1
      175 SETTABLEKS                       R25 R24 K46 ["Shimmer"]
      177 CALL                             R21 3 1
      178 SETTABLEKS                       R21 R20 K40 ["Text"]
      180 MOVE                             R21 R9
      181 JUMPIFNOT                        R21 ; [+56]
      182 GETUPVAL                         R21 9
      183 GETUPVAL                         R22 12
      184 DUPTABLE                         R23 K38 [{"tag", "LayoutOrder"}]
      185 LOADK                            R24 K48 ["auto-xy align-x-left align-y-center"]
      186 SETTABLEKS                       R24 R23 K36 ["tag"]
      188 MOVE                             R24 R10
      189 CALL                             R24 0 1
      190 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      192 DUPTABLE                         R24 K50 [{"AssetLink"}]
      193 GETUPVAL                         R25 9
      194 GETUPVAL                         R26 15
      195 DUPTABLE                         R27 K57 [{"text", "leading", "onActivated", "isDisabled", "isChecked", "size", "LayoutOrder"}]
      196 GETTABLEKS                       R28 R0 K11 ["displayName"]
      198 SETTABLEKS                       R28 R27 K51 ["text"]
      200 GETTABLEKS                       R28 R7 K58 ["Image"]
      202 SETTABLEKS                       R28 R27 K52 ["leading"]
      204 GETTABLEKS                       R28 R0 K59 ["onChipClicked"]
      206 JUMPIF                           R28 ; [+1]
      207 DUPCLOSURE                       R28 K60 [PROTO_8]
      208 SETTABLEKS                       R28 R27 K53 ["onActivated"]
      210 GETTABLEKS                       R29 R0 K59 ["onChipClicked"]
      212 JUMPIFEQKNIL                     R29 ; [+2]
      214 LOADB                            R28 0 +1
      215 LOADB                            R28 1
      216 SETTABLEKS                       R28 R27 K54 ["isDisabled"]
      218 LOADB                            R28 0
      219 SETTABLEKS                       R28 R27 K55 ["isChecked"]
      221 GETUPVAL                         R31 16
      222 GETTABLEKS                       R30 R31 K61 ["Enums"]
      224 GETTABLEKS                       R29 R30 K62 ["ChipSize"]
      226 GETTABLEKS                       R28 R29 K63 ["Small"]
      228 SETTABLEKS                       R28 R27 K56 ["size"]
      230 MOVE                             R28 R10
      231 CALL                             R28 0 1
      232 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      234 CALL                             R25 2 1
      235 SETTABLEKS                       R25 R24 K49 ["AssetLink"]
      237 CALL                             R21 3 1
      238 SETTABLEKS                       R21 R20 K41 ["ChipArea"]
      240 MOVE                             R21 R1
      241 JUMPIFNOT                        R21 ; [+80]
      242 GETUPVAL                         R21 9
      243 GETUPVAL                         R22 12
      244 DUPTABLE                         R23 K38 [{"tag", "LayoutOrder"}]
      245 LOADK                            R24 K64 ["row size-0-0 auto-xy align-y-center gap-xsmall padding-top-xxsmall"]
      246 SETTABLEKS                       R24 R23 K36 ["tag"]
      248 MOVE                             R24 R10
      249 CALL                             R24 0 1
      250 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      252 DUPTABLE                         R24 K68 [{"GenerationStage", "ExpectedTime", "TakingLonger"}]
      253 GETTABLEKS                       R25 R0 K6 ["generationStage"]
      255 JUMPIFNOT                        R25 ; [+20]
      256 GETUPVAL                         R25 9
      257 GETUPVAL                         R26 13
      258 DUPTABLE                         R27 K44 [{"tag", "Text", "LayoutOrder"}]
      259 LOADK                            R28 K69 ["size-0-0 auto-xy text-caption-small content-muted"]
      260 SETTABLEKS                       R28 R27 K36 ["tag"]
      262 LOADK                            R29 K70 ["(%*)"]
      263 GETTABLEKS                       R31 R0 K6 ["generationStage"]
      265 NAMECALL                         R29 R29 K12 ["format"]
      267 CALL                             R29 2 1
      268 MOVE                             R28 R29
      269 SETTABLEKS                       R28 R27 K40 ["Text"]
      271 MOVE                             R28 R10
      272 CALL                             R28 0 1
      273 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      275 CALL                             R25 2 1
      276 SETTABLEKS                       R25 R24 K65 ["GenerationStage"]
      278 NOT                              R25 R5
      279 JUMPIFNOT                        R25 ; [+19]
      280 GETUPVAL                         R25 9
      281 GETUPVAL                         R26 13
      282 DUPTABLE                         R27 K44 [{"tag", "Text", "LayoutOrder"}]
      283 LOADK                            R28 K69 ["size-0-0 auto-xy text-caption-small content-muted"]
      284 SETTABLEKS                       R28 R27 K36 ["tag"]
      286 LOADK                            R29 K71 ["%*"]
      287 MOVE                             R31 R11
      288 NAMECALL                         R29 R29 K12 ["format"]
      290 CALL                             R29 2 1
      291 MOVE                             R28 R29
      292 SETTABLEKS                       R28 R27 K40 ["Text"]
      294 MOVE                             R28 R10
      295 CALL                             R28 0 1
      296 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      298 CALL                             R25 2 1
      299 SETTABLEKS                       R25 R24 K66 ["ExpectedTime"]
      301 MOVE                             R25 R5
      302 JUMPIFNOT                        R25 ; [+16]
      303 GETUPVAL                         R25 9
      304 GETUPVAL                         R26 13
      305 DUPTABLE                         R27 K44 [{"tag", "Text", "LayoutOrder"}]
      306 LOADK                            R28 K69 ["size-0-0 auto-xy text-caption-small content-muted"]
      307 SETTABLEKS                       R28 R27 K36 ["tag"]
      309 GETUPVAL                         R29 4
      310 GETTABLEKS                       R28 R29 K67 ["TakingLonger"]
      312 SETTABLEKS                       R28 R27 K40 ["Text"]
      314 MOVE                             R28 R10
      315 CALL                             R28 0 1
      316 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      318 CALL                             R25 2 1
      319 SETTABLEKS                       R25 R24 K67 ["TakingLonger"]
      321 CALL                             R21 3 1
      322 SETTABLEKS                       R21 R20 K42 ["StageInfo"]
      324 CALL                             R17 3 1
      325 SETTABLEKS                       R17 R16 K34 ["HeaderContent"]
      327 SETTABLEKS                       R16 R15 K32 ["headerChildren"]
      329 MOVE                             R16 R0
      330 CALL                             R14 2 1
      331 DUPTABLE                         R15 K73 [{"Preview"}]
      332 JUMPIF                           R3 ; [+1]
      333 JUMPIFNOT                        R4 ; [+87]
      334 GETTABLEKS                       R17 R6 K74 ["exists"]
      336 JUMPIF                           R17 ; [+84]
      337 GETUPVAL                         R16 9
      338 GETUPVAL                         R17 12
      339 DUPTABLE                         R18 K76 [{"tag", "Size", "LayoutOrder"}]
      340 LOADK                            R19 K77 ["col size-full-0 radius-small align-x-center align-y-center bg-shift-200 gap-medium padding-large"]
      341 SETTABLEKS                       R19 R18 K36 ["tag"]
      343 GETIMPORT                        R19 K80 [UDim2.new]
      345 LOADN                            R20 1
      346 LOADN                            R21 0
      347 LOADN                            R22 0
      348 GETUPVAL                         R23 17
      349 CALL                             R19 4 1
      350 SETTABLEKS                       R19 R18 K75 ["Size"]
      352 MOVE                             R19 R10
      353 CALL                             R19 0 1
      354 SETTABLEKS                       R19 R18 K37 ["LayoutOrder"]
      356 DUPTABLE                         R19 K83 [{"ErrorIcon", "ErrorText"}]
      357 GETUPVAL                         R20 9
      358 GETUPVAL                         R21 18
      359 DUPTABLE                         R22 K84 [{"tag", "Image", "LayoutOrder"}]
      360 LOADK                            R23 K85 ["size-500-500 content-system-warning"]
      361 SETTABLEKS                       R23 R22 K36 ["tag"]
      363 LOADK                            R23 K86 ["icons/status/error_large"]
      364 SETTABLEKS                       R23 R22 K58 ["Image"]
      366 MOVE                             R23 R10
      367 CALL                             R23 0 1
      368 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      370 CALL                             R20 2 1
      371 SETTABLEKS                       R20 R19 K81 ["ErrorIcon"]
      373 GETUPVAL                         R20 9
      374 GETUPVAL                         R21 13
      375 DUPTABLE                         R22 K88 [{"tag", "TextWrapped", "Text", "LayoutOrder"}]
      376 LOADK                            R23 K89 ["size-full-0 auto-y text-label-small content-muted text-align-x-center"]
      377 SETTABLEKS                       R23 R22 K36 ["tag"]
      379 LOADB                            R23 1
      380 SETTABLEKS                       R23 R22 K87 ["TextWrapped"]
      382 JUMPIFNOT                        R4 ; [+4]
      383 GETUPVAL                         R24 4
      384 GETTABLEKS                       R23 R24 K13 ["GenerationCancelled"]
      386 JUMP                             ; [+23]
      387 GETTABLEKS                       R24 R0 K90 ["previewErrorMessage"]
      389 JUMPIFNOT                        R24 ; [+17]
      390 GETTABLEKS                       R25 R0 K90 ["previewErrorMessage"]
      392 LENGTH                           R24 R25
      393 LOADN                            R25 0
      394 JUMPIFNOTLT                      R25 R24 ; [+12]
      396 LOADK                            R24 K91 ["%*\n\n%*"]
      397 GETUPVAL                         R27 4
      398 GETTABLEKS                       R26 R27 K14 ["GenerationFailed"]
      400 GETTABLEKS                       R27 R0 K90 ["previewErrorMessage"]
      402 NAMECALL                         R24 R24 K12 ["format"]
      404 CALL                             R24 3 1
      405 MOVE                             R23 R24
      406 JUMP                             ; [+3]
      407 GETUPVAL                         R24 4
      408 GETTABLEKS                       R23 R24 K14 ["GenerationFailed"]
      410 SETTABLEKS                       R23 R22 K40 ["Text"]
      412 MOVE                             R23 R10
      413 CALL                             R23 0 1
      414 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      416 CALL                             R20 2 1
      417 SETTABLEKS                       R20 R19 K82 ["ErrorText"]
      419 CALL                             R16 3 1
      420 JUMP                             ; [+144]
      421 GETTABLEKS                       R17 R6 K74 ["exists"]
      423 JUMPIF                           R17 ; [+27]
      424 GETUPVAL                         R16 9
      425 GETUPVAL                         R17 19
      426 DUPTABLE                         R18 K93 [{"Size", "radius", "LayoutOrder"}]
      427 GETIMPORT                        R19 K80 [UDim2.new]
      429 LOADN                            R20 1
      430 LOADN                            R21 0
      431 LOADN                            R22 0
      432 GETUPVAL                         R23 17
      433 CALL                             R19 4 1
      434 SETTABLEKS                       R19 R18 K75 ["Size"]
      436 GETUPVAL                         R22 16
      437 GETTABLEKS                       R21 R22 K61 ["Enums"]
      439 GETTABLEKS                       R20 R21 K94 ["Radius"]
      441 GETTABLEKS                       R19 R20 K63 ["Small"]
      443 SETTABLEKS                       R19 R18 K92 ["radius"]
      445 MOVE                             R19 R10
      446 CALL                             R19 0 1
      447 SETTABLEKS                       R19 R18 K37 ["LayoutOrder"]
      449 CALL                             R16 2 1
      450 JUMP                             ; [+114]
      451 GETUPVAL                         R16 9
      452 GETUPVAL                         R17 18
      453 DUPTABLE                         R18 K98 [{"tag", "Image", "Size", "BackgroundTransparency", "BackgroundColor3", "ScaleType", "LayoutOrder"}]
      454 GETUPVAL                         R20 20
      455 CALL                             R20 0 1
      456 JUMPIFNOT                        R20 ; [+2]
      457 LOADK                            R19 K99 ["row size-full-0 auto-y radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      458 JUMP                             ; [+1]
      459 LOADK                            R19 K100 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      460 SETTABLEKS                       R19 R18 K36 ["tag"]
      462 GETTABLEKS                       R19 R6 K101 ["current"]
      464 SETTABLEKS                       R19 R18 K58 ["Image"]
      466 GETIMPORT                        R19 K80 [UDim2.new]
      468 LOADN                            R20 1
      469 LOADN                            R21 0
      470 LOADN                            R22 0
      471 GETUPVAL                         R23 17
      472 CALL                             R19 4 1
      473 SETTABLEKS                       R19 R18 K75 ["Size"]
      475 GETUPVAL                         R20 20
      476 CALL                             R20 0 1
      477 JUMPIFNOT                        R20 ; [+2]
      478 LOADN                            R19 1
      479 JUMP                             ; [+1]
      480 LOADN                            R19 0
      481 SETTABLEKS                       R19 R18 K95 ["BackgroundTransparency"]
      483 GETIMPORT                        R19 K104 [Color3.fromRGB]
      485 LOADN                            R20 0
      486 LOADN                            R21 0
      487 LOADN                            R22 0
      488 CALL                             R19 3 1
      489 SETTABLEKS                       R19 R18 K96 ["BackgroundColor3"]
      491 GETIMPORT                        R19 K107 [Enum.ScaleType.Fit]
      493 SETTABLEKS                       R19 R18 K97 ["ScaleType"]
      495 MOVE                             R19 R10
      496 CALL                             R19 0 1
      497 SETTABLEKS                       R19 R18 K37 ["LayoutOrder"]
      499 DUPTABLE                         R19 K110 [{"LastPreview", "NextPreview"}]
      500 GETUPVAL                         R20 9
      501 GETUPVAL                         R21 21
      502 DUPTABLE                         R22 K112 [{"icon", "size", "onActivated", "LayoutOrder"}]
      503 GETUPVAL                         R26 16
      504 GETTABLEKS                       R25 R26 K61 ["Enums"]
      506 GETTABLEKS                       R24 R25 K113 ["IconName"]
      508 GETTABLEKS                       R23 R24 K114 ["ChevronLargeLeft"]
      510 SETTABLEKS                       R23 R22 K111 ["icon"]
      512 GETUPVAL                         R26 16
      513 GETTABLEKS                       R25 R26 K61 ["Enums"]
      515 GETTABLEKS                       R24 R25 K115 ["InputSize"]
      517 GETTABLEKS                       R23 R24 K63 ["Small"]
      519 SETTABLEKS                       R23 R22 K56 ["size"]
      521 GETTABLEKS                       R23 R6 K116 ["decrement"]
      523 SETTABLEKS                       R23 R22 K53 ["onActivated"]
      525 MOVE                             R23 R10
      526 CALL                             R23 0 1
      527 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      529 CALL                             R20 2 1
      530 SETTABLEKS                       R20 R19 K108 ["LastPreview"]
      532 GETUPVAL                         R20 9
      533 GETUPVAL                         R21 21
      534 DUPTABLE                         R22 K112 [{"icon", "size", "onActivated", "LayoutOrder"}]
      535 GETUPVAL                         R26 16
      536 GETTABLEKS                       R25 R26 K61 ["Enums"]
      538 GETTABLEKS                       R24 R25 K113 ["IconName"]
      540 GETTABLEKS                       R23 R24 K117 ["ChevronLargeRight"]
      542 SETTABLEKS                       R23 R22 K111 ["icon"]
      544 GETUPVAL                         R26 16
      545 GETTABLEKS                       R25 R26 K61 ["Enums"]
      547 GETTABLEKS                       R24 R25 K115 ["InputSize"]
      549 GETTABLEKS                       R23 R24 K63 ["Small"]
      551 SETTABLEKS                       R23 R22 K56 ["size"]
      553 GETTABLEKS                       R23 R6 K118 ["increment"]
      555 SETTABLEKS                       R23 R22 K53 ["onActivated"]
      557 MOVE                             R23 R10
      558 CALL                             R23 0 1
      559 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      561 CALL                             R20 2 1
      562 SETTABLEKS                       R20 R19 K109 ["NextPreview"]
      564 CALL                             R16 3 1
      565 SETTABLEKS                       R16 R15 K72 ["Preview"]
      567 CALL                             R12 3 -1
      568 RETURN                           R12 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R5 R0 K0 ["generationErrorType"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIF                           R3 ; [+1]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R4 R0 K1 ["generationErrorMessage"]
       12 GETUPVAL                         R5 4
       13 GETUPVAL                         R6 5
       14 GETUPVAL                         R8 6
       15 GETTABLEKS                       R7 R8 K2 ["assign"]
       17 DUPTABLE                         R8 K5 [{"canToggle", "headerChildren"}]
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K3 ["canToggle"]
       21 DUPTABLE                         R9 K8 [{"StatusIcon", "Text"}]
       22 GETUPVAL                         R10 4
       23 GETUPVAL                         R11 7
       24 DUPTABLE                         R12 K13 [{"name", "size", "style", "LayoutOrder"}]
       25 LOADK                            R13 K14 ["icons/status/warning"]
       26 SETTABLEKS                       R13 R12 K9 ["name"]
       28 GETUPVAL                         R16 8
       29 GETTABLEKS                       R15 R16 K15 ["Enums"]
       31 GETTABLEKS                       R14 R15 K16 ["IconSize"]
       33 GETTABLEKS                       R13 R14 K17 ["Small"]
       35 SETTABLEKS                       R13 R12 K10 ["size"]
       37 GETTABLEKS                       R15 R1 K18 ["Color"]
       39 GETTABLEKS                       R14 R15 K19 ["System"]
       41 GETTABLEKS                       R13 R14 K20 ["Alert"]
       43 SETTABLEKS                       R13 R12 K11 ["style"]
       45 MOVE                             R13 R2
       46 CALL                             R13 0 1
       47 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K6 ["StatusIcon"]
       52 GETUPVAL                         R10 4
       53 GETUPVAL                         R11 9
       54 DUPTABLE                         R12 K22 [{"tag", "Text", "LayoutOrder"}]
       55 LOADK                            R13 K23 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       56 SETTABLEKS                       R13 R12 K21 ["tag"]
       58 GETUPVAL                         R14 10
       59 GETTABLEKS                       R13 R14 K24 ["GenerationFailed"]
       61 SETTABLEKS                       R13 R12 K7 ["Text"]
       63 MOVE                             R13 R2
       64 CALL                             R13 0 1
       65 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K7 ["Text"]
       70 SETTABLEKS                       R9 R8 K4 ["headerChildren"]
       72 MOVE                             R9 R0
       73 CALL                             R7 2 1
       74 DUPTABLE                         R8 K27 [{"TemplateMessage", "ErrorDetail"}]
       75 GETUPVAL                         R9 4
       76 GETUPVAL                         R10 9
       77 DUPTABLE                         R11 K29 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
       78 LOADK                            R12 K30 ["size-full-0 auto-y text-body-small content-muted text-align-x-left"]
       79 SETTABLEKS                       R12 R11 K21 ["tag"]
       81 SETTABLEKS                       R3 R11 K7 ["Text"]
       83 LOADB                            R12 1
       84 SETTABLEKS                       R12 R11 K28 ["TextWrapped"]
       86 MOVE                             R12 R2
       87 CALL                             R12 0 1
       88 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K25 ["TemplateMessage"]
       93 MOVE                             R9 R4
       94 JUMPIFNOT                        R9 ; [+65]
       95 GETUPVAL                         R9 4
       96 GETUPVAL                         R10 11
       97 DUPTABLE                         R11 K31 [{"tag", "LayoutOrder"}]
       98 LOADK                            R12 K32 ["size-full-0 auto-y bg-shift-200 radius-small padding-small"]
       99 SETTABLEKS                       R12 R11 K21 ["tag"]
      101 MOVE                             R12 R2
      102 CALL                             R12 0 1
      103 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      105 DUPTABLE                         R12 K34 [{"ErrorText"}]
      106 GETUPVAL                         R13 4
      107 LOADK                            R14 K35 ["TextBox"]
      108 DUPTABLE                         R15 K45 [{"Text", "TextEditable", "ClearTextOnFocus", "TextWrapped", "TextXAlignment", "TextColor3", "FontFace", "TextSize", "Size", "AutomaticSize", "BackgroundTransparency"}]
      109 SETTABLEKS                       R4 R15 K7 ["Text"]
      111 LOADB                            R16 0
      112 SETTABLEKS                       R16 R15 K36 ["TextEditable"]
      114 LOADB                            R16 0
      115 SETTABLEKS                       R16 R15 K37 ["ClearTextOnFocus"]
      117 LOADB                            R16 1
      118 SETTABLEKS                       R16 R15 K28 ["TextWrapped"]
      120 GETIMPORT                        R16 K48 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R16 R15 K38 ["TextXAlignment"]
      124 GETIMPORT                        R16 K51 [Color3.fromRGB]
      126 LOADN                            R17 138
      127 LOADN                            R18 180
      128 LOADN                            R19 220
      129 CALL                             R16 3 1
      130 SETTABLEKS                       R16 R15 K39 ["TextColor3"]
      132 GETUPVAL                         R17 12
      133 GETTABLEKS                       R16 R17 K52 ["CODE_FONT"]
      135 SETTABLEKS                       R16 R15 K40 ["FontFace"]
      137 LOADN                            R16 12
      138 SETTABLEKS                       R16 R15 K41 ["TextSize"]
      140 GETIMPORT                        R16 K55 [UDim2.new]
      142 LOADN                            R17 1
      143 LOADN                            R18 0
      144 LOADN                            R19 0
      145 LOADN                            R20 0
      146 CALL                             R16 4 1
      147 SETTABLEKS                       R16 R15 K42 ["Size"]
      149 GETIMPORT                        R16 K57 [Enum.AutomaticSize.Y]
      151 SETTABLEKS                       R16 R15 K43 ["AutomaticSize"]
      153 LOADN                            R16 1
      154 SETTABLEKS                       R16 R15 K44 ["BackgroundTransparency"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K33 ["ErrorText"]
      159 CALL                             R9 3 1
      160 SETTABLEKS                       R9 R8 K26 ["ErrorDetail"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["ShowPreview"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["mode"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["GenerationError"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+6]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETTABLEKS                       R1 R0 K0 ["mode"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K3 ["Preparing"]
       29 JUMPIFEQ                         R1 R2 ; [+7]
       31 GETIMPORT                        R1 K5 [warn]
       33 LOADK                            R2 K6 ["Unsupported mode of PrimitiveGenContentWidget"]
       34 GETTABLEKS                       R3 R0 K0 ["mode"]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R1 R0 K7 ["toolResult"]
       39 JUMPIFNOT                        R1 ; [+4]
       40 GETTABLEKS                       R2 R0 K7 ["toolResult"]
       42 GETTABLEKS                       R1 R2 K8 ["isError"]
       44 GETUPVAL                         R3 4
       45 GETTABLEKS                       R2 R3 K9 ["join"]
       47 MOVE                             R3 R0
       48 DUPTABLE                         R4 K10 [{"isError"}]
       49 SETTABLEKS                       R1 R4 K8 ["isError"]
       51 CALL                             R2 2 1
       52 MOVE                             R0 R2
       53 GETUPVAL                         R2 1
       54 GETUPVAL                         R3 5
       55 MOVE                             R4 R0
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K13 ["ShimmerGradient"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Resources"]
       53 GETTABLEKS                       R9 R10 K15 ["Localization"]
       55 GETTABLEKS                       R8 R9 K16 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       67 GETTABLEKS                       R10 R11 K19 ["useClassIcon"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K20 ["useWrappingIndex"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R14 R0 K21 ["Features"]
       81 GETTABLEKS                       R13 R14 K22 ["Gen3dUtils"]
       83 GETTABLEKS                       R12 R13 K23 ["Gen3dConstants"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K24 ["Flags"]
       90 GETTABLEKS                       R13 R14 K25 ["FFlagDisableTruncatePrimGenHeader"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K24 ["Flags"]
       97 GETTABLEKS                       R14 R15 K26 ["FFlagPrimGenFetchPreviewFromBackend"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K24 ["Flags"]
      104 GETTABLEKS                       R15 R16 K27 ["FIntPrimGenLongRunThresholdSec"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K24 ["Flags"]
      111 GETTABLEKS                       R16 R17 K28 ["FIntPrimGenTextMaxLength"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R3 K29 ["Chip"]
      116 GETTABLEKS                       R17 R3 K30 ["Icon"]
      118 GETTABLEKS                       R18 R3 K31 ["IconButton"]
      120 GETTABLEKS                       R19 R3 K32 ["Image"]
      122 GETTABLEKS                       R20 R3 K33 ["Skeleton"]
      124 GETTABLEKS                       R21 R3 K34 ["Text"]
      126 GETTABLEKS                       R22 R3 K35 ["View"]
      128 GETTABLEKS                       R24 R3 K18 ["Hooks"]
      130 GETTABLEKS                       R23 R24 K36 ["useTokens"]
      132 GETTABLEKS                       R24 R5 K37 ["createNextOrder"]
      134 GETTABLEKS                       R25 R4 K38 ["createElement"]
      136 GETTABLEKS                       R26 R11 K39 ["PREVIEW_HEIGHT"]
      138 GETTABLEKS                       R27 R11 K40 ["PREVIEW_IMAGE_COUNT"]
      140 MOVE                             R28 R14
      141 CALL                             R28 0 1
      142 MOVE                             R29 R15
      143 CALL                             R29 0 1
      144 DUPCLOSURE                       R30 K41 [PROTO_0]
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R29
      147 DUPTABLE                         R31 K46 [{"Generating", "Inserted", "Failed", "Cancelled"}]
      148 LOADK                            R32 K42 ["Generating"]
      149 SETTABLEKS                       R32 R31 K42 ["Generating"]
      151 LOADK                            R32 K43 ["Inserted"]
      152 SETTABLEKS                       R32 R31 K43 ["Inserted"]
      154 LOADK                            R32 K44 ["Failed"]
      155 SETTABLEKS                       R32 R31 K44 ["Failed"]
      157 LOADK                            R32 K45 ["Cancelled"]
      158 SETTABLEKS                       R32 R31 K45 ["Cancelled"]
      160 DUPTABLE                         R32 K50 [{"Preparing", "ShowPreview", "GenerationError"}]
      161 LOADK                            R33 K47 ["Preparing"]
      162 SETTABLEKS                       R33 R32 K47 ["Preparing"]
      164 LOADK                            R33 K48 ["ShowPreview"]
      165 SETTABLEKS                       R33 R32 K48 ["ShowPreview"]
      167 LOADK                            R33 K49 ["GenerationError"]
      168 SETTABLEKS                       R33 R32 K49 ["GenerationError"]
      170 DUPCLOSURE                       R33 K51 [PROTO_1]
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R1
      174 DUPTABLE                         R34 K53 [{"Generating", "GenerationFailed"}]
      175 LOADK                            R37 K54 ["PrimitiveGen"]
      176 LOADK                            R38 K42 ["Generating"]
      177 NAMECALL                         R35 R7 K55 ["getText"]
      179 CALL                             R35 3 1
      180 SETTABLEKS                       R35 R34 K42 ["Generating"]
      182 LOADK                            R37 K54 ["PrimitiveGen"]
      183 LOADK                            R38 K52 ["GenerationFailed"]
      184 NAMECALL                         R35 R7 K55 ["getText"]
      186 CALL                             R35 3 1
      187 SETTABLEKS                       R35 R34 K52 ["GenerationFailed"]
      189 DUPCLOSURE                       R35 K56 [PROTO_2]
      190 CAPTURE                          VAL R32
      191 CAPTURE                          VAL R34
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R33
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R6
      198 DUPCLOSURE                       R36 K57 [PROTO_6]
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R28
      201 DUPCLOSURE                       R37 K58 [PROTO_7]
      202 CAPTURE                          VAL R10
      203 DUPTABLE                         R38 K62 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      204 LOADK                            R41 K54 ["PrimitiveGen"]
      205 LOADK                            R42 K59 ["GeneratingPrefix"]
      206 NAMECALL                         R39 R7 K55 ["getText"]
      208 CALL                             R39 3 1
      209 SETTABLEKS                       R39 R38 K59 ["GeneratingPrefix"]
      211 LOADK                            R41 K54 ["PrimitiveGen"]
      212 LOADK                            R42 K43 ["Inserted"]
      213 NAMECALL                         R39 R7 K55 ["getText"]
      215 CALL                             R39 3 1
      216 SETTABLEKS                       R39 R38 K43 ["Inserted"]
      218 LOADK                            R41 K54 ["PrimitiveGen"]
      219 LOADK                            R42 K60 ["GenerationCancelled"]
      220 NAMECALL                         R39 R7 K55 ["getText"]
      222 CALL                             R39 3 1
      223 SETTABLEKS                       R39 R38 K60 ["GenerationCancelled"]
      225 LOADK                            R41 K54 ["PrimitiveGen"]
      226 LOADK                            R42 K52 ["GenerationFailed"]
      227 NAMECALL                         R39 R7 K55 ["getText"]
      229 CALL                             R39 3 1
      230 SETTABLEKS                       R39 R38 K52 ["GenerationFailed"]
      232 LOADK                            R41 K54 ["PrimitiveGen"]
      233 LOADK                            R42 K61 ["TakingLonger"]
      234 NAMECALL                         R39 R7 K55 ["getText"]
      236 CALL                             R39 3 1
      237 SETTABLEKS                       R39 R38 K61 ["TakingLonger"]
      239 DUPCLOSURE                       R39 K63 [PROTO_9]
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R36
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R38
      245 CAPTURE                          VAL R30
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R33
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R20
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R18
      262 LOADK                            R42 K54 ["PrimitiveGen"]
      263 LOADK                            R43 K64 ["GenerationErrorGeneral"]
      264 NAMECALL                         R40 R7 K55 ["getText"]
      266 CALL                             R40 3 1
      267 DUPTABLE                         R41 K68 [{"General", "TooManyRequests", "ModerationFailed"}]
      268 SETTABLEKS                       R40 R41 K65 ["General"]
      270 LOADK                            R44 K54 ["PrimitiveGen"]
      271 LOADK                            R45 K69 ["GenerationErrorTooManyRequests"]
      272 NAMECALL                         R42 R7 K55 ["getText"]
      274 CALL                             R42 3 1
      275 SETTABLEKS                       R42 R41 K66 ["TooManyRequests"]
      277 LOADK                            R44 K54 ["PrimitiveGen"]
      278 LOADK                            R45 K70 ["GenerationErrorModerationFailed"]
      279 NAMECALL                         R42 R7 K55 ["getText"]
      281 CALL                             R42 3 1
      282 SETTABLEKS                       R42 R41 K67 ["ModerationFailed"]
      284 DUPCLOSURE                       R42 K71 [PROTO_10]
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R24
      287 CAPTURE                          VAL R41
      288 CAPTURE                          VAL R40
      289 CAPTURE                          VAL R25
      290 CAPTURE                          VAL R33
      291 CAPTURE                          VAL R2
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R21
      295 CAPTURE                          VAL R34
      296 CAPTURE                          VAL R22
      297 CAPTURE                          VAL R8
      298 DUPCLOSURE                       R43 K72 [PROTO_11]
      299 CAPTURE                          VAL R32
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R39
      302 CAPTURE                          VAL R42
      303 CAPTURE                          VAL R2
      304 CAPTURE                          VAL R35
      305 DUPTABLE                         R44 K77 [{"Type", "ContentWidget", "Modes", "PreviewState", "PREVIEW_IMAGE_COUNT"}]
      306 LOADK                            R45 K54 ["PrimitiveGen"]
      307 SETTABLEKS                       R45 R44 K73 ["Type"]
      309 GETTABLEKS                       R45 R4 K78 ["memo"]
      311 MOVE                             R46 R43
      312 CALL                             R45 1 1
      313 SETTABLEKS                       R45 R44 K74 ["ContentWidget"]
      315 SETTABLEKS                       R32 R44 K75 ["Modes"]
      317 SETTABLEKS                       R31 R44 K76 ["PreviewState"]
      319 SETTABLEKS                       R27 R44 K40 ["PREVIEW_IMAGE_COUNT"]
      321 RETURN                           R44 1
