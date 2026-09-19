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
       17 GETTABLEKS                       R1 R0 K5 ["gameJoinAttemptId"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["gameJoinAttemptId"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       28 LOADK                            R1 K7 ["\"gameJoinAttemptId\" > Expected string, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["gameJoinAttemptId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["placeId"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["placeId"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["number"] ; [+12]
       50 LOADK                            R1 K10 ["\"placeId\" > Expected number, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["placeId"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K11 ["gamerTag"]
       63 JUMPIFNOT                        R1 ; [+19]
       64 GETTABLEKS                       R2 R0 K11 ["gamerTag"]
       66 FASTCALL1                        TYPEOF R2 ; [+2]
       67 GETIMPORT                        R1 K1 [typeof]
       69 CALL                             R1 1 1
       70 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       72 LOADK                            R1 K12 ["\"gamerTag\" > Expected string, got %*"]
       73 GETTABLEKS                       R4 R0 K11 ["gamerTag"]
       75 FASTCALL1                        TYPEOF R4 ; [+2]
       76 GETIMPORT                        R3 K1 [typeof]
       78 CALL                             R3 1 1
       79 NAMECALL                         R1 R1 K4 ["format"]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1
       83 GETTABLEKS                       R1 R0 K13 ["isPlayTogetherGame"]
       85 JUMPIFNOT                        R1 ; [+19]
       86 GETTABLEKS                       R2 R0 K13 ["isPlayTogetherGame"]
       88 FASTCALL1                        TYPEOF R2 ; [+2]
       89 GETIMPORT                        R1 K1 [typeof]
       91 CALL                             R1 1 1
       92 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+12]
       94 LOADK                            R1 K15 ["\"isPlayTogetherGame\" > Expected boolean, got %*"]
       95 GETTABLEKS                       R4 R0 K13 ["isPlayTogetherGame"]
       97 FASTCALL1                        TYPEOF R4 ; [+2]
       98 GETIMPORT                        R3 K1 [typeof]
      100 CALL                             R3 1 1
      101 NAMECALL                         R1 R1 K4 ["format"]
      103 CALL                             R1 2 1
      104 RETURN                           R1 1
      105 GETTABLEKS                       R1 R0 K16 ["browserTrackerId"]
      107 JUMPIFNOT                        R1 ; [+19]
      108 GETTABLEKS                       R2 R0 K16 ["browserTrackerId"]
      110 FASTCALL1                        TYPEOF R2 ; [+2]
      111 GETIMPORT                        R1 K1 [typeof]
      113 CALL                             R1 1 1
      114 JUMPIFEQKS                       R1 K9 ["number"] ; [+12]
      116 LOADK                            R1 K17 ["\"browserTrackerId\" > Expected number, got %*"]
      117 GETTABLEKS                       R4 R0 K16 ["browserTrackerId"]
      119 FASTCALL1                        TYPEOF R4 ; [+2]
      120 GETIMPORT                        R3 K1 [typeof]
      122 CALL                             R3 1 1
      123 NAMECALL                         R1 R1 K4 ["format"]
      125 CALL                             R1 2 1
      126 RETURN                           R1 1
      127 GETTABLEKS                       R1 R0 K18 ["isTeleport"]
      129 JUMPIFNOT                        R1 ; [+19]
      130 GETTABLEKS                       R2 R0 K18 ["isTeleport"]
      132 FASTCALL1                        TYPEOF R2 ; [+2]
      133 GETIMPORT                        R1 K1 [typeof]
      135 CALL                             R1 1 1
      136 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+12]
      138 LOADK                            R1 K19 ["\"isTeleport\" > Expected boolean, got %*"]
      139 GETTABLEKS                       R4 R0 K18 ["isTeleport"]
      141 FASTCALL1                        TYPEOF R4 ; [+2]
      142 GETIMPORT                        R3 K1 [typeof]
      144 CALL                             R3 1 1
      145 NAMECALL                         R1 R1 K4 ["format"]
      147 CALL                             R1 2 1
      148 RETURN                           R1 1
      149 GETTABLEKS                       R1 R0 K20 ["isQueueAllowedOverride"]
      151 JUMPIFNOT                        R1 ; [+19]
      152 GETTABLEKS                       R2 R0 K20 ["isQueueAllowedOverride"]
      154 FASTCALL1                        TYPEOF R2 ; [+2]
      155 GETIMPORT                        R1 K1 [typeof]
      157 CALL                             R1 1 1
      158 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+12]
      160 LOADK                            R1 K21 ["\"isQueueAllowedOverride\" > Expected boolean, got %*"]
      161 GETTABLEKS                       R4 R0 K20 ["isQueueAllowedOverride"]
      163 FASTCALL1                        TYPEOF R4 ; [+2]
      164 GETIMPORT                        R3 K1 [typeof]
      166 CALL                             R3 1 1
      167 NAMECALL                         R1 R1 K4 ["format"]
      169 CALL                             R1 2 1
      170 RETURN                           R1 1
      171 GETTABLEKS                       R1 R0 K22 ["isImmersiveAdsTeleport"]
      173 JUMPIFNOT                        R1 ; [+19]
      174 GETTABLEKS                       R2 R0 K22 ["isImmersiveAdsTeleport"]
      176 FASTCALL1                        TYPEOF R2 ; [+2]
      177 GETIMPORT                        R1 K1 [typeof]
      179 CALL                             R1 1 1
      180 JUMPIFEQKS                       R1 K14 ["boolean"] ; [+12]
      182 LOADK                            R1 K23 ["\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
      183 GETTABLEKS                       R4 R0 K22 ["isImmersiveAdsTeleport"]
      185 FASTCALL1                        TYPEOF R4 ; [+2]
      186 GETIMPORT                        R3 K1 [typeof]
      188 CALL                             R3 1 1
      189 NAMECALL                         R1 R1 K4 ["format"]
      191 CALL                             R1 2 1
      192 RETURN                           R1 1
      193 GETTABLEKS                       R1 R0 K24 ["channelName"]
      195 JUMPIFNOT                        R1 ; [+19]
      196 GETTABLEKS                       R2 R0 K24 ["channelName"]
      198 FASTCALL1                        TYPEOF R2 ; [+2]
      199 GETIMPORT                        R1 K1 [typeof]
      201 CALL                             R1 1 1
      202 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
      204 LOADK                            R1 K25 ["\"channelName\" > Expected string, got %*"]
      205 GETTABLEKS                       R4 R0 K24 ["channelName"]
      207 FASTCALL1                        TYPEOF R4 ; [+2]
      208 GETIMPORT                        R3 K1 [typeof]
      210 CALL                             R3 1 1
      211 NAMECALL                         R1 R1 K4 ["format"]
      213 CALL                             R1 2 1
      214 RETURN                           R1 1
      215 GETTABLEKS                       R1 R0 K26 ["joinOrigin"]
      217 JUMPIFNOT                        R1 ; [+19]
      218 GETTABLEKS                       R2 R0 K26 ["joinOrigin"]
      220 FASTCALL1                        TYPEOF R2 ; [+2]
      221 GETIMPORT                        R1 K1 [typeof]
      223 CALL                             R1 1 1
      224 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
      226 LOADK                            R1 K27 ["\"joinOrigin\" > Expected string, got %*"]
      227 GETTABLEKS                       R4 R0 K26 ["joinOrigin"]
      229 FASTCALL1                        TYPEOF R4 ; [+2]
      230 GETIMPORT                        R3 K1 [typeof]
      232 CALL                             R3 1 1
      233 NAMECALL                         R1 R1 K4 ["format"]
      235 CALL                             R1 2 1
      236 RETURN                           R1 1
      237 GETTABLEKS                       R1 R0 K28 ["partyId"]
      239 JUMPIFNOT                        R1 ; [+19]
      240 GETTABLEKS                       R2 R0 K28 ["partyId"]
      242 FASTCALL1                        TYPEOF R2 ; [+2]
      243 GETIMPORT                        R1 K1 [typeof]
      245 CALL                             R1 1 1
      246 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
      248 LOADK                            R1 K29 ["\"partyId\" > Expected string, got %*"]
      249 GETTABLEKS                       R4 R0 K28 ["partyId"]
      251 FASTCALL1                        TYPEOF R4 ; [+2]
      252 GETIMPORT                        R3 K1 [typeof]
      254 CALL                             R3 1 1
      255 NAMECALL                         R1 R1 K4 ["format"]
      257 CALL                             R1 2 1
      258 RETURN                           R1 1
      259 LOADNIL                          R1
      260 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 DUPTABLE                         R2 K5 [{"validate"}]
        5 SETTABLEKS                       R0 R2 K4 ["validate"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
