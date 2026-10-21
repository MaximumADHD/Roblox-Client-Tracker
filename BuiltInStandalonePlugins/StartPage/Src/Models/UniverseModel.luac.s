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
      148 GETTABLEKS                       R2 R0 K20 ["audiences"]
      150 JUMPIFEQKNIL                     R2 ; [+45]
      152 GETTABLEKS                       R3 R0 K20 ["audiences"]
      154 FASTCALL1                        TYPEOF R3 ; [+2]
      155 GETIMPORT                        R2 K1 [typeof]
      157 CALL                             R2 1 1
      158 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
      160 LOADK                            R2 K21 ["\"audiences\" > Expected table, got %*"]
      161 GETTABLEKS                       R5 R0 K20 ["audiences"]
      163 FASTCALL1                        TYPEOF R5 ; [+2]
      164 GETIMPORT                        R4 K1 [typeof]
      166 CALL                             R4 1 1
      167 NAMECALL                         R2 R2 K4 ["format"]
      169 CALL                             R2 2 1
      170 RETURN                           R2 1
      171 GETTABLEKS                       R2 R0 K20 ["audiences"]
      173 LOADNIL                          R3
      174 LOADNIL                          R4
      175 FORGPREP                         R2
      176 FASTCALL1                        TYPEOF R6 ; [+3]
      177 MOVE                             R8 R6
      178 GETIMPORT                        R7 K1 [typeof]
      180 CALL                             R7 1 1
      181 JUMPIFEQKS                       R7 K6 ["number"] ; [+12]
      183 LOADK                            R7 K22 ["\"audiences[%*]\" > Expected number, got %*"]
      184 MOVE                             R9 R5
      185 FASTCALL1                        TYPEOF R6 ; [+3]
      186 MOVE                             R11 R6
      187 GETIMPORT                        R10 K1 [typeof]
      189 CALL                             R10 1 1
      190 NAMECALL                         R7 R7 K4 ["format"]
      192 CALL                             R7 3 1
      193 RETURN                           R7 1
      194 FORGLOOP                         R2 2 ; [-19]
      196 GETTABLEKS                       R2 R0 K23 ["creatorTargetId"]
      198 JUMPIFNOT                        R2 ; [+19]
      199 GETTABLEKS                       R3 R0 K23 ["creatorTargetId"]
      201 FASTCALL1                        TYPEOF R3 ; [+2]
      202 GETIMPORT                        R2 K1 [typeof]
      204 CALL                             R2 1 1
      205 JUMPIFEQKS                       R2 K6 ["number"] ; [+12]
      207 LOADK                            R2 K24 ["\"creatorTargetId\" > Expected number, got %*"]
      208 GETTABLEKS                       R5 R0 K23 ["creatorTargetId"]
      210 FASTCALL1                        TYPEOF R5 ; [+2]
      211 GETIMPORT                        R4 K1 [typeof]
      213 CALL                             R4 1 1
      214 NAMECALL                         R2 R2 K4 ["format"]
      216 CALL                             R2 2 1
      217 RETURN                           R2 1
      218 GETTABLEKS                       R2 R0 K25 ["creatorType"]
      220 JUMPIFNOT                        R2 ; [+19]
      221 GETTABLEKS                       R3 R0 K25 ["creatorType"]
      223 FASTCALL1                        TYPEOF R3 ; [+2]
      224 GETIMPORT                        R2 K1 [typeof]
      226 CALL                             R2 1 1
      227 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      229 LOADK                            R2 K26 ["\"creatorType\" > Expected string, got %*"]
      230 GETTABLEKS                       R5 R0 K25 ["creatorType"]
      232 FASTCALL1                        TYPEOF R5 ; [+2]
      233 GETIMPORT                        R4 K1 [typeof]
      235 CALL                             R4 1 1
      236 NAMECALL                         R2 R2 K4 ["format"]
      238 CALL                             R2 2 1
      239 RETURN                           R2 1
      240 GETTABLEKS                       R2 R0 K27 ["creatorName"]
      242 JUMPIFNOT                        R2 ; [+19]
      243 GETTABLEKS                       R3 R0 K27 ["creatorName"]
      245 FASTCALL1                        TYPEOF R3 ; [+2]
      246 GETIMPORT                        R2 K1 [typeof]
      248 CALL                             R2 1 1
      249 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      251 LOADK                            R2 K28 ["\"creatorName\" > Expected string, got %*"]
      252 GETTABLEKS                       R5 R0 K27 ["creatorName"]
      254 FASTCALL1                        TYPEOF R5 ; [+2]
      255 GETIMPORT                        R4 K1 [typeof]
      257 CALL                             R4 1 1
      258 NAMECALL                         R2 R2 K4 ["format"]
      260 CALL                             R2 2 1
      261 RETURN                           R2 1
      262 GETTABLEKS                       R2 R0 K29 ["created"]
      264 JUMPIFNOT                        R2 ; [+19]
      265 GETTABLEKS                       R3 R0 K29 ["created"]
      267 FASTCALL1                        TYPEOF R3 ; [+2]
      268 GETIMPORT                        R2 K1 [typeof]
      270 CALL                             R2 1 1
      271 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      273 LOADK                            R2 K30 ["\"created\" > Expected string, got %*"]
      274 GETTABLEKS                       R5 R0 K29 ["created"]
      276 FASTCALL1                        TYPEOF R5 ; [+2]
      277 GETIMPORT                        R4 K1 [typeof]
      279 CALL                             R4 1 1
      280 NAMECALL                         R2 R2 K4 ["format"]
      282 CALL                             R2 2 1
      283 RETURN                           R2 1
      284 GETTABLEKS                       R2 R0 K31 ["updated"]
      286 JUMPIFNOT                        R2 ; [+19]
      287 GETTABLEKS                       R3 R0 K31 ["updated"]
      289 FASTCALL1                        TYPEOF R3 ; [+2]
      290 GETIMPORT                        R2 K1 [typeof]
      292 CALL                             R2 1 1
      293 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      295 LOADK                            R2 K32 ["\"updated\" > Expected string, got %*"]
      296 GETTABLEKS                       R5 R0 K31 ["updated"]
      298 FASTCALL1                        TYPEOF R5 ; [+2]
      299 GETIMPORT                        R4 K1 [typeof]
      301 CALL                             R4 1 1
      302 NAMECALL                         R2 R2 K4 ["format"]
      304 CALL                             R2 2 1
      305 RETURN                           R2 1
      306 GETTABLEKS                       R2 R0 K33 ["reachStatus"]
      308 JUMPIFEQKNIL                     R2 ; [+14]
      310 GETUPVAL                         R2 0
      311 GETTABLEKS                       R2 R2 K34 ["validate"]
      313 GETTABLEKS                       R3 R0 K33 ["reachStatus"]
      315 CALL                             R2 1 1
      316 JUMPIFNOT                        R2 ; [+6]
      317 LOADK                            R3 K35 ["\"reachStatus\" > %*"]
      318 MOVE                             R5 R2
      319 NAMECALL                         R3 R3 K4 ["format"]
      321 CALL                             R3 2 1
      322 RETURN                           R3 1
      323 LOADNIL                          R2
      324 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R3 K9 ["Models"]
       22 GETTABLEKS                       R3 R3 K10 ["UniverseReachStatusResponse"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 DUPTABLE                         R4 K13 [{"validate"}]
       28 SETTABLEKS                       R3 R4 K12 ["validate"]
       30 RETURN                           R4 1
