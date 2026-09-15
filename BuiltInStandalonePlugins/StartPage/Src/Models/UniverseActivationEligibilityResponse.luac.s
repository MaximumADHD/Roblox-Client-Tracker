PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K4 ["table"] ; [+11]
       12 LOADK                            R1 K5 ["Expected table, got %*"]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K3 [typeof]
       17 CALL                             R3 1 1
       18 NAMECALL                         R1 R1 K6 ["format"]
       20 CALL                             R1 2 1
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K7 ["isEligible"]
       24 JUMPIFEQKNIL                     R1 ; [+20]
       26 GETTABLEKS                       R2 R0 K7 ["isEligible"]
       28 FASTCALL1                        TYPEOF R2 ; [+2]
       29 GETIMPORT                        R1 K3 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
       34 LOADK                            R1 K9 ["\"isEligible\" > Expected boolean, got %*"]
       35 GETTABLEKS                       R4 R0 K7 ["isEligible"]
       37 FASTCALL1                        TYPEOF R4 ; [+2]
       38 GETIMPORT                        R3 K3 [typeof]
       40 CALL                             R3 1 1
       41 NAMECALL                         R1 R1 K6 ["format"]
       43 CALL                             R1 2 1
       44 RETURN                           R1 1
       45 GETTABLEKS                       R1 R0 K10 ["maturityRated"]
       47 JUMPIFEQKNIL                     R1 ; [+20]
       49 GETTABLEKS                       R2 R0 K10 ["maturityRated"]
       51 FASTCALL1                        TYPEOF R2 ; [+2]
       52 GETIMPORT                        R1 K3 [typeof]
       54 CALL                             R1 1 1
       55 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
       57 LOADK                            R1 K11 ["\"maturityRated\" > Expected boolean, got %*"]
       58 GETTABLEKS                       R4 R0 K10 ["maturityRated"]
       60 FASTCALL1                        TYPEOF R4 ; [+2]
       61 GETIMPORT                        R3 K3 [typeof]
       63 CALL                             R3 1 1
       64 NAMECALL                         R1 R1 K6 ["format"]
       66 CALL                             R1 2 1
       67 RETURN                           R1 1
       68 GETTABLEKS                       R1 R0 K12 ["isUserEligibleForPublicPublish"]
       70 JUMPIFEQKNIL                     R1 ; [+20]
       72 GETTABLEKS                       R2 R0 K12 ["isUserEligibleForPublicPublish"]
       74 FASTCALL1                        TYPEOF R2 ; [+2]
       75 GETIMPORT                        R1 K3 [typeof]
       77 CALL                             R1 1 1
       78 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
       80 LOADK                            R1 K13 ["\"isUserEligibleForPublicPublish\" > Expected boolean, got %*"]
       81 GETTABLEKS                       R4 R0 K12 ["isUserEligibleForPublicPublish"]
       83 FASTCALL1                        TYPEOF R4 ; [+2]
       84 GETIMPORT                        R3 K3 [typeof]
       86 CALL                             R3 1 1
       87 NAMECALL                         R1 R1 K6 ["format"]
       89 CALL                             R1 2 1
       90 RETURN                           R1 1
       91 GETTABLEKS                       R1 R0 K14 ["remainingPublicPublishCount"]
       93 JUMPIFEQKNIL                     R1 ; [+20]
       95 GETTABLEKS                       R2 R0 K14 ["remainingPublicPublishCount"]
       97 FASTCALL1                        TYPEOF R2 ; [+2]
       98 GETIMPORT                        R1 K3 [typeof]
      100 CALL                             R1 1 1
      101 JUMPIFEQKS                       R1 K15 ["number"] ; [+12]
      103 LOADK                            R1 K16 ["\"remainingPublicPublishCount\" > Expected number, got %*"]
      104 GETTABLEKS                       R4 R0 K14 ["remainingPublicPublishCount"]
      106 FASTCALL1                        TYPEOF R4 ; [+2]
      107 GETIMPORT                        R3 K3 [typeof]
      109 CALL                             R3 1 1
      110 NAMECALL                         R1 R1 K6 ["format"]
      112 CALL                             R1 2 1
      113 RETURN                           R1 1
      114 GETTABLEKS                       R1 R0 K17 ["isPublicPublish"]
      116 JUMPIFEQKNIL                     R1 ; [+20]
      118 GETTABLEKS                       R2 R0 K17 ["isPublicPublish"]
      120 FASTCALL1                        TYPEOF R2 ; [+2]
      121 GETIMPORT                        R1 K3 [typeof]
      123 CALL                             R1 1 1
      124 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
      126 LOADK                            R1 K18 ["\"isPublicPublish\" > Expected boolean, got %*"]
      127 GETTABLEKS                       R4 R0 K17 ["isPublicPublish"]
      129 FASTCALL1                        TYPEOF R4 ; [+2]
      130 GETIMPORT                        R3 K3 [typeof]
      132 CALL                             R3 1 1
      133 NAMECALL                         R1 R1 K6 ["format"]
      135 CALL                             R1 2 1
      136 RETURN                           R1 1
      137 GETTABLEKS                       R1 R0 K19 ["isPublishToExistingUniverse"]
      139 JUMPIFEQKNIL                     R1 ; [+20]
      141 GETTABLEKS                       R2 R0 K19 ["isPublishToExistingUniverse"]
      143 FASTCALL1                        TYPEOF R2 ; [+2]
      144 GETIMPORT                        R1 K3 [typeof]
      146 CALL                             R1 1 1
      147 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
      149 LOADK                            R1 K20 ["\"isPublishToExistingUniverse\" > Expected boolean, got %*"]
      150 GETTABLEKS                       R4 R0 K19 ["isPublishToExistingUniverse"]
      152 FASTCALL1                        TYPEOF R4 ; [+2]
      153 GETIMPORT                        R3 K3 [typeof]
      155 CALL                             R3 1 1
      156 NAMECALL                         R1 R1 K6 ["format"]
      158 CALL                             R1 2 1
      159 RETURN                           R1 1
      160 GETTABLEKS                       R1 R0 K21 ["isUniverseSelect"]
      162 JUMPIFEQKNIL                     R1 ; [+20]
      164 GETTABLEKS                       R2 R0 K21 ["isUniverseSelect"]
      166 FASTCALL1                        TYPEOF R2 ; [+2]
      167 GETIMPORT                        R1 K3 [typeof]
      169 CALL                             R1 1 1
      170 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
      172 LOADK                            R1 K22 ["\"isUniverseSelect\" > Expected boolean, got %*"]
      173 GETTABLEKS                       R4 R0 K21 ["isUniverseSelect"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K3 [typeof]
      178 CALL                             R3 1 1
      179 NAMECALL                         R1 R1 K6 ["format"]
      181 CALL                             R1 2 1
      182 RETURN                           R1 1
      183 GETTABLEKS                       R1 R0 K23 ["creatorTier"]
      185 JUMPIFEQKNIL                     R1 ; [+20]
      187 GETTABLEKS                       R2 R0 K23 ["creatorTier"]
      189 FASTCALL1                        TYPEOF R2 ; [+2]
      190 GETIMPORT                        R1 K3 [typeof]
      192 CALL                             R1 1 1
      193 JUMPIFEQKS                       R1 K15 ["number"] ; [+12]
      195 LOADK                            R1 K24 ["\"creatorTier\" > Expected number, got %*"]
      196 GETTABLEKS                       R4 R0 K23 ["creatorTier"]
      198 FASTCALL1                        TYPEOF R4 ; [+2]
      199 GETIMPORT                        R3 K3 [typeof]
      201 CALL                             R3 1 1
      202 NAMECALL                         R1 R1 K6 ["format"]
      204 CALL                             R1 2 1
      205 RETURN                           R1 1
      206 GETTABLEKS                       R1 R0 K25 ["allowedAudiences"]
      208 JUMPIFEQKNIL                     R1 ; [+45]
      210 GETTABLEKS                       R2 R0 K25 ["allowedAudiences"]
      212 FASTCALL1                        TYPEOF R2 ; [+2]
      213 GETIMPORT                        R1 K3 [typeof]
      215 CALL                             R1 1 1
      216 JUMPIFEQKS                       R1 K4 ["table"] ; [+12]
      218 LOADK                            R1 K26 ["\"allowedAudiences\" > Expected table, got %*"]
      219 GETTABLEKS                       R4 R0 K25 ["allowedAudiences"]
      221 FASTCALL1                        TYPEOF R4 ; [+2]
      222 GETIMPORT                        R3 K3 [typeof]
      224 CALL                             R3 1 1
      225 NAMECALL                         R1 R1 K6 ["format"]
      227 CALL                             R1 2 1
      228 RETURN                           R1 1
      229 GETTABLEKS                       R1 R0 K25 ["allowedAudiences"]
      231 LOADNIL                          R2
      232 LOADNIL                          R3
      233 FORGPREP                         R1
      234 FASTCALL1                        TYPEOF R5 ; [+3]
      235 MOVE                             R7 R5
      236 GETIMPORT                        R6 K3 [typeof]
      238 CALL                             R6 1 1
      239 JUMPIFEQKS                       R6 K15 ["number"] ; [+12]
      241 LOADK                            R6 K27 ["\"allowedAudiences\"[%*] > Expected number, got %*"]
      242 MOVE                             R8 R4
      243 FASTCALL1                        TYPEOF R5 ; [+3]
      244 MOVE                             R10 R5
      245 GETIMPORT                        R9 K3 [typeof]
      247 CALL                             R9 1 1
      248 NAMECALL                         R6 R6 K6 ["format"]
      250 CALL                             R6 3 1
      251 RETURN                           R6 1
      252 FORGLOOP                         R1 2 ; [-19]
      254 GETTABLEKS                       R1 R0 K28 ["provisionalRatingAllowed"]
      256 JUMPIFEQKNIL                     R1 ; [+20]
      258 GETTABLEKS                       R2 R0 K28 ["provisionalRatingAllowed"]
      260 FASTCALL1                        TYPEOF R2 ; [+2]
      261 GETIMPORT                        R1 K3 [typeof]
      263 CALL                             R1 1 1
      264 JUMPIFEQKS                       R1 K8 ["boolean"] ; [+12]
      266 LOADK                            R1 K29 ["\"provisionalRatingAllowed\" > Expected boolean, got %*"]
      267 GETTABLEKS                       R4 R0 K28 ["provisionalRatingAllowed"]
      269 FASTCALL1                        TYPEOF R4 ; [+2]
      270 GETIMPORT                        R3 K3 [typeof]
      272 CALL                             R3 1 1
      273 NAMECALL                         R1 R1 K6 ["format"]
      275 CALL                             R1 2 1
      276 RETURN                           R1 1
      277 LOADNIL                          R1
      278 RETURN                           R1 1

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
