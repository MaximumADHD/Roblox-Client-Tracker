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
       25 GETTABLEKS                       R4 R0 K7 ["loc"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       33 LOADK                            R6 K8 ["%*\"loc\" > Expected table, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["loc"]
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
       51 JUMP                             ; [+33]
       52 GETTABLEKS                       R3 R0 K7 ["loc"]
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 FORGPREP                         R3
       57 FASTCALL1                        TYPEOF R6 ; [+3]
       58 MOVE                             R9 R6
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
       64 LOADK                            R11 K10 ["%*\"loc\" > Expected index of type number, got %* as %*"]
       65 MOVE                             R13 R2
       66 MOVE                             R14 R6
       67 FASTCALL1                        TYPEOF R6 ; [+3]
       68 MOVE                             R16 R6
       69 GETIMPORT                        R15 K1 [typeof]
       71 CALL                             R15 1 1
       72 NAMECALL                         R11 R11 K4 ["format"]
       74 CALL                             R11 4 1
       75 MOVE                             R10 R11
       76 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       78 MOVE                             R9 R1
       79 GETIMPORT                        R8 K6 [table.insert]
       81 CALL                             R8 2 0
       82 JUMP                             ; [0]
       83 FORGLOOP                         R3 2 ; [-27]
       85 GETTABLEKS                       R4 R0 K11 ["msg"]
       87 FASTCALL1                        TYPEOF R4 ; [+2]
       88 GETIMPORT                        R3 K1 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFEQKS                       R3 K12 ["string"] ; [+19]
       93 LOADK                            R6 K13 ["%*\"msg\" > Expected string, got %*"]
       94 MOVE                             R8 R2
       95 GETTABLEKS                       R10 R0 K11 ["msg"]
       97 FASTCALL1                        TYPEOF R10 ; [+2]
       98 GETIMPORT                        R9 K1 [typeof]
      100 CALL                             R9 1 1
      101 NAMECALL                         R6 R6 K4 ["format"]
      103 CALL                             R6 3 1
      104 MOVE                             R5 R6
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R4 R0 K14 ["type"]
      113 FASTCALL1                        TYPEOF R4 ; [+2]
      114 GETIMPORT                        R3 K1 [typeof]
      116 CALL                             R3 1 1
      117 JUMPIFEQKS                       R3 K12 ["string"] ; [+19]
      119 LOADK                            R6 K15 ["%*\"type\" > Expected string, got %*"]
      120 MOVE                             R8 R2
      121 GETTABLEKS                       R10 R0 K14 ["type"]
      123 FASTCALL1                        TYPEOF R10 ; [+2]
      124 GETIMPORT                        R9 K1 [typeof]
      126 CALL                             R9 1 1
      127 NAMECALL                         R6 R6 K4 ["format"]
      129 CALL                             R6 3 1
      130 MOVE                             R5 R6
      131 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      133 MOVE                             R4 R1
      134 GETIMPORT                        R3 K6 [table.insert]
      136 CALL                             R3 2 0
      137 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantApi"]
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
