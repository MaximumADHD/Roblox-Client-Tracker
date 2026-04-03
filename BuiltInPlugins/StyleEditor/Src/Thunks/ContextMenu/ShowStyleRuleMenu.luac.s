PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["Selector"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R1
        8 GETUPVAL                         R7 3
        9 CALL                             R4 3 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 GETUPVAL                         R2 4
       14 JUMPIF                           R2 ; [+15]
       15 GETUPVAL                         R3 5
       16 GETTABLEKS                       R2 R3 K3 ["createItemId"]
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 6
       22 NEWTABLE                         R6 1 0
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R6 R2
       26 CALL                             R5 1 -1
       27 NAMECALL                         R3 R3 K2 ["dispatch"]
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R6 3
        4 GETTABLEKS                       R5 R6 K0 ["DEFAULT_TRANSITION_NAME"]
        6 GETIMPORT                        R6 K3 [TweenInfo.new]
        8 CALL                             R6 0 -1
        9 CALL                             R3 -1 -1
       10 NAMECALL                         R1 R1 K4 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+33]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+31]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["getQueryStyleRulesForPseudo"]
        7 GETUPVAL                         R2 3
        8 CALL                             R1 1 1
        9 NEWTABLE                         R2 0 1
       11 GETUPVAL                         R3 3
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K3 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-8]
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R5 5
       29 MOVE                             R6 R2
       30 CALL                             R5 1 -1
       31 NAMECALL                         R3 R3 K4 ["dispatch"]
       33 CALL                             R3 -1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 4
       36 GETUPVAL                         R3 6
       37 GETUPVAL                         R4 3
       38 CALL                             R3 1 -1
       39 NAMECALL                         R1 R1 K4 ["dispatch"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Parent"]
        3 FASTCALL1                        TYPEOF R4 ; [+2]
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["Instance"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       13 LOADK                            R3 K4 ["StyleRule expected to have a valid parent"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R1 3
       22 GETUPVAL                         R3 4
       23 GETUPVAL                         R4 0
       24 CALL                             R3 1 -1
       25 NAMECALL                         R1 R1 K7 ["dispatch"]
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R3 5
       31 GETUPVAL                         R4 0
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K0 ["Parent"]
       35 CALL                             R3 2 -1
       36 NAMECALL                         R1 R1 K7 ["dispatch"]
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 1
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K0 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R3 5
       14 GETUPVAL                         R4 4
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K0 ["dispatch"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["StyleRule"]
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+6]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Selected invalid StyleRule: "]
       11 GETUPVAL                         R4 0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 LOADB                            R2 0
       15 LOADB                            R3 0
       16 GETUPVAL                         R4 1
       17 JUMPIFNOT                        R4 ; [+25]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K5 ["getQueryTypeFromSelector"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K6 ["Selector"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K7 ["Type"]
       28 GETTABLEKS                       R5 R6 K8 ["Pseudo"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K7 ["Type"]
       37 GETTABLEKS                       R5 R6 K9 ["Query"]
       39 JUMPIFEQ                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 NAMECALL                         R4 R0 K10 ["getState"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R1 K11 ["Localization"]
       48 NEWTABLE                         R6 0 0
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R7 R8 K12 ["getNewSelectorAction"]
       53 GETUPVAL                         R8 0
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 MOVE                             R10 R5
       63 CALL                             R7 3 1
       64 GETUPVAL                         R8 1
       65 JUMPIFNOT                        R8 ; [+1]
       66 JUMPIF                           R2 ; [+7]
       67 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       69 MOVE                             R9 R6
       70 MOVE                             R10 R7
       71 GETIMPORT                        R8 K15 [table.insert]
       73 CALL                             R8 2 0
       74 GETUPVAL                         R8 1
       75 JUMPIF                           R8 ; [+2]
       76 GETUPVAL                         R8 9
       77 JUMPIFNOT                        R8 ; [+114]
       78 NEWTABLE                         R8 0 0
       80 GETUPVAL                         R9 9
       81 JUMPIFNOT                        R9 ; [+45]
       82 GETUPVAL                         R11 0
       83 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       85 CALL                             R11 1 1
       86 GETUPVAL                         R13 10
       87 GETTABLEKS                       R12 R13 K17 ["DEFAULT_TRANSITION_NAME"]
       89 GETTABLE                         R10 R11 R12
       90 JUMPIFEQKNIL                     R10 ; [+2]
       92 LOADB                            R9 0 +1
       93 LOADB                            R9 1
       94 DUPTABLE                         R10 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       95 LOADK                            R11 K24 ["DefaultTransition"]
       96 SETTABLEKS                       R11 R10 K18 ["Id"]
       98 LOADK                            R13 K25 ["ContextMenu"]
       99 LOADK                            R14 K26 ["New.Transition"]
      100 NAMECALL                         R11 R5 K27 ["getText"]
      102 CALL                             R11 3 1
      103 SETTABLEKS                       R11 R10 K19 ["Text"]
      105 GETUPVAL                         R12 11
      106 GETTABLEKS                       R11 R12 K14 ["insert"]
      108 CALL                             R11 0 1
      109 SETTABLEKS                       R11 R10 K20 ["Icon"]
      111 SETTABLEKS                       R9 R10 K21 ["Enabled"]
      113 NEWCLOSURE                       R11 P1
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          UPVAL U0
      117 CAPTURE                          UPVAL U10
      118 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
      120 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      122 MOVE                             R12 R8
      123 MOVE                             R13 R10
      124 GETIMPORT                        R11 K15 [table.insert]
      126 CALL                             R11 2 0
      127 GETUPVAL                         R9 1
      128 JUMPIFNOT                        R9 ; [+30]
      129 JUMPIF                           R2 ; [+29]
      130 JUMPIF                           R3 ; [+28]
      131 DUPTABLE                         R9 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      132 LOADK                            R10 K29 ["StyleQuery"]
      133 SETTABLEKS                       R10 R9 K18 ["Id"]
      135 LOADK                            R10 K29 ["StyleQuery"]
      136 SETTABLEKS                       R10 R9 K19 ["Text"]
      138 GETUPVAL                         R11 3
      139 GETTABLEKS                       R10 R11 K30 ["getClassIcon"]
      141 LOADK                            R11 K29 ["StyleQuery"]
      142 CALL                             R10 1 1
      143 SETTABLEKS                       R10 R9 K20 ["Icon"]
      145 NEWCLOSURE                       R10 P2
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U13
      148 CAPTURE                          UPVAL U0
      149 CAPTURE                          UPVAL U5
      150 SETTABLEKS                       R10 R9 K22 ["OnItemClicked"]
      152 FASTCALL2                        TABLE_INSERT R8 R9 ; [+5]
      154 MOVE                             R11 R8
      155 MOVE                             R12 R9
      156 GETIMPORT                        R10 K15 [table.insert]
      158 CALL                             R10 2 0
      159 DUPTABLE                         R9 K33 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      160 LOADK                            R10 K34 ["Insert"]
      161 SETTABLEKS                       R10 R9 K18 ["Id"]
      163 LOADK                            R12 K25 ["ContextMenu"]
      164 LOADK                            R13 K34 ["Insert"]
      165 NAMECALL                         R10 R5 K27 ["getText"]
      167 CALL                             R10 3 1
      168 SETTABLEKS                       R10 R9 K19 ["Text"]
      170 GETUPVAL                         R11 11
      171 GETTABLEKS                       R10 R11 K14 ["insert"]
      173 CALL                             R10 0 1
      174 SETTABLEKS                       R10 R9 K20 ["Icon"]
      176 LENGTH                           R11 R8
      177 JUMPIFEQKN                       R11 K35 [0] ; [+2]
      179 LOADB                            R10 0 +1
      180 LOADB                            R10 1
      181 SETTABLEKS                       R10 R9 K31 ["Hidden"]
      183 SETTABLEKS                       R8 R9 K32 ["Children"]
      185 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      187 MOVE                             R11 R6
      188 MOVE                             R12 R9
      189 GETIMPORT                        R10 K15 [table.insert]
      191 CALL                             R10 2 0
      192 GETUPVAL                         R9 3
      193 GETTABLEKS                       R8 R9 K36 ["getRenameAction"]
      195 NEWCLOSURE                       R9 P3
      196 CAPTURE                          UPVAL U14
      197 MOVE                             R10 R5
      198 CALL                             R8 2 1
      199 GETUPVAL                         R10 1
      200 JUMPIFNOT                        R10 ; [+11]
      201 GETTABLEKS                       R12 R4 K37 ["Clipboard"]
      203 GETTABLEKS                       R11 R12 K38 ["Instances"]
      205 LENGTH                           R10 R11
      206 LOADN                            R11 0
      207 JUMPIFLT                         R11 R10 ; [+2]
      209 LOADB                            R9 0 +1
      210 LOADB                            R9 1
      211 JUMP                             ; [+8]
      212 GETTABLEKS                       R11 R4 K37 ["Clipboard"]
      214 GETTABLEKS                       R10 R11 K39 ["DEPRECATED_Instance"]
      216 JUMPIFNOTEQKNIL                  R10 ; [+2]
      218 LOADB                            R9 0 +1
      219 LOADB                            R9 1
      220 GETUPVAL                         R10 15
      221 MOVE                             R11 R6
      222 NEWTABLE                         R12 0 8
      224 MOVE                             R13 R8
      225 DUPTABLE                         R14 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      226 LOADK                            R15 K40 ["ShowInExplorer"]
      227 SETTABLEKS                       R15 R14 K18 ["Id"]
      229 LOADK                            R17 K25 ["ContextMenu"]
      230 LOADK                            R18 K40 ["ShowInExplorer"]
      231 NAMECALL                         R15 R5 K27 ["getText"]
      233 CALL                             R15 3 1
      234 SETTABLEKS                       R15 R14 K19 ["Text"]
      236 GETUPVAL                         R16 3
      237 GETTABLEKS                       R15 R16 K30 ["getClassIcon"]
      239 LOADK                            R16 K41 ["ReplicatedStorage"]
      240 CALL                             R15 1 1
      241 SETTABLEKS                       R15 R14 K20 ["Icon"]
      243 NEWCLOSURE                       R15 P4
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U16
      246 CAPTURE                          UPVAL U0
      247 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      249 DUPTABLE                         R15 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      250 LOADK                            R16 K42 ["Copy"]
      251 SETTABLEKS                       R16 R15 K18 ["Id"]
      253 LOADK                            R18 K25 ["ContextMenu"]
      254 LOADK                            R19 K42 ["Copy"]
      255 NAMECALL                         R16 R5 K27 ["getText"]
      257 CALL                             R16 3 1
      258 SETTABLEKS                       R16 R15 K19 ["Text"]
      260 GETUPVAL                         R17 11
      261 GETTABLEKS                       R16 R17 K43 ["copy"]
      263 CALL                             R16 0 1
      264 SETTABLEKS                       R16 R15 K20 ["Icon"]
      266 NEWCLOSURE                       R16 P5
      267 CAPTURE                          UPVAL U1
      268 CAPTURE                          REF R2
      269 CAPTURE                          UPVAL U2
      270 CAPTURE                          UPVAL U0
      271 CAPTURE                          VAL R0
      272 CAPTURE                          UPVAL U17
      273 CAPTURE                          UPVAL U18
      274 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      276 DUPTABLE                         R16 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      277 LOADK                            R17 K44 ["PasteInto"]
      278 SETTABLEKS                       R17 R16 K18 ["Id"]
      280 LOADK                            R19 K25 ["ContextMenu"]
      281 LOADK                            R20 K44 ["PasteInto"]
      282 NAMECALL                         R17 R5 K27 ["getText"]
      284 CALL                             R17 3 1
      285 SETTABLEKS                       R17 R16 K19 ["Text"]
      287 GETUPVAL                         R18 11
      288 GETTABLEKS                       R17 R18 K45 ["paste"]
      290 CALL                             R17 0 1
      291 SETTABLEKS                       R17 R16 K20 ["Icon"]
      293 SETTABLEKS                       R9 R16 K21 ["Enabled"]
      295 NEWCLOSURE                       R17 P6
      296 CAPTURE                          VAL R0
      297 CAPTURE                          UPVAL U19
      298 CAPTURE                          UPVAL U0
      299 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      301 DUPTABLE                         R17 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      302 LOADK                            R18 K46 ["Duplicate"]
      303 SETTABLEKS                       R18 R17 K18 ["Id"]
      305 LOADK                            R20 K25 ["ContextMenu"]
      306 LOADK                            R21 K46 ["Duplicate"]
      307 NAMECALL                         R18 R5 K27 ["getText"]
      309 CALL                             R18 3 1
      310 SETTABLEKS                       R18 R17 K19 ["Text"]
      312 GETUPVAL                         R19 11
      313 GETTABLEKS                       R18 R19 K47 ["duplicate"]
      315 CALL                             R18 0 1
      316 SETTABLEKS                       R18 R17 K20 ["Icon"]
      318 NEWCLOSURE                       R18 P7
      319 CAPTURE                          UPVAL U0
      320 CAPTURE                          UPVAL U1
      321 CAPTURE                          REF R2
      322 CAPTURE                          VAL R0
      323 CAPTURE                          UPVAL U20
      324 CAPTURE                          UPVAL U21
      325 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      327 DUPTABLE                         R18 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      328 LOADK                            R19 K48 ["IncreasePriority"]
      329 SETTABLEKS                       R19 R18 K18 ["Id"]
      331 LOADK                            R21 K25 ["ContextMenu"]
      332 LOADK                            R22 K49 ["IncreaseStyleRulePriority"]
      333 NAMECALL                         R19 R5 K27 ["getText"]
      335 CALL                             R19 3 1
      336 SETTABLEKS                       R19 R18 K19 ["Text"]
      338 GETUPVAL                         R20 11
      339 GETTABLEKS                       R19 R20 K50 ["arrowUp"]
      341 CALL                             R19 0 1
      342 SETTABLEKS                       R19 R18 K20 ["Icon"]
      344 GETUPVAL                         R20 22
      345 GETTABLEKS                       R19 R20 K51 ["changeStyleRulePriority"]
      347 GETUPVAL                         R20 0
      348 LOADB                            R21 1
      349 LOADB                            R22 1
      350 CALL                             R19 3 1
      351 SETTABLEKS                       R19 R18 K21 ["Enabled"]
      353 NEWCLOSURE                       R19 P8
      354 CAPTURE                          VAL R0
      355 CAPTURE                          UPVAL U23
      356 CAPTURE                          UPVAL U0
      357 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      359 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      360 LOADK                            R20 K52 ["DecreasePriority"]
      361 SETTABLEKS                       R20 R19 K18 ["Id"]
      363 LOADK                            R22 K25 ["ContextMenu"]
      364 LOADK                            R23 K53 ["DecreaseStyleRulePriority"]
      365 NAMECALL                         R20 R5 K27 ["getText"]
      367 CALL                             R20 3 1
      368 SETTABLEKS                       R20 R19 K19 ["Text"]
      370 GETUPVAL                         R21 11
      371 GETTABLEKS                       R20 R21 K54 ["arrowDown"]
      373 CALL                             R20 0 1
      374 SETTABLEKS                       R20 R19 K20 ["Icon"]
      376 GETUPVAL                         R21 22
      377 GETTABLEKS                       R20 R21 K51 ["changeStyleRulePriority"]
      379 GETUPVAL                         R21 0
      380 LOADB                            R22 0
      381 LOADB                            R23 1
      382 CALL                             R20 3 1
      383 SETTABLEKS                       R20 R19 K21 ["Enabled"]
      385 NEWCLOSURE                       R20 P9
      386 CAPTURE                          VAL R0
      387 CAPTURE                          UPVAL U23
      388 CAPTURE                          UPVAL U0
      389 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      391 DUPTABLE                         R20 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      392 LOADK                            R21 K55 ["Delete"]
      393 SETTABLEKS                       R21 R20 K18 ["Id"]
      395 LOADK                            R23 K25 ["ContextMenu"]
      396 LOADK                            R24 K55 ["Delete"]
      397 NAMECALL                         R21 R5 K27 ["getText"]
      399 CALL                             R21 3 1
      400 SETTABLEKS                       R21 R20 K19 ["Text"]
      402 GETUPVAL                         R22 11
      403 GETTABLEKS                       R21 R22 K56 ["delete"]
      405 CALL                             R21 0 1
      406 SETTABLEKS                       R21 R20 K20 ["Icon"]
      408 NEWCLOSURE                       R21 P10
      409 CAPTURE                          UPVAL U1
      410 CAPTURE                          REF R2
      411 CAPTURE                          VAL R0
      412 CAPTURE                          UPVAL U24
      413 CAPTURE                          UPVAL U0
      414 CAPTURE                          UPVAL U25
      415 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      417 SETLIST                          R12 R13 8 [1]
      419 CALL                             R10 2 1
      420 MOVE                             R6 R10
      421 DUPTABLE                         R10 K57 [{"Id", "Children"}]
      422 LOADK                            R11 K0 ["StyleRule"]
      423 SETTABLEKS                       R11 R10 K18 ["Id"]
      425 SETTABLEKS                       R6 R10 K32 ["Children"]
      427 GETUPVAL                         R12 3
      428 GETTABLEKS                       R11 R12 K58 ["trackClicks"]
      430 MOVE                             R12 R10
      431 GETTABLEKS                       R13 R1 K59 ["Telemetry"]
      433 CALL                             R11 2 0
      434 GETUPVAL                         R12 3
      435 GETTABLEKS                       R11 R12 K60 ["showContextMenu"]
      437 GETTABLEKS                       R12 R1 K61 ["Plugin"]
      439 MOVE                             R13 R10
      440 CALL                             R11 2 0
      441 CLOSEUPVALS                      R2
      442 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 CAPTURE                          UPVAL U19
       24 CAPTURE                          UPVAL U20
       25 CAPTURE                          UPVAL U21
       26 CAPTURE                          UPVAL U22
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Util"]
       26 GETTABLEKS                       R3 R4 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K10 ["Resources"]
       35 GETTABLEKS                       R4 R5 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K8 ["Util"]
       44 GETTABLEKS                       R5 R6 K12 ["TreeTableHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K8 ["Util"]
       53 GETTABLEKS                       R6 R7 K13 ["StyleRuleHelpers"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R9 K8 ["Util"]
       62 GETTABLEKS                       R7 R8 K14 ["StyleQueryHelpers"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["Src"]
       69 GETTABLEKS                       R9 R10 K8 ["Util"]
       71 GETTABLEKS                       R8 R9 K15 ["TransitionParamUtil"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R9 R0 K5 ["Src"]
       76 GETTABLEKS                       R8 R9 K16 ["Actions"]
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R11 R8 K17 ["Clipboard"]
       82 GETTABLEKS                       R10 R11 K18 ["CopyInstancesToClipboard"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K4 [require]
       87 GETTABLEKS                       R12 R8 K17 ["Clipboard"]
       89 GETTABLEKS                       R11 R12 K19 ["CopyInstanceToClipboard"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K4 [require]
       94 GETTABLEKS                       R13 R8 K20 ["Window"]
       96 GETTABLEKS                       R12 R13 K21 ["SetItemsExpanded"]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R13 R0 K5 ["Src"]
      101 GETTABLEKS                       R12 R13 K22 ["Thunks"]
      103 GETIMPORT                        R13 K4 [require]
      105 GETTABLEKS                       R15 R12 K23 ["Change"]
      107 GETTABLEKS                       R14 R15 K24 ["CreateStyleRule"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K4 [require]
      112 GETTABLEKS                       R16 R12 K23 ["Change"]
      114 GETTABLEKS                       R15 R16 K25 ["CreateStyleQuery"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R17 R12 K23 ["Change"]
      121 GETTABLEKS                       R16 R17 K26 ["DeleteInstance"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K4 [require]
      126 GETTABLEKS                       R18 R12 K23 ["Change"]
      128 GETTABLEKS                       R17 R18 K27 ["DuplicateInstance"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K4 [require]
      133 GETTABLEKS                       R19 R12 K23 ["Change"]
      135 GETTABLEKS                       R18 R19 K28 ["PasteInstanceInto"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K4 [require]
      140 GETTABLEKS                       R20 R12 K23 ["Change"]
      142 GETTABLEKS                       R19 R20 K29 ["ShowInstanceInExplorer"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K4 [require]
      147 GETTABLEKS                       R21 R12 K23 ["Change"]
      149 GETTABLEKS                       R20 R21 K30 ["ChangeStyleRulePriority"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K4 [require]
      154 GETTABLEKS                       R22 R12 K23 ["Change"]
      156 GETTABLEKS                       R21 R22 K31 ["DeleteStyleQuery"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K4 [require]
      161 GETTABLEKS                       R23 R12 K23 ["Change"]
      163 GETTABLEKS                       R22 R23 K32 ["DuplicateStyleQuery"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K4 [require]
      168 GETTABLEKS                       R24 R12 K23 ["Change"]
      170 GETTABLEKS                       R23 R24 K33 ["SetStyleRulePropertyTransition"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K4 [require]
      175 GETTABLEKS                       R25 R0 K34 ["Packages"]
      177 GETTABLEKS                       R24 R25 K35 ["Dash"]
      179 CALL                             R23 1 1
      180 GETTABLEKS                       R24 R23 K36 ["append"]
      182 GETIMPORT                        R25 K4 [require]
      184 GETTABLEKS                       R28 R0 K5 ["Src"]
      186 GETTABLEKS                       R27 R28 K37 ["Flags"]
      188 GETTABLEKS                       R26 R27 K38 ["getFFlagStyleEditorNewRuleRenameFix"]
      190 CALL                             R25 1 1
      191 CALL                             R25 0 1
      192 GETIMPORT                        R26 K4 [require]
      194 GETTABLEKS                       R29 R0 K5 ["Src"]
      196 GETTABLEKS                       R28 R29 K37 ["Flags"]
      198 GETTABLEKS                       R27 R28 K39 ["getFFlagStyleQuery"]
      200 CALL                             R26 1 1
      201 CALL                             R26 0 1
      202 GETIMPORT                        R27 K4 [require]
      204 GETTABLEKS                       R30 R0 K5 ["Src"]
      206 GETTABLEKS                       R29 R30 K37 ["Flags"]
      208 GETTABLEKS                       R28 R29 K40 ["getFFlagStyleEditorSupportTransitions"]
      210 CALL                             R27 1 1
      211 CALL                             R27 0 1
      212 GETIMPORT                        R28 K4 [require]
      214 GETTABLEKS                       R30 R0 K5 ["Src"]
      216 GETTABLEKS                       R29 R30 K41 ["Types"]
      218 CALL                             R28 1 1
      219 GETIMPORT                        R29 K4 [require]
      221 GETTABLEKS                       R32 R0 K5 ["Src"]
      223 GETTABLEKS                       R31 R32 K22 ["Thunks"]
      225 GETTABLEKS                       R30 R31 K41 ["Types"]
      227 CALL                             R29 1 1
      228 DUPCLOSURE                       R30 K42 [PROTO_12]
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R19
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R15
      252 RETURN                           R30 1
