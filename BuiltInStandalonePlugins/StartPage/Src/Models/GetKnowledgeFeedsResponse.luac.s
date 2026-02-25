PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["url"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
        8 LOADK                            R1 K4 ["Expected string for thumbnail.url"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K0 ["url"]
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETTABLEKS                       R1 R0 K0 ["url"]
       15 LOADK                            R3 K5 ["^https://"]
       16 NAMECALL                         R1 R1 K6 ["match"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+6]
       20 LOADK                            R2 K7 ["https://prod.docsiteassets.roblox.com"]
       21 GETTABLEKS                       R3 R0 K0 ["url"]
       23 CONCAT                           R1 R2 R3
       24 SETTABLEKS                       R1 R0 K0 ["url"]
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["feedType"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
        8 LOADK                            R1 K4 ["Expected string for feedItem.feedType"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K5 ["id"]
       12 FASTCALL1                        TYPEOF R2 ; [+2]
       13 GETIMPORT                        R1 K2 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K3 ["string"] ; [+11]
       18 GETTABLEKS                       R2 R0 K5 ["id"]
       20 FASTCALL1                        TYPEOF R2 ; [+2]
       21 GETIMPORT                        R1 K2 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
       26 LOADK                            R1 K7 ["Expected string or number for feedItem.id"]
       27 RETURN                           R1 1
       28 GETTABLEKS                       R1 R0 K8 ["title"]
       30 JUMPIFNOT                        R1 ; [+10]
       31 GETTABLEKS                       R2 R0 K8 ["title"]
       33 FASTCALL1                        TYPEOF R2 ; [+2]
       34 GETIMPORT                        R1 K2 [typeof]
       36 CALL                             R1 1 1
       37 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
       39 LOADK                            R1 K9 ["Expected string for feedItem.title"]
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K10 ["titleKey"]
       43 JUMPIFNOT                        R1 ; [+10]
       44 GETTABLEKS                       R2 R0 K10 ["titleKey"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K2 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
       52 LOADK                            R1 K11 ["Expected string for feedItem.titleKey"]
       53 RETURN                           R1 1
       54 GETTABLEKS                       R1 R0 K12 ["description"]
       56 JUMPIFNOT                        R1 ; [+10]
       57 GETTABLEKS                       R2 R0 K12 ["description"]
       59 FASTCALL1                        TYPEOF R2 ; [+2]
       60 GETIMPORT                        R1 K2 [typeof]
       62 CALL                             R1 1 1
       63 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
       65 LOADK                            R1 K13 ["Expected string for feedItem.description"]
       66 RETURN                           R1 1
       67 GETTABLEKS                       R1 R0 K14 ["descriptionKey"]
       69 JUMPIFNOT                        R1 ; [+10]
       70 GETTABLEKS                       R2 R0 K14 ["descriptionKey"]
       72 FASTCALL1                        TYPEOF R2 ; [+2]
       73 GETIMPORT                        R1 K2 [typeof]
       75 CALL                             R1 1 1
       76 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
       78 LOADK                            R1 K15 ["Expected string for feedItem.descriptionKey"]
       79 RETURN                           R1 1
       80 GETTABLEKS                       R1 R0 K16 ["order"]
       82 JUMPIFNOT                        R1 ; [+10]
       83 GETTABLEKS                       R2 R0 K16 ["order"]
       85 FASTCALL1                        TYPEOF R2 ; [+2]
       86 GETIMPORT                        R1 K2 [typeof]
       88 CALL                             R1 1 1
       89 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
       91 LOADK                            R1 K17 ["Expected number for feedItem.order"]
       92 RETURN                           R1 1
       93 GETTABLEKS                       R1 R0 K18 ["thumbnails"]
       95 JUMPIFNOT                        R1 ; [+10]
       96 GETTABLEKS                       R2 R0 K18 ["thumbnails"]
       98 FASTCALL1                        TYPEOF R2 ; [+2]
       99 GETIMPORT                        R1 K2 [typeof]
      101 CALL                             R1 1 1
      102 JUMPIFEQKS                       R1 K19 ["table"] ; [+3]
      104 LOADK                            R1 K20 ["Expected table for feedItem.thumbnails"]
      105 RETURN                           R1 1
      106 GETTABLEKS                       R1 R0 K18 ["thumbnails"]
      108 JUMPIFNOT                        R1 ; [+37]
      109 GETIMPORT                        R1 K22 [pairs]
      111 GETTABLEKS                       R2 R0 K18 ["thumbnails"]
      113 CALL                             R1 1 3
      114 FORGPREP_NEXT                    R1
      115 GETTABLEKS                       R8 R5 K23 ["url"]
      117 FASTCALL1                        TYPEOF R8 ; [+2]
      118 GETIMPORT                        R7 K2 [typeof]
      120 CALL                             R7 1 1
      121 JUMPIFEQKS                       R7 K3 ["string"] ; [+3]
      123 LOADK                            R6 K24 ["Expected string for thumbnail.url"]
      124 JUMP                             ; [+17]
      125 GETTABLEKS                       R7 R5 K23 ["url"]
      127 JUMPIFNOT                        R7 ; [+13]
      128 GETTABLEKS                       R7 R5 K23 ["url"]
      130 LOADK                            R9 K25 ["^https://"]
      131 NAMECALL                         R7 R7 K26 ["match"]
      133 CALL                             R7 2 1
      134 JUMPIF                           R7 ; [+6]
      135 LOADK                            R8 K27 ["https://prod.docsiteassets.roblox.com"]
      136 GETTABLEKS                       R9 R5 K23 ["url"]
      138 CONCAT                           R7 R8 R9
      139 SETTABLEKS                       R7 R5 K23 ["url"]
      141 LOADNIL                          R6
      142 JUMPIFNOT                        R6 ; [+1]
      143 RETURN                           R6 1
      144 FORGLOOP                         R1 2 ; [-30]
      146 GETTABLEKS                       R1 R0 K23 ["url"]
      148 JUMPIFNOT                        R1 ; [+10]
      149 GETTABLEKS                       R2 R0 K23 ["url"]
      151 FASTCALL1                        TYPEOF R2 ; [+2]
      152 GETIMPORT                        R1 K2 [typeof]
      154 CALL                             R1 1 1
      155 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      157 LOADK                            R1 K28 ["Expected string for feedItem.url"]
      158 RETURN                           R1 1
      159 GETTABLEKS                       R1 R0 K29 ["duration"]
      161 JUMPIFNOT                        R1 ; [+10]
      162 GETTABLEKS                       R2 R0 K29 ["duration"]
      164 FASTCALL1                        TYPEOF R2 ; [+2]
      165 GETIMPORT                        R1 K2 [typeof]
      167 CALL                             R1 1 1
      168 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      170 LOADK                            R1 K30 ["Expected number for feedItem.duration"]
      171 RETURN                           R1 1
      172 GETTABLEKS                       R1 R0 K31 ["badge"]
      174 JUMPIFNOT                        R1 ; [+10]
      175 GETTABLEKS                       R2 R0 K31 ["badge"]
      177 FASTCALL1                        TYPEOF R2 ; [+2]
      178 GETIMPORT                        R1 K2 [typeof]
      180 CALL                             R1 1 1
      181 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      183 LOADK                            R1 K32 ["Expected string for feedItem.badge"]
      184 RETURN                           R1 1
      185 GETTABLEKS                       R1 R0 K33 ["authorAvatarUrl"]
      187 JUMPIFNOT                        R1 ; [+10]
      188 GETTABLEKS                       R2 R0 K33 ["authorAvatarUrl"]
      190 FASTCALL1                        TYPEOF R2 ; [+2]
      191 GETIMPORT                        R1 K2 [typeof]
      193 CALL                             R1 1 1
      194 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      196 LOADK                            R1 K34 ["Expected string for feedItem.authorAvatarUrl"]
      197 RETURN                           R1 1
      198 GETTABLEKS                       R1 R0 K35 ["authorName"]
      200 JUMPIFNOT                        R1 ; [+10]
      201 GETTABLEKS                       R2 R0 K35 ["authorName"]
      203 FASTCALL1                        TYPEOF R2 ; [+2]
      204 GETIMPORT                        R1 K2 [typeof]
      206 CALL                             R1 1 1
      207 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      209 LOADK                            R1 K36 ["Expected string for feedItem.authorName"]
      210 RETURN                           R1 1
      211 GETTABLEKS                       R1 R0 K37 ["authorUserId"]
      213 JUMPIFNOT                        R1 ; [+10]
      214 GETTABLEKS                       R2 R0 K37 ["authorUserId"]
      216 FASTCALL1                        TYPEOF R2 ; [+2]
      217 GETIMPORT                        R1 K2 [typeof]
      219 CALL                             R1 1 1
      220 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      222 LOADK                            R1 K38 ["Expected string for feedItem.authorUserId"]
      223 RETURN                           R1 1
      224 GETTABLEKS                       R1 R0 K39 ["createdAtUtcTime"]
      226 JUMPIFNOT                        R1 ; [+10]
      227 GETTABLEKS                       R2 R0 K39 ["createdAtUtcTime"]
      229 FASTCALL1                        TYPEOF R2 ; [+2]
      230 GETIMPORT                        R1 K2 [typeof]
      232 CALL                             R1 1 1
      233 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      235 LOADK                            R1 K40 ["Expected string for feedItem.createdAtUtcTime"]
      236 RETURN                           R1 1
      237 GETTABLEKS                       R1 R0 K41 ["startedAtUtcTime"]
      239 JUMPIFNOT                        R1 ; [+10]
      240 GETTABLEKS                       R2 R0 K41 ["startedAtUtcTime"]
      242 FASTCALL1                        TYPEOF R2 ; [+2]
      243 GETIMPORT                        R1 K2 [typeof]
      245 CALL                             R1 1 1
      246 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      248 LOADK                            R1 K42 ["Expected string for feedItem.startedAtUtcTime"]
      249 RETURN                           R1 1
      250 GETTABLEKS                       R1 R0 K43 ["endedAtUtcTime"]
      252 JUMPIFNOT                        R1 ; [+10]
      253 GETTABLEKS                       R2 R0 K43 ["endedAtUtcTime"]
      255 FASTCALL1                        TYPEOF R2 ; [+2]
      256 GETIMPORT                        R1 K2 [typeof]
      258 CALL                             R1 1 1
      259 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
      261 LOADK                            R1 K44 ["Expected string for feedItem.endedAtUtcTime"]
      262 RETURN                           R1 1
      263 GETTABLEKS                       R1 R0 K45 ["likeCount"]
      265 JUMPIFNOT                        R1 ; [+10]
      266 GETTABLEKS                       R2 R0 K45 ["likeCount"]
      268 FASTCALL1                        TYPEOF R2 ; [+2]
      269 GETIMPORT                        R1 K2 [typeof]
      271 CALL                             R1 1 1
      272 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
      274 LOADK                            R1 K46 ["Expected number for feedItem.likeCount"]
      275 RETURN                           R1 1
      276 GETTABLEKS                       R1 R0 K47 ["commentCount"]
      278 JUMPIFNOT                        R1 ; [+10]
      279 GETTABLEKS                       R2 R0 K47 ["commentCount"]
      281 FASTCALL1                        TYPEOF R2 ; [+2]
      282 GETIMPORT                        R1 K2 [typeof]
      284 CALL                             R1 1 1
      285 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
      287 LOADK                            R1 K48 ["Expected number for feedItem.commentCount"]
      288 RETURN                           R1 1
      289 GETTABLEKS                       R1 R0 K49 ["launchTutorialOnClick"]
      291 JUMPIFNOT                        R1 ; [+10]
      292 GETTABLEKS                       R2 R0 K49 ["launchTutorialOnClick"]
      294 FASTCALL1                        TYPEOF R2 ; [+2]
      295 GETIMPORT                        R1 K2 [typeof]
      297 CALL                             R1 1 1
      298 JUMPIFEQKS                       R1 K50 ["boolean"] ; [+3]
      300 LOADK                            R1 K51 ["Expected boolean for feedItem.launchTutorialOnClick"]
      301 RETURN                           R1 1
      302 LOADNIL                          R1
      303 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["currentPage"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["currentPage"]
        5 FASTCALL1                        TYPEOF R2 ; [+2]
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
       11 LOADK                            R1 K4 ["Expected number for meta.currentPage"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K5 ["lastPage"]
       15 JUMPIFNOT                        R1 ; [+10]
       16 GETTABLEKS                       R2 R0 K5 ["lastPage"]
       18 FASTCALL1                        TYPEOF R2 ; [+2]
       19 GETIMPORT                        R1 K2 [typeof]
       21 CALL                             R1 1 1
       22 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
       24 LOADK                            R1 K6 ["Expected number for meta.lastPage"]
       25 RETURN                           R1 1
       26 GETTABLEKS                       R1 R0 K7 ["perPage"]
       28 JUMPIFNOT                        R1 ; [+10]
       29 GETTABLEKS                       R2 R0 K7 ["perPage"]
       31 FASTCALL1                        TYPEOF R2 ; [+2]
       32 GETIMPORT                        R1 K2 [typeof]
       34 CALL                             R1 1 1
       35 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
       37 LOADK                            R1 K8 ["Expected number for meta.perPage"]
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K9 ["total"]
       41 JUMPIFNOT                        R1 ; [+10]
       42 GETTABLEKS                       R2 R0 K9 ["total"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K2 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
       50 LOADK                            R1 K10 ["Expected number for meta.total"]
       51 RETURN                           R1 1
       52 LOADNIL                          R1
       53 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R2 R0 K5 ["feedItems"]
       20 FASTCALL1                        TYPEOF R2 ; [+2]
       21 GETIMPORT                        R1 K1 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       26 LOADK                            R1 K6 ["Expected table for feedItems"]
       27 RETURN                           R1 1
       28 GETIMPORT                        R1 K8 [ipairs]
       30 GETTABLEKS                       R2 R0 K5 ["feedItems"]
       32 CALL                             R1 1 3
       33 FORGPREP_INEXT                   R1
       34 GETUPVAL                         R6 0
       35 MOVE                             R7 R5
       36 CALL                             R6 1 1
       37 JUMPIFNOT                        R6 ; [+1]
       38 RETURN                           R6 1
       39 FORGLOOP                         R1 2 [inext] ; [-6]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R2 R0 K9 ["meta"]
       44 CALL                             R1 1 1
       45 JUMPIFNOT                        R1 ; [+1]
       46 RETURN                           R1 1
       47 LOADNIL                          R2
       48 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 DUPTABLE                         R4 K5 [{"validate"}]
        8 SETTABLEKS                       R3 R4 K4 ["validate"]
       10 RETURN                           R4 1
