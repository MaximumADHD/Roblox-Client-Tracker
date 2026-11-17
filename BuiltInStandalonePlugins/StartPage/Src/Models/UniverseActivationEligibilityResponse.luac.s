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
       17 GETTABLEKS                       R1 R0 K5 ["isEligible"]
       19 JUMPIFEQKNIL                     R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["isEligible"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
       29 LOADK                            R1 K7 ["\"isEligible\" > Expected boolean, got %*"]
       30 GETTABLEKS                       R4 R0 K5 ["isEligible"]
       32 FASTCALL1                        TYPEOF R4 ; [+2]
       33 GETIMPORT                        R3 K1 [typeof]
       35 CALL                             R3 1 1
       36 NAMECALL                         R1 R1 K4 ["format"]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K8 ["maturityRated"]
       42 JUMPIFEQKNIL                     R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["maturityRated"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
       52 LOADK                            R1 K9 ["\"maturityRated\" > Expected boolean, got %*"]
       53 GETTABLEKS                       R4 R0 K8 ["maturityRated"]
       55 FASTCALL1                        TYPEOF R4 ; [+2]
       56 GETIMPORT                        R3 K1 [typeof]
       58 CALL                             R3 1 1
       59 NAMECALL                         R1 R1 K4 ["format"]
       61 CALL                             R1 2 1
       62 RETURN                           R1 1
       63 GETTABLEKS                       R1 R0 K10 ["isUserEligibleForPublicPublish"]
       65 JUMPIFEQKNIL                     R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K10 ["isUserEligibleForPublicPublish"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
       75 LOADK                            R1 K11 ["\"isUserEligibleForPublicPublish\" > Expected boolean, got %*"]
       76 GETTABLEKS                       R4 R0 K10 ["isUserEligibleForPublicPublish"]
       78 FASTCALL1                        TYPEOF R4 ; [+2]
       79 GETIMPORT                        R3 K1 [typeof]
       81 CALL                             R3 1 1
       82 NAMECALL                         R1 R1 K4 ["format"]
       84 CALL                             R1 2 1
       85 RETURN                           R1 1
       86 GETTABLEKS                       R1 R0 K12 ["remainingPublicPublishCount"]
       88 JUMPIFEQKNIL                     R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K12 ["remainingPublicPublishCount"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K13 ["number"] ; [+12]
       98 LOADK                            R1 K14 ["\"remainingPublicPublishCount\" > Expected number, got %*"]
       99 GETTABLEKS                       R4 R0 K12 ["remainingPublicPublishCount"]
      101 FASTCALL1                        TYPEOF R4 ; [+2]
      102 GETIMPORT                        R3 K1 [typeof]
      104 CALL                             R3 1 1
      105 NAMECALL                         R1 R1 K4 ["format"]
      107 CALL                             R1 2 1
      108 RETURN                           R1 1
      109 GETTABLEKS                       R1 R0 K15 ["isPublicPublish"]
      111 JUMPIFEQKNIL                     R1 ; [+20]
      113 GETTABLEKS                       R2 R0 K15 ["isPublicPublish"]
      115 FASTCALL1                        TYPEOF R2 ; [+2]
      116 GETIMPORT                        R1 K1 [typeof]
      118 CALL                             R1 1 1
      119 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
      121 LOADK                            R1 K16 ["\"isPublicPublish\" > Expected boolean, got %*"]
      122 GETTABLEKS                       R4 R0 K15 ["isPublicPublish"]
      124 FASTCALL1                        TYPEOF R4 ; [+2]
      125 GETIMPORT                        R3 K1 [typeof]
      127 CALL                             R3 1 1
      128 NAMECALL                         R1 R1 K4 ["format"]
      130 CALL                             R1 2 1
      131 RETURN                           R1 1
      132 GETTABLEKS                       R1 R0 K17 ["isPublishToExistingUniverse"]
      134 JUMPIFEQKNIL                     R1 ; [+20]
      136 GETTABLEKS                       R2 R0 K17 ["isPublishToExistingUniverse"]
      138 FASTCALL1                        TYPEOF R2 ; [+2]
      139 GETIMPORT                        R1 K1 [typeof]
      141 CALL                             R1 1 1
      142 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
      144 LOADK                            R1 K18 ["\"isPublishToExistingUniverse\" > Expected boolean, got %*"]
      145 GETTABLEKS                       R4 R0 K17 ["isPublishToExistingUniverse"]
      147 FASTCALL1                        TYPEOF R4 ; [+2]
      148 GETIMPORT                        R3 K1 [typeof]
      150 CALL                             R3 1 1
      151 NAMECALL                         R1 R1 K4 ["format"]
      153 CALL                             R1 2 1
      154 RETURN                           R1 1
      155 GETTABLEKS                       R1 R0 K19 ["isUniverseSelect"]
      157 JUMPIFEQKNIL                     R1 ; [+20]
      159 GETTABLEKS                       R2 R0 K19 ["isUniverseSelect"]
      161 FASTCALL1                        TYPEOF R2 ; [+2]
      162 GETIMPORT                        R1 K1 [typeof]
      164 CALL                             R1 1 1
      165 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
      167 LOADK                            R1 K20 ["\"isUniverseSelect\" > Expected boolean, got %*"]
      168 GETTABLEKS                       R4 R0 K19 ["isUniverseSelect"]
      170 FASTCALL1                        TYPEOF R4 ; [+2]
      171 GETIMPORT                        R3 K1 [typeof]
      173 CALL                             R3 1 1
      174 NAMECALL                         R1 R1 K4 ["format"]
      176 CALL                             R1 2 1
      177 RETURN                           R1 1
      178 GETTABLEKS                       R1 R0 K21 ["creatorTier"]
      180 JUMPIFEQKNIL                     R1 ; [+20]
      182 GETTABLEKS                       R2 R0 K21 ["creatorTier"]
      184 FASTCALL1                        TYPEOF R2 ; [+2]
      185 GETIMPORT                        R1 K1 [typeof]
      187 CALL                             R1 1 1
      188 JUMPIFEQKS                       R1 K13 ["number"] ; [+12]
      190 LOADK                            R1 K22 ["\"creatorTier\" > Expected number, got %*"]
      191 GETTABLEKS                       R4 R0 K21 ["creatorTier"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 NAMECALL                         R1 R1 K4 ["format"]
      199 CALL                             R1 2 1
      200 RETURN                           R1 1
      201 GETTABLEKS                       R1 R0 K23 ["allowedAudiences"]
      203 JUMPIFEQKNIL                     R1 ; [+45]
      205 GETTABLEKS                       R2 R0 K23 ["allowedAudiences"]
      207 FASTCALL1                        TYPEOF R2 ; [+2]
      208 GETIMPORT                        R1 K1 [typeof]
      210 CALL                             R1 1 1
      211 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
      213 LOADK                            R1 K24 ["\"allowedAudiences\" > Expected table, got %*"]
      214 GETTABLEKS                       R4 R0 K23 ["allowedAudiences"]
      216 FASTCALL1                        TYPEOF R4 ; [+2]
      217 GETIMPORT                        R3 K1 [typeof]
      219 CALL                             R3 1 1
      220 NAMECALL                         R1 R1 K4 ["format"]
      222 CALL                             R1 2 1
      223 RETURN                           R1 1
      224 GETTABLEKS                       R1 R0 K23 ["allowedAudiences"]
      226 LOADNIL                          R2
      227 LOADNIL                          R3
      228 FORGPREP                         R1
      229 FASTCALL1                        TYPEOF R5 ; [+3]
      230 MOVE                             R7 R5
      231 GETIMPORT                        R6 K1 [typeof]
      233 CALL                             R6 1 1
      234 JUMPIFEQKS                       R6 K13 ["number"] ; [+12]
      236 LOADK                            R6 K25 ["\"allowedAudiences\"[%*] > Expected number, got %*"]
      237 MOVE                             R8 R4
      238 FASTCALL1                        TYPEOF R5 ; [+3]
      239 MOVE                             R10 R5
      240 GETIMPORT                        R9 K1 [typeof]
      242 CALL                             R9 1 1
      243 NAMECALL                         R6 R6 K4 ["format"]
      245 CALL                             R6 3 1
      246 RETURN                           R6 1
      247 FORGLOOP                         R1 2 ; [-19]
      249 GETTABLEKS                       R1 R0 K26 ["provisionalRatingAllowed"]
      251 JUMPIFEQKNIL                     R1 ; [+20]
      253 GETTABLEKS                       R2 R0 K26 ["provisionalRatingAllowed"]
      255 FASTCALL1                        TYPEOF R2 ; [+2]
      256 GETIMPORT                        R1 K1 [typeof]
      258 CALL                             R1 1 1
      259 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+12]
      261 LOADK                            R1 K27 ["\"provisionalRatingAllowed\" > Expected boolean, got %*"]
      262 GETTABLEKS                       R4 R0 K26 ["provisionalRatingAllowed"]
      264 FASTCALL1                        TYPEOF R4 ; [+2]
      265 GETIMPORT                        R3 K1 [typeof]
      267 CALL                             R3 1 1
      268 NAMECALL                         R1 R1 K4 ["format"]
      270 CALL                             R1 2 1
      271 RETURN                           R1 1
      272 LOADNIL                          R1
      273 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
