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
       24 GETTABLEKS                       R4 R0 K7 ["loc"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       32 LOADK                            R5 K8 ["%*\"loc\" > Expected table, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["loc"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 JUMP                             ; [+32]
       50 GETTABLEKS                       R3 R0 K7 ["loc"]
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 FASTCALL1                        TYPEOF R6 ; [+3]
       56 MOVE                             R9 R6
       57 GETIMPORT                        R8 K1 [typeof]
       59 CALL                             R8 1 1
       60 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       62 LOADK                            R10 K10 ["%*\"loc\" > Expected index of type number, got %* as %*"]
       63 MOVE                             R12 R2
       64 MOVE                             R13 R6
       65 FASTCALL1                        TYPEOF R6 ; [+3]
       66 MOVE                             R15 R6
       67 GETIMPORT                        R14 K1 [typeof]
       69 CALL                             R14 1 1
       70 NAMECALL                         R10 R10 K4 ["format"]
       72 CALL                             R10 4 1
       73 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       75 MOVE                             R9 R1
       76 GETIMPORT                        R8 K6 [table.insert]
       78 CALL                             R8 2 0
       79 JUMP                             ; [0]
       80 FORGLOOP                         R3 2 ; [-26]
       82 GETTABLEKS                       R4 R0 K11 ["msg"]
       84 FASTCALL1                        TYPEOF R4 ; [+2]
       85 GETIMPORT                        R3 K1 [typeof]
       87 CALL                             R3 1 1
       88 JUMPIFEQKS                       R3 K12 ["string"] ; [+18]
       90 LOADK                            R5 K13 ["%*\"msg\" > Expected string, got %*"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R9 R0 K11 ["msg"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K1 [typeof]
       97 CALL                             R8 1 1
       98 NAMECALL                         R5 R5 K4 ["format"]
      100 CALL                             R5 3 1
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETTABLEKS                       R4 R0 K14 ["type"]
      109 FASTCALL1                        TYPEOF R4 ; [+2]
      110 GETIMPORT                        R3 K1 [typeof]
      112 CALL                             R3 1 1
      113 JUMPIFEQKS                       R3 K12 ["string"] ; [+18]
      115 LOADK                            R5 K15 ["%*\"type\" > Expected string, got %*"]
      116 MOVE                             R7 R2
      117 GETTABLEKS                       R9 R0 K14 ["type"]
      119 FASTCALL1                        TYPEOF R9 ; [+2]
      120 GETIMPORT                        R8 K1 [typeof]
      122 CALL                             R8 1 1
      123 NAMECALL                         R5 R5 K4 ["format"]
      125 CALL                             R5 3 1
      126 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      128 MOVE                             R4 R1
      129 GETIMPORT                        R3 K6 [table.insert]
      131 CALL                             R3 2 0
      132 RETURN                           R0 1

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
