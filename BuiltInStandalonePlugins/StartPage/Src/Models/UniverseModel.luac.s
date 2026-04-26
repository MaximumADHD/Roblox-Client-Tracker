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
      155 GETTABLEKS                       R2 R0 K20 ["creatorTargetId"]
      157 JUMPIFNOT                        R2 ; [+20]
      158 GETTABLEKS                       R3 R0 K20 ["creatorTargetId"]
      160 FASTCALL1                        TYPEOF R3 ; [+2]
      161 GETIMPORT                        R2 K1 [typeof]
      163 CALL                             R2 1 1
      164 JUMPIFEQKS                       R2 K6 ["number"] ; [+13]
      166 LOADK                            R3 K21 ["\"creatorTargetId\" > Expected number, got %*"]
      167 GETTABLEKS                       R6 R0 K20 ["creatorTargetId"]
      169 FASTCALL1                        TYPEOF R6 ; [+2]
      170 GETIMPORT                        R5 K1 [typeof]
      172 CALL                             R5 1 1
      173 NAMECALL                         R3 R3 K4 ["format"]
      175 CALL                             R3 2 1
      176 MOVE                             R2 R3
      177 RETURN                           R2 1
      178 GETTABLEKS                       R2 R0 K22 ["creatorType"]
      180 JUMPIFNOT                        R2 ; [+20]
      181 GETTABLEKS                       R3 R0 K22 ["creatorType"]
      183 FASTCALL1                        TYPEOF R3 ; [+2]
      184 GETIMPORT                        R2 K1 [typeof]
      186 CALL                             R2 1 1
      187 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      189 LOADK                            R3 K23 ["\"creatorType\" > Expected string, got %*"]
      190 GETTABLEKS                       R6 R0 K22 ["creatorType"]
      192 FASTCALL1                        TYPEOF R6 ; [+2]
      193 GETIMPORT                        R5 K1 [typeof]
      195 CALL                             R5 1 1
      196 NAMECALL                         R3 R3 K4 ["format"]
      198 CALL                             R3 2 1
      199 MOVE                             R2 R3
      200 RETURN                           R2 1
      201 GETTABLEKS                       R2 R0 K24 ["creatorName"]
      203 JUMPIFNOT                        R2 ; [+20]
      204 GETTABLEKS                       R3 R0 K24 ["creatorName"]
      206 FASTCALL1                        TYPEOF R3 ; [+2]
      207 GETIMPORT                        R2 K1 [typeof]
      209 CALL                             R2 1 1
      210 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      212 LOADK                            R3 K25 ["\"creatorName\" > Expected string, got %*"]
      213 GETTABLEKS                       R6 R0 K24 ["creatorName"]
      215 FASTCALL1                        TYPEOF R6 ; [+2]
      216 GETIMPORT                        R5 K1 [typeof]
      218 CALL                             R5 1 1
      219 NAMECALL                         R3 R3 K4 ["format"]
      221 CALL                             R3 2 1
      222 MOVE                             R2 R3
      223 RETURN                           R2 1
      224 GETTABLEKS                       R2 R0 K26 ["created"]
      226 JUMPIFNOT                        R2 ; [+20]
      227 GETTABLEKS                       R3 R0 K26 ["created"]
      229 FASTCALL1                        TYPEOF R3 ; [+2]
      230 GETIMPORT                        R2 K1 [typeof]
      232 CALL                             R2 1 1
      233 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      235 LOADK                            R3 K27 ["\"created\" > Expected string, got %*"]
      236 GETTABLEKS                       R6 R0 K26 ["created"]
      238 FASTCALL1                        TYPEOF R6 ; [+2]
      239 GETIMPORT                        R5 K1 [typeof]
      241 CALL                             R5 1 1
      242 NAMECALL                         R3 R3 K4 ["format"]
      244 CALL                             R3 2 1
      245 MOVE                             R2 R3
      246 RETURN                           R2 1
      247 GETTABLEKS                       R2 R0 K28 ["updated"]
      249 JUMPIFNOT                        R2 ; [+20]
      250 GETTABLEKS                       R3 R0 K28 ["updated"]
      252 FASTCALL1                        TYPEOF R3 ; [+2]
      253 GETIMPORT                        R2 K1 [typeof]
      255 CALL                             R2 1 1
      256 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      258 LOADK                            R3 K29 ["\"updated\" > Expected string, got %*"]
      259 GETTABLEKS                       R6 R0 K28 ["updated"]
      261 FASTCALL1                        TYPEOF R6 ; [+2]
      262 GETIMPORT                        R5 K1 [typeof]
      264 CALL                             R5 1 1
      265 NAMECALL                         R3 R3 K4 ["format"]
      267 CALL                             R3 2 1
      268 MOVE                             R2 R3
      269 RETURN                           R2 1
      270 LOADNIL                          R2
      271 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
