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
       28 DUPTABLE                         R5 K42 [{"NoAccessKey", "PlayKey", "PlayTestKey", "EditKey", "NoEditMustBeFriendKey", "NoUserEditGroupGameKey", "AdminKey", "OwnerKey", "MultipleKey", "UserSubjectKey", "GroupSubjectKey", "RoleSubjectKey", "ActionKey", "AvailableActionsKey", "SubjectIdKey", "SubjectNameKey", "SubjectDisplayNameKey", "SubjectTypeKey", "SubjectRankKey", "SubjectIconColor", "IsEditableKey", "IsVisibleOnlyKey", "IsPrivateKey", "InheritedActionKey", "GroupIdKey", "GroupNameKey", "GroupMemberCountKey", "IsFriendKey", "IsEligibleKey", "EligibilityTextKey", "IsPrefetchedKey"}]
       29 GETIMPORT                        R6 K44 [newproxy]
       31 LOADB                            R7 1
       32 CALL                             R6 1 1
       33 FASTCALL1                        GETMETATABLE R6 ; [+3]
       34 MOVE                             R8 R6
       35 GETIMPORT                        R7 K46 [getmetatable]
       37 CALL                             R7 1 1
       38 LOADK                            R9 K47 ["NoAccessPermission"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R9
       41 SETTABLEKS                       R8 R7 K48 ["__tostring"]
       43 SETTABLEKS                       R6 R5 K11 ["NoAccessKey"]
       45 GETIMPORT                        R6 K44 [newproxy]
       47 LOADB                            R7 1
       48 CALL                             R6 1 1
       49 FASTCALL1                        GETMETATABLE R6 ; [+3]
       50 MOVE                             R8 R6
       51 GETIMPORT                        R7 K46 [getmetatable]
       53 CALL                             R7 1 1
       54 LOADK                            R9 K49 ["PlayPermission"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R8 R7 K48 ["__tostring"]
       59 SETTABLEKS                       R6 R5 K12 ["PlayKey"]
       61 GETIMPORT                        R6 K44 [newproxy]
       63 LOADB                            R7 1
       64 CALL                             R6 1 1
       65 FASTCALL1                        GETMETATABLE R6 ; [+3]
       66 MOVE                             R8 R6
       67 GETIMPORT                        R7 K46 [getmetatable]
       69 CALL                             R7 1 1
       70 LOADK                            R9 K50 ["PlayTestPermission"]
       71 NEWCLOSURE                       R8 P1
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R8 R7 K48 ["__tostring"]
       75 SETTABLEKS                       R6 R5 K13 ["PlayTestKey"]
       77 GETIMPORT                        R6 K44 [newproxy]
       79 LOADB                            R7 1
       80 CALL                             R6 1 1
       81 FASTCALL1                        GETMETATABLE R6 ; [+3]
       82 MOVE                             R8 R6
       83 GETIMPORT                        R7 K46 [getmetatable]
       85 CALL                             R7 1 1
       86 LOADK                            R9 K51 ["EditPermission"]
       87 NEWCLOSURE                       R8 P1
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R8 R7 K48 ["__tostring"]
       91 SETTABLEKS                       R6 R5 K14 ["EditKey"]
       93 GETIMPORT                        R6 K44 [newproxy]
       95 LOADB                            R7 1
       96 CALL                             R6 1 1
       97 FASTCALL1                        GETMETATABLE R6 ; [+3]
       98 MOVE                             R8 R6
       99 GETIMPORT                        R7 K46 [getmetatable]
      101 CALL                             R7 1 1
      102 LOADK                            R9 K52 ["NoEditMustBeFriendPermission"]
      103 NEWCLOSURE                       R8 P1
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      107 SETTABLEKS                       R6 R5 K15 ["NoEditMustBeFriendKey"]
      109 GETIMPORT                        R6 K44 [newproxy]
      111 LOADB                            R7 1
      112 CALL                             R6 1 1
      113 FASTCALL1                        GETMETATABLE R6 ; [+3]
      114 MOVE                             R8 R6
      115 GETIMPORT                        R7 K46 [getmetatable]
      117 CALL                             R7 1 1
      118 LOADK                            R9 K53 ["NoUserEditGroupGamePermission"]
      119 NEWCLOSURE                       R8 P1
      120 CAPTURE                          VAL R9
      121 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      123 SETTABLEKS                       R6 R5 K16 ["NoUserEditGroupGameKey"]
      125 GETIMPORT                        R6 K44 [newproxy]
      127 LOADB                            R7 1
      128 CALL                             R6 1 1
      129 FASTCALL1                        GETMETATABLE R6 ; [+3]
      130 MOVE                             R8 R6
      131 GETIMPORT                        R7 K46 [getmetatable]
      133 CALL                             R7 1 1
      134 LOADK                            R9 K54 ["AdminPermission"]
      135 NEWCLOSURE                       R8 P1
      136 CAPTURE                          VAL R9
      137 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      139 SETTABLEKS                       R6 R5 K17 ["AdminKey"]
      141 GETIMPORT                        R6 K44 [newproxy]
      143 LOADB                            R7 1
      144 CALL                             R6 1 1
      145 FASTCALL1                        GETMETATABLE R6 ; [+3]
      146 MOVE                             R8 R6
      147 GETIMPORT                        R7 K46 [getmetatable]
      149 CALL                             R7 1 1
      150 LOADK                            R9 K55 ["OwnerPermission"]
      151 NEWCLOSURE                       R8 P1
      152 CAPTURE                          VAL R9
      153 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      155 SETTABLEKS                       R6 R5 K18 ["OwnerKey"]
      157 GETIMPORT                        R6 K44 [newproxy]
      159 LOADB                            R7 1
      160 CALL                             R6 1 1
      161 FASTCALL1                        GETMETATABLE R6 ; [+3]
      162 MOVE                             R8 R6
      163 GETIMPORT                        R7 K46 [getmetatable]
      165 CALL                             R7 1 1
      166 LOADK                            R9 K56 ["MultiplePermission"]
      167 NEWCLOSURE                       R8 P1
      168 CAPTURE                          VAL R9
      169 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      171 SETTABLEKS                       R6 R5 K19 ["MultipleKey"]
      173 GETIMPORT                        R6 K44 [newproxy]
      175 LOADB                            R7 1
      176 CALL                             R6 1 1
      177 FASTCALL1                        GETMETATABLE R6 ; [+3]
      178 MOVE                             R8 R6
      179 GETIMPORT                        R7 K46 [getmetatable]
      181 CALL                             R7 1 1
      182 LOADK                            R9 K57 ["UserSubjectType"]
      183 NEWCLOSURE                       R8 P1
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      187 SETTABLEKS                       R6 R5 K20 ["UserSubjectKey"]
      189 GETIMPORT                        R6 K44 [newproxy]
      191 LOADB                            R7 1
      192 CALL                             R6 1 1
      193 FASTCALL1                        GETMETATABLE R6 ; [+3]
      194 MOVE                             R8 R6
      195 GETIMPORT                        R7 K46 [getmetatable]
      197 CALL                             R7 1 1
      198 LOADK                            R9 K58 ["GroupSubjectType"]
      199 NEWCLOSURE                       R8 P1
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      203 SETTABLEKS                       R6 R5 K21 ["GroupSubjectKey"]
      205 GETIMPORT                        R6 K44 [newproxy]
      207 LOADB                            R7 1
      208 CALL                             R6 1 1
      209 FASTCALL1                        GETMETATABLE R6 ; [+3]
      210 MOVE                             R8 R6
      211 GETIMPORT                        R7 K46 [getmetatable]
      213 CALL                             R7 1 1
      214 LOADK                            R9 K59 ["RoleSubjectType"]
      215 NEWCLOSURE                       R8 P1
      216 CAPTURE                          VAL R9
      217 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      219 SETTABLEKS                       R6 R5 K22 ["RoleSubjectKey"]
      221 GETIMPORT                        R6 K44 [newproxy]
      223 LOADB                            R7 1
      224 CALL                             R6 1 1
      225 FASTCALL1                        GETMETATABLE R6 ; [+3]
      226 MOVE                             R8 R6
      227 GETIMPORT                        R7 K46 [getmetatable]
      229 CALL                             R7 1 1
      230 LOADK                            R9 K60 ["Action"]
      231 NEWCLOSURE                       R8 P1
      232 CAPTURE                          VAL R9
      233 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      235 SETTABLEKS                       R6 R5 K23 ["ActionKey"]
      237 GETIMPORT                        R6 K44 [newproxy]
      239 LOADB                            R7 1
      240 CALL                             R6 1 1
      241 FASTCALL1                        GETMETATABLE R6 ; [+3]
      242 MOVE                             R8 R6
      243 GETIMPORT                        R7 K46 [getmetatable]
      245 CALL                             R7 1 1
      246 LOADK                            R9 K61 ["AvailableActions"]
      247 NEWCLOSURE                       R8 P1
      248 CAPTURE                          VAL R9
      249 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      251 SETTABLEKS                       R6 R5 K24 ["AvailableActionsKey"]
      253 GETIMPORT                        R6 K44 [newproxy]
      255 LOADB                            R7 1
      256 CALL                             R6 1 1
      257 FASTCALL1                        GETMETATABLE R6 ; [+3]
      258 MOVE                             R8 R6
      259 GETIMPORT                        R7 K46 [getmetatable]
      261 CALL                             R7 1 1
      262 LOADK                            R9 K62 ["SubjectId"]
      263 NEWCLOSURE                       R8 P1
      264 CAPTURE                          VAL R9
      265 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      267 SETTABLEKS                       R6 R5 K25 ["SubjectIdKey"]
      269 GETIMPORT                        R6 K44 [newproxy]
      271 LOADB                            R7 1
      272 CALL                             R6 1 1
      273 FASTCALL1                        GETMETATABLE R6 ; [+3]
      274 MOVE                             R8 R6
      275 GETIMPORT                        R7 K46 [getmetatable]
      277 CALL                             R7 1 1
      278 LOADK                            R9 K63 ["SubjectName"]
      279 NEWCLOSURE                       R8 P1
      280 CAPTURE                          VAL R9
      281 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      283 SETTABLEKS                       R6 R5 K26 ["SubjectNameKey"]
      285 GETIMPORT                        R6 K44 [newproxy]
      287 LOADB                            R7 1
      288 CALL                             R6 1 1
      289 FASTCALL1                        GETMETATABLE R6 ; [+3]
      290 MOVE                             R8 R6
      291 GETIMPORT                        R7 K46 [getmetatable]
      293 CALL                             R7 1 1
      294 LOADK                            R9 K64 ["SubjectDisplayName"]
      295 NEWCLOSURE                       R8 P1
      296 CAPTURE                          VAL R9
      297 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      299 SETTABLEKS                       R6 R5 K27 ["SubjectDisplayNameKey"]
      301 GETIMPORT                        R6 K44 [newproxy]
      303 LOADB                            R7 1
      304 CALL                             R6 1 1
      305 FASTCALL1                        GETMETATABLE R6 ; [+3]
      306 MOVE                             R8 R6
      307 GETIMPORT                        R7 K46 [getmetatable]
      309 CALL                             R7 1 1
      310 LOADK                            R9 K65 ["SubjectType"]
      311 NEWCLOSURE                       R8 P1
      312 CAPTURE                          VAL R9
      313 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      315 SETTABLEKS                       R6 R5 K28 ["SubjectTypeKey"]
      317 GETIMPORT                        R6 K44 [newproxy]
      319 LOADB                            R7 1
      320 CALL                             R6 1 1
      321 FASTCALL1                        GETMETATABLE R6 ; [+3]
      322 MOVE                             R8 R6
      323 GETIMPORT                        R7 K46 [getmetatable]
      325 CALL                             R7 1 1
      326 LOADK                            R9 K66 ["SubjectRank"]
      327 NEWCLOSURE                       R8 P1
      328 CAPTURE                          VAL R9
      329 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      331 SETTABLEKS                       R6 R5 K29 ["SubjectRankKey"]
      333 GETIMPORT                        R6 K44 [newproxy]
      335 LOADB                            R7 1
      336 CALL                             R6 1 1
      337 FASTCALL1                        GETMETATABLE R6 ; [+3]
      338 MOVE                             R8 R6
      339 GETIMPORT                        R7 K46 [getmetatable]
      341 CALL                             R7 1 1
      342 LOADK                            R9 K30 ["SubjectIconColor"]
      343 NEWCLOSURE                       R8 P1
      344 CAPTURE                          VAL R9
      345 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      347 SETTABLEKS                       R6 R5 K30 ["SubjectIconColor"]
      349 GETIMPORT                        R6 K44 [newproxy]
      351 LOADB                            R7 1
      352 CALL                             R6 1 1
      353 FASTCALL1                        GETMETATABLE R6 ; [+3]
      354 MOVE                             R8 R6
      355 GETIMPORT                        R7 K46 [getmetatable]
      357 CALL                             R7 1 1
      358 LOADK                            R9 K67 ["IsEditable"]
      359 NEWCLOSURE                       R8 P1
      360 CAPTURE                          VAL R9
      361 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      363 SETTABLEKS                       R6 R5 K31 ["IsEditableKey"]
      365 GETIMPORT                        R6 K44 [newproxy]
      367 LOADB                            R7 1
      368 CALL                             R6 1 1
      369 FASTCALL1                        GETMETATABLE R6 ; [+3]
      370 MOVE                             R8 R6
      371 GETIMPORT                        R7 K46 [getmetatable]
      373 CALL                             R7 1 1
      374 LOADK                            R9 K68 ["IsVisibleOnly"]
      375 NEWCLOSURE                       R8 P1
      376 CAPTURE                          VAL R9
      377 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      379 SETTABLEKS                       R6 R5 K32 ["IsVisibleOnlyKey"]
      381 GETIMPORT                        R6 K44 [newproxy]
      383 LOADB                            R7 1
      384 CALL                             R6 1 1
      385 FASTCALL1                        GETMETATABLE R6 ; [+3]
      386 MOVE                             R8 R6
      387 GETIMPORT                        R7 K46 [getmetatable]
      389 CALL                             R7 1 1
      390 LOADK                            R9 K69 ["IsPrivate"]
      391 NEWCLOSURE                       R8 P1
      392 CAPTURE                          VAL R9
      393 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      395 SETTABLEKS                       R6 R5 K33 ["IsPrivateKey"]
      397 GETIMPORT                        R6 K44 [newproxy]
      399 LOADB                            R7 1
      400 CALL                             R6 1 1
      401 FASTCALL1                        GETMETATABLE R6 ; [+3]
      402 MOVE                             R8 R6
      403 GETIMPORT                        R7 K46 [getmetatable]
      405 CALL                             R7 1 1
      406 LOADK                            R9 K70 ["InheritedAction"]
      407 NEWCLOSURE                       R8 P1
      408 CAPTURE                          VAL R9
      409 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      411 SETTABLEKS                       R6 R5 K34 ["InheritedActionKey"]
      413 GETIMPORT                        R6 K44 [newproxy]
      415 LOADB                            R7 1
      416 CALL                             R6 1 1
      417 FASTCALL1                        GETMETATABLE R6 ; [+3]
      418 MOVE                             R8 R6
      419 GETIMPORT                        R7 K46 [getmetatable]
      421 CALL                             R7 1 1
      422 LOADK                            R9 K71 ["GroupId"]
      423 NEWCLOSURE                       R8 P1
      424 CAPTURE                          VAL R9
      425 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      427 SETTABLEKS                       R6 R5 K35 ["GroupIdKey"]
      429 GETIMPORT                        R6 K44 [newproxy]
      431 LOADB                            R7 1
      432 CALL                             R6 1 1
      433 FASTCALL1                        GETMETATABLE R6 ; [+3]
      434 MOVE                             R8 R6
      435 GETIMPORT                        R7 K46 [getmetatable]
      437 CALL                             R7 1 1
      438 LOADK                            R9 K72 ["GroupName"]
      439 NEWCLOSURE                       R8 P1
      440 CAPTURE                          VAL R9
      441 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      443 SETTABLEKS                       R6 R5 K36 ["GroupNameKey"]
      445 GETIMPORT                        R6 K44 [newproxy]
      447 LOADB                            R7 1
      448 CALL                             R6 1 1
      449 FASTCALL1                        GETMETATABLE R6 ; [+3]
      450 MOVE                             R8 R6
      451 GETIMPORT                        R7 K46 [getmetatable]
      453 CALL                             R7 1 1
      454 LOADK                            R9 K37 ["GroupMemberCountKey"]
      455 NEWCLOSURE                       R8 P1
      456 CAPTURE                          VAL R9
      457 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      459 SETTABLEKS                       R6 R5 K37 ["GroupMemberCountKey"]
      461 GETIMPORT                        R6 K44 [newproxy]
      463 LOADB                            R7 1
      464 CALL                             R6 1 1
      465 FASTCALL1                        GETMETATABLE R6 ; [+3]
      466 MOVE                             R8 R6
      467 GETIMPORT                        R7 K46 [getmetatable]
      469 CALL                             R7 1 1
      470 LOADK                            R9 K73 ["IsFriend"]
      471 NEWCLOSURE                       R8 P1
      472 CAPTURE                          VAL R9
      473 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      475 SETTABLEKS                       R6 R5 K38 ["IsFriendKey"]
      477 GETIMPORT                        R6 K44 [newproxy]
      479 LOADB                            R7 1
      480 CALL                             R6 1 1
      481 FASTCALL1                        GETMETATABLE R6 ; [+3]
      482 MOVE                             R8 R6
      483 GETIMPORT                        R7 K46 [getmetatable]
      485 CALL                             R7 1 1
      486 LOADK                            R9 K74 ["IsEligible"]
      487 NEWCLOSURE                       R8 P1
      488 CAPTURE                          VAL R9
      489 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      491 SETTABLEKS                       R6 R5 K39 ["IsEligibleKey"]
      493 GETIMPORT                        R6 K44 [newproxy]
      495 LOADB                            R7 1
      496 CALL                             R6 1 1
      497 FASTCALL1                        GETMETATABLE R6 ; [+3]
      498 MOVE                             R8 R6
      499 GETIMPORT                        R7 K46 [getmetatable]
      501 CALL                             R7 1 1
      502 LOADK                            R9 K75 ["EligibilityText"]
      503 NEWCLOSURE                       R8 P1
      504 CAPTURE                          VAL R9
      505 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      507 SETTABLEKS                       R6 R5 K40 ["EligibilityTextKey"]
      509 JUMPIFNOT                        R3 ; [+15]
      510 GETIMPORT                        R6 K44 [newproxy]
      512 LOADB                            R7 1
      513 CALL                             R6 1 1
      514 FASTCALL1                        GETMETATABLE R6 ; [+3]
      515 MOVE                             R8 R6
      516 GETIMPORT                        R7 K46 [getmetatable]
      518 CALL                             R7 1 1
      519 LOADK                            R9 K76 ["IsPrefetched"]
      520 NEWCLOSURE                       R8 P1
      521 CAPTURE                          VAL R9
      522 SETTABLEKS                       R8 R7 K48 ["__tostring"]
      524 JUMP                             ; [+1]
      525 LOADNIL                          R6
      526 SETTABLEKS                       R6 R5 K41 ["IsPrefetchedKey"]
      528 DUPTABLE                         R6 K84 [{["DEPRECATED_MaxSearchResultsPerSubjectType"] = 3, ["MaxSearchResultsPerSubjectTypeUsers"] = 3, ["MaxSearchResultsPerSubjectTypeGroups"] = 2, ["GroupDefaultMemberRolesetId"] = 12884901889}]
      529 GETTABLEKS                       R7 R1 K85 ["Dictionary"]
      531 GETTABLEKS                       R7 R7 K86 ["join"]
      533 MOVE                             R8 R5
      534 MOVE                             R9 R6
      535 CALL                             R7 2 -1
      536 RETURN                           R7 -1
