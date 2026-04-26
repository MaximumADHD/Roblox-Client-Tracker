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
       18 GETTABLEKS                       R1 R0 K5 ["ageRecommendationDetails"]
       20 JUMPIFNOT                        R1 ; [+106]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
       28 LOADK                            R3 K6 ["\"ageRecommendationDetails\" > Expected table, got %*"]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R6 R1
       31 GETIMPORT                        R5 K1 [typeof]
       33 CALL                             R5 1 1
       34 NAMECALL                         R3 R3 K4 ["format"]
       36 CALL                             R3 2 1
       37 MOVE                             R2 R3
       38 RETURN                           R2 1
       39 GETTABLEKS                       R2 R1 K7 ["ageRecommendationSummary"]
       41 JUMPIFNOT                        R2 ; [+85]
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K1 [typeof]
       46 CALL                             R3 1 1
       47 JUMPIFEQKS                       R3 K2 ["table"] ; [+12]
       49 LOADK                            R4 K8 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > Expected table, got %*"]
       50 FASTCALL1                        TYPEOF R2 ; [+3]
       51 MOVE                             R7 R2
       52 GETIMPORT                        R6 K1 [typeof]
       54 CALL                             R6 1 1
       55 NAMECALL                         R4 R4 K4 ["format"]
       57 CALL                             R4 2 1
       58 MOVE                             R3 R4
       59 RETURN                           R3 1
       60 GETTABLEKS                       R3 R2 K9 ["ageRecommendation"]
       62 JUMPIFNOT                        R3 ; [+64]
       63 FASTCALL1                        TYPEOF R3 ; [+3]
       64 MOVE                             R5 R3
       65 GETIMPORT                        R4 K1 [typeof]
       67 CALL                             R4 1 1
       68 JUMPIFEQKS                       R4 K2 ["table"] ; [+12]
       70 LOADK                            R5 K10 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > Expected table, got %*"]
       71 FASTCALL1                        TYPEOF R3 ; [+3]
       72 MOVE                             R8 R3
       73 GETIMPORT                        R7 K1 [typeof]
       75 CALL                             R7 1 1
       76 NAMECALL                         R5 R5 K4 ["format"]
       78 CALL                             R5 2 1
       79 MOVE                             R4 R5
       80 RETURN                           R4 1
       81 GETTABLEKS                       R4 R3 K11 ["minimumAge"]
       83 JUMPIFNOT                        R4 ; [+20]
       84 GETTABLEKS                       R5 R3 K11 ["minimumAge"]
       86 FASTCALL1                        TYPEOF R5 ; [+2]
       87 GETIMPORT                        R4 K1 [typeof]
       89 CALL                             R4 1 1
       90 JUMPIFEQKS                       R4 K12 ["number"] ; [+13]
       92 LOADK                            R5 K13 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > \"minimumAge\" > Expected number, got %*"]
       93 GETTABLEKS                       R8 R3 K11 ["minimumAge"]
       95 FASTCALL1                        TYPEOF R8 ; [+2]
       96 GETIMPORT                        R7 K1 [typeof]
       98 CALL                             R7 1 1
       99 NAMECALL                         R5 R5 K4 ["format"]
      101 CALL                             R5 2 1
      102 MOVE                             R4 R5
      103 RETURN                           R4 1
      104 GETTABLEKS                       R4 R3 K14 ["contentMaturity"]
      106 JUMPIFNOT                        R4 ; [+20]
      107 GETTABLEKS                       R5 R3 K14 ["contentMaturity"]
      109 FASTCALL1                        TYPEOF R5 ; [+2]
      110 GETIMPORT                        R4 K1 [typeof]
      112 CALL                             R4 1 1
      113 JUMPIFEQKS                       R4 K15 ["string"] ; [+13]
      115 LOADK                            R5 K16 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > \"contentMaturity\" > Expected string, got %*"]
      116 GETTABLEKS                       R8 R3 K14 ["contentMaturity"]
      118 FASTCALL1                        TYPEOF R8 ; [+2]
      119 GETIMPORT                        R7 K1 [typeof]
      121 CALL                             R7 1 1
      122 NAMECALL                         R5 R5 K4 ["format"]
      124 CALL                             R5 2 1
      125 MOVE                             R4 R5
      126 RETURN                           R4 1
      127 GETTABLEKS                       R2 R0 K17 ["universeId"]
      129 JUMPIFNOT                        R2 ; [+20]
      130 GETTABLEKS                       R3 R0 K17 ["universeId"]
      132 FASTCALL1                        TYPEOF R3 ; [+2]
      133 GETIMPORT                        R2 K1 [typeof]
      135 CALL                             R2 1 1
      136 JUMPIFEQKS                       R2 K12 ["number"] ; [+13]
      138 LOADK                            R3 K18 ["\"universeId\" > Expected number, got %*"]
      139 GETTABLEKS                       R6 R0 K17 ["universeId"]
      141 FASTCALL1                        TYPEOF R6 ; [+2]
      142 GETIMPORT                        R5 K1 [typeof]
      144 CALL                             R5 1 1
      145 NAMECALL                         R3 R3 K4 ["format"]
      147 CALL                             R3 2 1
      148 MOVE                             R2 R3
      149 RETURN                           R2 1
      150 LOADNIL                          R2
      151 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
