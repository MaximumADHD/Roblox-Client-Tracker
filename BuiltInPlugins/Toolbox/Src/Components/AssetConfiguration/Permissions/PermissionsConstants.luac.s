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
       22 GETIMPORT                        R5 K37 [newproxy]
       24 LOADB                            R6 1
       25 CALL                             R5 1 1
       26 FASTCALL1                        GETMETATABLE R5 ; [+3]
       27 MOVE                             R7 R5
       28 GETIMPORT                        R6 K39 [getmetatable]
       30 CALL                             R6 1 1
       31 LOADK                            R8 K40 ["NonePermission"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R8
       34 SETTABLEKS                       R7 R6 K41 ["__tostring"]
       36 SETTABLEKS                       R5 R4 K8 ["NoneKey"]
       38 GETIMPORT                        R5 K37 [newproxy]
       40 LOADB                            R6 1
       41 CALL                             R5 1 1
       42 FASTCALL1                        GETMETATABLE R5 ; [+3]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K39 [getmetatable]
       46 CALL                             R6 1 1
       47 LOADK                            R8 K42 ["NoAccessPermission"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R8
       50 SETTABLEKS                       R7 R6 K41 ["__tostring"]
       52 SETTABLEKS                       R5 R4 K9 ["NoAccessKey"]
       54 GETIMPORT                        R5 K37 [newproxy]
       56 LOADB                            R6 1
       57 CALL                             R5 1 1
       58 FASTCALL1                        GETMETATABLE R5 ; [+3]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K39 [getmetatable]
       62 CALL                             R6 1 1
       63 LOADK                            R8 K43 ["UseViewPermission"]
       64 NEWCLOSURE                       R7 P1
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R7 R6 K41 ["__tostring"]
       68 SETTABLEKS                       R5 R4 K10 ["UseViewKey"]
       70 GETIMPORT                        R5 K37 [newproxy]
       72 LOADB                            R6 1
       73 CALL                             R5 1 1
       74 FASTCALL1                        GETMETATABLE R5 ; [+3]
       75 MOVE                             R7 R5
       76 GETIMPORT                        R6 K39 [getmetatable]
       78 CALL                             R6 1 1
       79 LOADK                            R8 K44 ["EditPermission"]
       80 NEWCLOSURE                       R7 P1
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R7 R6 K41 ["__tostring"]
       84 SETTABLEKS                       R5 R4 K11 ["EditKey"]
       86 GETIMPORT                        R5 K37 [newproxy]
       88 LOADB                            R6 1
       89 CALL                             R5 1 1
       90 FASTCALL1                        GETMETATABLE R5 ; [+3]
       91 MOVE                             R7 R5
       92 GETIMPORT                        R6 K39 [getmetatable]
       94 CALL                             R6 1 1
       95 LOADK                            R8 K45 ["RevokedPermission"]
       96 NEWCLOSURE                       R7 P1
       97 CAPTURE                          VAL R8
       98 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      100 SETTABLEKS                       R5 R4 K12 ["RevokedKey"]
      102 GETIMPORT                        R5 K37 [newproxy]
      104 LOADB                            R6 1
      105 CALL                             R5 1 1
      106 FASTCALL1                        GETMETATABLE R5 ; [+3]
      107 MOVE                             R7 R5
      108 GETIMPORT                        R6 K39 [getmetatable]
      110 CALL                             R6 1 1
      111 LOADK                            R8 K46 ["OwnPermisison"]
      112 NEWCLOSURE                       R7 P1
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      116 SETTABLEKS                       R5 R4 K13 ["OwnKey"]
      118 GETIMPORT                        R5 K37 [newproxy]
      120 LOADB                            R6 1
      121 CALL                             R5 1 1
      122 FASTCALL1                        GETMETATABLE R5 ; [+3]
      123 MOVE                             R7 R5
      124 GETIMPORT                        R6 K39 [getmetatable]
      126 CALL                             R6 1 1
      127 LOADK                            R8 K47 ["UserSubjectType"]
      128 NEWCLOSURE                       R7 P1
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      132 SETTABLEKS                       R5 R4 K14 ["UserSubjectKey"]
      134 GETIMPORT                        R5 K37 [newproxy]
      136 LOADB                            R6 1
      137 CALL                             R5 1 1
      138 FASTCALL1                        GETMETATABLE R5 ; [+3]
      139 MOVE                             R7 R5
      140 GETIMPORT                        R6 K39 [getmetatable]
      142 CALL                             R6 1 1
      143 LOADK                            R8 K48 ["GroupSubjectType"]
      144 NEWCLOSURE                       R7 P1
      145 CAPTURE                          VAL R8
      146 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      148 SETTABLEKS                       R5 R4 K15 ["GroupSubjectKey"]
      150 GETIMPORT                        R5 K37 [newproxy]
      152 LOADB                            R6 1
      153 CALL                             R5 1 1
      154 FASTCALL1                        GETMETATABLE R5 ; [+3]
      155 MOVE                             R7 R5
      156 GETIMPORT                        R6 K39 [getmetatable]
      158 CALL                             R6 1 1
      159 LOADK                            R8 K49 ["RoleSubjectType"]
      160 NEWCLOSURE                       R7 P1
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      164 SETTABLEKS                       R5 R4 K16 ["RoleSubjectKey"]
      166 GETIMPORT                        R5 K37 [newproxy]
      168 LOADB                            R6 1
      169 CALL                             R5 1 1
      170 FASTCALL1                        GETMETATABLE R5 ; [+3]
      171 MOVE                             R7 R5
      172 GETIMPORT                        R6 K39 [getmetatable]
      174 CALL                             R6 1 1
      175 LOADK                            R8 K50 ["Action"]
      176 NEWCLOSURE                       R7 P1
      177 CAPTURE                          VAL R8
      178 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      180 SETTABLEKS                       R5 R4 K17 ["ActionKey"]
      182 GETIMPORT                        R5 K37 [newproxy]
      184 LOADB                            R6 1
      185 CALL                             R5 1 1
      186 FASTCALL1                        GETMETATABLE R5 ; [+3]
      187 MOVE                             R7 R5
      188 GETIMPORT                        R6 K39 [getmetatable]
      190 CALL                             R6 1 1
      191 LOADK                            R8 K51 ["PermissionLevel"]
      192 NEWCLOSURE                       R7 P1
      193 CAPTURE                          VAL R8
      194 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      196 SETTABLEKS                       R5 R4 K18 ["PermissionLevelKey"]
      198 GETIMPORT                        R5 K37 [newproxy]
      200 LOADB                            R6 1
      201 CALL                             R5 1 1
      202 FASTCALL1                        GETMETATABLE R5 ; [+3]
      203 MOVE                             R7 R5
      204 GETIMPORT                        R6 K39 [getmetatable]
      206 CALL                             R6 1 1
      207 LOADK                            R8 K52 ["PermissionSource"]
      208 NEWCLOSURE                       R7 P1
      209 CAPTURE                          VAL R8
      210 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      212 SETTABLEKS                       R5 R4 K19 ["PermissionSourceKey"]
      214 GETIMPORT                        R5 K37 [newproxy]
      216 LOADB                            R6 1
      217 CALL                             R5 1 1
      218 FASTCALL1                        GETMETATABLE R5 ; [+3]
      219 MOVE                             R7 R5
      220 GETIMPORT                        R6 K39 [getmetatable]
      222 CALL                             R6 1 1
      223 LOADK                            R8 K53 ["SubjectId"]
      224 NEWCLOSURE                       R7 P1
      225 CAPTURE                          VAL R8
      226 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      228 SETTABLEKS                       R5 R4 K20 ["SubjectIdKey"]
      230 GETIMPORT                        R5 K37 [newproxy]
      232 LOADB                            R6 1
      233 CALL                             R5 1 1
      234 FASTCALL1                        GETMETATABLE R5 ; [+3]
      235 MOVE                             R7 R5
      236 GETIMPORT                        R6 K39 [getmetatable]
      238 CALL                             R6 1 1
      239 LOADK                            R8 K54 ["SubjectName"]
      240 NEWCLOSURE                       R7 P1
      241 CAPTURE                          VAL R8
      242 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      244 SETTABLEKS                       R5 R4 K21 ["SubjectNameKey"]
      246 GETIMPORT                        R5 K37 [newproxy]
      248 LOADB                            R6 1
      249 CALL                             R5 1 1
      250 FASTCALL1                        GETMETATABLE R5 ; [+3]
      251 MOVE                             R7 R5
      252 GETIMPORT                        R6 K39 [getmetatable]
      254 CALL                             R6 1 1
      255 LOADK                            R8 K55 ["SubjectType"]
      256 NEWCLOSURE                       R7 P1
      257 CAPTURE                          VAL R8
      258 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      260 SETTABLEKS                       R5 R4 K22 ["SubjectTypeKey"]
      262 GETIMPORT                        R5 K37 [newproxy]
      264 LOADB                            R6 1
      265 CALL                             R5 1 1
      266 FASTCALL1                        GETMETATABLE R5 ; [+3]
      267 MOVE                             R7 R5
      268 GETIMPORT                        R6 K39 [getmetatable]
      270 CALL                             R6 1 1
      271 LOADK                            R8 K56 ["SubjectRank"]
      272 NEWCLOSURE                       R7 P1
      273 CAPTURE                          VAL R8
      274 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      276 SETTABLEKS                       R5 R4 K23 ["SubjectRankKey"]
      278 GETIMPORT                        R5 K37 [newproxy]
      280 LOADB                            R6 1
      281 CALL                             R5 1 1
      282 FASTCALL1                        GETMETATABLE R5 ; [+3]
      283 MOVE                             R7 R5
      284 GETIMPORT                        R6 K39 [getmetatable]
      286 CALL                             R6 1 1
      287 LOADK                            R8 K57 ["GroupId"]
      288 NEWCLOSURE                       R7 P1
      289 CAPTURE                          VAL R8
      290 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      292 SETTABLEKS                       R5 R4 K24 ["GroupIdKey"]
      294 GETIMPORT                        R5 K37 [newproxy]
      296 LOADB                            R6 1
      297 CALL                             R5 1 1
      298 FASTCALL1                        GETMETATABLE R5 ; [+3]
      299 MOVE                             R7 R5
      300 GETIMPORT                        R6 K39 [getmetatable]
      302 CALL                             R6 1 1
      303 LOADK                            R8 K58 ["GroupName"]
      304 NEWCLOSURE                       R7 P1
      305 CAPTURE                          VAL R8
      306 SETTABLEKS                       R7 R6 K41 ["__tostring"]
      308 SETTABLEKS                       R5 R4 K25 ["GroupNameKey"]
      310 DUPTABLE                         R5 K63 [{["MaxSearchResultsPerSubjectType"] = 3, ["MaxPackageAssetIdsForHighestPermissionsRequest"] = 100}]
      311 GETTABLEKS                       R6 R2 K64 ["Dictionary"]
      313 GETTABLEKS                       R6 R6 K65 ["join"]
      315 MOVE                             R7 R4
      316 MOVE                             R8 R5
      317 CALL                             R6 2 -1
      318 RETURN                           R6 -1
