PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R2 K2 ["[CommitTreeBuilder]"]
        6 MOVE                             R3 R0
        7 GETVARARGS                       R4 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["concat"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 2
        6 MOVE                             R4 R0
        7 GETUPVAL                         R6 2
        8 ADDK                             R5 R6 K1 [1]
        9 SETLIST                          R3 R4 2 [1]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+109]
        2 GETTABLEKS                       R1 R0 K0 ["nodes"]
        4 GETTABLEKS                       R2 R0 K1 ["rootID"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["group"]
        9 LOADK                            R4 K3 ["__printTree()"]
       10 CALL                             R3 1 0
       11 NEWTABLE                         R3 0 2
       13 MOVE                             R4 R2
       14 LOADN                            R5 0
       15 SETLIST                          R3 R4 2 [1]
       17 LENGTH                           R4 R3
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+87]
       21 GETIMPORT                        R4 K6 [table.remove]
       23 MOVE                             R5 R3
       24 LOADN                            R6 1
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K6 [table.remove]
       28 MOVE                             R6 R3
       29 LOADN                            R7 1
       30 CALL                             R5 2 1
       31 MOVE                             R8 R4
       32 NAMECALL                         R6 R1 K7 ["get"]
       34 CALL                             R6 2 1
       35 JUMPIFNOTEQKNIL                  R6 ; [+13]
       37 GETIMPORT                        R7 K9 [error]
       39 GETIMPORT                        R8 K12 [string.format]
       41 LOADK                            R9 K13 ["Could not find node with id \"%s\" in commit tree"]
       42 FASTCALL1                        TOSTRING R4 ; [+3]
       43 MOVE                             R11 R4
       44 GETIMPORT                        R10 K15 [tostring]
       46 CALL                             R10 1 1
       47 CALL                             R8 2 -1
       48 CALL                             R7 -1 0
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K16 ["log"]
       52 GETIMPORT                        R8 K12 [string.format]
       54 LOADK                            R9 K17 ["%s%s:%s %s (%s)"]
       55 GETIMPORT                        R10 K19 [string.rep]
       57 LOADK                            R11 K20 ["•"]
       58 MOVE                             R12 R5
       59 CALL                             R10 2 1
       60 GETTABLEKS                       R12 R6 K21 ["id"]
       62 FASTCALL1                        TOSTRING R12 ; [+2]
       63 GETIMPORT                        R11 K15 [tostring]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R14 R6 K23 ["displayName"]
       68 ORK                              R13 R14 K22 [""]
       69 FASTCALL1                        TOSTRING R13 ; [+2]
       70 GETIMPORT                        R12 K15 [tostring]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R14 R6 K24 ["key"]
       75 JUMPIFNOT                        R14 ; [+11]
       76 GETIMPORT                        R13 K12 [string.format]
       78 LOADK                            R14 K25 ["key:\"%s\""]
       79 GETTABLEKS                       R16 R6 K24 ["key"]
       81 FASTCALL1                        TOSTRING R16 ; [+2]
       82 GETIMPORT                        R15 K15 [tostring]
       84 CALL                             R15 1 1
       85 CALL                             R13 2 1
       86 JUMP                             ; [+1]
       87 LOADK                            R13 K22 [""]
       88 GETTABLEKS                       R15 R6 K26 ["treeBaseDuration"]
       90 FASTCALL1                        TOSTRING R15 ; [+2]
       91 GETIMPORT                        R14 K15 [tostring]
       93 CALL                             R14 1 1
       94 CALL                             R8 6 -1
       95 CALL                             R7 -1 0
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K27 ["forEach"]
       99 GETTABLEKS                       R8 R6 K28 ["children"]
      101 NEWCLOSURE                       R9 P0
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R5
      105 CALL                             R7 2 0
      106 JUMPBACK                         ; [-90]
      107 GETUPVAL                         R4 1
      108 GETTABLEKS                       R4 R4 K29 ["groupEnd"]
      110 CALL                             R4 0 0
      111 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["get"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K4 ["set"]
       13 CALL                             R2 3 0
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["nodes"]
        5 CALL                             R2 1 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 LOADN                            R4 3
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          REF R4
       11 LOADNIL                          R6
       12 NEWTABLE                         R7 0 1
       14 LOADK                            R8 K2 [""]
       15 SETLIST                          R7 R8 1 [1]
       17 MOVE                             R9 R4
       18 ADDK                             R4 R4 K3 [1]
       19 GETTABLE                         R8 R1 R9
       20 ADD                              R9 R4 R8
       21 JUMPIFNOTLT                      R4 R9 ; [+12]
       23 MOVE                             R11 R4
       24 ADDK                             R4 R4 K3 [1]
       25 GETTABLE                         R10 R1 R11
       26 FASTCALL2                        TABLE_INSERT R7 R10 ; [+5]
       28 MOVE                             R12 R7
       29 MOVE                             R13 R10
       30 GETIMPORT                        R11 K6 [table.insert]
       32 CALL                             R11 2 0
       33 JUMPBACK                         ; [-13]
       34 LENGTH                           R10 R1
       35 JUMPIFNOTLE                      R4 R10 ; [+364]
       37 MOVE                             R11 R4
       38 ADDK                             R4 R4 K3 [1]
       39 GETTABLE                         R10 R1 R11
       40 GETUPVAL                         R11 1
       41 JUMPIFNOTEQ                      R10 R11 ; [+136]
       43 MOVE                             R11 R4
       44 ADDK                             R4 R4 K3 [1]
       45 GETTABLE                         R6 R1 R11
       46 MOVE                             R12 R4
       47 ADDK                             R4 R4 K3 [1]
       48 GETTABLE                         R11 R1 R12
       49 MOVE                             R14 R6
       50 NAMECALL                         R12 R2 K7 ["has"]
       52 CALL                             R12 2 1
       53 JUMPIFNOT                        R12 ; [+11]
       54 GETIMPORT                        R12 K9 [error]
       56 LOADK                            R14 K10 ["Commit tree already contains fiber "]
       57 FASTCALL1                        TOSTRING R6 ; [+3]
       58 MOVE                             R16 R6
       59 GETIMPORT                        R15 K12 [tostring]
       61 CALL                             R15 1 1
       62 LOADK                            R16 K13 [". This is a bug in React DevTools."]
       63 CONCAT                           R13 R14 R16
       64 CALL                             R12 1 0
       65 GETUPVAL                         R12 2
       66 JUMPIFNOTEQ                      R11 R12 ; [+31]
       68 ADDK                             R4 R4 K14 [2]
       69 GETUPVAL                         R12 3
       70 JUMPIFNOT                        R12 ; [+12]
       71 GETUPVAL                         R12 4
       72 LOADK                            R13 K15 ["Add"]
       73 LOADK                            R14 K16 ["new root fiber %s"]
       74 FASTCALL1                        TOSTRING R6 ; [+3]
       75 MOVE                             R17 R6
       76 GETIMPORT                        R16 K12 [tostring]
       78 CALL                             R16 1 1
       79 NAMECALL                         R14 R14 K17 ["format"]
       81 CALL                             R14 2 -1
       82 CALL                             R12 -1 0
       83 DUPTABLE                         R12 K28 [{["children"], ["displayName"] = , ["hocDisplayNames"] = , ["id"], ["key"] = , ["parentID"] = 0, ["treeBaseDuration"] = 0, ["type"]}]
       84 NEWTABLE                         R13 0 0
       86 SETTABLEKS                       R13 R12 K18 ["children"]
       88 SETTABLEKS                       R6 R12 K22 ["id"]
       90 SETTABLEKS                       R11 R12 K27 ["type"]
       92 MOVE                             R15 R6
       93 MOVE                             R16 R12
       94 NAMECALL                         R13 R2 K29 ["set"]
       96 CALL                             R13 3 0
       97 JUMP                             ; [+301]
       98 MOVE                             R13 R4
       99 ADDK                             R4 R4 K3 [1]
      100 GETTABLE                         R12 R1 R13
      101 ADDK                             R4 R4 K3 [1]
      102 MOVE                             R14 R4
      103 ADDK                             R4 R4 K3 [1]
      104 GETTABLE                         R13 R1 R14
      105 ADDK                             R15 R13 K3 [1]
      106 GETTABLE                         R14 R7 R15
      107 MOVE                             R16 R4
      108 ADDK                             R4 R4 K3 [1]
      109 GETTABLE                         R15 R1 R16
      110 ADDK                             R17 R15 K3 [1]
      111 GETTABLE                         R16 R7 R17
      112 GETUPVAL                         R17 3
      113 JUMPIFNOT                        R17 ; [+22]
      114 GETUPVAL                         R17 4
      115 LOADK                            R18 K15 ["Add"]
      116 LOADK                            R19 K30 ["fiber %s (%s) as child of %s"]
      117 FASTCALL1                        TOSTRING R6 ; [+3]
      118 MOVE                             R22 R6
      119 GETIMPORT                        R21 K12 [tostring]
      121 CALL                             R21 1 1
      122 ORK                              R23 R14 K31 ["null"]
      123 FASTCALL1                        TOSTRING R23 ; [+2]
      124 GETIMPORT                        R22 K12 [tostring]
      126 CALL                             R22 1 1
      127 FASTCALL1                        TOSTRING R12 ; [+3]
      128 MOVE                             R24 R12
      129 GETIMPORT                        R23 K12 [tostring]
      131 CALL                             R23 1 1
      132 NAMECALL                         R19 R19 K17 ["format"]
      134 CALL                             R19 4 -1
      135 CALL                             R17 -1 0
      136 GETIMPORT                        R17 K33 [table.clone]
      138 MOVE                             R20 R12
      139 NAMECALL                         R18 R2 K34 ["get"]
      141 CALL                             R18 2 1
      142 CALL                             R17 1 1
      143 MOVE                             R20 R12
      144 MOVE                             R21 R17
      145 NAMECALL                         R18 R2 K29 ["set"]
      147 CALL                             R18 3 0
      148 GETUPVAL                         R18 5
      149 GETTABLEKS                       R18 R18 K35 ["concat"]
      151 GETTABLEKS                       R19 R17 K18 ["children"]
      153 MOVE                             R20 R6
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K18 ["children"]
      157 DUPTABLE                         R18 K36 [{["children"], ["displayName"], ["hocDisplayNames"] = , ["id"], ["key"], ["parentID"], ["treeBaseDuration"] = 0, ["type"]}]
      158 NEWTABLE                         R19 0 0
      160 SETTABLEKS                       R19 R18 K18 ["children"]
      162 SETTABLEKS                       R14 R18 K19 ["displayName"]
      164 SETTABLEKS                       R6 R18 K22 ["id"]
      166 SETTABLEKS                       R16 R18 K23 ["key"]
      168 SETTABLEKS                       R12 R18 K24 ["parentID"]
      170 SETTABLEKS                       R11 R18 K27 ["type"]
      172 MOVE                             R21 R6
      173 MOVE                             R22 R18
      174 NAMECALL                         R19 R2 K29 ["set"]
      176 CALL                             R19 3 0
      177 JUMP                             ; [+221]
      178 GETUPVAL                         R11 6
      179 JUMPIFNOTEQ                      R10 R11 ; [+96]
      181 MOVE                             R12 R4
      182 ADDK                             R4 R4 K3 [1]
      183 GETTABLE                         R11 R1 R12
      184 LOADN                            R14 1
      185 MOVE                             R12 R11
      186 LOADN                            R13 1
      187 FORNPREP                         R12
      188 MOVE                             R15 R4
      189 ADDK                             R4 R4 K3 [1]
      190 GETTABLE                         R6 R1 R15
      191 MOVE                             R17 R6
      192 NAMECALL                         R15 R2 K7 ["has"]
      194 CALL                             R15 2 1
      195 JUMPIF                           R15 ; [+11]
      196 GETIMPORT                        R15 K9 [error]
      198 LOADK                            R17 K37 ["Commit tree does not contain fiber "]
      199 FASTCALL1                        TOSTRING R6 ; [+3]
      200 MOVE                             R19 R6
      201 GETIMPORT                        R18 K12 [tostring]
      203 CALL                             R18 1 1
      204 LOADK                            R19 K13 [". This is a bug in React DevTools."]
      205 CONCAT                           R16 R17 R19
      206 CALL                             R15 1 0
      207 MOVE                             R16 R6
      208 GETIMPORT                        R17 K33 [table.clone]
      210 MOVE                             R20 R16
      211 NAMECALL                         R18 R2 K34 ["get"]
      213 CALL                             R18 2 1
      214 CALL                             R17 1 1
      215 MOVE                             R15 R17
      216 MOVE                             R19 R16
      217 MOVE                             R20 R15
      218 NAMECALL                         R17 R2 K29 ["set"]
      220 CALL                             R17 3 0
      221 GETTABLEKS                       R16 R15 K24 ["parentID"]
      223 MOVE                             R19 R6
      224 NAMECALL                         R17 R2 K38 ["delete"]
      226 CALL                             R17 2 0
      227 MOVE                             R19 R16
      228 NAMECALL                         R17 R2 K7 ["has"]
      230 CALL                             R17 2 1
      231 JUMPIF                           R17 ; [+1]
      232 JUMP                             ; [+41]
      233 GETIMPORT                        R17 K33 [table.clone]
      235 MOVE                             R20 R16
      236 NAMECALL                         R18 R2 K34 ["get"]
      238 CALL                             R18 2 1
      239 CALL                             R17 1 1
      240 MOVE                             R20 R16
      241 MOVE                             R21 R17
      242 NAMECALL                         R18 R2 K29 ["set"]
      244 CALL                             R18 3 0
      245 GETUPVAL                         R18 3
      246 JUMPIFNOT                        R18 ; [+17]
      247 GETUPVAL                         R18 4
      248 LOADK                            R19 K39 ["Remove"]
      249 LOADK                            R20 K40 ["fiber %s from parent %s"]
      250 FASTCALL1                        TOSTRING R6 ; [+3]
      251 MOVE                             R23 R6
      252 GETIMPORT                        R22 K12 [tostring]
      254 CALL                             R22 1 1
      255 FASTCALL1                        TOSTRING R16 ; [+3]
      256 MOVE                             R24 R16
      257 GETIMPORT                        R23 K12 [tostring]
      259 CALL                             R23 1 1
      260 NAMECALL                         R20 R20 K17 ["format"]
      262 CALL                             R20 3 -1
      263 CALL                             R18 -1 0
      264 GETUPVAL                         R18 5
      265 GETTABLEKS                       R18 R18 K41 ["filter"]
      267 GETTABLEKS                       R19 R17 K18 ["children"]
      269 NEWCLOSURE                       R20 P2
      270 CAPTURE                          REF R6
      271 CALL                             R18 2 1
      272 SETTABLEKS                       R18 R17 K18 ["children"]
      274 FORNLOOP                         R12
      275 JUMP                             ; [+123]
      276 GETUPVAL                         R11 7
      277 JUMPIFNOTEQ                      R10 R11 ; [+61]
      279 MOVE                             R11 R4
      280 ADDK                             R4 R4 K3 [1]
      281 GETTABLE                         R6 R1 R11
      282 MOVE                             R12 R4
      283 ADDK                             R4 R4 K3 [1]
      284 GETTABLE                         R11 R1 R12
      285 GETUPVAL                         R12 5
      286 GETTABLEKS                       R12 R12 K42 ["slice"]
      288 MOVE                             R13 R1
      289 MOVE                             R14 R4
      290 ADD                              R15 R4 R11
      291 CALL                             R12 3 1
      292 ADD                              R4 R4 R11
      293 GETUPVAL                         R13 3
      294 JUMPIFNOT                        R13 ; [+22]
      295 GETUPVAL                         R13 4
      296 LOADK                            R14 K43 ["Re-order"]
      297 LOADK                            R15 K44 ["fiber %s children %s"]
      298 FASTCALL1                        TOSTRING R6 ; [+3]
      299 MOVE                             R18 R6
      300 GETIMPORT                        R17 K12 [tostring]
      302 CALL                             R17 1 1
      303 GETUPVAL                         R19 5
      304 GETTABLEKS                       R19 R19 K45 ["join"]
      306 MOVE                             R20 R12
      307 LOADK                            R21 K46 [","]
      308 CALL                             R19 2 -1
      309 FASTCALL                         TOSTRING ; [+2]
      310 GETIMPORT                        R18 K12 [tostring]
      312 CALL                             R18 -1 1
      313 NAMECALL                         R15 R15 K17 ["format"]
      315 CALL                             R15 3 -1
      316 CALL                             R13 -1 0
      317 MOVE                             R14 R6
      318 GETIMPORT                        R15 K33 [table.clone]
      320 MOVE                             R18 R14
      321 NAMECALL                         R16 R2 K34 ["get"]
      323 CALL                             R16 2 1
      324 CALL                             R15 1 1
      325 MOVE                             R13 R15
      326 MOVE                             R17 R14
      327 MOVE                             R18 R13
      328 NAMECALL                         R15 R2 K29 ["set"]
      330 CALL                             R15 3 0
      331 GETUPVAL                         R14 5
      332 GETTABLEKS                       R14 R14 K47 ["from"]
      334 MOVE                             R15 R12
      335 CALL                             R14 1 1
      336 SETTABLEKS                       R14 R13 K18 ["children"]
      338 JUMP                             ; [+60]
      339 GETUPVAL                         R11 8
      340 JUMPIFNOTEQ                      R10 R11 ; [+45]
      342 MOVE                             R11 R4
      343 ADDK                             R4 R4 K3 [1]
      344 GETTABLE                         R6 R1 R11
      345 MOVE                             R12 R6
      346 GETIMPORT                        R13 K33 [table.clone]
      348 MOVE                             R16 R12
      349 NAMECALL                         R14 R2 K34 ["get"]
      351 CALL                             R14 2 1
      352 CALL                             R13 1 1
      353 MOVE                             R11 R13
      354 MOVE                             R15 R12
      355 MOVE                             R16 R11
      356 NAMECALL                         R13 R2 K29 ["set"]
      358 CALL                             R13 3 0
      359 MOVE                             R14 R4
      360 ADDK                             R4 R4 K3 [1]
      361 GETTABLE                         R13 R1 R14
      362 DIVK                             R12 R13 K48 [1000]
      363 SETTABLEKS                       R12 R11 K26 ["treeBaseDuration"]
      365 GETUPVAL                         R12 3
      366 JUMPIFNOT                        R12 ; [+32]
      367 GETUPVAL                         R12 4
      368 LOADK                            R13 K49 ["Update"]
      369 LOADK                            R14 K50 ["fiber %s treeBaseDuration to %s"]
      370 FASTCALL1                        TOSTRING R6 ; [+3]
      371 MOVE                             R17 R6
      372 GETIMPORT                        R16 K12 [tostring]
      374 CALL                             R16 1 1
      375 GETTABLEKS                       R18 R11 K26 ["treeBaseDuration"]
      377 FASTCALL1                        TOSTRING R18 ; [+2]
      378 GETIMPORT                        R17 K12 [tostring]
      380 CALL                             R17 1 1
      381 NAMECALL                         R14 R14 K17 ["format"]
      383 CALL                             R14 3 -1
      384 CALL                             R12 -1 0
      385 JUMP                             ; [+13]
      386 GETIMPORT                        R11 K9 [error]
      388 GETIMPORT                        R12 K52 [string.format]
      390 LOADK                            R13 K53 ["Unsupported Bridge operation %s at operation index %d"]
      391 FASTCALL1                        TOSTRING R10 ; [+3]
      392 MOVE                             R15 R10
      393 GETIMPORT                        R14 K12 [tostring]
      395 CALL                             R14 1 1
      396 MOVE                             R15 R4
      397 CALL                             R12 3 -1
      398 CALL                             R11 -1 0
      399 JUMPBACK                         ; [-366]
      400 DUPTABLE                         R10 K55 [{"nodes", "rootID"}]
      401 SETTABLEKS                       R2 R10 K1 ["nodes"]
      403 GETTABLEKS                       R11 R0 K54 ["rootID"]
      405 SETTABLEKS                       R11 R10 K54 ["rootID"]
      407 CLOSEUPVALS                      R4
      408 RETURN                           R10 1

PROTO_7:
        0 GETTABLEKS                       R4 R3 K0 ["snapshots"]
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K1 ["get"]
        5 CALL                             R4 2 1
        6 JUMPIFEQKNIL                     R4 ; [+51]
        8 MOVE                             R7 R0
        9 DUPTABLE                         R8 K10 [{"id", "children", "displayName", "hocDisplayNames", "key", "parentID", "treeBaseDuration", "type"}]
       10 SETTABLEKS                       R0 R8 K2 ["id"]
       12 GETTABLEKS                       R9 R4 K3 ["children"]
       14 SETTABLEKS                       R9 R8 K3 ["children"]
       16 GETTABLEKS                       R9 R4 K4 ["displayName"]
       18 SETTABLEKS                       R9 R8 K4 ["displayName"]
       20 GETTABLEKS                       R9 R4 K5 ["hocDisplayNames"]
       22 SETTABLEKS                       R9 R8 K5 ["hocDisplayNames"]
       24 GETTABLEKS                       R9 R4 K6 ["key"]
       26 SETTABLEKS                       R9 R8 K6 ["key"]
       28 SETTABLEKS                       R1 R8 K7 ["parentID"]
       30 GETTABLEKS                       R9 R3 K11 ["initialTreeBaseDurations"]
       32 MOVE                             R11 R0
       33 NAMECALL                         R9 R9 K1 ["get"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K8 ["treeBaseDuration"]
       38 GETTABLEKS                       R9 R4 K9 ["type"]
       40 SETTABLEKS                       R9 R8 K9 ["type"]
       42 NAMECALL                         R5 R2 K12 ["set"]
       44 CALL                             R5 3 0
       45 GETTABLEKS                       R5 R4 K3 ["children"]
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETUPVAL                         R10 0
       51 MOVE                             R11 R9
       52 MOVE                             R12 R0
       53 MOVE                             R13 R2
       54 MOVE                             R14 R3
       55 CALL                             R10 4 0
       56 FORGLOOP                         R5 2 ; [-7]
       58 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["commitIndex"]
        2 GETTABLEKS                       R2 R0 K1 ["profilerStore"]
        4 GETTABLEKS                       R3 R0 K2 ["rootID"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R4 K3 ["has"]
       10 CALL                             R4 2 1
       11 JUMPIF                           R4 ; [+7]
       12 GETUPVAL                         R4 0
       13 MOVE                             R6 R3
       14 NEWTABLE                         R7 0 0
       16 NAMECALL                         R4 R4 K4 ["set"]
       18 CALL                             R4 3 0
       19 GETUPVAL                         R4 0
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K5 ["get"]
       23 CALL                             R4 2 1
       24 LENGTH                           R5 R4
       25 JUMPIFNOTLE                      R1 R5 ; [+3]
       27 GETTABLE                         R5 R4 R1
       28 RETURN                           R5 1
       29 NAMECALL                         R5 R2 K6 ["profilingData"]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKNIL                  R5 ; [+5]
       34 GETIMPORT                        R6 K8 [error]
       36 LOADK                            R7 K9 ["No profiling data available"]
       37 CALL                             R6 1 0
       38 GETTABLEKS                       R6 R5 K10 ["dataForRoots"]
       40 MOVE                             R8 R3
       41 NAMECALL                         R6 R6 K5 ["get"]
       43 CALL                             R6 2 1
       44 JUMPIFNOTEQKNIL                  R6 ; [+13]
       46 GETIMPORT                        R7 K8 [error]
       48 GETIMPORT                        R8 K13 [string.format]
       50 LOADK                            R9 K14 ["Could not find profiling data for root \"%s\""]
       51 FASTCALL1                        TOSTRING R3 ; [+3]
       52 MOVE                             R11 R3
       53 GETIMPORT                        R10 K16 [tostring]
       55 CALL                             R10 1 1
       56 CALL                             R8 2 -1
       57 CALL                             R7 -1 0
       58 GETTABLEKS                       R7 R6 K17 ["operations"]
       60 JUMPIFNOTEQKN                    R1 K18 [1] ; [+38]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K19 ["new"]
       65 CALL                             R8 0 1
       66 GETUPVAL                         R9 2
       67 MOVE                             R10 R3
       68 LOADN                            R11 0
       69 MOVE                             R12 R8
       70 MOVE                             R13 R6
       71 CALL                             R9 4 0
       72 JUMPIFEQKNIL                     R7 ; [+58]
       74 LENGTH                           R9 R7
       75 JUMPIFNOTLE                      R1 R9 ; [+55]
       77 GETUPVAL                         R9 3
       78 DUPTABLE                         R10 K21 [{"nodes", "rootID"}]
       79 SETTABLEKS                       R8 R10 K20 ["nodes"]
       81 SETTABLEKS                       R3 R10 K2 ["rootID"]
       83 GETTABLE                         R11 R7 R1
       84 CALL                             R9 2 1
       85 GETUPVAL                         R10 4
       86 JUMPIFNOT                        R10 ; [+3]
       87 GETUPVAL                         R10 5
       88 MOVE                             R11 R9
       89 CALL                             R10 1 0
       90 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       92 MOVE                             R11 R4
       93 MOVE                             R12 R9
       94 GETIMPORT                        R10 K24 [table.insert]
       96 CALL                             R10 2 0
       97 RETURN                           R9 1
       98 JUMP                             ; [+32]
       99 GETUPVAL                         R8 6
      100 DUPTABLE                         R9 K25 [{"commitIndex", "profilerStore", "rootID"}]
      101 SUBK                             R10 R1 K18 [1]
      102 SETTABLEKS                       R10 R9 K0 ["commitIndex"]
      104 SETTABLEKS                       R2 R9 K1 ["profilerStore"]
      106 SETTABLEKS                       R3 R9 K2 ["rootID"]
      108 CALL                             R8 1 1
      109 JUMPIFEQKNIL                     R7 ; [+21]
      111 LENGTH                           R9 R7
      112 JUMPIFNOTLE                      R1 R9 ; [+18]
      114 GETUPVAL                         R9 3
      115 MOVE                             R10 R8
      116 GETTABLE                         R11 R7 R1
      117 CALL                             R9 2 1
      118 GETUPVAL                         R10 4
      119 JUMPIFNOT                        R10 ; [+3]
      120 GETUPVAL                         R10 5
      121 MOVE                             R11 R9
      122 CALL                             R10 1 0
      123 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      125 MOVE                             R11 R4
      126 MOVE                             R12 R9
      127 GETIMPORT                        R10 K24 [table.insert]
      129 CALL                             R10 2 0
      130 RETURN                           R9 1
      131 GETIMPORT                        R8 K8 [error]
      133 GETIMPORT                        R9 K13 [string.format]
      135 LOADK                            R10 K26 ["getCommitTree(): Unable to reconstruct tree for root \"%s\" and commit %s"]
      136 FASTCALL1                        TOSTRING R3 ; [+3]
      137 MOVE                             R12 R3
      138 GETIMPORT                        R11 K16 [tostring]
      140 CALL                             R11 1 1
      141 FASTCALL1                        TOSTRING R1 ; [+3]
      142 MOVE                             R13 R1
      143 GETIMPORT                        R12 K16 [tostring]
      145 CALL                             R12 1 1
      146 CALL                             R9 3 -1
      147 CALL                             R8 -1 0
      148 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Array"]
       20 GETTABLEKS                       R3 R1 K7 ["Map"]
       22 GETTABLEKS                       R4 R1 K8 ["console"]
       24 NEWTABLE                         R5 2 0
       26 GETIMPORT                        R6 K4 [require]
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R7 R7 K2 ["Parent"]
       32 GETTABLEKS                       R7 R7 K2 ["Parent"]
       34 GETTABLEKS                       R7 R7 K2 ["Parent"]
       36 GETTABLEKS                       R7 R7 K2 ["Parent"]
       38 GETTABLEKS                       R7 R7 K9 ["constants"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K10 ["__DEBUG__"]
       43 GETTABLEKS                       R8 R6 K11 ["TREE_OPERATION_ADD"]
       45 GETTABLEKS                       R9 R6 K12 ["TREE_OPERATION_REMOVE"]
       47 GETTABLEKS                       R10 R6 K13 ["TREE_OPERATION_REORDER_CHILDREN"]
       49 GETTABLEKS                       R11 R6 K14 ["TREE_OPERATION_UPDATE_TREE_BASE_DURATION"]
       51 GETIMPORT                        R12 K4 [require]
       53 GETIMPORT                        R13 K1 [script]
       55 GETTABLEKS                       R13 R13 K2 ["Parent"]
       57 GETTABLEKS                       R13 R13 K2 ["Parent"]
       59 GETTABLEKS                       R13 R13 K2 ["Parent"]
       61 GETTABLEKS                       R13 R13 K15 ["types"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K4 [require]
       66 GETIMPORT                        R14 K1 [script]
       68 GETTABLEKS                       R14 R14 K2 ["Parent"]
       70 GETTABLEKS                       R14 R14 K2 ["Parent"]
       72 GETTABLEKS                       R14 R14 K2 ["Parent"]
       74 GETTABLEKS                       R14 R14 K2 ["Parent"]
       76 GETTABLEKS                       R14 R14 K15 ["types"]
       78 CALL                             R13 1 1
       79 GETTABLEKS                       R13 R13 K16 ["ElementTypeRoot"]
       81 GETIMPORT                        R14 K4 [require]
       83 GETIMPORT                        R15 K1 [script]
       85 GETTABLEKS                       R15 R15 K2 ["Parent"]
       87 GETTABLEKS                       R15 R15 K2 ["Parent"]
       89 GETTABLEKS                       R15 R15 K2 ["Parent"]
       91 GETTABLEKS                       R15 R15 K2 ["Parent"]
       93 GETTABLEKS                       R15 R15 K15 ["types"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K4 [require]
       98 GETIMPORT                        R16 K1 [script]
      100 GETTABLEKS                       R16 R16 K2 ["Parent"]
      102 GETTABLEKS                       R16 R16 K15 ["types"]
      104 CALL                             R15 1 1
      105 DUPCLOSURE                       R16 K17 [PROTO_0]
      106 CAPTURE                          VAL R7
      107 DUPCLOSURE                       R17 K18 [PROTO_2]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R2
      111 DUPCLOSURE                       R18 K19 [PROTO_6]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 DUPCLOSURE                       R19 K20 [PROTO_7]
      122 CAPTURE                          VAL R19
      123 GETTABLEKS                       R20 R3 K21 ["new"]
      125 CALL                             R20 0 1
      126 DUPCLOSURE                       R21 K22 [PROTO_8]
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R21
      134 SETTABLEKS                       R21 R5 K23 ["getCommitTree"]
      136 DUPCLOSURE                       R22 K24 [PROTO_9]
      137 CAPTURE                          VAL R20
      138 SETTABLEKS                       R22 R5 K25 ["invalidateCommitTrees"]
      140 RETURN                           R5 1
