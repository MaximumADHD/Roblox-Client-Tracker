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
       17 MOVE                             R10 R4
       18 ADDK                             R4 R4 K3 [1]
       19 MOVE                             R9 R10
       20 GETTABLE                         R8 R1 R9
       21 ADD                              R9 R4 R8
       22 JUMPIFNOTLT                      R4 R9 ; [+13]
       24 MOVE                             R12 R4
       25 ADDK                             R4 R4 K3 [1]
       26 MOVE                             R11 R12
       27 GETTABLE                         R10 R1 R11
       28 FASTCALL2                        TABLE_INSERT R7 R10 ; [+5]
       30 MOVE                             R12 R7
       31 MOVE                             R13 R10
       32 GETIMPORT                        R11 K6 [table.insert]
       34 CALL                             R11 2 0
       35 JUMPBACK                         ; [-14]
       36 LENGTH                           R10 R1
       37 JUMPIFNOTLE                      R4 R10 ; [+380]
       39 MOVE                             R12 R4
       40 ADDK                             R4 R4 K3 [1]
       41 MOVE                             R11 R12
       42 GETTABLE                         R10 R1 R11
       43 GETUPVAL                         R11 1
       44 JUMPIFNOTEQ                      R10 R11 ; [+143]
       46 MOVE                             R12 R4
       47 ADDK                             R4 R4 K3 [1]
       48 MOVE                             R11 R12
       49 GETTABLE                         R6 R1 R11
       50 MOVE                             R13 R4
       51 ADDK                             R4 R4 K3 [1]
       52 MOVE                             R12 R13
       53 GETTABLE                         R11 R1 R12
       54 MOVE                             R14 R6
       55 NAMECALL                         R12 R2 K7 ["has"]
       57 CALL                             R12 2 1
       58 JUMPIFNOT                        R12 ; [+12]
       59 GETIMPORT                        R12 K9 [error]
       61 LOADK                            R14 K10 ["Commit tree already contains fiber "]
       62 FASTCALL1                        TOSTRING R6 ; [+3]
       63 MOVE                             R18 R6
       64 GETIMPORT                        R17 K12 [tostring]
       66 CALL                             R17 1 1
       67 MOVE                             R15 R17
       68 LOADK                            R16 K13 [". This is a bug in React DevTools."]
       69 CONCAT                           R13 R14 R16
       70 CALL                             R12 1 0
       71 GETUPVAL                         R12 2
       72 JUMPIFNOTEQ                      R11 R12 ; [+31]
       74 ADDK                             R4 R4 K14 [2]
       75 GETUPVAL                         R12 3
       76 JUMPIFNOT                        R12 ; [+12]
       77 GETUPVAL                         R12 4
       78 LOADK                            R13 K15 ["Add"]
       79 LOADK                            R14 K16 ["new root fiber %s"]
       80 FASTCALL1                        TOSTRING R6 ; [+3]
       81 MOVE                             R17 R6
       82 GETIMPORT                        R16 K12 [tostring]
       84 CALL                             R16 1 1
       85 NAMECALL                         R14 R14 K17 ["format"]
       87 CALL                             R14 2 -1
       88 CALL                             R12 -1 0
       89 DUPTABLE                         R12 K28 [{["children"], ["displayName"] = , ["hocDisplayNames"] = , ["id"], ["key"] = , ["parentID"] = 0, ["treeBaseDuration"] = 0, ["type"]}]
       90 NEWTABLE                         R13 0 0
       92 SETTABLEKS                       R13 R12 K18 ["children"]
       94 SETTABLEKS                       R6 R12 K22 ["id"]
       96 SETTABLEKS                       R11 R12 K27 ["type"]
       98 MOVE                             R15 R6
       99 MOVE                             R16 R12
      100 NAMECALL                         R13 R2 K29 ["set"]
      102 CALL                             R13 3 0
      103 JUMP                             ; [+313]
      104 MOVE                             R14 R4
      105 ADDK                             R4 R4 K3 [1]
      106 MOVE                             R13 R14
      107 GETTABLE                         R12 R1 R13
      108 ADDK                             R4 R4 K3 [1]
      109 MOVE                             R15 R4
      110 ADDK                             R4 R4 K3 [1]
      111 MOVE                             R14 R15
      112 GETTABLE                         R13 R1 R14
      113 ADDK                             R15 R13 K3 [1]
      114 GETTABLE                         R14 R7 R15
      115 MOVE                             R17 R4
      116 ADDK                             R4 R4 K3 [1]
      117 MOVE                             R16 R17
      118 GETTABLE                         R15 R1 R16
      119 ADDK                             R17 R15 K3 [1]
      120 GETTABLE                         R16 R7 R17
      121 GETUPVAL                         R17 3
      122 JUMPIFNOT                        R17 ; [+22]
      123 GETUPVAL                         R17 4
      124 LOADK                            R18 K15 ["Add"]
      125 LOADK                            R19 K30 ["fiber %s (%s) as child of %s"]
      126 FASTCALL1                        TOSTRING R6 ; [+3]
      127 MOVE                             R22 R6
      128 GETIMPORT                        R21 K12 [tostring]
      130 CALL                             R21 1 1
      131 ORK                              R23 R14 K31 ["null"]
      132 FASTCALL1                        TOSTRING R23 ; [+2]
      133 GETIMPORT                        R22 K12 [tostring]
      135 CALL                             R22 1 1
      136 FASTCALL1                        TOSTRING R12 ; [+3]
      137 MOVE                             R24 R12
      138 GETIMPORT                        R23 K12 [tostring]
      140 CALL                             R23 1 1
      141 NAMECALL                         R19 R19 K17 ["format"]
      143 CALL                             R19 4 -1
      144 CALL                             R17 -1 0
      145 GETIMPORT                        R18 K33 [table.clone]
      147 MOVE                             R21 R12
      148 NAMECALL                         R19 R2 K34 ["get"]
      150 CALL                             R19 2 1
      151 CALL                             R18 1 1
      152 MOVE                             R21 R12
      153 MOVE                             R22 R18
      154 NAMECALL                         R19 R2 K29 ["set"]
      156 CALL                             R19 3 0
      157 MOVE                             R17 R18
      158 GETUPVAL                         R18 5
      159 GETTABLEKS                       R18 R18 K35 ["concat"]
      161 GETTABLEKS                       R19 R17 K18 ["children"]
      163 MOVE                             R20 R6
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K18 ["children"]
      167 DUPTABLE                         R18 K36 [{["children"], ["displayName"], ["hocDisplayNames"] = , ["id"], ["key"], ["parentID"], ["treeBaseDuration"] = 0, ["type"]}]
      168 NEWTABLE                         R19 0 0
      170 SETTABLEKS                       R19 R18 K18 ["children"]
      172 SETTABLEKS                       R14 R18 K19 ["displayName"]
      174 SETTABLEKS                       R6 R18 K22 ["id"]
      176 SETTABLEKS                       R16 R18 K23 ["key"]
      178 SETTABLEKS                       R12 R18 K24 ["parentID"]
      180 SETTABLEKS                       R11 R18 K27 ["type"]
      182 MOVE                             R21 R6
      183 MOVE                             R22 R18
      184 NAMECALL                         R19 R2 K29 ["set"]
      186 CALL                             R19 3 0
      187 JUMP                             ; [+229]
      188 GETUPVAL                         R11 6
      189 JUMPIFNOTEQ                      R10 R11 ; [+100]
      191 MOVE                             R13 R4
      192 ADDK                             R4 R4 K3 [1]
      193 MOVE                             R12 R13
      194 GETTABLE                         R11 R1 R12
      195 LOADN                            R14 1
      196 MOVE                             R12 R11
      197 LOADN                            R13 1
      198 FORNPREP                         R12
      199 MOVE                             R16 R4
      200 ADDK                             R4 R4 K3 [1]
      201 MOVE                             R15 R16
      202 GETTABLE                         R6 R1 R15
      203 MOVE                             R17 R6
      204 NAMECALL                         R15 R2 K7 ["has"]
      206 CALL                             R15 2 1
      207 JUMPIF                           R15 ; [+12]
      208 GETIMPORT                        R15 K9 [error]
      210 LOADK                            R17 K37 ["Commit tree does not contain fiber "]
      211 FASTCALL1                        TOSTRING R6 ; [+3]
      212 MOVE                             R21 R6
      213 GETIMPORT                        R20 K12 [tostring]
      215 CALL                             R20 1 1
      216 MOVE                             R18 R20
      217 LOADK                            R19 K13 [". This is a bug in React DevTools."]
      218 CONCAT                           R16 R17 R19
      219 CALL                             R15 1 0
      220 MOVE                             R16 R6
      221 GETIMPORT                        R17 K33 [table.clone]
      223 MOVE                             R20 R16
      224 NAMECALL                         R18 R2 K34 ["get"]
      226 CALL                             R18 2 1
      227 CALL                             R17 1 1
      228 MOVE                             R20 R16
      229 MOVE                             R21 R17
      230 NAMECALL                         R18 R2 K29 ["set"]
      232 CALL                             R18 3 0
      233 MOVE                             R15 R17
      234 GETTABLEKS                       R16 R15 K24 ["parentID"]
      236 MOVE                             R19 R6
      237 NAMECALL                         R17 R2 K38 ["delete"]
      239 CALL                             R17 2 0
      240 MOVE                             R19 R16
      241 NAMECALL                         R17 R2 K7 ["has"]
      243 CALL                             R17 2 1
      244 JUMPIF                           R17 ; [+1]
      245 JUMP                             ; [+42]
      246 GETIMPORT                        R18 K33 [table.clone]
      248 MOVE                             R21 R16
      249 NAMECALL                         R19 R2 K34 ["get"]
      251 CALL                             R19 2 1
      252 CALL                             R18 1 1
      253 MOVE                             R21 R16
      254 MOVE                             R22 R18
      255 NAMECALL                         R19 R2 K29 ["set"]
      257 CALL                             R19 3 0
      258 MOVE                             R17 R18
      259 GETUPVAL                         R18 3
      260 JUMPIFNOT                        R18 ; [+17]
      261 GETUPVAL                         R18 4
      262 LOADK                            R19 K39 ["Remove"]
      263 LOADK                            R20 K40 ["fiber %s from parent %s"]
      264 FASTCALL1                        TOSTRING R6 ; [+3]
      265 MOVE                             R23 R6
      266 GETIMPORT                        R22 K12 [tostring]
      268 CALL                             R22 1 1
      269 FASTCALL1                        TOSTRING R16 ; [+3]
      270 MOVE                             R24 R16
      271 GETIMPORT                        R23 K12 [tostring]
      273 CALL                             R23 1 1
      274 NAMECALL                         R20 R20 K17 ["format"]
      276 CALL                             R20 3 -1
      277 CALL                             R18 -1 0
      278 GETUPVAL                         R18 5
      279 GETTABLEKS                       R18 R18 K41 ["filter"]
      281 GETTABLEKS                       R19 R17 K18 ["children"]
      283 NEWCLOSURE                       R20 P2
      284 CAPTURE                          REF R6
      285 CALL                             R18 2 1
      286 SETTABLEKS                       R18 R17 K18 ["children"]
      288 FORNLOOP                         R12
      289 JUMP                             ; [+127]
      290 GETUPVAL                         R11 7
      291 JUMPIFNOTEQ                      R10 R11 ; [+63]
      293 MOVE                             R12 R4
      294 ADDK                             R4 R4 K3 [1]
      295 MOVE                             R11 R12
      296 GETTABLE                         R6 R1 R11
      297 MOVE                             R13 R4
      298 ADDK                             R4 R4 K3 [1]
      299 MOVE                             R12 R13
      300 GETTABLE                         R11 R1 R12
      301 GETUPVAL                         R12 5
      302 GETTABLEKS                       R12 R12 K42 ["slice"]
      304 MOVE                             R13 R1
      305 MOVE                             R14 R4
      306 ADD                              R15 R4 R11
      307 CALL                             R12 3 1
      308 ADD                              R4 R4 R11
      309 GETUPVAL                         R13 3
      310 JUMPIFNOT                        R13 ; [+22]
      311 GETUPVAL                         R13 4
      312 LOADK                            R14 K43 ["Re-order"]
      313 LOADK                            R15 K44 ["fiber %s children %s"]
      314 FASTCALL1                        TOSTRING R6 ; [+3]
      315 MOVE                             R18 R6
      316 GETIMPORT                        R17 K12 [tostring]
      318 CALL                             R17 1 1
      319 GETUPVAL                         R19 5
      320 GETTABLEKS                       R19 R19 K45 ["join"]
      322 MOVE                             R20 R12
      323 LOADK                            R21 K46 [","]
      324 CALL                             R19 2 -1
      325 FASTCALL                         TOSTRING ; [+2]
      326 GETIMPORT                        R18 K12 [tostring]
      328 CALL                             R18 -1 1
      329 NAMECALL                         R15 R15 K17 ["format"]
      331 CALL                             R15 3 -1
      332 CALL                             R13 -1 0
      333 MOVE                             R14 R6
      334 GETIMPORT                        R15 K33 [table.clone]
      336 MOVE                             R18 R14
      337 NAMECALL                         R16 R2 K34 ["get"]
      339 CALL                             R16 2 1
      340 CALL                             R15 1 1
      341 MOVE                             R18 R14
      342 MOVE                             R19 R15
      343 NAMECALL                         R16 R2 K29 ["set"]
      345 CALL                             R16 3 0
      346 MOVE                             R13 R15
      347 GETUPVAL                         R14 5
      348 GETTABLEKS                       R14 R14 K47 ["from"]
      350 MOVE                             R15 R12
      351 CALL                             R14 1 1
      352 SETTABLEKS                       R14 R13 K18 ["children"]
      354 JUMP                             ; [+62]
      355 GETUPVAL                         R11 8
      356 JUMPIFNOTEQ                      R10 R11 ; [+47]
      358 MOVE                             R12 R4
      359 ADDK                             R4 R4 K3 [1]
      360 MOVE                             R11 R12
      361 GETTABLE                         R6 R1 R11
      362 MOVE                             R12 R6
      363 GETIMPORT                        R13 K33 [table.clone]
      365 MOVE                             R16 R12
      366 NAMECALL                         R14 R2 K34 ["get"]
      368 CALL                             R14 2 1
      369 CALL                             R13 1 1
      370 MOVE                             R16 R12
      371 MOVE                             R17 R13
      372 NAMECALL                         R14 R2 K29 ["set"]
      374 CALL                             R14 3 0
      375 MOVE                             R11 R13
      376 MOVE                             R15 R4
      377 ADDK                             R4 R4 K3 [1]
      378 MOVE                             R14 R15
      379 GETTABLE                         R13 R1 R14
      380 DIVK                             R12 R13 K48 [1000]
      381 SETTABLEKS                       R12 R11 K26 ["treeBaseDuration"]
      383 GETUPVAL                         R12 3
      384 JUMPIFNOT                        R12 ; [+32]
      385 GETUPVAL                         R12 4
      386 LOADK                            R13 K49 ["Update"]
      387 LOADK                            R14 K50 ["fiber %s treeBaseDuration to %s"]
      388 FASTCALL1                        TOSTRING R6 ; [+3]
      389 MOVE                             R17 R6
      390 GETIMPORT                        R16 K12 [tostring]
      392 CALL                             R16 1 1
      393 GETTABLEKS                       R18 R11 K26 ["treeBaseDuration"]
      395 FASTCALL1                        TOSTRING R18 ; [+2]
      396 GETIMPORT                        R17 K12 [tostring]
      398 CALL                             R17 1 1
      399 NAMECALL                         R14 R14 K17 ["format"]
      401 CALL                             R14 3 -1
      402 CALL                             R12 -1 0
      403 JUMP                             ; [+13]
      404 GETIMPORT                        R11 K9 [error]
      406 GETIMPORT                        R12 K52 [string.format]
      408 LOADK                            R13 K53 ["Unsupported Bridge operation %s at operation index %d"]
      409 FASTCALL1                        TOSTRING R10 ; [+3]
      410 MOVE                             R15 R10
      411 GETIMPORT                        R14 K12 [tostring]
      413 CALL                             R14 1 1
      414 MOVE                             R15 R4
      415 CALL                             R12 3 -1
      416 CALL                             R11 -1 0
      417 JUMPBACK                         ; [-382]
      418 DUPTABLE                         R10 K55 [{"nodes", "rootID"}]
      419 SETTABLEKS                       R2 R10 K1 ["nodes"]
      421 GETTABLEKS                       R11 R0 K54 ["rootID"]
      423 SETTABLEKS                       R11 R10 K54 ["rootID"]
      425 CLOSEUPVALS                      R4
      426 RETURN                           R10 1

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
