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
       20 GETIMPORT                        R4 K30 [newproxy]
       22 LOADB                            R5 1
       23 CALL                             R4 1 1
       24 FASTCALL1                        GETMETATABLE R4 ; [+3]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K32 [getmetatable]
       28 CALL                             R5 1 1
       29 LOADK                            R7 K33 ["NoAccessPermission"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R7
       32 SETTABLEKS                       R6 R5 K34 ["__tostring"]
       34 SETTABLEKS                       R4 R3 K8 ["NoAccessKey"]
       36 GETIMPORT                        R4 K30 [newproxy]
       38 LOADB                            R5 1
       39 CALL                             R4 1 1
       40 FASTCALL1                        GETMETATABLE R4 ; [+3]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K32 [getmetatable]
       44 CALL                             R5 1 1
       45 LOADK                            R7 K35 ["PlayPermission"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R6 R5 K34 ["__tostring"]
       50 SETTABLEKS                       R4 R3 K9 ["PlayKey"]
       52 GETIMPORT                        R4 K30 [newproxy]
       54 LOADB                            R5 1
       55 CALL                             R4 1 1
       56 FASTCALL1                        GETMETATABLE R4 ; [+3]
       57 MOVE                             R6 R4
       58 GETIMPORT                        R5 K32 [getmetatable]
       60 CALL                             R5 1 1
       61 LOADK                            R7 K36 ["EditPermission"]
       62 NEWCLOSURE                       R6 P1
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R6 R5 K34 ["__tostring"]
       66 SETTABLEKS                       R4 R3 K10 ["EditKey"]
       68 GETIMPORT                        R4 K30 [newproxy]
       70 LOADB                            R5 1
       71 CALL                             R4 1 1
       72 FASTCALL1                        GETMETATABLE R4 ; [+3]
       73 MOVE                             R6 R4
       74 GETIMPORT                        R5 K32 [getmetatable]
       76 CALL                             R5 1 1
       77 LOADK                            R7 K37 ["NoEditMustBeFriendPermission"]
       78 NEWCLOSURE                       R6 P1
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R6 R5 K34 ["__tostring"]
       82 SETTABLEKS                       R4 R3 K11 ["NoEditMustBeFriendKey"]
       84 GETIMPORT                        R4 K30 [newproxy]
       86 LOADB                            R5 1
       87 CALL                             R4 1 1
       88 FASTCALL1                        GETMETATABLE R4 ; [+3]
       89 MOVE                             R6 R4
       90 GETIMPORT                        R5 K32 [getmetatable]
       92 CALL                             R5 1 1
       93 LOADK                            R7 K38 ["NoUserEditGroupGamePermission"]
       94 NEWCLOSURE                       R6 P1
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R6 R5 K34 ["__tostring"]
       98 SETTABLEKS                       R4 R3 K12 ["NoUserEditGroupGameKey"]
      100 GETIMPORT                        R4 K30 [newproxy]
      102 LOADB                            R5 1
      103 CALL                             R4 1 1
      104 FASTCALL1                        GETMETATABLE R4 ; [+3]
      105 MOVE                             R6 R4
      106 GETIMPORT                        R5 K32 [getmetatable]
      108 CALL                             R5 1 1
      109 LOADK                            R7 K39 ["AdminPermission"]
      110 NEWCLOSURE                       R6 P1
      111 CAPTURE                          VAL R7
      112 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      114 SETTABLEKS                       R4 R3 K13 ["AdminKey"]
      116 GETIMPORT                        R4 K30 [newproxy]
      118 LOADB                            R5 1
      119 CALL                             R4 1 1
      120 FASTCALL1                        GETMETATABLE R4 ; [+3]
      121 MOVE                             R6 R4
      122 GETIMPORT                        R5 K32 [getmetatable]
      124 CALL                             R5 1 1
      125 LOADK                            R7 K40 ["OwnerPermission"]
      126 NEWCLOSURE                       R6 P1
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      130 SETTABLEKS                       R4 R3 K14 ["OwnerKey"]
      132 GETIMPORT                        R4 K30 [newproxy]
      134 LOADB                            R5 1
      135 CALL                             R4 1 1
      136 FASTCALL1                        GETMETATABLE R4 ; [+3]
      137 MOVE                             R6 R4
      138 GETIMPORT                        R5 K32 [getmetatable]
      140 CALL                             R5 1 1
      141 LOADK                            R7 K41 ["MultiplePermission"]
      142 NEWCLOSURE                       R6 P1
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      146 SETTABLEKS                       R4 R3 K15 ["MultipleKey"]
      148 GETIMPORT                        R4 K30 [newproxy]
      150 LOADB                            R5 1
      151 CALL                             R4 1 1
      152 FASTCALL1                        GETMETATABLE R4 ; [+3]
      153 MOVE                             R6 R4
      154 GETIMPORT                        R5 K32 [getmetatable]
      156 CALL                             R5 1 1
      157 LOADK                            R7 K42 ["UserSubjectType"]
      158 NEWCLOSURE                       R6 P1
      159 CAPTURE                          VAL R7
      160 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      162 SETTABLEKS                       R4 R3 K16 ["UserSubjectKey"]
      164 GETIMPORT                        R4 K30 [newproxy]
      166 LOADB                            R5 1
      167 CALL                             R4 1 1
      168 FASTCALL1                        GETMETATABLE R4 ; [+3]
      169 MOVE                             R6 R4
      170 GETIMPORT                        R5 K32 [getmetatable]
      172 CALL                             R5 1 1
      173 LOADK                            R7 K43 ["GroupSubjectType"]
      174 NEWCLOSURE                       R6 P1
      175 CAPTURE                          VAL R7
      176 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      178 SETTABLEKS                       R4 R3 K17 ["GroupSubjectKey"]
      180 GETIMPORT                        R4 K30 [newproxy]
      182 LOADB                            R5 1
      183 CALL                             R4 1 1
      184 FASTCALL1                        GETMETATABLE R4 ; [+3]
      185 MOVE                             R6 R4
      186 GETIMPORT                        R5 K32 [getmetatable]
      188 CALL                             R5 1 1
      189 LOADK                            R7 K44 ["RoleSubjectType"]
      190 NEWCLOSURE                       R6 P1
      191 CAPTURE                          VAL R7
      192 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      194 SETTABLEKS                       R4 R3 K18 ["RoleSubjectKey"]
      196 GETIMPORT                        R4 K30 [newproxy]
      198 LOADB                            R5 1
      199 CALL                             R4 1 1
      200 FASTCALL1                        GETMETATABLE R4 ; [+3]
      201 MOVE                             R6 R4
      202 GETIMPORT                        R5 K32 [getmetatable]
      204 CALL                             R5 1 1
      205 LOADK                            R7 K45 ["Action"]
      206 NEWCLOSURE                       R6 P1
      207 CAPTURE                          VAL R7
      208 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      210 SETTABLEKS                       R4 R3 K19 ["ActionKey"]
      212 GETIMPORT                        R4 K30 [newproxy]
      214 LOADB                            R5 1
      215 CALL                             R4 1 1
      216 FASTCALL1                        GETMETATABLE R4 ; [+3]
      217 MOVE                             R6 R4
      218 GETIMPORT                        R5 K32 [getmetatable]
      220 CALL                             R5 1 1
      221 LOADK                            R7 K46 ["SubjectId"]
      222 NEWCLOSURE                       R6 P1
      223 CAPTURE                          VAL R7
      224 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      226 SETTABLEKS                       R4 R3 K20 ["SubjectIdKey"]
      228 GETIMPORT                        R4 K30 [newproxy]
      230 LOADB                            R5 1
      231 CALL                             R4 1 1
      232 FASTCALL1                        GETMETATABLE R4 ; [+3]
      233 MOVE                             R6 R4
      234 GETIMPORT                        R5 K32 [getmetatable]
      236 CALL                             R5 1 1
      237 LOADK                            R7 K47 ["SubjectName"]
      238 NEWCLOSURE                       R6 P1
      239 CAPTURE                          VAL R7
      240 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      242 SETTABLEKS                       R4 R3 K21 ["SubjectNameKey"]
      244 GETIMPORT                        R4 K30 [newproxy]
      246 LOADB                            R5 1
      247 CALL                             R4 1 1
      248 FASTCALL1                        GETMETATABLE R4 ; [+3]
      249 MOVE                             R6 R4
      250 GETIMPORT                        R5 K32 [getmetatable]
      252 CALL                             R5 1 1
      253 LOADK                            R7 K48 ["SubjectType"]
      254 NEWCLOSURE                       R6 P1
      255 CAPTURE                          VAL R7
      256 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      258 SETTABLEKS                       R4 R3 K22 ["SubjectTypeKey"]
      260 GETIMPORT                        R4 K30 [newproxy]
      262 LOADB                            R5 1
      263 CALL                             R4 1 1
      264 FASTCALL1                        GETMETATABLE R4 ; [+3]
      265 MOVE                             R6 R4
      266 GETIMPORT                        R5 K32 [getmetatable]
      268 CALL                             R5 1 1
      269 LOADK                            R7 K49 ["SubjectRank"]
      270 NEWCLOSURE                       R6 P1
      271 CAPTURE                          VAL R7
      272 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      274 SETTABLEKS                       R4 R3 K23 ["SubjectRankKey"]
      276 GETIMPORT                        R4 K30 [newproxy]
      278 LOADB                            R5 1
      279 CALL                             R4 1 1
      280 FASTCALL1                        GETMETATABLE R4 ; [+3]
      281 MOVE                             R6 R4
      282 GETIMPORT                        R5 K32 [getmetatable]
      284 CALL                             R5 1 1
      285 LOADK                            R7 K50 ["GroupId"]
      286 NEWCLOSURE                       R6 P1
      287 CAPTURE                          VAL R7
      288 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      290 SETTABLEKS                       R4 R3 K24 ["GroupIdKey"]
      292 GETIMPORT                        R4 K30 [newproxy]
      294 LOADB                            R5 1
      295 CALL                             R4 1 1
      296 FASTCALL1                        GETMETATABLE R4 ; [+3]
      297 MOVE                             R6 R4
      298 GETIMPORT                        R5 K32 [getmetatable]
      300 CALL                             R5 1 1
      301 LOADK                            R7 K51 ["GroupName"]
      302 NEWCLOSURE                       R6 P1
      303 CAPTURE                          VAL R7
      304 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      306 SETTABLEKS                       R4 R3 K25 ["GroupNameKey"]
      308 GETIMPORT                        R4 K30 [newproxy]
      310 LOADB                            R5 1
      311 CALL                             R4 1 1
      312 FASTCALL1                        GETMETATABLE R4 ; [+3]
      313 MOVE                             R6 R4
      314 GETIMPORT                        R5 K32 [getmetatable]
      316 CALL                             R5 1 1
      317 LOADK                            R7 K26 ["GroupMemberCountKey"]
      318 NEWCLOSURE                       R6 P1
      319 CAPTURE                          VAL R7
      320 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      322 SETTABLEKS                       R4 R3 K26 ["GroupMemberCountKey"]
      324 GETIMPORT                        R4 K30 [newproxy]
      326 LOADB                            R5 1
      327 CALL                             R4 1 1
      328 FASTCALL1                        GETMETATABLE R4 ; [+3]
      329 MOVE                             R6 R4
      330 GETIMPORT                        R5 K32 [getmetatable]
      332 CALL                             R5 1 1
      333 LOADK                            R7 K52 ["IsFriend"]
      334 NEWCLOSURE                       R6 P1
      335 CAPTURE                          VAL R7
      336 SETTABLEKS                       R6 R5 K34 ["__tostring"]
      338 SETTABLEKS                       R4 R3 K27 ["IsFriendKey"]
      340 DUPTABLE                         R4 K58 [{["DEPRECATED_MaxSearchResultsPerSubjectType"] = 3, ["MaxSearchResultsPerSubjectTypeUsers"] = 3, ["MaxSearchResultsPerSubjectTypeGroups"] = 2}]
      341 GETTABLEKS                       R5 R1 K59 ["Dictionary"]
      343 GETTABLEKS                       R5 R5 K60 ["join"]
      345 MOVE                             R6 R3
      346 MOVE                             R7 R4
      347 CALL                             R5 2 -1
      348 RETURN                           R5 -1
