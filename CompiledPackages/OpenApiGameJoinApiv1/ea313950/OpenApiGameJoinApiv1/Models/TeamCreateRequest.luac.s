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
       18 GETTABLEKS                       R1 R0 K5 ["gameJoinAttemptId"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["gameJoinAttemptId"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       29 LOADK                            R2 K7 ["\"gameJoinAttemptId\" > Expected string, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["gameJoinAttemptId"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["placeId"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["placeId"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["number"] ; [+13]
       52 LOADK                            R2 K10 ["\"placeId\" > Expected number, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["placeId"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["gamerTag"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["gamerTag"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"gamerTag\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["gamerTag"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["isPlayTogetherGame"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["isPlayTogetherGame"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+13]
       98 LOADK                            R2 K15 ["\"isPlayTogetherGame\" > Expected boolean, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["isPlayTogetherGame"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K16 ["browserTrackerId"]
      112 JUMPIFNOT                        R1 ; [+20]
      113 GETTABLEKS                       R2 R0 K16 ["browserTrackerId"]
      115 FASTCALL1                        TYPEOF R2 ; [+2]
      116 GETIMPORT                        R1 K1 [typeof]
      118 CALL                             R1 1 1
      119 JUMPIFEQKS                       R1 K9 ["number"] ; [+13]
      121 LOADK                            R2 K17 ["\"browserTrackerId\" > Expected number, got %*"]
      122 GETTABLEKS                       R5 R0 K16 ["browserTrackerId"]
      124 FASTCALL1                        TYPEOF R5 ; [+2]
      125 GETIMPORT                        R4 K1 [typeof]
      127 CALL                             R4 1 1
      128 NAMECALL                         R2 R2 K4 ["format"]
      130 CALL                             R2 2 1
      131 MOVE                             R1 R2
      132 RETURN                           R1 1
      133 GETTABLEKS                       R1 R0 K18 ["isTeleport"]
      135 JUMPIFNOT                        R1 ; [+20]
      136 GETTABLEKS                       R2 R0 K18 ["isTeleport"]
      138 FASTCALL1                        TYPEOF R2 ; [+2]
      139 GETIMPORT                        R1 K1 [typeof]
      141 CALL                             R1 1 1
      142 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+13]
      144 LOADK                            R2 K19 ["\"isTeleport\" > Expected boolean, got %*"]
      145 GETTABLEKS                       R5 R0 K18 ["isTeleport"]
      147 FASTCALL1                        TYPEOF R5 ; [+2]
      148 GETIMPORT                        R4 K1 [typeof]
      150 CALL                             R4 1 1
      151 NAMECALL                         R2 R2 K4 ["format"]
      153 CALL                             R2 2 1
      154 MOVE                             R1 R2
      155 RETURN                           R1 1
      156 GETTABLEKS                       R1 R0 K20 ["isQueueAllowedOverride"]
      158 JUMPIFNOT                        R1 ; [+20]
      159 GETTABLEKS                       R2 R0 K20 ["isQueueAllowedOverride"]
      161 FASTCALL1                        TYPEOF R2 ; [+2]
      162 GETIMPORT                        R1 K1 [typeof]
      164 CALL                             R1 1 1
      165 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+13]
      167 LOADK                            R2 K21 ["\"isQueueAllowedOverride\" > Expected boolean, got %*"]
      168 GETTABLEKS                       R5 R0 K20 ["isQueueAllowedOverride"]
      170 FASTCALL1                        TYPEOF R5 ; [+2]
      171 GETIMPORT                        R4 K1 [typeof]
      173 CALL                             R4 1 1
      174 NAMECALL                         R2 R2 K4 ["format"]
      176 CALL                             R2 2 1
      177 MOVE                             R1 R2
      178 RETURN                           R1 1
      179 GETTABLEKS                       R1 R0 K22 ["isImmersiveAdsTeleport"]
      181 JUMPIFNOT                        R1 ; [+20]
      182 GETTABLEKS                       R2 R0 K22 ["isImmersiveAdsTeleport"]
      184 FASTCALL1                        TYPEOF R2 ; [+2]
      185 GETIMPORT                        R1 K1 [typeof]
      187 CALL                             R1 1 1
      188 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+13]
      190 LOADK                            R2 K23 ["\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
      191 GETTABLEKS                       R5 R0 K22 ["isImmersiveAdsTeleport"]
      193 FASTCALL1                        TYPEOF R5 ; [+2]
      194 GETIMPORT                        R4 K1 [typeof]
      196 CALL                             R4 1 1
      197 NAMECALL                         R2 R2 K4 ["format"]
      199 CALL                             R2 2 1
      200 MOVE                             R1 R2
      201 RETURN                           R1 1
      202 GETTABLEKS                       R1 R0 K24 ["channelName"]
      204 JUMPIFNOT                        R1 ; [+20]
      205 GETTABLEKS                       R2 R0 K24 ["channelName"]
      207 FASTCALL1                        TYPEOF R2 ; [+2]
      208 GETIMPORT                        R1 K1 [typeof]
      210 CALL                             R1 1 1
      211 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
      213 LOADK                            R2 K25 ["\"channelName\" > Expected string, got %*"]
      214 GETTABLEKS                       R5 R0 K24 ["channelName"]
      216 FASTCALL1                        TYPEOF R5 ; [+2]
      217 GETIMPORT                        R4 K1 [typeof]
      219 CALL                             R4 1 1
      220 NAMECALL                         R2 R2 K4 ["format"]
      222 CALL                             R2 2 1
      223 MOVE                             R1 R2
      224 RETURN                           R1 1
      225 GETTABLEKS                       R1 R0 K26 ["joinOrigin"]
      227 JUMPIFNOT                        R1 ; [+20]
      228 GETTABLEKS                       R2 R0 K26 ["joinOrigin"]
      230 FASTCALL1                        TYPEOF R2 ; [+2]
      231 GETIMPORT                        R1 K1 [typeof]
      233 CALL                             R1 1 1
      234 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
      236 LOADK                            R2 K27 ["\"joinOrigin\" > Expected string, got %*"]
      237 GETTABLEKS                       R5 R0 K26 ["joinOrigin"]
      239 FASTCALL1                        TYPEOF R5 ; [+2]
      240 GETIMPORT                        R4 K1 [typeof]
      242 CALL                             R4 1 1
      243 NAMECALL                         R2 R2 K4 ["format"]
      245 CALL                             R2 2 1
      246 MOVE                             R1 R2
      247 RETURN                           R1 1
      248 GETTABLEKS                       R1 R0 K28 ["partyId"]
      250 JUMPIFNOT                        R1 ; [+20]
      251 GETTABLEKS                       R2 R0 K28 ["partyId"]
      253 FASTCALL1                        TYPEOF R2 ; [+2]
      254 GETIMPORT                        R1 K1 [typeof]
      256 CALL                             R1 1 1
      257 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
      259 LOADK                            R2 K29 ["\"partyId\" > Expected string, got %*"]
      260 GETTABLEKS                       R5 R0 K28 ["partyId"]
      262 FASTCALL1                        TYPEOF R5 ; [+2]
      263 GETIMPORT                        R4 K1 [typeof]
      265 CALL                             R4 1 1
      266 NAMECALL                         R2 R2 K4 ["format"]
      268 CALL                             R2 2 1
      269 MOVE                             R1 R2
      270 RETURN                           R1 1
      271 LOADNIL                          R1
      272 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 DUPTABLE                         R2 K5 [{"validate"}]
        5 SETTABLEKS                       R0 R2 K4 ["validate"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
