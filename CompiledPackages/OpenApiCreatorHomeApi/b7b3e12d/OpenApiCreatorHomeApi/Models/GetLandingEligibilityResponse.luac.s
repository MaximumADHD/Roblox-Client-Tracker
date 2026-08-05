PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R4 R0 K7 ["enableStarterPlace"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+19]
       33 LOADK                            R6 K9 ["%*\"enableStarterPlace\" > Expected boolean, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["enableStarterPlace"]
       37 FASTCALL1                        TYPEOF R10 ; [+2]
       38 GETIMPORT                        R9 K1 [typeof]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K4 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K6 [table.insert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R4 R0 K10 ["inControlGroup"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+19]
       59 LOADK                            R6 K11 ["%*\"inControlGroup\" > Expected boolean, got %*"]
       60 MOVE                             R8 R2
       61 GETTABLEKS                       R10 R0 K10 ["inControlGroup"]
       63 FASTCALL1                        TYPEOF R10 ; [+2]
       64 GETIMPORT                        R9 K1 [typeof]
       66 CALL                             R9 1 1
       67 NAMECALL                         R6 R6 K4 ["format"]
       69 CALL                             R6 3 1
       70 MOVE                             R5 R6
       71 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       73 MOVE                             R4 R1
       74 GETIMPORT                        R3 K6 [table.insert]
       76 CALL                             R3 2 0
       77 GETTABLEKS                       R4 R0 K12 ["inExperimentGroup"]
       79 FASTCALL1                        TYPEOF R4 ; [+2]
       80 GETIMPORT                        R3 K1 [typeof]
       82 CALL                             R3 1 1
       83 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+19]
       85 LOADK                            R6 K13 ["%*\"inExperimentGroup\" > Expected boolean, got %*"]
       86 MOVE                             R8 R2
       87 GETTABLEKS                       R10 R0 K12 ["inExperimentGroup"]
       89 FASTCALL1                        TYPEOF R10 ; [+2]
       90 GETIMPORT                        R9 K1 [typeof]
       92 CALL                             R9 1 1
       93 NAMECALL                         R6 R6 K4 ["format"]
       95 CALL                             R6 3 1
       96 MOVE                             R5 R6
       97 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       99 MOVE                             R4 R1
      100 GETIMPORT                        R3 K6 [table.insert]
      102 CALL                             R3 2 0
      103 GETTABLEKS                       R4 R0 K14 ["controlGroupFallthrough"]
      105 FASTCALL1                        TYPEOF R4 ; [+2]
      106 GETIMPORT                        R3 K1 [typeof]
      108 CALL                             R3 1 1
      109 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+19]
      111 LOADK                            R6 K15 ["%*\"controlGroupFallthrough\" > Expected boolean, got %*"]
      112 MOVE                             R8 R2
      113 GETTABLEKS                       R10 R0 K14 ["controlGroupFallthrough"]
      115 FASTCALL1                        TYPEOF R10 ; [+2]
      116 GETIMPORT                        R9 K1 [typeof]
      118 CALL                             R9 1 1
      119 NAMECALL                         R6 R6 K4 ["format"]
      121 CALL                             R6 3 1
      122 MOVE                             R5 R6
      123 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      125 MOVE                             R4 R1
      126 GETIMPORT                        R3 K6 [table.insert]
      128 CALL                             R3 2 0
      129 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_1]
       16 GETIMPORT                        R5 K12 [table.freeze]
       18 DUPTABLE                         R6 K15 [{"fromResponse", "toRequest"}]
       19 SETTABLEKS                       R3 R6 K13 ["fromResponse"]
       21 SETTABLEKS                       R4 R6 K14 ["toRequest"]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
