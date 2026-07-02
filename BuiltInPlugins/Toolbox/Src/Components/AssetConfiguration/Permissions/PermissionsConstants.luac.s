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
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K7 [PROTO_1]
       21 DUPTABLE                         R4 K35 [{["NoneKey"], ["NoAccessKey"], ["UseViewKey"], ["EditKey"], ["RevokedKey"], ["OwnKey"], ["UserSubjectKey"], ["GroupSubjectKey"], ["RoleSubjectKey"], ["ActionKey"], ["PermissionLevelKey"], ["PermissionSourceKey"], ["SubjectIdKey"], ["SubjectNameKey"], ["SubjectTypeKey"], ["SubjectRankKey"], ["GroupIdKey"], ["GroupNameKey"], ["AccountPermissionLevel"] = "Account", ["UniversePermissionLevel"] = "Universe", ["AssetPermissionLevel"] = "Asset", ["AssetPermissionSource"] = "Asset", ["GroupPermissionSource"] = "GroupRoleset"}]
       22 GETIMPORT                        R6 K37 [newproxy]
       24 LOADB                            R7 1
       25 CALL                             R6 1 1
       26 FASTCALL1                        GETMETATABLE R6 ; [+3]
       27 MOVE                             R8 R6
       28 GETIMPORT                        R7 K39 [getmetatable]
       30 CALL                             R7 1 1
       31 LOADK                            R9 K40 ["NonePermission"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R9
       34 SETTABLEKS                       R8 R7 K41 ["__tostring"]
       36 MOVE                             R5 R6
       37 SETTABLEKS                       R5 R4 K8 ["NoneKey"]
       39 GETIMPORT                        R6 K37 [newproxy]
       41 LOADB                            R7 1
       42 CALL                             R6 1 1
       43 FASTCALL1                        GETMETATABLE R6 ; [+3]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K39 [getmetatable]
       47 CALL                             R7 1 1
       48 LOADK                            R9 K42 ["NoAccessPermission"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R9
       51 SETTABLEKS                       R8 R7 K41 ["__tostring"]
       53 MOVE                             R5 R6
       54 SETTABLEKS                       R5 R4 K9 ["NoAccessKey"]
       56 GETIMPORT                        R6 K37 [newproxy]
       58 LOADB                            R7 1
       59 CALL                             R6 1 1
       60 FASTCALL1                        GETMETATABLE R6 ; [+3]
       61 MOVE                             R8 R6
       62 GETIMPORT                        R7 K39 [getmetatable]
       64 CALL                             R7 1 1
       65 LOADK                            R9 K43 ["UseViewPermission"]
       66 NEWCLOSURE                       R8 P1
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R8 R7 K41 ["__tostring"]
       70 MOVE                             R5 R6
       71 SETTABLEKS                       R5 R4 K10 ["UseViewKey"]
       73 GETIMPORT                        R6 K37 [newproxy]
       75 LOADB                            R7 1
       76 CALL                             R6 1 1
       77 FASTCALL1                        GETMETATABLE R6 ; [+3]
       78 MOVE                             R8 R6
       79 GETIMPORT                        R7 K39 [getmetatable]
       81 CALL                             R7 1 1
       82 LOADK                            R9 K44 ["EditPermission"]
       83 NEWCLOSURE                       R8 P1
       84 CAPTURE                          VAL R9
       85 SETTABLEKS                       R8 R7 K41 ["__tostring"]
       87 MOVE                             R5 R6
       88 SETTABLEKS                       R5 R4 K11 ["EditKey"]
       90 GETIMPORT                        R6 K37 [newproxy]
       92 LOADB                            R7 1
       93 CALL                             R6 1 1
       94 FASTCALL1                        GETMETATABLE R6 ; [+3]
       95 MOVE                             R8 R6
       96 GETIMPORT                        R7 K39 [getmetatable]
       98 CALL                             R7 1 1
       99 LOADK                            R9 K45 ["RevokedPermission"]
      100 NEWCLOSURE                       R8 P1
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      104 MOVE                             R5 R6
      105 SETTABLEKS                       R5 R4 K12 ["RevokedKey"]
      107 GETIMPORT                        R6 K37 [newproxy]
      109 LOADB                            R7 1
      110 CALL                             R6 1 1
      111 FASTCALL1                        GETMETATABLE R6 ; [+3]
      112 MOVE                             R8 R6
      113 GETIMPORT                        R7 K39 [getmetatable]
      115 CALL                             R7 1 1
      116 LOADK                            R9 K46 ["OwnPermisison"]
      117 NEWCLOSURE                       R8 P1
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      121 MOVE                             R5 R6
      122 SETTABLEKS                       R5 R4 K13 ["OwnKey"]
      124 GETIMPORT                        R6 K37 [newproxy]
      126 LOADB                            R7 1
      127 CALL                             R6 1 1
      128 FASTCALL1                        GETMETATABLE R6 ; [+3]
      129 MOVE                             R8 R6
      130 GETIMPORT                        R7 K39 [getmetatable]
      132 CALL                             R7 1 1
      133 LOADK                            R9 K47 ["UserSubjectType"]
      134 NEWCLOSURE                       R8 P1
      135 CAPTURE                          VAL R9
      136 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      138 MOVE                             R5 R6
      139 SETTABLEKS                       R5 R4 K14 ["UserSubjectKey"]
      141 GETIMPORT                        R6 K37 [newproxy]
      143 LOADB                            R7 1
      144 CALL                             R6 1 1
      145 FASTCALL1                        GETMETATABLE R6 ; [+3]
      146 MOVE                             R8 R6
      147 GETIMPORT                        R7 K39 [getmetatable]
      149 CALL                             R7 1 1
      150 LOADK                            R9 K48 ["GroupSubjectType"]
      151 NEWCLOSURE                       R8 P1
      152 CAPTURE                          VAL R9
      153 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      155 MOVE                             R5 R6
      156 SETTABLEKS                       R5 R4 K15 ["GroupSubjectKey"]
      158 GETIMPORT                        R6 K37 [newproxy]
      160 LOADB                            R7 1
      161 CALL                             R6 1 1
      162 FASTCALL1                        GETMETATABLE R6 ; [+3]
      163 MOVE                             R8 R6
      164 GETIMPORT                        R7 K39 [getmetatable]
      166 CALL                             R7 1 1
      167 LOADK                            R9 K49 ["RoleSubjectType"]
      168 NEWCLOSURE                       R8 P1
      169 CAPTURE                          VAL R9
      170 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      172 MOVE                             R5 R6
      173 SETTABLEKS                       R5 R4 K16 ["RoleSubjectKey"]
      175 GETIMPORT                        R6 K37 [newproxy]
      177 LOADB                            R7 1
      178 CALL                             R6 1 1
      179 FASTCALL1                        GETMETATABLE R6 ; [+3]
      180 MOVE                             R8 R6
      181 GETIMPORT                        R7 K39 [getmetatable]
      183 CALL                             R7 1 1
      184 LOADK                            R9 K50 ["Action"]
      185 NEWCLOSURE                       R8 P1
      186 CAPTURE                          VAL R9
      187 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      189 MOVE                             R5 R6
      190 SETTABLEKS                       R5 R4 K17 ["ActionKey"]
      192 GETIMPORT                        R6 K37 [newproxy]
      194 LOADB                            R7 1
      195 CALL                             R6 1 1
      196 FASTCALL1                        GETMETATABLE R6 ; [+3]
      197 MOVE                             R8 R6
      198 GETIMPORT                        R7 K39 [getmetatable]
      200 CALL                             R7 1 1
      201 LOADK                            R9 K51 ["PermissionLevel"]
      202 NEWCLOSURE                       R8 P1
      203 CAPTURE                          VAL R9
      204 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      206 MOVE                             R5 R6
      207 SETTABLEKS                       R5 R4 K18 ["PermissionLevelKey"]
      209 GETIMPORT                        R6 K37 [newproxy]
      211 LOADB                            R7 1
      212 CALL                             R6 1 1
      213 FASTCALL1                        GETMETATABLE R6 ; [+3]
      214 MOVE                             R8 R6
      215 GETIMPORT                        R7 K39 [getmetatable]
      217 CALL                             R7 1 1
      218 LOADK                            R9 K52 ["PermissionSource"]
      219 NEWCLOSURE                       R8 P1
      220 CAPTURE                          VAL R9
      221 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      223 MOVE                             R5 R6
      224 SETTABLEKS                       R5 R4 K19 ["PermissionSourceKey"]
      226 GETIMPORT                        R6 K37 [newproxy]
      228 LOADB                            R7 1
      229 CALL                             R6 1 1
      230 FASTCALL1                        GETMETATABLE R6 ; [+3]
      231 MOVE                             R8 R6
      232 GETIMPORT                        R7 K39 [getmetatable]
      234 CALL                             R7 1 1
      235 LOADK                            R9 K53 ["SubjectId"]
      236 NEWCLOSURE                       R8 P1
      237 CAPTURE                          VAL R9
      238 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      240 MOVE                             R5 R6
      241 SETTABLEKS                       R5 R4 K20 ["SubjectIdKey"]
      243 GETIMPORT                        R6 K37 [newproxy]
      245 LOADB                            R7 1
      246 CALL                             R6 1 1
      247 FASTCALL1                        GETMETATABLE R6 ; [+3]
      248 MOVE                             R8 R6
      249 GETIMPORT                        R7 K39 [getmetatable]
      251 CALL                             R7 1 1
      252 LOADK                            R9 K54 ["SubjectName"]
      253 NEWCLOSURE                       R8 P1
      254 CAPTURE                          VAL R9
      255 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      257 MOVE                             R5 R6
      258 SETTABLEKS                       R5 R4 K21 ["SubjectNameKey"]
      260 GETIMPORT                        R6 K37 [newproxy]
      262 LOADB                            R7 1
      263 CALL                             R6 1 1
      264 FASTCALL1                        GETMETATABLE R6 ; [+3]
      265 MOVE                             R8 R6
      266 GETIMPORT                        R7 K39 [getmetatable]
      268 CALL                             R7 1 1
      269 LOADK                            R9 K55 ["SubjectType"]
      270 NEWCLOSURE                       R8 P1
      271 CAPTURE                          VAL R9
      272 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      274 MOVE                             R5 R6
      275 SETTABLEKS                       R5 R4 K22 ["SubjectTypeKey"]
      277 GETIMPORT                        R6 K37 [newproxy]
      279 LOADB                            R7 1
      280 CALL                             R6 1 1
      281 FASTCALL1                        GETMETATABLE R6 ; [+3]
      282 MOVE                             R8 R6
      283 GETIMPORT                        R7 K39 [getmetatable]
      285 CALL                             R7 1 1
      286 LOADK                            R9 K56 ["SubjectRank"]
      287 NEWCLOSURE                       R8 P1
      288 CAPTURE                          VAL R9
      289 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      291 MOVE                             R5 R6
      292 SETTABLEKS                       R5 R4 K23 ["SubjectRankKey"]
      294 GETIMPORT                        R6 K37 [newproxy]
      296 LOADB                            R7 1
      297 CALL                             R6 1 1
      298 FASTCALL1                        GETMETATABLE R6 ; [+3]
      299 MOVE                             R8 R6
      300 GETIMPORT                        R7 K39 [getmetatable]
      302 CALL                             R7 1 1
      303 LOADK                            R9 K57 ["GroupId"]
      304 NEWCLOSURE                       R8 P1
      305 CAPTURE                          VAL R9
      306 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      308 MOVE                             R5 R6
      309 SETTABLEKS                       R5 R4 K24 ["GroupIdKey"]
      311 GETIMPORT                        R6 K37 [newproxy]
      313 LOADB                            R7 1
      314 CALL                             R6 1 1
      315 FASTCALL1                        GETMETATABLE R6 ; [+3]
      316 MOVE                             R8 R6
      317 GETIMPORT                        R7 K39 [getmetatable]
      319 CALL                             R7 1 1
      320 LOADK                            R9 K58 ["GroupName"]
      321 NEWCLOSURE                       R8 P1
      322 CAPTURE                          VAL R9
      323 SETTABLEKS                       R8 R7 K41 ["__tostring"]
      325 MOVE                             R5 R6
      326 SETTABLEKS                       R5 R4 K25 ["GroupNameKey"]
      328 DUPTABLE                         R5 K63 [{["MaxSearchResultsPerSubjectType"] = 3, ["MaxPackageAssetIdsForHighestPermissionsRequest"] = 100}]
      329 GETTABLEKS                       R6 R2 K64 ["Dictionary"]
      331 GETTABLEKS                       R6 R6 K65 ["join"]
      333 MOVE                             R7 R4
      334 MOVE                             R8 R5
      335 CALL                             R6 2 -1
      336 RETURN                           R6 -1
