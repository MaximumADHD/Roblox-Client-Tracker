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
       24 GETTABLEKS                       R4 R0 K7 ["model"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       32 LOADK                            R5 K9 ["%*\"model\" > Expected string, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["model"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K10 ["thinkingMode"]
       51 JUMPIFEQKNIL                     R3 ; [+26]
       53 GETTABLEKS                       R4 R0 K10 ["thinkingMode"]
       55 FASTCALL1                        TYPEOF R4 ; [+2]
       56 GETIMPORT                        R3 K1 [typeof]
       58 CALL                             R3 1 1
       59 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       61 LOADK                            R5 K11 ["%*\"thinkingMode\" > Expected string, got %*"]
       62 MOVE                             R7 R2
       63 GETTABLEKS                       R9 R0 K10 ["thinkingMode"]
       65 FASTCALL1                        TYPEOF R9 ; [+2]
       66 GETIMPORT                        R8 K1 [typeof]
       68 CALL                             R8 1 1
       69 NAMECALL                         R5 R5 K4 ["format"]
       71 CALL                             R5 3 1
       72 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R3 K6 [table.insert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R3 R0 K12 ["parallelToolCalls"]
       80 JUMPIFEQKNIL                     R3 ; [+26]
       82 GETTABLEKS                       R4 R0 K12 ["parallelToolCalls"]
       84 FASTCALL1                        TYPEOF R4 ; [+2]
       85 GETIMPORT                        R3 K1 [typeof]
       87 CALL                             R3 1 1
       88 JUMPIFEQKS                       R3 K13 ["boolean"] ; [+18]
       90 LOADK                            R5 K14 ["%*\"parallelToolCalls\" > Expected boolean, got %*"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R9 R0 K12 ["parallelToolCalls"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K1 [typeof]
       97 CALL                             R8 1 1
       98 NAMECALL                         R5 R5 K4 ["format"]
      100 CALL                             R5 3 1
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETTABLEKS                       R3 R0 K15 ["maxTokens"]
      109 JUMPIFEQKNIL                     R3 ; [+26]
      111 GETTABLEKS                       R4 R0 K15 ["maxTokens"]
      113 FASTCALL1                        TYPEOF R4 ; [+2]
      114 GETIMPORT                        R3 K1 [typeof]
      116 CALL                             R3 1 1
      117 JUMPIFEQKS                       R3 K16 ["number"] ; [+18]
      119 LOADK                            R5 K17 ["%*\"maxTokens\" > Expected number, got %*"]
      120 MOVE                             R7 R2
      121 GETTABLEKS                       R9 R0 K15 ["maxTokens"]
      123 FASTCALL1                        TYPEOF R9 ; [+2]
      124 GETIMPORT                        R8 K1 [typeof]
      126 CALL                             R8 1 1
      127 NAMECALL                         R5 R5 K4 ["format"]
      129 CALL                             R5 3 1
      130 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      132 MOVE                             R4 R1
      133 GETIMPORT                        R3 K6 [table.insert]
      135 CALL                             R3 2 0
      136 GETTABLEKS                       R3 R0 K18 ["temperature"]
      138 JUMPIFEQKNIL                     R3 ; [+26]
      140 GETTABLEKS                       R4 R0 K18 ["temperature"]
      142 FASTCALL1                        TYPEOF R4 ; [+2]
      143 GETIMPORT                        R3 K1 [typeof]
      145 CALL                             R3 1 1
      146 JUMPIFEQKS                       R3 K16 ["number"] ; [+18]
      148 LOADK                            R5 K19 ["%*\"temperature\" > Expected number, got %*"]
      149 MOVE                             R7 R2
      150 GETTABLEKS                       R9 R0 K18 ["temperature"]
      152 FASTCALL1                        TYPEOF R9 ; [+2]
      153 GETIMPORT                        R8 K1 [typeof]
      155 CALL                             R8 1 1
      156 NAMECALL                         R5 R5 K4 ["format"]
      158 CALL                             R5 3 1
      159 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      161 MOVE                             R4 R1
      162 GETIMPORT                        R3 K6 [table.insert]
      164 CALL                             R3 2 0
      165 RETURN                           R0 1

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
