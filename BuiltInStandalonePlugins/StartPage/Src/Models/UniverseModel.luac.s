PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K5 ["id"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["id"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       28 LOADK                            R1 K7 ["\"id\" > Expected number, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["id"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["name"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["name"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
       50 LOADK                            R1 K10 ["\"name\" > Expected string, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["name"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K11 ["description"]
       63 JUMPIFNOT                        R1 ; [+19]
       64 GETTABLEKS                       R2 R0 K11 ["description"]
       66 FASTCALL1                        TYPEOF R2 ; [+2]
       67 GETIMPORT                        R1 K1 [typeof]
       69 CALL                             R1 1 1
       70 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
       72 LOADK                            R1 K12 ["\"description\" > Expected string, got %*"]
       73 GETTABLEKS                       R4 R0 K11 ["description"]
       75 FASTCALL1                        TYPEOF R4 ; [+2]
       76 GETIMPORT                        R3 K1 [typeof]
       78 CALL                             R3 1 1
       79 NAMECALL                         R1 R1 K4 ["format"]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1
       83 GETTABLEKS                       R1 R0 K13 ["rootPlaceId"]
       85 JUMPIFNOT                        R1 ; [+19]
       86 GETTABLEKS                       R2 R0 K13 ["rootPlaceId"]
       88 FASTCALL1                        TYPEOF R2 ; [+2]
       89 GETIMPORT                        R1 K1 [typeof]
       91 CALL                             R1 1 1
       92 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       94 LOADK                            R1 K14 ["\"rootPlaceId\" > Expected number, got %*"]
       95 GETTABLEKS                       R4 R0 K13 ["rootPlaceId"]
       97 FASTCALL1                        TYPEOF R4 ; [+2]
       98 GETIMPORT                        R3 K1 [typeof]
      100 CALL                             R3 1 1
      101 NAMECALL                         R1 R1 K4 ["format"]
      103 CALL                             R1 2 1
      104 RETURN                           R1 1
      105 GETTABLEKS                       R1 R0 K15 ["privacyType"]
      107 JUMPIFNOT                        R1 ; [+17]
      108 FASTCALL1                        TYPEOF R1 ; [+3]
      109 MOVE                             R3 R1
      110 GETIMPORT                        R2 K1 [typeof]
      112 CALL                             R2 1 1
      113 JUMPIFEQKS                       R2 K9 ["string"] ; [+11]
      115 LOADK                            R2 K16 ["\"privacyType\" > Expected string, got %*"]
      116 FASTCALL1                        TYPEOF R1 ; [+3]
      117 MOVE                             R5 R1
      118 GETIMPORT                        R4 K1 [typeof]
      120 CALL                             R4 1 1
      121 NAMECALL                         R2 R2 K4 ["format"]
      123 CALL                             R2 2 1
      124 RETURN                           R2 1
      125 GETTABLEKS                       R2 R0 K17 ["isFriendsOnly"]
      127 JUMPIFEQKNIL                     R2 ; [+20]
      129 GETTABLEKS                       R3 R0 K17 ["isFriendsOnly"]
      131 FASTCALL1                        TYPEOF R3 ; [+2]
      132 GETIMPORT                        R2 K1 [typeof]
      134 CALL                             R2 1 1
      135 JUMPIFEQKS                       R2 K18 ["boolean"] ; [+12]
      137 LOADK                            R2 K19 ["\"isFriendsOnly\" > Expected boolean, got %*"]
      138 GETTABLEKS                       R5 R0 K17 ["isFriendsOnly"]
      140 FASTCALL1                        TYPEOF R5 ; [+2]
      141 GETIMPORT                        R4 K1 [typeof]
      143 CALL                             R4 1 1
      144 NAMECALL                         R2 R2 K4 ["format"]
      146 CALL                             R2 2 1
      147 RETURN                           R2 1
      148 GETUPVAL                         R2 0
      149 JUMPIFNOT                        R2 ; [+48]
      150 GETTABLEKS                       R2 R0 K20 ["audiences"]
      152 JUMPIFEQKNIL                     R2 ; [+45]
      154 GETTABLEKS                       R3 R0 K20 ["audiences"]
      156 FASTCALL1                        TYPEOF R3 ; [+2]
      157 GETIMPORT                        R2 K1 [typeof]
      159 CALL                             R2 1 1
      160 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
      162 LOADK                            R2 K21 ["\"audiences\" > Expected table, got %*"]
      163 GETTABLEKS                       R5 R0 K20 ["audiences"]
      165 FASTCALL1                        TYPEOF R5 ; [+2]
      166 GETIMPORT                        R4 K1 [typeof]
      168 CALL                             R4 1 1
      169 NAMECALL                         R2 R2 K4 ["format"]
      171 CALL                             R2 2 1
      172 RETURN                           R2 1
      173 GETTABLEKS                       R2 R0 K20 ["audiences"]
      175 LOADNIL                          R3
      176 LOADNIL                          R4
      177 FORGPREP                         R2
      178 FASTCALL1                        TYPEOF R6 ; [+3]
      179 MOVE                             R8 R6
      180 GETIMPORT                        R7 K1 [typeof]
      182 CALL                             R7 1 1
      183 JUMPIFEQKS                       R7 K6 ["number"] ; [+12]
      185 LOADK                            R7 K22 ["\"audiences[%*]\" > Expected number, got %*"]
      186 MOVE                             R9 R5
      187 FASTCALL1                        TYPEOF R6 ; [+3]
      188 MOVE                             R11 R6
      189 GETIMPORT                        R10 K1 [typeof]
      191 CALL                             R10 1 1
      192 NAMECALL                         R7 R7 K4 ["format"]
      194 CALL                             R7 3 1
      195 RETURN                           R7 1
      196 FORGLOOP                         R2 2 ; [-19]
      198 GETTABLEKS                       R2 R0 K23 ["creatorTargetId"]
      200 JUMPIFNOT                        R2 ; [+19]
      201 GETTABLEKS                       R3 R0 K23 ["creatorTargetId"]
      203 FASTCALL1                        TYPEOF R3 ; [+2]
      204 GETIMPORT                        R2 K1 [typeof]
      206 CALL                             R2 1 1
      207 JUMPIFEQKS                       R2 K6 ["number"] ; [+12]
      209 LOADK                            R2 K24 ["\"creatorTargetId\" > Expected number, got %*"]
      210 GETTABLEKS                       R5 R0 K23 ["creatorTargetId"]
      212 FASTCALL1                        TYPEOF R5 ; [+2]
      213 GETIMPORT                        R4 K1 [typeof]
      215 CALL                             R4 1 1
      216 NAMECALL                         R2 R2 K4 ["format"]
      218 CALL                             R2 2 1
      219 RETURN                           R2 1
      220 GETTABLEKS                       R2 R0 K25 ["creatorType"]
      222 JUMPIFNOT                        R2 ; [+19]
      223 GETTABLEKS                       R3 R0 K25 ["creatorType"]
      225 FASTCALL1                        TYPEOF R3 ; [+2]
      226 GETIMPORT                        R2 K1 [typeof]
      228 CALL                             R2 1 1
      229 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      231 LOADK                            R2 K26 ["\"creatorType\" > Expected string, got %*"]
      232 GETTABLEKS                       R5 R0 K25 ["creatorType"]
      234 FASTCALL1                        TYPEOF R5 ; [+2]
      235 GETIMPORT                        R4 K1 [typeof]
      237 CALL                             R4 1 1
      238 NAMECALL                         R2 R2 K4 ["format"]
      240 CALL                             R2 2 1
      241 RETURN                           R2 1
      242 GETTABLEKS                       R2 R0 K27 ["creatorName"]
      244 JUMPIFNOT                        R2 ; [+19]
      245 GETTABLEKS                       R3 R0 K27 ["creatorName"]
      247 FASTCALL1                        TYPEOF R3 ; [+2]
      248 GETIMPORT                        R2 K1 [typeof]
      250 CALL                             R2 1 1
      251 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      253 LOADK                            R2 K28 ["\"creatorName\" > Expected string, got %*"]
      254 GETTABLEKS                       R5 R0 K27 ["creatorName"]
      256 FASTCALL1                        TYPEOF R5 ; [+2]
      257 GETIMPORT                        R4 K1 [typeof]
      259 CALL                             R4 1 1
      260 NAMECALL                         R2 R2 K4 ["format"]
      262 CALL                             R2 2 1
      263 RETURN                           R2 1
      264 GETTABLEKS                       R2 R0 K29 ["created"]
      266 JUMPIFNOT                        R2 ; [+19]
      267 GETTABLEKS                       R3 R0 K29 ["created"]
      269 FASTCALL1                        TYPEOF R3 ; [+2]
      270 GETIMPORT                        R2 K1 [typeof]
      272 CALL                             R2 1 1
      273 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      275 LOADK                            R2 K30 ["\"created\" > Expected string, got %*"]
      276 GETTABLEKS                       R5 R0 K29 ["created"]
      278 FASTCALL1                        TYPEOF R5 ; [+2]
      279 GETIMPORT                        R4 K1 [typeof]
      281 CALL                             R4 1 1
      282 NAMECALL                         R2 R2 K4 ["format"]
      284 CALL                             R2 2 1
      285 RETURN                           R2 1
      286 GETTABLEKS                       R2 R0 K31 ["updated"]
      288 JUMPIFNOT                        R2 ; [+19]
      289 GETTABLEKS                       R3 R0 K31 ["updated"]
      291 FASTCALL1                        TYPEOF R3 ; [+2]
      292 GETIMPORT                        R2 K1 [typeof]
      294 CALL                             R2 1 1
      295 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      297 LOADK                            R2 K32 ["\"updated\" > Expected string, got %*"]
      298 GETTABLEKS                       R5 R0 K31 ["updated"]
      300 FASTCALL1                        TYPEOF R5 ; [+2]
      301 GETIMPORT                        R4 K1 [typeof]
      303 CALL                             R4 1 1
      304 NAMECALL                         R2 R2 K4 ["format"]
      306 CALL                             R2 2 1
      307 RETURN                           R2 1
      308 LOADNIL                          R2
      309 RETURN                           R2 1

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
