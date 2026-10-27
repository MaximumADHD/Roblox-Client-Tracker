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
       24 GETTABLEKS                       R4 R0 K7 ["enableStarterPlace"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+18]
       32 LOADK                            R5 K9 ["%*\"enableStarterPlace\" > Expected boolean, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["enableStarterPlace"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R4 R0 K10 ["inControlGroup"]
       51 FASTCALL1                        TYPEOF R4 ; [+2]
       52 GETIMPORT                        R3 K1 [typeof]
       54 CALL                             R3 1 1
       55 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+18]
       57 LOADK                            R5 K11 ["%*\"inControlGroup\" > Expected boolean, got %*"]
       58 MOVE                             R7 R2
       59 GETTABLEKS                       R9 R0 K10 ["inControlGroup"]
       61 FASTCALL1                        TYPEOF R9 ; [+2]
       62 GETIMPORT                        R8 K1 [typeof]
       64 CALL                             R8 1 1
       65 NAMECALL                         R5 R5 K4 ["format"]
       67 CALL                             R5 3 1
       68 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       70 MOVE                             R4 R1
       71 GETIMPORT                        R3 K6 [table.insert]
       73 CALL                             R3 2 0
       74 GETTABLEKS                       R4 R0 K12 ["inExperimentGroup"]
       76 FASTCALL1                        TYPEOF R4 ; [+2]
       77 GETIMPORT                        R3 K1 [typeof]
       79 CALL                             R3 1 1
       80 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+18]
       82 LOADK                            R5 K13 ["%*\"inExperimentGroup\" > Expected boolean, got %*"]
       83 MOVE                             R7 R2
       84 GETTABLEKS                       R9 R0 K12 ["inExperimentGroup"]
       86 FASTCALL1                        TYPEOF R9 ; [+2]
       87 GETIMPORT                        R8 K1 [typeof]
       89 CALL                             R8 1 1
       90 NAMECALL                         R5 R5 K4 ["format"]
       92 CALL                             R5 3 1
       93 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       95 MOVE                             R4 R1
       96 GETIMPORT                        R3 K6 [table.insert]
       98 CALL                             R3 2 0
       99 GETTABLEKS                       R4 R0 K14 ["controlGroupFallthrough"]
      101 FASTCALL1                        TYPEOF R4 ; [+2]
      102 GETIMPORT                        R3 K1 [typeof]
      104 CALL                             R3 1 1
      105 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+18]
      107 LOADK                            R5 K15 ["%*\"controlGroupFallthrough\" > Expected boolean, got %*"]
      108 MOVE                             R7 R2
      109 GETTABLEKS                       R9 R0 K14 ["controlGroupFallthrough"]
      111 FASTCALL1                        TYPEOF R9 ; [+2]
      112 GETIMPORT                        R8 K1 [typeof]
      114 CALL                             R8 1 1
      115 NAMECALL                         R5 R5 K4 ["format"]
      117 CALL                             R5 3 1
      118 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      120 MOVE                             R4 R1
      121 GETIMPORT                        R3 K6 [table.insert]
      123 CALL                             R3 2 0
      124 RETURN                           R0 1

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
