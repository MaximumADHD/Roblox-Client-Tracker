PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 3
        4 GETTABLEKS                       R4 R5 K0 ["Name"]
        6 GETUPVAL                         R5 4
        7 CALL                             R2 3 -1
        8 NAMECALL                         R0 R0 K1 ["dispatch"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
        1 GETTABLEKS                       R2 R0 K5 ["Name"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K5 ["Name"]
        7 SETTABLEKS                       R2 R1 K1 ["Text"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K6 ["getClassIcon"]
       12 LOADK                            R3 K7 ["StyleQuery"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["Icon"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       24 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 [""]
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R1 K2 [string.find]
        4 GETTABLEKS                       R2 R0 K3 ["Id"]
        6 LOADK                            R3 K4 ["/Folder$"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 4
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K5 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 5
       19 JUMPIFNOT                        R1 ; [+35]
       20 GETTABLEKS                       R1 R0 K6 ["Data"]
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETTABLEKS                       R2 R0 K6 ["Data"]
       25 GETTABLEKS                       R1 R2 K7 ["BuiltinCategory"]
       27 JUMPIFNOT                        R1 ; [+10]
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R4 6
       30 GETUPVAL                         R5 3
       31 MOVE                             R6 R1
       32 GETUPVAL                         R7 4
       33 CALL                             R4 3 -1
       34 NAMECALL                         R2 R2 K5 ["dispatch"]
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K2 [string.find]
       40 GETTABLEKS                       R3 R0 K3 ["Id"]
       42 LOADK                            R4 K8 ["/StyleQuery/Custom$"]
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+23]
       45 GETUPVAL                         R2 1
       46 GETUPVAL                         R4 7
       47 GETUPVAL                         R5 3
       48 GETUPVAL                         R6 4
       49 CALL                             R4 2 -1
       50 NAMECALL                         R2 R2 K5 ["dispatch"]
       52 CALL                             R2 -1 0
       53 RETURN                           R0 0
       54 JUMP                             ; [+13]
       55 GETTABLEKS                       R1 R0 K3 ["Id"]
       57 JUMPIFNOTEQKS                    R1 K9 ["Folder/New/StyleQuery"] ; [+10]
       59 GETUPVAL                         R1 1
       60 GETUPVAL                         R3 7
       61 GETUPVAL                         R4 3
       62 GETUPVAL                         R5 4
       63 CALL                             R3 2 -1
       64 NAMECALL                         R1 R1 K5 ["dispatch"]
       66 CALL                             R1 -1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R2 R0 K6 ["Data"]
       70 GETTABLEKS                       R1 R2 K10 ["Selector"]
       72 GETUPVAL                         R2 1
       73 GETUPVAL                         R4 8
       74 GETUPVAL                         R5 3
       75 MOVE                             R6 R1
       76 GETUPVAL                         R7 4
       77 CALL                             R4 3 -1
       78 NAMECALL                         R2 R2 K5 ["dispatch"]
       80 CALL                             R2 -1 0
       81 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 LOADK                            R6 K2 ["StyleBase"]
        7 NAMECALL                         R4 R4 K3 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R4 2 1
       10 LOADB                            R5 0
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["Name"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K5 ["FolderName"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+2]
       19 MOVE                             R5 R4
       20 GETUPVAL                         R7 2
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETTABLEKS                       R9 R3 K6 ["Clipboard"]
       24 GETTABLEKS                       R8 R9 K7 ["Instances"]
       26 LENGTH                           R7 R8
       27 LOADN                            R8 0
       28 JUMPIFLT                         R8 R7 ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 JUMP                             ; [+8]
       33 GETTABLEKS                       R8 R3 K6 ["Clipboard"]
       35 GETTABLEKS                       R7 R8 K8 ["DEPRECATED_Instance"]
       37 JUMPIFNOTEQKNIL                  R7 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 LOADNIL                          R7
       42 GETUPVAL                         R9 3
       43 JUMPIFNOT                        R9 ; [+22]
       44 DUPTABLE                         R8 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
       45 LOADK                            R9 K14 ["Folder"]
       46 SETTABLEKS                       R9 R8 K9 ["Id"]
       48 LOADK                            R9 K14 ["Folder"]
       49 SETTABLEKS                       R9 R8 K10 ["Text"]
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R9 R10 K15 ["getClassIcon"]
       54 LOADK                            R10 K14 ["Folder"]
       55 CALL                             R9 1 1
       56 SETTABLEKS                       R9 R8 K11 ["Icon"]
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U6
       63 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R8
       67 JUMPIFNOT                        R5 ; [+151]
       68 JUMPIFNOT                        R4 ; [+150]
       69 LOADNIL                          R9
       70 GETUPVAL                         R10 7
       71 JUMPIFNOT                        R10 ; [+78]
       72 DUPTABLE                         R10 K17 [{"Id", "Text", "Icon", "Children"}]
       73 LOADK                            R11 K18 ["StyleQuery"]
       74 SETTABLEKS                       R11 R10 K9 ["Id"]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R11 R12 K19 ["ClassName"]
       79 SETTABLEKS                       R11 R10 K10 ["Text"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R11 R12 K15 ["getClassIcon"]
       84 LOADK                            R12 K18 ["StyleQuery"]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K11 ["Icon"]
       88 NEWTABLE                         R11 0 2
       90 DUPTABLE                         R12 K17 [{"Id", "Text", "Icon", "Children"}]
       91 LOADK                            R13 K20 ["Builtin"]
       92 SETTABLEKS                       R13 R12 K9 ["Id"]
       94 LOADK                            R15 K21 ["ContextMenu"]
       95 LOADK                            R16 K22 ["New.Query.Builtin"]
       96 NAMECALL                         R13 R2 K23 ["getText"]
       98 CALL                             R13 3 1
       99 SETTABLEKS                       R13 R12 K10 ["Text"]
      101 GETUPVAL                         R14 4
      102 GETTABLEKS                       R13 R14 K15 ["getClassIcon"]
      104 LOADK                            R14 K18 ["StyleQuery"]
      105 CALL                             R13 1 1
      106 SETTABLEKS                       R13 R12 K11 ["Icon"]
      108 GETUPVAL                         R13 8
      109 GETUPVAL                         R14 9
      110 NEWCLOSURE                       R15 P1
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          UPVAL U6
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K16 ["Children"]
      119 DUPTABLE                         R13 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      120 LOADK                            R14 K24 ["Custom"]
      121 SETTABLEKS                       R14 R13 K9 ["Id"]
      123 LOADK                            R16 K21 ["ContextMenu"]
      124 LOADK                            R17 K25 ["New.Query.Custom"]
      125 NAMECALL                         R14 R2 K23 ["getText"]
      127 CALL                             R14 3 1
      128 SETTABLEKS                       R14 R13 K10 ["Text"]
      130 GETUPVAL                         R15 4
      131 GETTABLEKS                       R14 R15 K15 ["getClassIcon"]
      133 LOADK                            R15 K18 ["StyleQuery"]
      134 CALL                             R14 1 1
      135 SETTABLEKS                       R14 R13 K11 ["Icon"]
      137 NEWCLOSURE                       R14 P2
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          UPVAL U6
      142 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      144 SETLIST                          R11 R12 2 [1]
      146 SETTABLEKS                       R11 R10 K16 ["Children"]
      148 MOVE                             R9 R10
      149 JUMP                             ; [+24]
      150 DUPTABLE                         R10 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      151 LOADK                            R11 K18 ["StyleQuery"]
      152 SETTABLEKS                       R11 R10 K9 ["Id"]
      154 GETUPVAL                         R12 1
      155 GETTABLEKS                       R11 R12 K19 ["ClassName"]
      157 SETTABLEKS                       R11 R10 K10 ["Text"]
      159 GETUPVAL                         R12 4
      160 GETTABLEKS                       R11 R12 K15 ["getClassIcon"]
      162 LOADK                            R12 K18 ["StyleQuery"]
      163 CALL                             R11 1 1
      164 SETTABLEKS                       R11 R10 K11 ["Icon"]
      166 NEWCLOSURE                       R11 P3
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          UPVAL U6
      171 SETTABLEKS                       R11 R10 K12 ["OnItemClicked"]
      173 MOVE                             R9 R10
      174 DUPTABLE                         R10 K17 [{"Id", "Text", "Icon", "Children"}]
      175 LOADK                            R11 K26 ["New"]
      176 SETTABLEKS                       R11 R10 K9 ["Id"]
      178 LOADK                            R13 K21 ["ContextMenu"]
      179 LOADK                            R14 K26 ["New"]
      180 NAMECALL                         R11 R2 K23 ["getText"]
      182 CALL                             R11 3 1
      183 SETTABLEKS                       R11 R10 K10 ["Text"]
      185 GETUPVAL                         R12 12
      186 GETTABLEKS                       R11 R12 K27 ["new"]
      188 CALL                             R11 0 1
      189 SETTABLEKS                       R11 R10 K11 ["Icon"]
      191 NEWTABLE                         R11 0 3
      193 MOVE                             R12 R9
      194 DUPTABLE                         R13 K28 [{"Id", "Text", "OnItemClicked"}]
      195 LOADK                            R14 K29 ["Empty"]
      196 SETTABLEKS                       R14 R13 K9 ["Id"]
      198 LOADK                            R16 K21 ["ContextMenu"]
      199 LOADK                            R17 K30 ["New.Empty"]
      200 NAMECALL                         R14 R2 K23 ["getText"]
      202 CALL                             R14 3 1
      203 SETTABLEKS                       R14 R13 K10 ["Text"]
      205 NEWCLOSURE                       R14 P4
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U0
      209 CAPTURE                          UPVAL U6
      210 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      212 MOVE                             R14 R8
      213 SETLIST                          R11 R12 3 [1]
      215 SETTABLEKS                       R11 R10 K16 ["Children"]
      217 MOVE                             R7 R10
      218 JUMP                             ; [+71]
      219 JUMPIFNOT                        R4 ; [+18]
      220 GETUPVAL                         R10 4
      221 GETTABLEKS                       R9 R10 K31 ["getNewSelectorAction"]
      223 MOVE                             R10 R4
      224 NEWCLOSURE                       R11 P5
      225 CAPTURE                          UPVAL U3
      226 CAPTURE                          VAL R0
      227 CAPTURE                          UPVAL U5
      228 CAPTURE                          UPVAL U0
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          UPVAL U7
      231 CAPTURE                          UPVAL U10
      232 CAPTURE                          UPVAL U11
      233 CAPTURE                          UPVAL U13
      234 MOVE                             R12 R2
      235 CALL                             R9 3 1
      236 MOVE                             R7 R9
      237 JUMP                             ; [+52]
      238 DUPTABLE                         R9 K17 [{"Id", "Text", "Icon", "Children"}]
      239 LOADK                            R10 K26 ["New"]
      240 SETTABLEKS                       R10 R9 K9 ["Id"]
      242 LOADK                            R12 K21 ["ContextMenu"]
      243 LOADK                            R13 K26 ["New"]
      244 NAMECALL                         R10 R2 K23 ["getText"]
      246 CALL                             R10 3 1
      247 SETTABLEKS                       R10 R9 K10 ["Text"]
      249 GETUPVAL                         R11 12
      250 GETTABLEKS                       R10 R11 K27 ["new"]
      252 CALL                             R10 0 1
      253 SETTABLEKS                       R10 R9 K11 ["Icon"]
      255 NEWTABLE                         R10 0 2
      257 DUPTABLE                         R11 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      258 LOADK                            R12 K32 ["NewThemeStyleSheet"]
      259 SETTABLEKS                       R12 R11 K9 ["Id"]
      261 LOADK                            R14 K21 ["ContextMenu"]
      262 LOADK                            R15 K32 ["NewThemeStyleSheet"]
      263 NAMECALL                         R12 R2 K23 ["getText"]
      265 CALL                             R12 3 1
      266 SETTABLEKS                       R12 R11 K10 ["Text"]
      268 GETUPVAL                         R13 12
      269 GETTABLEKS                       R12 R13 K27 ["new"]
      271 CALL                             R12 0 1
      272 SETTABLEKS                       R12 R11 K11 ["Icon"]
      274 NEWCLOSURE                       R12 P6
      275 CAPTURE                          VAL R0
      276 CAPTURE                          UPVAL U14
      277 CAPTURE                          UPVAL U0
      278 SETTABLEKS                       R12 R11 K12 ["OnItemClicked"]
      280 GETUPVAL                         R13 15
      281 JUMPIFNOT                        R13 ; [+2]
      282 LOADNIL                          R12
      283 JUMP                             ; [+1]
      284 MOVE                             R12 R8
      285 SETLIST                          R10 R11 2 [1]
      287 SETTABLEKS                       R10 R9 K16 ["Children"]
      289 MOVE                             R7 R9
      290 FASTCALL1                        ASSERT R7 ; [+3]
      291 MOVE                             R10 R7
      292 GETIMPORT                        R9 K34 [assert]
      294 CALL                             R9 1 0
      295 NEWTABLE                         R9 0 1
      297 MOVE                             R10 R7
      298 SETLIST                          R9 R10 1 [1]
      300 GETUPVAL                         R10 16
      301 MOVE                             R11 R9
      302 NEWTABLE                         R12 0 4
      304 DUPTABLE                         R13 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      305 LOADK                            R14 K35 ["ShowInExplorer"]
      306 SETTABLEKS                       R14 R13 K9 ["Id"]
      308 LOADK                            R16 K21 ["ContextMenu"]
      309 LOADK                            R17 K35 ["ShowInExplorer"]
      310 NAMECALL                         R14 R2 K23 ["getText"]
      312 CALL                             R14 3 1
      313 SETTABLEKS                       R14 R13 K10 ["Text"]
      315 GETUPVAL                         R15 4
      316 GETTABLEKS                       R14 R15 K15 ["getClassIcon"]
      318 LOADK                            R15 K36 ["ReplicatedStorage"]
      319 CALL                             R14 1 1
      320 SETTABLEKS                       R14 R13 K11 ["Icon"]
      322 NEWCLOSURE                       R14 P7
      323 CAPTURE                          VAL R0
      324 CAPTURE                          UPVAL U17
      325 CAPTURE                          UPVAL U0
      326 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      328 DUPTABLE                         R14 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      329 LOADK                            R15 K37 ["Copy"]
      330 SETTABLEKS                       R15 R14 K9 ["Id"]
      332 LOADK                            R17 K21 ["ContextMenu"]
      333 LOADK                            R18 K37 ["Copy"]
      334 NAMECALL                         R15 R2 K23 ["getText"]
      336 CALL                             R15 3 1
      337 SETTABLEKS                       R15 R14 K10 ["Text"]
      339 GETUPVAL                         R16 12
      340 GETTABLEKS                       R15 R16 K38 ["copy"]
      342 CALL                             R15 0 1
      343 SETTABLEKS                       R15 R14 K11 ["Icon"]
      345 NEWCLOSURE                       R15 P8
      346 CAPTURE                          VAL R0
      347 CAPTURE                          UPVAL U18
      348 CAPTURE                          UPVAL U0
      349 SETTABLEKS                       R15 R14 K12 ["OnItemClicked"]
      351 DUPTABLE                         R15 K40 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      352 LOADK                            R16 K41 ["PasteInto"]
      353 SETTABLEKS                       R16 R15 K9 ["Id"]
      355 LOADK                            R18 K21 ["ContextMenu"]
      356 LOADK                            R19 K41 ["PasteInto"]
      357 NAMECALL                         R16 R2 K23 ["getText"]
      359 CALL                             R16 3 1
      360 SETTABLEKS                       R16 R15 K10 ["Text"]
      362 GETUPVAL                         R17 12
      363 GETTABLEKS                       R16 R17 K42 ["paste"]
      365 CALL                             R16 0 1
      366 SETTABLEKS                       R16 R15 K11 ["Icon"]
      368 SETTABLEKS                       R6 R15 K39 ["Enabled"]
      370 NEWCLOSURE                       R16 P9
      371 CAPTURE                          VAL R0
      372 CAPTURE                          UPVAL U19
      373 CAPTURE                          UPVAL U0
      374 SETTABLEKS                       R16 R15 K12 ["OnItemClicked"]
      376 DUPTABLE                         R16 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      377 LOADK                            R17 K43 ["Delete"]
      378 SETTABLEKS                       R17 R16 K9 ["Id"]
      380 LOADK                            R19 K21 ["ContextMenu"]
      381 LOADK                            R20 K43 ["Delete"]
      382 NAMECALL                         R17 R2 K23 ["getText"]
      384 CALL                             R17 3 1
      385 SETTABLEKS                       R17 R16 K10 ["Text"]
      387 GETUPVAL                         R18 12
      388 GETTABLEKS                       R17 R18 K44 ["delete"]
      390 CALL                             R17 0 1
      391 SETTABLEKS                       R17 R16 K11 ["Icon"]
      393 NEWCLOSURE                       R17 P10
      394 CAPTURE                          VAL R0
      395 CAPTURE                          UPVAL U20
      396 CAPTURE                          UPVAL U0
      397 SETTABLEKS                       R17 R16 K12 ["OnItemClicked"]
      399 SETLIST                          R12 R13 4 [1]
      401 CALL                             R10 2 1
      402 MOVE                             R9 R10
      403 DUPTABLE                         R10 K45 [{"Id", "Children"}]
      404 LOADK                            R11 K14 ["Folder"]
      405 SETTABLEKS                       R11 R10 K9 ["Id"]
      407 SETTABLEKS                       R9 R10 K16 ["Children"]
      409 GETUPVAL                         R11 7
      410 JUMPIFNOT                        R11 ; [+7]
      411 GETUPVAL                         R12 4
      412 GETTABLEKS                       R11 R12 K46 ["trackClicks"]
      414 MOVE                             R12 R10
      415 GETTABLEKS                       R13 R1 K47 ["Telemetry"]
      417 CALL                             R11 2 0
      418 GETUPVAL                         R12 4
      419 GETTABLEKS                       R11 R12 K48 ["showContextMenu"]
      421 GETTABLEKS                       R12 R1 K49 ["Plugin"]
      423 MOVE                             R13 R10
      424 CALL                             R11 2 0
      425 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["MenuHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Resources"]
       26 GETTABLEKS                       R3 R4 K9 ["ModernIcons"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R4 K10 ["Thunks"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R6 R3 K11 ["Change"]
       37 GETTABLEKS                       R5 R6 K12 ["CreateFolder"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R7 R3 K11 ["Change"]
       44 GETTABLEKS                       R6 R7 K13 ["CreateThemeSheet"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R8 R3 K11 ["Change"]
       51 GETTABLEKS                       R7 R8 K14 ["CreateStyleQuery"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R9 R3 K11 ["Change"]
       58 GETTABLEKS                       R8 R9 K15 ["CreateStyleRuleInFolder"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R10 R3 K11 ["Change"]
       65 GETTABLEKS                       R9 R10 K16 ["DeleteInstance"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K4 [require]
       70 GETTABLEKS                       R11 R3 K11 ["Change"]
       72 GETTABLEKS                       R10 R11 K17 ["PasteInstanceInto"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R12 R3 K11 ["Change"]
       79 GETTABLEKS                       R11 R12 K18 ["ShowInstanceInExplorer"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K4 [require]
       84 GETTABLEKS                       R14 R0 K5 ["Src"]
       86 GETTABLEKS                       R13 R14 K6 ["Util"]
       88 GETTABLEKS                       R12 R13 K19 ["StyleQueryHelpers"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K4 [require]
       93 GETTABLEKS                       R14 R0 K20 ["Packages"]
       95 GETTABLEKS                       R13 R14 K21 ["Dash"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R12 K22 ["append"]
      100 GETTABLEKS                       R14 R12 K23 ["map"]
      102 GETTABLEKS                       R16 R0 K5 ["Src"]
      104 GETTABLEKS                       R15 R16 K24 ["Actions"]
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R18 R15 K25 ["Clipboard"]
      110 GETTABLEKS                       R17 R18 K26 ["CopyInstanceToClipboard"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R19 R0 K5 ["Src"]
      117 GETTABLEKS                       R18 R19 K27 ["Types"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R21 R0 K5 ["Src"]
      124 GETTABLEKS                       R20 R21 K10 ["Thunks"]
      126 GETTABLEKS                       R19 R20 K27 ["Types"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K4 [require]
      131 GETTABLEKS                       R22 R0 K5 ["Src"]
      133 GETTABLEKS                       R21 R22 K28 ["Flags"]
      135 GETTABLEKS                       R20 R21 K29 ["getFFlagStyleQuery"]
      137 CALL                             R19 1 1
      138 CALL                             R19 0 1
      139 GETIMPORT                        R20 K4 [require]
      141 GETTABLEKS                       R23 R0 K5 ["Src"]
      143 GETTABLEKS                       R22 R23 K28 ["Flags"]
      145 GETTABLEKS                       R21 R22 K30 ["getFFlagStyleEditorCreateFolder"]
      147 CALL                             R20 1 1
      148 CALL                             R20 0 1
      149 GETIMPORT                        R21 K4 [require]
      151 GETTABLEKS                       R24 R0 K5 ["Src"]
      153 GETTABLEKS                       R23 R24 K28 ["Flags"]
      155 GETTABLEKS                       R22 R23 K31 ["getFFlagStyleEditorBuiltinStyleQuery"]
      157 CALL                             R21 1 1
      158 CALL                             R21 0 1
      159 GETIMPORT                        R22 K4 [require]
      161 GETTABLEKS                       R25 R0 K5 ["Src"]
      163 GETTABLEKS                       R24 R25 K28 ["Flags"]
      165 GETTABLEKS                       R23 R24 K32 ["getFFlagStyleEditorFixThemeFolderView"]
      167 CALL                             R22 1 1
      168 CALL                             R22 0 1
      169 GETIMPORT                        R23 K4 [require]
      171 GETTABLEKS                       R26 R0 K5 ["Src"]
      173 GETTABLEKS                       R25 R26 K6 ["Util"]
      175 GETTABLEKS                       R24 R25 K33 ["BuiltinStyleQueryCategories"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K4 [require]
      180 GETTABLEKS                       R26 R3 K11 ["Change"]
      182 GETTABLEKS                       R25 R26 K34 ["CreateBuiltinStyleQuery"]
      184 CALL                             R24 1 1
      185 DUPCLOSURE                       R25 K35 [PROTO_13]
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R8
      205 RETURN                           R25 1
