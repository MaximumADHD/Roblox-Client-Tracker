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
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K7 [PROTO_1]
       19 DUPTABLE                         R3 K28 [{"NoAccessKey", "PlayKey", "EditKey", "NoEditMustBeFriendKey", "NoUserEditGroupGameKey", "AdminKey", "OwnerKey", "MultipleKey", "UserSubjectKey", "GroupSubjectKey", "RoleSubjectKey", "ActionKey", "SubjectIdKey", "SubjectNameKey", "SubjectTypeKey", "SubjectRankKey", "GroupIdKey", "GroupNameKey", "GroupMemberCountKey", "IsFriendKey"}]
       20 GETIMPORT                        R5 K30 [newproxy]
       22 LOADB                            R6 1
       23 CALL                             R5 1 1
       24 FASTCALL1                        GETMETATABLE R5 ; [+3]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K32 [getmetatable]
       28 CALL                             R6 1 1
       29 LOADK                            R8 K33 ["NoAccessPermission"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R8
       32 SETTABLEKS                       R7 R6 K34 ["__tostring"]
       34 MOVE                             R4 R5
       35 SETTABLEKS                       R4 R3 K8 ["NoAccessKey"]
       37 GETIMPORT                        R5 K30 [newproxy]
       39 LOADB                            R6 1
       40 CALL                             R5 1 1
       41 FASTCALL1                        GETMETATABLE R5 ; [+3]
       42 MOVE                             R7 R5
       43 GETIMPORT                        R6 K32 [getmetatable]
       45 CALL                             R6 1 1
       46 LOADK                            R8 K35 ["PlayPermission"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R7 R6 K34 ["__tostring"]
       51 MOVE                             R4 R5
       52 SETTABLEKS                       R4 R3 K9 ["PlayKey"]
       54 GETIMPORT                        R5 K30 [newproxy]
       56 LOADB                            R6 1
       57 CALL                             R5 1 1
       58 FASTCALL1                        GETMETATABLE R5 ; [+3]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K32 [getmetatable]
       62 CALL                             R6 1 1
       63 LOADK                            R8 K36 ["EditPermission"]
       64 NEWCLOSURE                       R7 P1
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R7 R6 K34 ["__tostring"]
       68 MOVE                             R4 R5
       69 SETTABLEKS                       R4 R3 K10 ["EditKey"]
       71 GETIMPORT                        R5 K30 [newproxy]
       73 LOADB                            R6 1
       74 CALL                             R5 1 1
       75 FASTCALL1                        GETMETATABLE R5 ; [+3]
       76 MOVE                             R7 R5
       77 GETIMPORT                        R6 K32 [getmetatable]
       79 CALL                             R6 1 1
       80 LOADK                            R8 K37 ["NoEditMustBeFriendPermission"]
       81 NEWCLOSURE                       R7 P1
       82 CAPTURE                          VAL R8
       83 SETTABLEKS                       R7 R6 K34 ["__tostring"]
       85 MOVE                             R4 R5
       86 SETTABLEKS                       R4 R3 K11 ["NoEditMustBeFriendKey"]
       88 GETIMPORT                        R5 K30 [newproxy]
       90 LOADB                            R6 1
       91 CALL                             R5 1 1
       92 FASTCALL1                        GETMETATABLE R5 ; [+3]
       93 MOVE                             R7 R5
       94 GETIMPORT                        R6 K32 [getmetatable]
       96 CALL                             R6 1 1
       97 LOADK                            R8 K38 ["NoUserEditGroupGamePermission"]
       98 NEWCLOSURE                       R7 P1
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      102 MOVE                             R4 R5
      103 SETTABLEKS                       R4 R3 K12 ["NoUserEditGroupGameKey"]
      105 GETIMPORT                        R5 K30 [newproxy]
      107 LOADB                            R6 1
      108 CALL                             R5 1 1
      109 FASTCALL1                        GETMETATABLE R5 ; [+3]
      110 MOVE                             R7 R5
      111 GETIMPORT                        R6 K32 [getmetatable]
      113 CALL                             R6 1 1
      114 LOADK                            R8 K39 ["AdminPermission"]
      115 NEWCLOSURE                       R7 P1
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      119 MOVE                             R4 R5
      120 SETTABLEKS                       R4 R3 K13 ["AdminKey"]
      122 GETIMPORT                        R5 K30 [newproxy]
      124 LOADB                            R6 1
      125 CALL                             R5 1 1
      126 FASTCALL1                        GETMETATABLE R5 ; [+3]
      127 MOVE                             R7 R5
      128 GETIMPORT                        R6 K32 [getmetatable]
      130 CALL                             R6 1 1
      131 LOADK                            R8 K40 ["OwnerPermission"]
      132 NEWCLOSURE                       R7 P1
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      136 MOVE                             R4 R5
      137 SETTABLEKS                       R4 R3 K14 ["OwnerKey"]
      139 GETIMPORT                        R5 K30 [newproxy]
      141 LOADB                            R6 1
      142 CALL                             R5 1 1
      143 FASTCALL1                        GETMETATABLE R5 ; [+3]
      144 MOVE                             R7 R5
      145 GETIMPORT                        R6 K32 [getmetatable]
      147 CALL                             R6 1 1
      148 LOADK                            R8 K41 ["MultiplePermission"]
      149 NEWCLOSURE                       R7 P1
      150 CAPTURE                          VAL R8
      151 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      153 MOVE                             R4 R5
      154 SETTABLEKS                       R4 R3 K15 ["MultipleKey"]
      156 GETIMPORT                        R5 K30 [newproxy]
      158 LOADB                            R6 1
      159 CALL                             R5 1 1
      160 FASTCALL1                        GETMETATABLE R5 ; [+3]
      161 MOVE                             R7 R5
      162 GETIMPORT                        R6 K32 [getmetatable]
      164 CALL                             R6 1 1
      165 LOADK                            R8 K42 ["UserSubjectType"]
      166 NEWCLOSURE                       R7 P1
      167 CAPTURE                          VAL R8
      168 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      170 MOVE                             R4 R5
      171 SETTABLEKS                       R4 R3 K16 ["UserSubjectKey"]
      173 GETIMPORT                        R5 K30 [newproxy]
      175 LOADB                            R6 1
      176 CALL                             R5 1 1
      177 FASTCALL1                        GETMETATABLE R5 ; [+3]
      178 MOVE                             R7 R5
      179 GETIMPORT                        R6 K32 [getmetatable]
      181 CALL                             R6 1 1
      182 LOADK                            R8 K43 ["GroupSubjectType"]
      183 NEWCLOSURE                       R7 P1
      184 CAPTURE                          VAL R8
      185 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      187 MOVE                             R4 R5
      188 SETTABLEKS                       R4 R3 K17 ["GroupSubjectKey"]
      190 GETIMPORT                        R5 K30 [newproxy]
      192 LOADB                            R6 1
      193 CALL                             R5 1 1
      194 FASTCALL1                        GETMETATABLE R5 ; [+3]
      195 MOVE                             R7 R5
      196 GETIMPORT                        R6 K32 [getmetatable]
      198 CALL                             R6 1 1
      199 LOADK                            R8 K44 ["RoleSubjectType"]
      200 NEWCLOSURE                       R7 P1
      201 CAPTURE                          VAL R8
      202 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      204 MOVE                             R4 R5
      205 SETTABLEKS                       R4 R3 K18 ["RoleSubjectKey"]
      207 GETIMPORT                        R5 K30 [newproxy]
      209 LOADB                            R6 1
      210 CALL                             R5 1 1
      211 FASTCALL1                        GETMETATABLE R5 ; [+3]
      212 MOVE                             R7 R5
      213 GETIMPORT                        R6 K32 [getmetatable]
      215 CALL                             R6 1 1
      216 LOADK                            R8 K45 ["Action"]
      217 NEWCLOSURE                       R7 P1
      218 CAPTURE                          VAL R8
      219 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      221 MOVE                             R4 R5
      222 SETTABLEKS                       R4 R3 K19 ["ActionKey"]
      224 GETIMPORT                        R5 K30 [newproxy]
      226 LOADB                            R6 1
      227 CALL                             R5 1 1
      228 FASTCALL1                        GETMETATABLE R5 ; [+3]
      229 MOVE                             R7 R5
      230 GETIMPORT                        R6 K32 [getmetatable]
      232 CALL                             R6 1 1
      233 LOADK                            R8 K46 ["SubjectId"]
      234 NEWCLOSURE                       R7 P1
      235 CAPTURE                          VAL R8
      236 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      238 MOVE                             R4 R5
      239 SETTABLEKS                       R4 R3 K20 ["SubjectIdKey"]
      241 GETIMPORT                        R5 K30 [newproxy]
      243 LOADB                            R6 1
      244 CALL                             R5 1 1
      245 FASTCALL1                        GETMETATABLE R5 ; [+3]
      246 MOVE                             R7 R5
      247 GETIMPORT                        R6 K32 [getmetatable]
      249 CALL                             R6 1 1
      250 LOADK                            R8 K47 ["SubjectName"]
      251 NEWCLOSURE                       R7 P1
      252 CAPTURE                          VAL R8
      253 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      255 MOVE                             R4 R5
      256 SETTABLEKS                       R4 R3 K21 ["SubjectNameKey"]
      258 GETIMPORT                        R5 K30 [newproxy]
      260 LOADB                            R6 1
      261 CALL                             R5 1 1
      262 FASTCALL1                        GETMETATABLE R5 ; [+3]
      263 MOVE                             R7 R5
      264 GETIMPORT                        R6 K32 [getmetatable]
      266 CALL                             R6 1 1
      267 LOADK                            R8 K48 ["SubjectType"]
      268 NEWCLOSURE                       R7 P1
      269 CAPTURE                          VAL R8
      270 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      272 MOVE                             R4 R5
      273 SETTABLEKS                       R4 R3 K22 ["SubjectTypeKey"]
      275 GETIMPORT                        R5 K30 [newproxy]
      277 LOADB                            R6 1
      278 CALL                             R5 1 1
      279 FASTCALL1                        GETMETATABLE R5 ; [+3]
      280 MOVE                             R7 R5
      281 GETIMPORT                        R6 K32 [getmetatable]
      283 CALL                             R6 1 1
      284 LOADK                            R8 K49 ["SubjectRank"]
      285 NEWCLOSURE                       R7 P1
      286 CAPTURE                          VAL R8
      287 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      289 MOVE                             R4 R5
      290 SETTABLEKS                       R4 R3 K23 ["SubjectRankKey"]
      292 GETIMPORT                        R5 K30 [newproxy]
      294 LOADB                            R6 1
      295 CALL                             R5 1 1
      296 FASTCALL1                        GETMETATABLE R5 ; [+3]
      297 MOVE                             R7 R5
      298 GETIMPORT                        R6 K32 [getmetatable]
      300 CALL                             R6 1 1
      301 LOADK                            R8 K50 ["GroupId"]
      302 NEWCLOSURE                       R7 P1
      303 CAPTURE                          VAL R8
      304 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      306 MOVE                             R4 R5
      307 SETTABLEKS                       R4 R3 K24 ["GroupIdKey"]
      309 GETIMPORT                        R5 K30 [newproxy]
      311 LOADB                            R6 1
      312 CALL                             R5 1 1
      313 FASTCALL1                        GETMETATABLE R5 ; [+3]
      314 MOVE                             R7 R5
      315 GETIMPORT                        R6 K32 [getmetatable]
      317 CALL                             R6 1 1
      318 LOADK                            R8 K51 ["GroupName"]
      319 NEWCLOSURE                       R7 P1
      320 CAPTURE                          VAL R8
      321 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      323 MOVE                             R4 R5
      324 SETTABLEKS                       R4 R3 K25 ["GroupNameKey"]
      326 GETIMPORT                        R5 K30 [newproxy]
      328 LOADB                            R6 1
      329 CALL                             R5 1 1
      330 FASTCALL1                        GETMETATABLE R5 ; [+3]
      331 MOVE                             R7 R5
      332 GETIMPORT                        R6 K32 [getmetatable]
      334 CALL                             R6 1 1
      335 LOADK                            R8 K26 ["GroupMemberCountKey"]
      336 NEWCLOSURE                       R7 P1
      337 CAPTURE                          VAL R8
      338 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      340 MOVE                             R4 R5
      341 SETTABLEKS                       R4 R3 K26 ["GroupMemberCountKey"]
      343 GETIMPORT                        R5 K30 [newproxy]
      345 LOADB                            R6 1
      346 CALL                             R5 1 1
      347 FASTCALL1                        GETMETATABLE R5 ; [+3]
      348 MOVE                             R7 R5
      349 GETIMPORT                        R6 K32 [getmetatable]
      351 CALL                             R6 1 1
      352 LOADK                            R8 K52 ["IsFriend"]
      353 NEWCLOSURE                       R7 P1
      354 CAPTURE                          VAL R8
      355 SETTABLEKS                       R7 R6 K34 ["__tostring"]
      357 MOVE                             R4 R5
      358 SETTABLEKS                       R4 R3 K27 ["IsFriendKey"]
      360 DUPTABLE                         R4 K58 [{["DEPRECATED_MaxSearchResultsPerSubjectType"] = 3, ["MaxSearchResultsPerSubjectTypeUsers"] = 3, ["MaxSearchResultsPerSubjectTypeGroups"] = 2}]
      361 GETTABLEKS                       R5 R1 K59 ["Dictionary"]
      363 GETTABLEKS                       R5 R5 K60 ["join"]
      365 MOVE                             R6 R3
      366 MOVE                             R7 R4
      367 CALL                             R5 2 -1
      368 RETURN                           R5 -1
