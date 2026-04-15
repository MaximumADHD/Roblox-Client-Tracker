PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["Id"]
        4 JUMPIFNOTEQKS                    R1 K1 ["StyleRule/New/StyleQuery"] ; [+10]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R0 K3 ["Data"]
       17 GETTABLEKS                       R1 R2 K4 ["Selector"]
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R4 5
       21 GETUPVAL                         R5 3
       22 MOVE                             R6 R1
       23 GETUPVAL                         R7 4
       24 CALL                             R4 3 -1
       25 NAMECALL                         R2 R2 K2 ["dispatch"]
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 6
       29 JUMPIF                           R2 ; [+15]
       30 GETUPVAL                         R3 7
       31 GETTABLEKS                       R2 R3 K5 ["createItemId"]
       33 GETUPVAL                         R3 3
       34 CALL                             R2 1 1
       35 GETUPVAL                         R3 1
       36 GETUPVAL                         R5 8
       37 NEWTABLE                         R6 1 0
       39 LOADB                            R7 1
       40 SETTABLE                         R7 R6 R2
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R3 K2 ["dispatch"]
       44 CALL                             R3 -1 0
       45 RETURN                           R0 0

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
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 1
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 MOVE                             R10 R5
       65 CALL                             R7 3 1
       66 GETUPVAL                         R8 1
       67 JUMPIFNOT                        R8 ; [+1]
       68 JUMPIF                           R2 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       71 MOVE                             R9 R6
       72 MOVE                             R10 R7
       73 GETIMPORT                        R8 K15 [table.insert]
       75 CALL                             R8 2 0
       76 GETUPVAL                         R8 10
       77 JUMPIFNOT                        R8 ; [+82]
       78 GETUPVAL                         R8 11
       79 JUMPIFNOT                        R8 ; [+80]
       80 NEWTABLE                         R8 0 0
       82 GETUPVAL                         R11 0
       83 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       85 CALL                             R11 1 1
       86 GETUPVAL                         R13 12
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
      105 GETUPVAL                         R12 13
      106 GETTABLEKS                       R11 R12 K14 ["insert"]
      108 CALL                             R11 0 1
      109 SETTABLEKS                       R11 R10 K20 ["Icon"]
      111 SETTABLEKS                       R9 R10 K21 ["Enabled"]
      113 NEWCLOSURE                       R11 P1
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U0
      117 CAPTURE                          UPVAL U12
      118 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
      120 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      122 MOVE                             R12 R8
      123 MOVE                             R13 R10
      124 GETIMPORT                        R11 K15 [table.insert]
      126 CALL                             R11 2 0
      127 DUPTABLE                         R11 K30 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      128 LOADK                            R12 K31 ["Insert"]
      129 SETTABLEKS                       R12 R11 K18 ["Id"]
      131 LOADK                            R14 K25 ["ContextMenu"]
      132 LOADK                            R15 K31 ["Insert"]
      133 NAMECALL                         R12 R5 K27 ["getText"]
      135 CALL                             R12 3 1
      136 SETTABLEKS                       R12 R11 K19 ["Text"]
      138 GETUPVAL                         R13 13
      139 GETTABLEKS                       R12 R13 K14 ["insert"]
      141 CALL                             R12 0 1
      142 SETTABLEKS                       R12 R11 K20 ["Icon"]
      144 LENGTH                           R13 R8
      145 JUMPIFEQKN                       R13 K32 [0] ; [+2]
      147 LOADB                            R12 0 +1
      148 LOADB                            R12 1
      149 SETTABLEKS                       R12 R11 K28 ["Hidden"]
      151 SETTABLEKS                       R8 R11 K29 ["Children"]
      153 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      155 MOVE                             R13 R6
      156 MOVE                             R14 R11
      157 GETIMPORT                        R12 K15 [table.insert]
      159 CALL                             R12 2 0
      160 GETUPVAL                         R9 3
      161 GETTABLEKS                       R8 R9 K33 ["getRenameAction"]
      163 NEWCLOSURE                       R9 P2
      164 CAPTURE                          UPVAL U15
      165 MOVE                             R10 R5
      166 CALL                             R8 2 1
      167 GETUPVAL                         R10 1
      168 JUMPIFNOT                        R10 ; [+11]
      169 GETTABLEKS                       R12 R4 K34 ["Clipboard"]
      171 GETTABLEKS                       R11 R12 K35 ["Instances"]
      173 LENGTH                           R10 R11
      174 LOADN                            R11 0
      175 JUMPIFLT                         R11 R10 ; [+2]
      177 LOADB                            R9 0 +1
      178 LOADB                            R9 1
      179 JUMP                             ; [+8]
      180 GETTABLEKS                       R11 R4 K34 ["Clipboard"]
      182 GETTABLEKS                       R10 R11 K36 ["DEPRECATED_Instance"]
      184 JUMPIFNOTEQKNIL                  R10 ; [+2]
      186 LOADB                            R9 0 +1
      187 LOADB                            R9 1
      188 GETUPVAL                         R10 16
      189 MOVE                             R11 R6
      190 NEWTABLE                         R12 0 8
      192 MOVE                             R13 R8
      193 DUPTABLE                         R14 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      194 LOADK                            R15 K38 ["ShowInExplorer"]
      195 SETTABLEKS                       R15 R14 K18 ["Id"]
      197 LOADK                            R17 K25 ["ContextMenu"]
      198 LOADK                            R18 K38 ["ShowInExplorer"]
      199 NAMECALL                         R15 R5 K27 ["getText"]
      201 CALL                             R15 3 1
      202 SETTABLEKS                       R15 R14 K19 ["Text"]
      204 GETUPVAL                         R16 3
      205 GETTABLEKS                       R15 R16 K39 ["getClassIcon"]
      207 LOADK                            R16 K40 ["ReplicatedStorage"]
      208 CALL                             R15 1 1
      209 SETTABLEKS                       R15 R14 K20 ["Icon"]
      211 NEWCLOSURE                       R15 P3
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U17
      214 CAPTURE                          UPVAL U0
      215 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      217 DUPTABLE                         R15 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      218 LOADK                            R16 K41 ["Copy"]
      219 SETTABLEKS                       R16 R15 K18 ["Id"]
      221 LOADK                            R18 K25 ["ContextMenu"]
      222 LOADK                            R19 K41 ["Copy"]
      223 NAMECALL                         R16 R5 K27 ["getText"]
      225 CALL                             R16 3 1
      226 SETTABLEKS                       R16 R15 K19 ["Text"]
      228 GETUPVAL                         R17 13
      229 GETTABLEKS                       R16 R17 K42 ["copy"]
      231 CALL                             R16 0 1
      232 SETTABLEKS                       R16 R15 K20 ["Icon"]
      234 NEWCLOSURE                       R16 P4
      235 CAPTURE                          UPVAL U1
      236 CAPTURE                          REF R2
      237 CAPTURE                          UPVAL U2
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          VAL R0
      240 CAPTURE                          UPVAL U18
      241 CAPTURE                          UPVAL U19
      242 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      244 DUPTABLE                         R16 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      245 LOADK                            R17 K43 ["PasteInto"]
      246 SETTABLEKS                       R17 R16 K18 ["Id"]
      248 LOADK                            R19 K25 ["ContextMenu"]
      249 LOADK                            R20 K43 ["PasteInto"]
      250 NAMECALL                         R17 R5 K27 ["getText"]
      252 CALL                             R17 3 1
      253 SETTABLEKS                       R17 R16 K19 ["Text"]
      255 GETUPVAL                         R18 13
      256 GETTABLEKS                       R17 R18 K44 ["paste"]
      258 CALL                             R17 0 1
      259 SETTABLEKS                       R17 R16 K20 ["Icon"]
      261 SETTABLEKS                       R9 R16 K21 ["Enabled"]
      263 NEWCLOSURE                       R17 P5
      264 CAPTURE                          VAL R0
      265 CAPTURE                          UPVAL U20
      266 CAPTURE                          UPVAL U0
      267 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      269 DUPTABLE                         R17 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      270 LOADK                            R18 K45 ["Duplicate"]
      271 SETTABLEKS                       R18 R17 K18 ["Id"]
      273 LOADK                            R20 K25 ["ContextMenu"]
      274 LOADK                            R21 K45 ["Duplicate"]
      275 NAMECALL                         R18 R5 K27 ["getText"]
      277 CALL                             R18 3 1
      278 SETTABLEKS                       R18 R17 K19 ["Text"]
      280 GETUPVAL                         R19 13
      281 GETTABLEKS                       R18 R19 K46 ["duplicate"]
      283 CALL                             R18 0 1
      284 SETTABLEKS                       R18 R17 K20 ["Icon"]
      286 NEWCLOSURE                       R18 P6
      287 CAPTURE                          UPVAL U0
      288 CAPTURE                          UPVAL U1
      289 CAPTURE                          REF R2
      290 CAPTURE                          VAL R0
      291 CAPTURE                          UPVAL U21
      292 CAPTURE                          UPVAL U22
      293 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      295 DUPTABLE                         R18 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      296 LOADK                            R19 K47 ["IncreasePriority"]
      297 SETTABLEKS                       R19 R18 K18 ["Id"]
      299 LOADK                            R21 K25 ["ContextMenu"]
      300 LOADK                            R22 K48 ["IncreaseStyleRulePriority"]
      301 NAMECALL                         R19 R5 K27 ["getText"]
      303 CALL                             R19 3 1
      304 SETTABLEKS                       R19 R18 K19 ["Text"]
      306 GETUPVAL                         R20 13
      307 GETTABLEKS                       R19 R20 K49 ["arrowUp"]
      309 CALL                             R19 0 1
      310 SETTABLEKS                       R19 R18 K20 ["Icon"]
      312 NOT                              R19 R3
      313 JUMPIFNOT                        R19 ; [+7]
      314 GETUPVAL                         R20 23
      315 GETTABLEKS                       R19 R20 K50 ["changeStyleRulePriority"]
      317 GETUPVAL                         R20 0
      318 LOADB                            R21 1
      319 LOADB                            R22 1
      320 CALL                             R19 3 1
      321 SETTABLEKS                       R19 R18 K21 ["Enabled"]
      323 NEWCLOSURE                       R19 P7
      324 CAPTURE                          VAL R0
      325 CAPTURE                          UPVAL U24
      326 CAPTURE                          UPVAL U0
      327 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      329 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      330 LOADK                            R20 K51 ["DecreasePriority"]
      331 SETTABLEKS                       R20 R19 K18 ["Id"]
      333 LOADK                            R22 K25 ["ContextMenu"]
      334 LOADK                            R23 K52 ["DecreaseStyleRulePriority"]
      335 NAMECALL                         R20 R5 K27 ["getText"]
      337 CALL                             R20 3 1
      338 SETTABLEKS                       R20 R19 K19 ["Text"]
      340 GETUPVAL                         R21 13
      341 GETTABLEKS                       R20 R21 K53 ["arrowDown"]
      343 CALL                             R20 0 1
      344 SETTABLEKS                       R20 R19 K20 ["Icon"]
      346 NOT                              R20 R3
      347 JUMPIFNOT                        R20 ; [+7]
      348 GETUPVAL                         R21 23
      349 GETTABLEKS                       R20 R21 K50 ["changeStyleRulePriority"]
      351 GETUPVAL                         R21 0
      352 LOADB                            R22 0
      353 LOADB                            R23 1
      354 CALL                             R20 3 1
      355 SETTABLEKS                       R20 R19 K21 ["Enabled"]
      357 NEWCLOSURE                       R20 P8
      358 CAPTURE                          VAL R0
      359 CAPTURE                          UPVAL U24
      360 CAPTURE                          UPVAL U0
      361 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      363 DUPTABLE                         R20 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      364 LOADK                            R21 K54 ["Delete"]
      365 SETTABLEKS                       R21 R20 K18 ["Id"]
      367 LOADK                            R23 K25 ["ContextMenu"]
      368 LOADK                            R24 K54 ["Delete"]
      369 NAMECALL                         R21 R5 K27 ["getText"]
      371 CALL                             R21 3 1
      372 SETTABLEKS                       R21 R20 K19 ["Text"]
      374 GETUPVAL                         R22 13
      375 GETTABLEKS                       R21 R22 K55 ["delete"]
      377 CALL                             R21 0 1
      378 SETTABLEKS                       R21 R20 K20 ["Icon"]
      380 NEWCLOSURE                       R21 P9
      381 CAPTURE                          UPVAL U1
      382 CAPTURE                          REF R2
      383 CAPTURE                          VAL R0
      384 CAPTURE                          UPVAL U25
      385 CAPTURE                          UPVAL U0
      386 CAPTURE                          UPVAL U26
      387 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      389 SETLIST                          R12 R13 8 [1]
      391 CALL                             R10 2 1
      392 MOVE                             R6 R10
      393 DUPTABLE                         R10 K56 [{"Id", "Children"}]
      394 LOADK                            R11 K0 ["StyleRule"]
      395 SETTABLEKS                       R11 R10 K18 ["Id"]
      397 SETTABLEKS                       R6 R10 K29 ["Children"]
      399 GETUPVAL                         R12 3
      400 GETTABLEKS                       R11 R12 K57 ["trackClicks"]
      402 MOVE                             R12 R10
      403 GETTABLEKS                       R13 R1 K58 ["Telemetry"]
      405 CALL                             R11 2 0
      406 GETUPVAL                         R12 3
      407 GETTABLEKS                       R11 R12 K59 ["showContextMenu"]
      409 GETTABLEKS                       R12 R1 K60 ["Plugin"]
      411 MOVE                             R13 R10
      412 CALL                             R11 2 0
      413 CLOSEUPVALS                      R2
      414 RETURN                           R0 0

PROTO_11:
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
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          VAL R1
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
       27 CAPTURE                          UPVAL U23
       28 RETURN                           R3 1

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
      214 GETTABLEKS                       R31 R0 K5 ["Src"]
      216 GETTABLEKS                       R30 R31 K37 ["Flags"]
      218 GETTABLEKS                       R29 R30 K41 ["getFFlagStyleEditorShowDefaultTransitions"]
      220 CALL                             R28 1 1
      221 CALL                             R28 0 1
      222 GETIMPORT                        R29 K4 [require]
      224 GETTABLEKS                       R31 R0 K5 ["Src"]
      226 GETTABLEKS                       R30 R31 K42 ["Types"]
      228 CALL                             R29 1 1
      229 GETIMPORT                        R30 K4 [require]
      231 GETTABLEKS                       R33 R0 K5 ["Src"]
      233 GETTABLEKS                       R32 R33 K22 ["Thunks"]
      235 GETTABLEKS                       R31 R32 K42 ["Types"]
      237 CALL                             R30 1 1
      238 DUPCLOSURE                       R31 K43 [PROTO_11]
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R25
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R28
      249 CAPTURE                          VAL R7
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R17
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R5
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R15
      263 RETURN                           R31 1
