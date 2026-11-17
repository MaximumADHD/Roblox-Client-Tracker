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
       17 GETTABLEKS                       R1 R0 K5 ["ageRecommendationDetails"]
       19 JUMPIFNOT                        R1 ; [+101]
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       27 LOADK                            R2 K6 ["\"ageRecommendationDetails\" > Expected table, got %*"]
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K1 [typeof]
       32 CALL                             R4 1 1
       33 NAMECALL                         R2 R2 K4 ["format"]
       35 CALL                             R2 2 1
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K7 ["ageRecommendationSummary"]
       39 JUMPIFNOT                        R2 ; [+81]
       40 FASTCALL1                        TYPEOF R2 ; [+3]
       41 MOVE                             R4 R2
       42 GETIMPORT                        R3 K1 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFEQKS                       R3 K2 ["table"] ; [+11]
       47 LOADK                            R3 K8 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > Expected table, got %*"]
       48 FASTCALL1                        TYPEOF R2 ; [+3]
       49 MOVE                             R6 R2
       50 GETIMPORT                        R5 K1 [typeof]
       52 CALL                             R5 1 1
       53 NAMECALL                         R3 R3 K4 ["format"]
       55 CALL                             R3 2 1
       56 RETURN                           R3 1
       57 GETTABLEKS                       R3 R2 K9 ["ageRecommendation"]
       59 JUMPIFNOT                        R3 ; [+61]
       60 FASTCALL1                        TYPEOF R3 ; [+3]
       61 MOVE                             R5 R3
       62 GETIMPORT                        R4 K1 [typeof]
       64 CALL                             R4 1 1
       65 JUMPIFEQKS                       R4 K2 ["table"] ; [+11]
       67 LOADK                            R4 K10 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > Expected table, got %*"]
       68 FASTCALL1                        TYPEOF R3 ; [+3]
       69 MOVE                             R7 R3
       70 GETIMPORT                        R6 K1 [typeof]
       72 CALL                             R6 1 1
       73 NAMECALL                         R4 R4 K4 ["format"]
       75 CALL                             R4 2 1
       76 RETURN                           R4 1
       77 GETTABLEKS                       R4 R3 K11 ["minimumAge"]
       79 JUMPIFNOT                        R4 ; [+19]
       80 GETTABLEKS                       R5 R3 K11 ["minimumAge"]
       82 FASTCALL1                        TYPEOF R5 ; [+2]
       83 GETIMPORT                        R4 K1 [typeof]
       85 CALL                             R4 1 1
       86 JUMPIFEQKS                       R4 K12 ["number"] ; [+12]
       88 LOADK                            R4 K13 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > \"minimumAge\" > Expected number, got %*"]
       89 GETTABLEKS                       R7 R3 K11 ["minimumAge"]
       91 FASTCALL1                        TYPEOF R7 ; [+2]
       92 GETIMPORT                        R6 K1 [typeof]
       94 CALL                             R6 1 1
       95 NAMECALL                         R4 R4 K4 ["format"]
       97 CALL                             R4 2 1
       98 RETURN                           R4 1
       99 GETTABLEKS                       R4 R3 K14 ["contentMaturity"]
      101 JUMPIFNOT                        R4 ; [+19]
      102 GETTABLEKS                       R5 R3 K14 ["contentMaturity"]
      104 FASTCALL1                        TYPEOF R5 ; [+2]
      105 GETIMPORT                        R4 K1 [typeof]
      107 CALL                             R4 1 1
      108 JUMPIFEQKS                       R4 K15 ["string"] ; [+12]
      110 LOADK                            R4 K16 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > \"contentMaturity\" > Expected string, got %*"]
      111 GETTABLEKS                       R7 R3 K14 ["contentMaturity"]
      113 FASTCALL1                        TYPEOF R7 ; [+2]
      114 GETIMPORT                        R6 K1 [typeof]
      116 CALL                             R6 1 1
      117 NAMECALL                         R4 R4 K4 ["format"]
      119 CALL                             R4 2 1
      120 RETURN                           R4 1
      121 GETTABLEKS                       R2 R0 K17 ["universeId"]
      123 JUMPIFNOT                        R2 ; [+19]
      124 GETTABLEKS                       R3 R0 K17 ["universeId"]
      126 FASTCALL1                        TYPEOF R3 ; [+2]
      127 GETIMPORT                        R2 K1 [typeof]
      129 CALL                             R2 1 1
      130 JUMPIFEQKS                       R2 K12 ["number"] ; [+12]
      132 LOADK                            R2 K18 ["\"universeId\" > Expected number, got %*"]
      133 GETTABLEKS                       R5 R0 K17 ["universeId"]
      135 FASTCALL1                        TYPEOF R5 ; [+2]
      136 GETIMPORT                        R4 K1 [typeof]
      138 CALL                             R4 1 1
      139 NAMECALL                         R2 R2 K4 ["format"]
      141 CALL                             R2 2 1
      142 RETURN                           R2 1
      143 LOADNIL                          R2
      144 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
