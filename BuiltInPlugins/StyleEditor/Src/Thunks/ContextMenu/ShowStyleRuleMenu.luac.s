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
       77 JUMPIFNOT                        R8 ; [+80]
       78 NEWTABLE                         R8 0 0
       80 GETUPVAL                         R11 0
       81 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       83 CALL                             R11 1 1
       84 GETUPVAL                         R13 11
       85 GETTABLEKS                       R12 R13 K17 ["DEFAULT_TRANSITION_NAME"]
       87 GETTABLE                         R10 R11 R12
       88 JUMPIFEQKNIL                     R10 ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 DUPTABLE                         R10 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       93 LOADK                            R11 K24 ["DefaultTransition"]
       94 SETTABLEKS                       R11 R10 K18 ["Id"]
       96 LOADK                            R13 K25 ["ContextMenu"]
       97 LOADK                            R14 K26 ["New.Transition"]
       98 NAMECALL                         R11 R5 K27 ["getText"]
      100 CALL                             R11 3 1
      101 SETTABLEKS                       R11 R10 K19 ["Text"]
      103 GETUPVAL                         R12 12
      104 GETTABLEKS                       R11 R12 K14 ["insert"]
      106 CALL                             R11 0 1
      107 SETTABLEKS                       R11 R10 K20 ["Icon"]
      109 SETTABLEKS                       R9 R10 K21 ["Enabled"]
      111 NEWCLOSURE                       R11 P1
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          UPVAL U11
      116 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
      118 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      120 MOVE                             R12 R8
      121 MOVE                             R13 R10
      122 GETIMPORT                        R11 K15 [table.insert]
      124 CALL                             R11 2 0
      125 DUPTABLE                         R11 K30 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      126 LOADK                            R12 K31 ["Insert"]
      127 SETTABLEKS                       R12 R11 K18 ["Id"]
      129 LOADK                            R14 K25 ["ContextMenu"]
      130 LOADK                            R15 K31 ["Insert"]
      131 NAMECALL                         R12 R5 K27 ["getText"]
      133 CALL                             R12 3 1
      134 SETTABLEKS                       R12 R11 K19 ["Text"]
      136 GETUPVAL                         R13 12
      137 GETTABLEKS                       R12 R13 K14 ["insert"]
      139 CALL                             R12 0 1
      140 SETTABLEKS                       R12 R11 K20 ["Icon"]
      142 LENGTH                           R13 R8
      143 JUMPIFEQKN                       R13 K32 [0] ; [+2]
      145 LOADB                            R12 0 +1
      146 LOADB                            R12 1
      147 SETTABLEKS                       R12 R11 K28 ["Hidden"]
      149 SETTABLEKS                       R8 R11 K29 ["Children"]
      151 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      153 MOVE                             R13 R6
      154 MOVE                             R14 R11
      155 GETIMPORT                        R12 K15 [table.insert]
      157 CALL                             R12 2 0
      158 GETUPVAL                         R9 3
      159 GETTABLEKS                       R8 R9 K33 ["getRenameAction"]
      161 NEWCLOSURE                       R9 P2
      162 CAPTURE                          UPVAL U14
      163 MOVE                             R10 R5
      164 CALL                             R8 2 1
      165 GETUPVAL                         R10 1
      166 JUMPIFNOT                        R10 ; [+11]
      167 GETTABLEKS                       R12 R4 K34 ["Clipboard"]
      169 GETTABLEKS                       R11 R12 K35 ["Instances"]
      171 LENGTH                           R10 R11
      172 LOADN                            R11 0
      173 JUMPIFLT                         R11 R10 ; [+2]
      175 LOADB                            R9 0 +1
      176 LOADB                            R9 1
      177 JUMP                             ; [+8]
      178 GETTABLEKS                       R11 R4 K34 ["Clipboard"]
      180 GETTABLEKS                       R10 R11 K36 ["DEPRECATED_Instance"]
      182 JUMPIFNOTEQKNIL                  R10 ; [+2]
      184 LOADB                            R9 0 +1
      185 LOADB                            R9 1
      186 GETUPVAL                         R10 15
      187 MOVE                             R11 R6
      188 NEWTABLE                         R12 0 8
      190 MOVE                             R13 R8
      191 DUPTABLE                         R14 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      192 LOADK                            R15 K38 ["ShowInExplorer"]
      193 SETTABLEKS                       R15 R14 K18 ["Id"]
      195 LOADK                            R17 K25 ["ContextMenu"]
      196 LOADK                            R18 K38 ["ShowInExplorer"]
      197 NAMECALL                         R15 R5 K27 ["getText"]
      199 CALL                             R15 3 1
      200 SETTABLEKS                       R15 R14 K19 ["Text"]
      202 GETUPVAL                         R16 3
      203 GETTABLEKS                       R15 R16 K39 ["getClassIcon"]
      205 LOADK                            R16 K40 ["ReplicatedStorage"]
      206 CALL                             R15 1 1
      207 SETTABLEKS                       R15 R14 K20 ["Icon"]
      209 NEWCLOSURE                       R15 P3
      210 CAPTURE                          VAL R0
      211 CAPTURE                          UPVAL U16
      212 CAPTURE                          UPVAL U0
      213 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      215 DUPTABLE                         R15 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      216 LOADK                            R16 K41 ["Copy"]
      217 SETTABLEKS                       R16 R15 K18 ["Id"]
      219 LOADK                            R18 K25 ["ContextMenu"]
      220 LOADK                            R19 K41 ["Copy"]
      221 NAMECALL                         R16 R5 K27 ["getText"]
      223 CALL                             R16 3 1
      224 SETTABLEKS                       R16 R15 K19 ["Text"]
      226 GETUPVAL                         R17 12
      227 GETTABLEKS                       R16 R17 K42 ["copy"]
      229 CALL                             R16 0 1
      230 SETTABLEKS                       R16 R15 K20 ["Icon"]
      232 NEWCLOSURE                       R16 P4
      233 CAPTURE                          UPVAL U1
      234 CAPTURE                          REF R2
      235 CAPTURE                          UPVAL U2
      236 CAPTURE                          UPVAL U0
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U17
      239 CAPTURE                          UPVAL U18
      240 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      242 DUPTABLE                         R16 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      243 LOADK                            R17 K43 ["PasteInto"]
      244 SETTABLEKS                       R17 R16 K18 ["Id"]
      246 LOADK                            R19 K25 ["ContextMenu"]
      247 LOADK                            R20 K43 ["PasteInto"]
      248 NAMECALL                         R17 R5 K27 ["getText"]
      250 CALL                             R17 3 1
      251 SETTABLEKS                       R17 R16 K19 ["Text"]
      253 GETUPVAL                         R18 12
      254 GETTABLEKS                       R17 R18 K44 ["paste"]
      256 CALL                             R17 0 1
      257 SETTABLEKS                       R17 R16 K20 ["Icon"]
      259 SETTABLEKS                       R9 R16 K21 ["Enabled"]
      261 NEWCLOSURE                       R17 P5
      262 CAPTURE                          VAL R0
      263 CAPTURE                          UPVAL U19
      264 CAPTURE                          UPVAL U0
      265 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      267 DUPTABLE                         R17 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      268 LOADK                            R18 K45 ["Duplicate"]
      269 SETTABLEKS                       R18 R17 K18 ["Id"]
      271 LOADK                            R20 K25 ["ContextMenu"]
      272 LOADK                            R21 K45 ["Duplicate"]
      273 NAMECALL                         R18 R5 K27 ["getText"]
      275 CALL                             R18 3 1
      276 SETTABLEKS                       R18 R17 K19 ["Text"]
      278 GETUPVAL                         R19 12
      279 GETTABLEKS                       R18 R19 K46 ["duplicate"]
      281 CALL                             R18 0 1
      282 SETTABLEKS                       R18 R17 K20 ["Icon"]
      284 NEWCLOSURE                       R18 P6
      285 CAPTURE                          UPVAL U0
      286 CAPTURE                          UPVAL U1
      287 CAPTURE                          REF R2
      288 CAPTURE                          VAL R0
      289 CAPTURE                          UPVAL U20
      290 CAPTURE                          UPVAL U21
      291 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      293 DUPTABLE                         R18 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      294 LOADK                            R19 K47 ["IncreasePriority"]
      295 SETTABLEKS                       R19 R18 K18 ["Id"]
      297 LOADK                            R21 K25 ["ContextMenu"]
      298 LOADK                            R22 K48 ["IncreaseStyleRulePriority"]
      299 NAMECALL                         R19 R5 K27 ["getText"]
      301 CALL                             R19 3 1
      302 SETTABLEKS                       R19 R18 K19 ["Text"]
      304 GETUPVAL                         R20 12
      305 GETTABLEKS                       R19 R20 K49 ["arrowUp"]
      307 CALL                             R19 0 1
      308 SETTABLEKS                       R19 R18 K20 ["Icon"]
      310 NOT                              R19 R3
      311 JUMPIFNOT                        R19 ; [+7]
      312 GETUPVAL                         R20 22
      313 GETTABLEKS                       R19 R20 K50 ["changeStyleRulePriority"]
      315 GETUPVAL                         R20 0
      316 LOADB                            R21 1
      317 LOADB                            R22 1
      318 CALL                             R19 3 1
      319 SETTABLEKS                       R19 R18 K21 ["Enabled"]
      321 NEWCLOSURE                       R19 P7
      322 CAPTURE                          VAL R0
      323 CAPTURE                          UPVAL U23
      324 CAPTURE                          UPVAL U0
      325 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      327 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      328 LOADK                            R20 K51 ["DecreasePriority"]
      329 SETTABLEKS                       R20 R19 K18 ["Id"]
      331 LOADK                            R22 K25 ["ContextMenu"]
      332 LOADK                            R23 K52 ["DecreaseStyleRulePriority"]
      333 NAMECALL                         R20 R5 K27 ["getText"]
      335 CALL                             R20 3 1
      336 SETTABLEKS                       R20 R19 K19 ["Text"]
      338 GETUPVAL                         R21 12
      339 GETTABLEKS                       R20 R21 K53 ["arrowDown"]
      341 CALL                             R20 0 1
      342 SETTABLEKS                       R20 R19 K20 ["Icon"]
      344 NOT                              R20 R3
      345 JUMPIFNOT                        R20 ; [+7]
      346 GETUPVAL                         R21 22
      347 GETTABLEKS                       R20 R21 K50 ["changeStyleRulePriority"]
      349 GETUPVAL                         R21 0
      350 LOADB                            R22 0
      351 LOADB                            R23 1
      352 CALL                             R20 3 1
      353 SETTABLEKS                       R20 R19 K21 ["Enabled"]
      355 NEWCLOSURE                       R20 P8
      356 CAPTURE                          VAL R0
      357 CAPTURE                          UPVAL U23
      358 CAPTURE                          UPVAL U0
      359 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      361 DUPTABLE                         R20 K37 [{"Id", "Text", "Icon", "OnItemClicked"}]
      362 LOADK                            R21 K54 ["Delete"]
      363 SETTABLEKS                       R21 R20 K18 ["Id"]
      365 LOADK                            R23 K25 ["ContextMenu"]
      366 LOADK                            R24 K54 ["Delete"]
      367 NAMECALL                         R21 R5 K27 ["getText"]
      369 CALL                             R21 3 1
      370 SETTABLEKS                       R21 R20 K19 ["Text"]
      372 GETUPVAL                         R22 12
      373 GETTABLEKS                       R21 R22 K55 ["delete"]
      375 CALL                             R21 0 1
      376 SETTABLEKS                       R21 R20 K20 ["Icon"]
      378 NEWCLOSURE                       R21 P9
      379 CAPTURE                          UPVAL U1
      380 CAPTURE                          REF R2
      381 CAPTURE                          VAL R0
      382 CAPTURE                          UPVAL U24
      383 CAPTURE                          UPVAL U0
      384 CAPTURE                          UPVAL U25
      385 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      387 SETLIST                          R12 R13 8 [1]
      389 CALL                             R10 2 1
      390 MOVE                             R6 R10
      391 DUPTABLE                         R10 K56 [{"Id", "Children"}]
      392 LOADK                            R11 K0 ["StyleRule"]
      393 SETTABLEKS                       R11 R10 K18 ["Id"]
      395 SETTABLEKS                       R6 R10 K29 ["Children"]
      397 GETUPVAL                         R12 3
      398 GETTABLEKS                       R11 R12 K57 ["trackClicks"]
      400 MOVE                             R12 R10
      401 GETTABLEKS                       R13 R1 K58 ["Telemetry"]
      403 CALL                             R11 2 0
      404 GETUPVAL                         R12 3
      405 GETTABLEKS                       R11 R12 K59 ["showContextMenu"]
      407 GETTABLEKS                       R12 R1 K60 ["Plugin"]
      409 MOVE                             R13 R10
      410 CALL                             R11 2 0
      411 CLOSEUPVALS                      R2
      412 RETURN                           R0 0

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
      228 DUPCLOSURE                       R30 K42 [PROTO_11]
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R22
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
