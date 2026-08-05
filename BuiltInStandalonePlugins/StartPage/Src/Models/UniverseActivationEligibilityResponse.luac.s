PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K4 ["table"] ; [+12]
       12 LOADK                            R2 K5 ["Expected table, got %*"]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R5 R0
       15 GETIMPORT                        R4 K3 [typeof]
       17 CALL                             R4 1 1
       18 NAMECALL                         R2 R2 K6 ["format"]
       20 CALL                             R2 2 1
       21 MOVE                             R1 R2
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K7 ["isEligible"]
       25 JUMPIFEQKNIL                     R1 ; [+21]
       27 GETTABLEKS                       R2 R0 K7 ["isEligible"]
       29 FASTCALL1                        TYPEOF R2 ; [+2]
       30 GETIMPORT                        R1 K3 [typeof]
       32 CALL                             R1 1 1
       33 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
       35 LOADK                            R2 K9 ["\"isEligible\" > Expected boolean, got %*"]
       36 GETTABLEKS                       R5 R0 K7 ["isEligible"]
       38 FASTCALL1                        TYPEOF R5 ; [+2]
       39 GETIMPORT                        R4 K3 [typeof]
       41 CALL                             R4 1 1
       42 NAMECALL                         R2 R2 K6 ["format"]
       44 CALL                             R2 2 1
       45 MOVE                             R1 R2
       46 RETURN                           R1 1
       47 GETTABLEKS                       R1 R0 K10 ["maturityRated"]
       49 JUMPIFEQKNIL                     R1 ; [+21]
       51 GETTABLEKS                       R2 R0 K10 ["maturityRated"]
       53 FASTCALL1                        TYPEOF R2 ; [+2]
       54 GETIMPORT                        R1 K3 [typeof]
       56 CALL                             R1 1 1
       57 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
       59 LOADK                            R2 K11 ["\"maturityRated\" > Expected boolean, got %*"]
       60 GETTABLEKS                       R5 R0 K10 ["maturityRated"]
       62 FASTCALL1                        TYPEOF R5 ; [+2]
       63 GETIMPORT                        R4 K3 [typeof]
       65 CALL                             R4 1 1
       66 NAMECALL                         R2 R2 K6 ["format"]
       68 CALL                             R2 2 1
       69 MOVE                             R1 R2
       70 RETURN                           R1 1
       71 GETTABLEKS                       R1 R0 K12 ["isUserEligibleForPublicPublish"]
       73 JUMPIFEQKNIL                     R1 ; [+21]
       75 GETTABLEKS                       R2 R0 K12 ["isUserEligibleForPublicPublish"]
       77 FASTCALL1                        TYPEOF R2 ; [+2]
       78 GETIMPORT                        R1 K3 [typeof]
       80 CALL                             R1 1 1
       81 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
       83 LOADK                            R2 K13 ["\"isUserEligibleForPublicPublish\" > Expected boolean, got %*"]
       84 GETTABLEKS                       R5 R0 K12 ["isUserEligibleForPublicPublish"]
       86 FASTCALL1                        TYPEOF R5 ; [+2]
       87 GETIMPORT                        R4 K3 [typeof]
       89 CALL                             R4 1 1
       90 NAMECALL                         R2 R2 K6 ["format"]
       92 CALL                             R2 2 1
       93 MOVE                             R1 R2
       94 RETURN                           R1 1
       95 GETTABLEKS                       R1 R0 K14 ["remainingPublicPublishCount"]
       97 JUMPIFEQKNIL                     R1 ; [+21]
       99 GETTABLEKS                       R2 R0 K14 ["remainingPublicPublishCount"]
      101 FASTCALL1                        TYPEOF R2 ; [+2]
      102 GETIMPORT                        R1 K3 [typeof]
      104 CALL                             R1 1 1
      105 JUMPIFEQKS                       R1 K15 ["number"] ; [+13]
      107 LOADK                            R2 K16 ["\"remainingPublicPublishCount\" > Expected number, got %*"]
      108 GETTABLEKS                       R5 R0 K14 ["remainingPublicPublishCount"]
      110 FASTCALL1                        TYPEOF R5 ; [+2]
      111 GETIMPORT                        R4 K3 [typeof]
      113 CALL                             R4 1 1
      114 NAMECALL                         R2 R2 K6 ["format"]
      116 CALL                             R2 2 1
      117 MOVE                             R1 R2
      118 RETURN                           R1 1
      119 GETTABLEKS                       R1 R0 K17 ["isPublicPublish"]
      121 JUMPIFEQKNIL                     R1 ; [+21]
      123 GETTABLEKS                       R2 R0 K17 ["isPublicPublish"]
      125 FASTCALL1                        TYPEOF R2 ; [+2]
      126 GETIMPORT                        R1 K3 [typeof]
      128 CALL                             R1 1 1
      129 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
      131 LOADK                            R2 K18 ["\"isPublicPublish\" > Expected boolean, got %*"]
      132 GETTABLEKS                       R5 R0 K17 ["isPublicPublish"]
      134 FASTCALL1                        TYPEOF R5 ; [+2]
      135 GETIMPORT                        R4 K3 [typeof]
      137 CALL                             R4 1 1
      138 NAMECALL                         R2 R2 K6 ["format"]
      140 CALL                             R2 2 1
      141 MOVE                             R1 R2
      142 RETURN                           R1 1
      143 GETTABLEKS                       R1 R0 K19 ["isPublishToExistingUniverse"]
      145 JUMPIFEQKNIL                     R1 ; [+21]
      147 GETTABLEKS                       R2 R0 K19 ["isPublishToExistingUniverse"]
      149 FASTCALL1                        TYPEOF R2 ; [+2]
      150 GETIMPORT                        R1 K3 [typeof]
      152 CALL                             R1 1 1
      153 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
      155 LOADK                            R2 K20 ["\"isPublishToExistingUniverse\" > Expected boolean, got %*"]
      156 GETTABLEKS                       R5 R0 K19 ["isPublishToExistingUniverse"]
      158 FASTCALL1                        TYPEOF R5 ; [+2]
      159 GETIMPORT                        R4 K3 [typeof]
      161 CALL                             R4 1 1
      162 NAMECALL                         R2 R2 K6 ["format"]
      164 CALL                             R2 2 1
      165 MOVE                             R1 R2
      166 RETURN                           R1 1
      167 GETTABLEKS                       R1 R0 K21 ["isUniverseSelect"]
      169 JUMPIFEQKNIL                     R1 ; [+21]
      171 GETTABLEKS                       R2 R0 K21 ["isUniverseSelect"]
      173 FASTCALL1                        TYPEOF R2 ; [+2]
      174 GETIMPORT                        R1 K3 [typeof]
      176 CALL                             R1 1 1
      177 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
      179 LOADK                            R2 K22 ["\"isUniverseSelect\" > Expected boolean, got %*"]
      180 GETTABLEKS                       R5 R0 K21 ["isUniverseSelect"]
      182 FASTCALL1                        TYPEOF R5 ; [+2]
      183 GETIMPORT                        R4 K3 [typeof]
      185 CALL                             R4 1 1
      186 NAMECALL                         R2 R2 K6 ["format"]
      188 CALL                             R2 2 1
      189 MOVE                             R1 R2
      190 RETURN                           R1 1
      191 GETTABLEKS                       R1 R0 K23 ["creatorTier"]
      193 JUMPIFEQKNIL                     R1 ; [+21]
      195 GETTABLEKS                       R2 R0 K23 ["creatorTier"]
      197 FASTCALL1                        TYPEOF R2 ; [+2]
      198 GETIMPORT                        R1 K3 [typeof]
      200 CALL                             R1 1 1
      201 JUMPIFEQKS                       R1 K15 ["number"] ; [+13]
      203 LOADK                            R2 K24 ["\"creatorTier\" > Expected number, got %*"]
      204 GETTABLEKS                       R5 R0 K23 ["creatorTier"]
      206 FASTCALL1                        TYPEOF R5 ; [+2]
      207 GETIMPORT                        R4 K3 [typeof]
      209 CALL                             R4 1 1
      210 NAMECALL                         R2 R2 K6 ["format"]
      212 CALL                             R2 2 1
      213 MOVE                             R1 R2
      214 RETURN                           R1 1
      215 GETTABLEKS                       R1 R0 K25 ["allowedAudiences"]
      217 JUMPIFEQKNIL                     R1 ; [+47]
      219 GETTABLEKS                       R2 R0 K25 ["allowedAudiences"]
      221 FASTCALL1                        TYPEOF R2 ; [+2]
      222 GETIMPORT                        R1 K3 [typeof]
      224 CALL                             R1 1 1
      225 JUMPIFEQKS                       R1 K4 ["table"] ; [+13]
      227 LOADK                            R2 K26 ["\"allowedAudiences\" > Expected table, got %*"]
      228 GETTABLEKS                       R5 R0 K25 ["allowedAudiences"]
      230 FASTCALL1                        TYPEOF R5 ; [+2]
      231 GETIMPORT                        R4 K3 [typeof]
      233 CALL                             R4 1 1
      234 NAMECALL                         R2 R2 K6 ["format"]
      236 CALL                             R2 2 1
      237 MOVE                             R1 R2
      238 RETURN                           R1 1
      239 GETTABLEKS                       R1 R0 K25 ["allowedAudiences"]
      241 LOADNIL                          R2
      242 LOADNIL                          R3
      243 FORGPREP                         R1
      244 FASTCALL1                        TYPEOF R5 ; [+3]
      245 MOVE                             R7 R5
      246 GETIMPORT                        R6 K3 [typeof]
      248 CALL                             R6 1 1
      249 JUMPIFEQKS                       R6 K15 ["number"] ; [+13]
      251 LOADK                            R7 K27 ["\"allowedAudiences\"[%*] > Expected number, got %*"]
      252 MOVE                             R9 R4
      253 FASTCALL1                        TYPEOF R5 ; [+3]
      254 MOVE                             R11 R5
      255 GETIMPORT                        R10 K3 [typeof]
      257 CALL                             R10 1 1
      258 NAMECALL                         R7 R7 K6 ["format"]
      260 CALL                             R7 3 1
      261 MOVE                             R6 R7
      262 RETURN                           R6 1
      263 FORGLOOP                         R1 2 ; [-20]
      265 GETTABLEKS                       R1 R0 K28 ["provisionalRatingAllowed"]
      267 JUMPIFEQKNIL                     R1 ; [+21]
      269 GETTABLEKS                       R2 R0 K28 ["provisionalRatingAllowed"]
      271 FASTCALL1                        TYPEOF R2 ; [+2]
      272 GETIMPORT                        R1 K3 [typeof]
      274 CALL                             R1 1 1
      275 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+13]
      277 LOADK                            R2 K29 ["\"provisionalRatingAllowed\" > Expected boolean, got %*"]
      278 GETTABLEKS                       R5 R0 K28 ["provisionalRatingAllowed"]
      280 FASTCALL1                        TYPEOF R5 ; [+2]
      281 GETIMPORT                        R4 K3 [typeof]
      283 CALL                             R4 1 1
      284 NAMECALL                         R2 R2 K6 ["format"]
      286 CALL                             R2 2 1
      287 MOVE                             R1 R2
      288 RETURN                           R1 1
      289 LOADNIL                          R1
      290 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStartPageAddBuildSealBadge"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 DUPCLOSURE                       R2 K9 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 DUPTABLE                         R3 K11 [{"validate"}]
       20 SETTABLEKS                       R2 R3 K10 ["validate"]
       22 RETURN                           R3 1
