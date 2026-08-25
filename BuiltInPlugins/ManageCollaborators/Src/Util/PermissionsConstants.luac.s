PROTO_0:
        0 LOADK                            R1 K0 ["Symbol("]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K1 [")"]
        3 CONCAT                           R0 R1 R3
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [newproxy]
        2 LOADB                            R2 1
        3 CALL                             R1 1 1
        4 FASTCALL1                        GETMETATABLE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [getmetatable]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K4 ["__tostring"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["IsLikelyCollaboratorPrefetchEnabled"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 DUPCLOSURE                       R4 K10 [PROTO_1]
       28 DUPTABLE                         R5 K41 [{"NoAccessKey", "PlayKey", "EditKey", "NoEditMustBeFriendKey", "NoUserEditGroupGameKey", "AdminKey", "OwnerKey", "MultipleKey", "UserSubjectKey", "GroupSubjectKey", "RoleSubjectKey", "ActionKey", "AvailableActionsKey", "SubjectIdKey", "SubjectNameKey", "SubjectDisplayNameKey", "SubjectTypeKey", "SubjectRankKey", "SubjectIconColor", "IsEditableKey", "IsVisibleOnlyKey", "IsPrivateKey", "InheritedActionKey", "GroupIdKey", "GroupNameKey", "GroupMemberCountKey", "IsFriendKey", "IsEligibleKey", "EligibilityTextKey", "IsPrefetchedKey"}]
       29 GETIMPORT                        R7 K43 [newproxy]
       31 LOADB                            R8 1
       32 CALL                             R7 1 1
       33 FASTCALL1                        GETMETATABLE R7 ; [+3]
       34 MOVE                             R9 R7
       35 GETIMPORT                        R8 K45 [getmetatable]
       37 CALL                             R8 1 1
       38 LOADK                            R10 K46 ["NoAccessPermission"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R10
       41 SETTABLEKS                       R9 R8 K47 ["__tostring"]
       43 MOVE                             R6 R7
       44 SETTABLEKS                       R6 R5 K11 ["NoAccessKey"]
       46 GETIMPORT                        R7 K43 [newproxy]
       48 LOADB                            R8 1
       49 CALL                             R7 1 1
       50 FASTCALL1                        GETMETATABLE R7 ; [+3]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K45 [getmetatable]
       54 CALL                             R8 1 1
       55 LOADK                            R10 K48 ["PlayPermission"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R9 R8 K47 ["__tostring"]
       60 MOVE                             R6 R7
       61 SETTABLEKS                       R6 R5 K12 ["PlayKey"]
       63 GETIMPORT                        R7 K43 [newproxy]
       65 LOADB                            R8 1
       66 CALL                             R7 1 1
       67 FASTCALL1                        GETMETATABLE R7 ; [+3]
       68 MOVE                             R9 R7
       69 GETIMPORT                        R8 K45 [getmetatable]
       71 CALL                             R8 1 1
       72 LOADK                            R10 K49 ["EditPermission"]
       73 NEWCLOSURE                       R9 P1
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R9 R8 K47 ["__tostring"]
       77 MOVE                             R6 R7
       78 SETTABLEKS                       R6 R5 K13 ["EditKey"]
       80 GETIMPORT                        R7 K43 [newproxy]
       82 LOADB                            R8 1
       83 CALL                             R7 1 1
       84 FASTCALL1                        GETMETATABLE R7 ; [+3]
       85 MOVE                             R9 R7
       86 GETIMPORT                        R8 K45 [getmetatable]
       88 CALL                             R8 1 1
       89 LOADK                            R10 K50 ["NoEditMustBeFriendPermission"]
       90 NEWCLOSURE                       R9 P1
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R9 R8 K47 ["__tostring"]
       94 MOVE                             R6 R7
       95 SETTABLEKS                       R6 R5 K14 ["NoEditMustBeFriendKey"]
       97 GETIMPORT                        R7 K43 [newproxy]
       99 LOADB                            R8 1
      100 CALL                             R7 1 1
      101 FASTCALL1                        GETMETATABLE R7 ; [+3]
      102 MOVE                             R9 R7
      103 GETIMPORT                        R8 K45 [getmetatable]
      105 CALL                             R8 1 1
      106 LOADK                            R10 K51 ["NoUserEditGroupGamePermission"]
      107 NEWCLOSURE                       R9 P1
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      111 MOVE                             R6 R7
      112 SETTABLEKS                       R6 R5 K15 ["NoUserEditGroupGameKey"]
      114 GETIMPORT                        R7 K43 [newproxy]
      116 LOADB                            R8 1
      117 CALL                             R7 1 1
      118 FASTCALL1                        GETMETATABLE R7 ; [+3]
      119 MOVE                             R9 R7
      120 GETIMPORT                        R8 K45 [getmetatable]
      122 CALL                             R8 1 1
      123 LOADK                            R10 K52 ["AdminPermission"]
      124 NEWCLOSURE                       R9 P1
      125 CAPTURE                          VAL R10
      126 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      128 MOVE                             R6 R7
      129 SETTABLEKS                       R6 R5 K16 ["AdminKey"]
      131 GETIMPORT                        R7 K43 [newproxy]
      133 LOADB                            R8 1
      134 CALL                             R7 1 1
      135 FASTCALL1                        GETMETATABLE R7 ; [+3]
      136 MOVE                             R9 R7
      137 GETIMPORT                        R8 K45 [getmetatable]
      139 CALL                             R8 1 1
      140 LOADK                            R10 K53 ["OwnerPermission"]
      141 NEWCLOSURE                       R9 P1
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      145 MOVE                             R6 R7
      146 SETTABLEKS                       R6 R5 K17 ["OwnerKey"]
      148 GETIMPORT                        R7 K43 [newproxy]
      150 LOADB                            R8 1
      151 CALL                             R7 1 1
      152 FASTCALL1                        GETMETATABLE R7 ; [+3]
      153 MOVE                             R9 R7
      154 GETIMPORT                        R8 K45 [getmetatable]
      156 CALL                             R8 1 1
      157 LOADK                            R10 K54 ["MultiplePermission"]
      158 NEWCLOSURE                       R9 P1
      159 CAPTURE                          VAL R10
      160 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      162 MOVE                             R6 R7
      163 SETTABLEKS                       R6 R5 K18 ["MultipleKey"]
      165 GETIMPORT                        R7 K43 [newproxy]
      167 LOADB                            R8 1
      168 CALL                             R7 1 1
      169 FASTCALL1                        GETMETATABLE R7 ; [+3]
      170 MOVE                             R9 R7
      171 GETIMPORT                        R8 K45 [getmetatable]
      173 CALL                             R8 1 1
      174 LOADK                            R10 K55 ["UserSubjectType"]
      175 NEWCLOSURE                       R9 P1
      176 CAPTURE                          VAL R10
      177 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      179 MOVE                             R6 R7
      180 SETTABLEKS                       R6 R5 K19 ["UserSubjectKey"]
      182 GETIMPORT                        R7 K43 [newproxy]
      184 LOADB                            R8 1
      185 CALL                             R7 1 1
      186 FASTCALL1                        GETMETATABLE R7 ; [+3]
      187 MOVE                             R9 R7
      188 GETIMPORT                        R8 K45 [getmetatable]
      190 CALL                             R8 1 1
      191 LOADK                            R10 K56 ["GroupSubjectType"]
      192 NEWCLOSURE                       R9 P1
      193 CAPTURE                          VAL R10
      194 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      196 MOVE                             R6 R7
      197 SETTABLEKS                       R6 R5 K20 ["GroupSubjectKey"]
      199 GETIMPORT                        R7 K43 [newproxy]
      201 LOADB                            R8 1
      202 CALL                             R7 1 1
      203 FASTCALL1                        GETMETATABLE R7 ; [+3]
      204 MOVE                             R9 R7
      205 GETIMPORT                        R8 K45 [getmetatable]
      207 CALL                             R8 1 1
      208 LOADK                            R10 K57 ["RoleSubjectType"]
      209 NEWCLOSURE                       R9 P1
      210 CAPTURE                          VAL R10
      211 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      213 MOVE                             R6 R7
      214 SETTABLEKS                       R6 R5 K21 ["RoleSubjectKey"]
      216 GETIMPORT                        R7 K43 [newproxy]
      218 LOADB                            R8 1
      219 CALL                             R7 1 1
      220 FASTCALL1                        GETMETATABLE R7 ; [+3]
      221 MOVE                             R9 R7
      222 GETIMPORT                        R8 K45 [getmetatable]
      224 CALL                             R8 1 1
      225 LOADK                            R10 K58 ["Action"]
      226 NEWCLOSURE                       R9 P1
      227 CAPTURE                          VAL R10
      228 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      230 MOVE                             R6 R7
      231 SETTABLEKS                       R6 R5 K22 ["ActionKey"]
      233 GETIMPORT                        R7 K43 [newproxy]
      235 LOADB                            R8 1
      236 CALL                             R7 1 1
      237 FASTCALL1                        GETMETATABLE R7 ; [+3]
      238 MOVE                             R9 R7
      239 GETIMPORT                        R8 K45 [getmetatable]
      241 CALL                             R8 1 1
      242 LOADK                            R10 K59 ["AvailableActions"]
      243 NEWCLOSURE                       R9 P1
      244 CAPTURE                          VAL R10
      245 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      247 MOVE                             R6 R7
      248 SETTABLEKS                       R6 R5 K23 ["AvailableActionsKey"]
      250 GETIMPORT                        R7 K43 [newproxy]
      252 LOADB                            R8 1
      253 CALL                             R7 1 1
      254 FASTCALL1                        GETMETATABLE R7 ; [+3]
      255 MOVE                             R9 R7
      256 GETIMPORT                        R8 K45 [getmetatable]
      258 CALL                             R8 1 1
      259 LOADK                            R10 K60 ["SubjectId"]
      260 NEWCLOSURE                       R9 P1
      261 CAPTURE                          VAL R10
      262 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      264 MOVE                             R6 R7
      265 SETTABLEKS                       R6 R5 K24 ["SubjectIdKey"]
      267 GETIMPORT                        R7 K43 [newproxy]
      269 LOADB                            R8 1
      270 CALL                             R7 1 1
      271 FASTCALL1                        GETMETATABLE R7 ; [+3]
      272 MOVE                             R9 R7
      273 GETIMPORT                        R8 K45 [getmetatable]
      275 CALL                             R8 1 1
      276 LOADK                            R10 K61 ["SubjectName"]
      277 NEWCLOSURE                       R9 P1
      278 CAPTURE                          VAL R10
      279 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      281 MOVE                             R6 R7
      282 SETTABLEKS                       R6 R5 K25 ["SubjectNameKey"]
      284 GETIMPORT                        R7 K43 [newproxy]
      286 LOADB                            R8 1
      287 CALL                             R7 1 1
      288 FASTCALL1                        GETMETATABLE R7 ; [+3]
      289 MOVE                             R9 R7
      290 GETIMPORT                        R8 K45 [getmetatable]
      292 CALL                             R8 1 1
      293 LOADK                            R10 K62 ["SubjectDisplayName"]
      294 NEWCLOSURE                       R9 P1
      295 CAPTURE                          VAL R10
      296 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      298 MOVE                             R6 R7
      299 SETTABLEKS                       R6 R5 K26 ["SubjectDisplayNameKey"]
      301 GETIMPORT                        R7 K43 [newproxy]
      303 LOADB                            R8 1
      304 CALL                             R7 1 1
      305 FASTCALL1                        GETMETATABLE R7 ; [+3]
      306 MOVE                             R9 R7
      307 GETIMPORT                        R8 K45 [getmetatable]
      309 CALL                             R8 1 1
      310 LOADK                            R10 K63 ["SubjectType"]
      311 NEWCLOSURE                       R9 P1
      312 CAPTURE                          VAL R10
      313 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      315 MOVE                             R6 R7
      316 SETTABLEKS                       R6 R5 K27 ["SubjectTypeKey"]
      318 GETIMPORT                        R7 K43 [newproxy]
      320 LOADB                            R8 1
      321 CALL                             R7 1 1
      322 FASTCALL1                        GETMETATABLE R7 ; [+3]
      323 MOVE                             R9 R7
      324 GETIMPORT                        R8 K45 [getmetatable]
      326 CALL                             R8 1 1
      327 LOADK                            R10 K64 ["SubjectRank"]
      328 NEWCLOSURE                       R9 P1
      329 CAPTURE                          VAL R10
      330 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      332 MOVE                             R6 R7
      333 SETTABLEKS                       R6 R5 K28 ["SubjectRankKey"]
      335 GETIMPORT                        R7 K43 [newproxy]
      337 LOADB                            R8 1
      338 CALL                             R7 1 1
      339 FASTCALL1                        GETMETATABLE R7 ; [+3]
      340 MOVE                             R9 R7
      341 GETIMPORT                        R8 K45 [getmetatable]
      343 CALL                             R8 1 1
      344 LOADK                            R10 K29 ["SubjectIconColor"]
      345 NEWCLOSURE                       R9 P1
      346 CAPTURE                          VAL R10
      347 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      349 MOVE                             R6 R7
      350 SETTABLEKS                       R6 R5 K29 ["SubjectIconColor"]
      352 GETIMPORT                        R7 K43 [newproxy]
      354 LOADB                            R8 1
      355 CALL                             R7 1 1
      356 FASTCALL1                        GETMETATABLE R7 ; [+3]
      357 MOVE                             R9 R7
      358 GETIMPORT                        R8 K45 [getmetatable]
      360 CALL                             R8 1 1
      361 LOADK                            R10 K65 ["IsEditable"]
      362 NEWCLOSURE                       R9 P1
      363 CAPTURE                          VAL R10
      364 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      366 MOVE                             R6 R7
      367 SETTABLEKS                       R6 R5 K30 ["IsEditableKey"]
      369 GETIMPORT                        R7 K43 [newproxy]
      371 LOADB                            R8 1
      372 CALL                             R7 1 1
      373 FASTCALL1                        GETMETATABLE R7 ; [+3]
      374 MOVE                             R9 R7
      375 GETIMPORT                        R8 K45 [getmetatable]
      377 CALL                             R8 1 1
      378 LOADK                            R10 K66 ["IsVisibleOnly"]
      379 NEWCLOSURE                       R9 P1
      380 CAPTURE                          VAL R10
      381 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      383 MOVE                             R6 R7
      384 SETTABLEKS                       R6 R5 K31 ["IsVisibleOnlyKey"]
      386 GETIMPORT                        R7 K43 [newproxy]
      388 LOADB                            R8 1
      389 CALL                             R7 1 1
      390 FASTCALL1                        GETMETATABLE R7 ; [+3]
      391 MOVE                             R9 R7
      392 GETIMPORT                        R8 K45 [getmetatable]
      394 CALL                             R8 1 1
      395 LOADK                            R10 K67 ["IsPrivate"]
      396 NEWCLOSURE                       R9 P1
      397 CAPTURE                          VAL R10
      398 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      400 MOVE                             R6 R7
      401 SETTABLEKS                       R6 R5 K32 ["IsPrivateKey"]
      403 GETIMPORT                        R7 K43 [newproxy]
      405 LOADB                            R8 1
      406 CALL                             R7 1 1
      407 FASTCALL1                        GETMETATABLE R7 ; [+3]
      408 MOVE                             R9 R7
      409 GETIMPORT                        R8 K45 [getmetatable]
      411 CALL                             R8 1 1
      412 LOADK                            R10 K68 ["InheritedAction"]
      413 NEWCLOSURE                       R9 P1
      414 CAPTURE                          VAL R10
      415 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      417 MOVE                             R6 R7
      418 SETTABLEKS                       R6 R5 K33 ["InheritedActionKey"]
      420 GETIMPORT                        R7 K43 [newproxy]
      422 LOADB                            R8 1
      423 CALL                             R7 1 1
      424 FASTCALL1                        GETMETATABLE R7 ; [+3]
      425 MOVE                             R9 R7
      426 GETIMPORT                        R8 K45 [getmetatable]
      428 CALL                             R8 1 1
      429 LOADK                            R10 K69 ["GroupId"]
      430 NEWCLOSURE                       R9 P1
      431 CAPTURE                          VAL R10
      432 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      434 MOVE                             R6 R7
      435 SETTABLEKS                       R6 R5 K34 ["GroupIdKey"]
      437 GETIMPORT                        R7 K43 [newproxy]
      439 LOADB                            R8 1
      440 CALL                             R7 1 1
      441 FASTCALL1                        GETMETATABLE R7 ; [+3]
      442 MOVE                             R9 R7
      443 GETIMPORT                        R8 K45 [getmetatable]
      445 CALL                             R8 1 1
      446 LOADK                            R10 K70 ["GroupName"]
      447 NEWCLOSURE                       R9 P1
      448 CAPTURE                          VAL R10
      449 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      451 MOVE                             R6 R7
      452 SETTABLEKS                       R6 R5 K35 ["GroupNameKey"]
      454 GETIMPORT                        R7 K43 [newproxy]
      456 LOADB                            R8 1
      457 CALL                             R7 1 1
      458 FASTCALL1                        GETMETATABLE R7 ; [+3]
      459 MOVE                             R9 R7
      460 GETIMPORT                        R8 K45 [getmetatable]
      462 CALL                             R8 1 1
      463 LOADK                            R10 K36 ["GroupMemberCountKey"]
      464 NEWCLOSURE                       R9 P1
      465 CAPTURE                          VAL R10
      466 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      468 MOVE                             R6 R7
      469 SETTABLEKS                       R6 R5 K36 ["GroupMemberCountKey"]
      471 GETIMPORT                        R7 K43 [newproxy]
      473 LOADB                            R8 1
      474 CALL                             R7 1 1
      475 FASTCALL1                        GETMETATABLE R7 ; [+3]
      476 MOVE                             R9 R7
      477 GETIMPORT                        R8 K45 [getmetatable]
      479 CALL                             R8 1 1
      480 LOADK                            R10 K71 ["IsFriend"]
      481 NEWCLOSURE                       R9 P1
      482 CAPTURE                          VAL R10
      483 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      485 MOVE                             R6 R7
      486 SETTABLEKS                       R6 R5 K37 ["IsFriendKey"]
      488 GETIMPORT                        R7 K43 [newproxy]
      490 LOADB                            R8 1
      491 CALL                             R7 1 1
      492 FASTCALL1                        GETMETATABLE R7 ; [+3]
      493 MOVE                             R9 R7
      494 GETIMPORT                        R8 K45 [getmetatable]
      496 CALL                             R8 1 1
      497 LOADK                            R10 K72 ["IsEligible"]
      498 NEWCLOSURE                       R9 P1
      499 CAPTURE                          VAL R10
      500 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      502 MOVE                             R6 R7
      503 SETTABLEKS                       R6 R5 K38 ["IsEligibleKey"]
      505 GETIMPORT                        R7 K43 [newproxy]
      507 LOADB                            R8 1
      508 CALL                             R7 1 1
      509 FASTCALL1                        GETMETATABLE R7 ; [+3]
      510 MOVE                             R9 R7
      511 GETIMPORT                        R8 K45 [getmetatable]
      513 CALL                             R8 1 1
      514 LOADK                            R10 K73 ["EligibilityText"]
      515 NEWCLOSURE                       R9 P1
      516 CAPTURE                          VAL R10
      517 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      519 MOVE                             R6 R7
      520 SETTABLEKS                       R6 R5 K39 ["EligibilityTextKey"]
      522 JUMPIFNOT                        R3 ; [+16]
      523 GETIMPORT                        R7 K43 [newproxy]
      525 LOADB                            R8 1
      526 CALL                             R7 1 1
      527 FASTCALL1                        GETMETATABLE R7 ; [+3]
      528 MOVE                             R9 R7
      529 GETIMPORT                        R8 K45 [getmetatable]
      531 CALL                             R8 1 1
      532 LOADK                            R10 K74 ["IsPrefetched"]
      533 NEWCLOSURE                       R9 P1
      534 CAPTURE                          VAL R10
      535 SETTABLEKS                       R9 R8 K47 ["__tostring"]
      537 MOVE                             R6 R7
      538 JUMP                             ; [+1]
      539 LOADNIL                          R6
      540 SETTABLEKS                       R6 R5 K40 ["IsPrefetchedKey"]
      542 DUPTABLE                         R6 K82 [{["DEPRECATED_MaxSearchResultsPerSubjectType"] = 3, ["MaxSearchResultsPerSubjectTypeUsers"] = 3, ["MaxSearchResultsPerSubjectTypeGroups"] = 2, ["GroupDefaultMemberRolesetId"] = 12884901889}]
      543 GETTABLEKS                       R7 R1 K83 ["Dictionary"]
      545 GETTABLEKS                       R7 R7 K84 ["join"]
      547 MOVE                             R8 R5
      548 MOVE                             R9 R6
      549 CALL                             R7 2 -1
      550 RETURN                           R7 -1
