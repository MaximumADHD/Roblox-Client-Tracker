PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["joinSource"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["joinSource"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"joinSource\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["joinSource"]
       42 GETTABLEKS                       R3 R0 K10 ["requestType"]
       44 JUMPIFEQKNIL                     R3 ; [+15]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       49 GETTABLEKS                       R4 R0 K10 ["requestType"]
       51 MOVE                             R5 R1
       52 LOADK                            R6 K11 ["%*\"requestType\" > "]
       53 MOVE                             R8 R2
       54 NAMECALL                         R6 R6 K4 ["format"]
       56 CALL                             R6 2 1
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R0 K10 ["requestType"]
       60 GETTABLEKS                       R3 R0 K12 ["matchmakingDecisionId"]
       62 JUMPIFEQKNIL                     R3 ; [+26]
       64 GETTABLEKS                       R4 R0 K12 ["matchmakingDecisionId"]
       66 FASTCALL1                        TYPEOF R4 ; [+2]
       67 GETIMPORT                        R3 K1 [typeof]
       69 CALL                             R3 1 1
       70 JUMPIFEQKS                       R3 K13 ["string"] ; [+18]
       72 LOADK                            R5 K14 ["%*\"matchmakingDecisionId\" > Expected string, got %*"]
       73 MOVE                             R7 R2
       74 GETTABLEKS                       R9 R0 K12 ["matchmakingDecisionId"]
       76 FASTCALL1                        TYPEOF R9 ; [+2]
       77 GETIMPORT                        R8 K1 [typeof]
       79 CALL                             R8 1 1
       80 NAMECALL                         R5 R5 K4 ["format"]
       82 CALL                             R5 3 1
       83 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       85 MOVE                             R4 R1
       86 GETIMPORT                        R3 K6 [table.insert]
       88 CALL                             R3 2 0
       89 GETTABLEKS                       R3 R0 K15 ["isPlaceVoiceChatEnabled"]
       91 JUMPIFEQKNIL                     R3 ; [+26]
       93 GETTABLEKS                       R4 R0 K15 ["isPlaceVoiceChatEnabled"]
       95 FASTCALL1                        TYPEOF R4 ; [+2]
       96 GETIMPORT                        R3 K1 [typeof]
       98 CALL                             R3 1 1
       99 JUMPIFEQKS                       R3 K16 ["boolean"] ; [+18]
      101 LOADK                            R5 K17 ["%*\"isPlaceVoiceChatEnabled\" > Expected boolean, got %*"]
      102 MOVE                             R7 R2
      103 GETTABLEKS                       R9 R0 K15 ["isPlaceVoiceChatEnabled"]
      105 FASTCALL1                        TYPEOF R9 ; [+2]
      106 GETIMPORT                        R8 K1 [typeof]
      108 CALL                             R8 1 1
      109 NAMECALL                         R5 R5 K4 ["format"]
      111 CALL                             R5 3 1
      112 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      114 MOVE                             R4 R1
      115 GETIMPORT                        R3 K6 [table.insert]
      117 CALL                             R3 2 0
      118 GETTABLEKS                       R3 R0 K18 ["experienceContentMaturityReviewStatus"]
      120 JUMPIFEQKNIL                     R3 ; [+26]
      122 GETTABLEKS                       R4 R0 K18 ["experienceContentMaturityReviewStatus"]
      124 FASTCALL1                        TYPEOF R4 ; [+2]
      125 GETIMPORT                        R3 K1 [typeof]
      127 CALL                             R3 1 1
      128 JUMPIFEQKS                       R3 K13 ["string"] ; [+18]
      130 LOADK                            R5 K19 ["%*\"experienceContentMaturityReviewStatus\" > Expected string, got %*"]
      131 MOVE                             R7 R2
      132 GETTABLEKS                       R9 R0 K18 ["experienceContentMaturityReviewStatus"]
      134 FASTCALL1                        TYPEOF R9 ; [+2]
      135 GETIMPORT                        R8 K1 [typeof]
      137 CALL                             R8 1 1
      138 NAMECALL                         R5 R5 K4 ["format"]
      140 CALL                             R5 3 1
      141 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      143 MOVE                             R4 R1
      144 GETIMPORT                        R3 K6 [table.insert]
      146 CALL                             R3 2 0
      147 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["joinSource"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["joinSource"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["joinSource"]
       16 GETTABLEKS                       R2 R1 K5 ["requestType"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["requestType"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["requestType"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["JoinSource"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["RequestType"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
