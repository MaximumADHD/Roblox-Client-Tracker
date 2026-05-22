PROTO_0:
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
       18 GETTABLEKS                       R1 R0 K5 ["id"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["id"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       29 LOADK                            R2 K7 ["\"id\" > Expected number, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["id"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["name"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["name"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       52 LOADK                            R2 K10 ["\"name\" > Expected string, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["name"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["description"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["description"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"description\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["description"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["rootPlaceId"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["rootPlaceId"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       98 LOADK                            R2 K14 ["\"rootPlaceId\" > Expected number, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["rootPlaceId"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K15 ["privacyType"]
      112 JUMPIFNOT                        R1 ; [+18]
      113 FASTCALL1                        TYPEOF R1 ; [+3]
      114 MOVE                             R3 R1
      115 GETIMPORT                        R2 K1 [typeof]
      117 CALL                             R2 1 1
      118 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      120 LOADK                            R3 K16 ["\"privacyType\" > Expected string, got %*"]
      121 FASTCALL1                        TYPEOF R1 ; [+3]
      122 MOVE                             R6 R1
      123 GETIMPORT                        R5 K1 [typeof]
      125 CALL                             R5 1 1
      126 NAMECALL                         R3 R3 K4 ["format"]
      128 CALL                             R3 2 1
      129 MOVE                             R2 R3
      130 RETURN                           R2 1
      131 GETTABLEKS                       R2 R0 K17 ["isFriendsOnly"]
      133 JUMPIFEQKNIL                     R2 ; [+21]
      135 GETTABLEKS                       R3 R0 K17 ["isFriendsOnly"]
      137 FASTCALL1                        TYPEOF R3 ; [+2]
      138 GETIMPORT                        R2 K1 [typeof]
      140 CALL                             R2 1 1
      141 JUMPIFEQKS                       R2 K18 ["boolean"] ; [+13]
      143 LOADK                            R3 K19 ["\"isFriendsOnly\" > Expected boolean, got %*"]
      144 GETTABLEKS                       R6 R0 K17 ["isFriendsOnly"]
      146 FASTCALL1                        TYPEOF R6 ; [+2]
      147 GETIMPORT                        R5 K1 [typeof]
      149 CALL                             R5 1 1
      150 NAMECALL                         R3 R3 K4 ["format"]
      152 CALL                             R3 2 1
      153 MOVE                             R2 R3
      154 RETURN                           R2 1
      155 GETUPVAL                         R2 0
      156 JUMPIFNOT                        R2 ; [+50]
      157 GETTABLEKS                       R2 R0 K20 ["audiences"]
      159 JUMPIFEQKNIL                     R2 ; [+47]
      161 GETTABLEKS                       R3 R0 K20 ["audiences"]
      163 FASTCALL1                        TYPEOF R3 ; [+2]
      164 GETIMPORT                        R2 K1 [typeof]
      166 CALL                             R2 1 1
      167 JUMPIFEQKS                       R2 K2 ["table"] ; [+13]
      169 LOADK                            R3 K21 ["\"audiences\" > Expected table, got %*"]
      170 GETTABLEKS                       R6 R0 K20 ["audiences"]
      172 FASTCALL1                        TYPEOF R6 ; [+2]
      173 GETIMPORT                        R5 K1 [typeof]
      175 CALL                             R5 1 1
      176 NAMECALL                         R3 R3 K4 ["format"]
      178 CALL                             R3 2 1
      179 MOVE                             R2 R3
      180 RETURN                           R2 1
      181 GETTABLEKS                       R2 R0 K20 ["audiences"]
      183 LOADNIL                          R3
      184 LOADNIL                          R4
      185 FORGPREP                         R2
      186 FASTCALL1                        TYPEOF R6 ; [+3]
      187 MOVE                             R8 R6
      188 GETIMPORT                        R7 K1 [typeof]
      190 CALL                             R7 1 1
      191 JUMPIFEQKS                       R7 K6 ["number"] ; [+13]
      193 LOADK                            R8 K22 ["\"audiences[%*]\" > Expected number, got %*"]
      194 MOVE                             R10 R5
      195 FASTCALL1                        TYPEOF R6 ; [+3]
      196 MOVE                             R12 R6
      197 GETIMPORT                        R11 K1 [typeof]
      199 CALL                             R11 1 1
      200 NAMECALL                         R8 R8 K4 ["format"]
      202 CALL                             R8 3 1
      203 MOVE                             R7 R8
      204 RETURN                           R7 1
      205 FORGLOOP                         R2 2 ; [-20]
      207 GETTABLEKS                       R2 R0 K23 ["creatorTargetId"]
      209 JUMPIFNOT                        R2 ; [+20]
      210 GETTABLEKS                       R3 R0 K23 ["creatorTargetId"]
      212 FASTCALL1                        TYPEOF R3 ; [+2]
      213 GETIMPORT                        R2 K1 [typeof]
      215 CALL                             R2 1 1
      216 JUMPIFEQKS                       R2 K6 ["number"] ; [+13]
      218 LOADK                            R3 K24 ["\"creatorTargetId\" > Expected number, got %*"]
      219 GETTABLEKS                       R6 R0 K23 ["creatorTargetId"]
      221 FASTCALL1                        TYPEOF R6 ; [+2]
      222 GETIMPORT                        R5 K1 [typeof]
      224 CALL                             R5 1 1
      225 NAMECALL                         R3 R3 K4 ["format"]
      227 CALL                             R3 2 1
      228 MOVE                             R2 R3
      229 RETURN                           R2 1
      230 GETTABLEKS                       R2 R0 K25 ["creatorType"]
      232 JUMPIFNOT                        R2 ; [+20]
      233 GETTABLEKS                       R3 R0 K25 ["creatorType"]
      235 FASTCALL1                        TYPEOF R3 ; [+2]
      236 GETIMPORT                        R2 K1 [typeof]
      238 CALL                             R2 1 1
      239 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      241 LOADK                            R3 K26 ["\"creatorType\" > Expected string, got %*"]
      242 GETTABLEKS                       R6 R0 K25 ["creatorType"]
      244 FASTCALL1                        TYPEOF R6 ; [+2]
      245 GETIMPORT                        R5 K1 [typeof]
      247 CALL                             R5 1 1
      248 NAMECALL                         R3 R3 K4 ["format"]
      250 CALL                             R3 2 1
      251 MOVE                             R2 R3
      252 RETURN                           R2 1
      253 GETTABLEKS                       R2 R0 K27 ["creatorName"]
      255 JUMPIFNOT                        R2 ; [+20]
      256 GETTABLEKS                       R3 R0 K27 ["creatorName"]
      258 FASTCALL1                        TYPEOF R3 ; [+2]
      259 GETIMPORT                        R2 K1 [typeof]
      261 CALL                             R2 1 1
      262 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      264 LOADK                            R3 K28 ["\"creatorName\" > Expected string, got %*"]
      265 GETTABLEKS                       R6 R0 K27 ["creatorName"]
      267 FASTCALL1                        TYPEOF R6 ; [+2]
      268 GETIMPORT                        R5 K1 [typeof]
      270 CALL                             R5 1 1
      271 NAMECALL                         R3 R3 K4 ["format"]
      273 CALL                             R3 2 1
      274 MOVE                             R2 R3
      275 RETURN                           R2 1
      276 GETTABLEKS                       R2 R0 K29 ["created"]
      278 JUMPIFNOT                        R2 ; [+20]
      279 GETTABLEKS                       R3 R0 K29 ["created"]
      281 FASTCALL1                        TYPEOF R3 ; [+2]
      282 GETIMPORT                        R2 K1 [typeof]
      284 CALL                             R2 1 1
      285 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      287 LOADK                            R3 K30 ["\"created\" > Expected string, got %*"]
      288 GETTABLEKS                       R6 R0 K29 ["created"]
      290 FASTCALL1                        TYPEOF R6 ; [+2]
      291 GETIMPORT                        R5 K1 [typeof]
      293 CALL                             R5 1 1
      294 NAMECALL                         R3 R3 K4 ["format"]
      296 CALL                             R3 2 1
      297 MOVE                             R2 R3
      298 RETURN                           R2 1
      299 GETTABLEKS                       R2 R0 K31 ["updated"]
      301 JUMPIFNOT                        R2 ; [+20]
      302 GETTABLEKS                       R3 R0 K31 ["updated"]
      304 FASTCALL1                        TYPEOF R3 ; [+2]
      305 GETIMPORT                        R2 K1 [typeof]
      307 CALL                             R2 1 1
      308 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      310 LOADK                            R3 K32 ["\"updated\" > Expected string, got %*"]
      311 GETTABLEKS                       R6 R0 K31 ["updated"]
      313 FASTCALL1                        TYPEOF R6 ; [+2]
      314 GETIMPORT                        R5 K1 [typeof]
      316 CALL                             R5 1 1
      317 NAMECALL                         R3 R3 K4 ["format"]
      319 CALL                             R3 2 1
      320 MOVE                             R2 R3
      321 RETURN                           R2 1
      322 LOADNIL                          R2
      323 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 GETTABLEKS                       R2 R2 K8 ["Audience"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["SharedFlags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagLuaStartPageAudiencesReplacement"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 DUPCLOSURE                       R3 K11 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 DUPTABLE                         R4 K13 [{"validate"}]
       29 SETTABLEKS                       R3 R4 K12 ["validate"]
       31 RETURN                           R4 1
