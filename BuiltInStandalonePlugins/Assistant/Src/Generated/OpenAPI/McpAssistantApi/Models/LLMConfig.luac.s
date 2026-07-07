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
       25 GETTABLEKS                       R4 R0 K7 ["model"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       33 LOADK                            R6 K9 ["%*\"model\" > Expected string, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["model"]
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
       51 GETTABLEKS                       R3 R0 K10 ["thinkingMode"]
       53 JUMPIFEQKNIL                     R3 ; [+27]
       55 GETTABLEKS                       R4 R0 K10 ["thinkingMode"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       63 LOADK                            R6 K11 ["%*\"thinkingMode\" > Expected string, got %*"]
       64 MOVE                             R8 R2
       65 GETTABLEKS                       R10 R0 K10 ["thinkingMode"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K1 [typeof]
       70 CALL                             R9 1 1
       71 NAMECALL                         R6 R6 K4 ["format"]
       73 CALL                             R6 3 1
       74 MOVE                             R5 R6
       75 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       77 MOVE                             R4 R1
       78 GETIMPORT                        R3 K6 [table.insert]
       80 CALL                             R3 2 0
       81 GETTABLEKS                       R3 R0 K12 ["parallelToolCalls"]
       83 JUMPIFEQKNIL                     R3 ; [+27]
       85 GETTABLEKS                       R4 R0 K12 ["parallelToolCalls"]
       87 FASTCALL1                        TYPEOF R4 ; [+2]
       88 GETIMPORT                        R3 K1 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFEQKS                       R3 K13 ["boolean"] ; [+19]
       93 LOADK                            R6 K14 ["%*\"parallelToolCalls\" > Expected boolean, got %*"]
       94 MOVE                             R8 R2
       95 GETTABLEKS                       R10 R0 K12 ["parallelToolCalls"]
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
      111 GETTABLEKS                       R3 R0 K15 ["maxTokens"]
      113 JUMPIFEQKNIL                     R3 ; [+27]
      115 GETTABLEKS                       R4 R0 K15 ["maxTokens"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K16 ["number"] ; [+19]
      123 LOADK                            R6 K17 ["%*\"maxTokens\" > Expected number, got %*"]
      124 MOVE                             R8 R2
      125 GETTABLEKS                       R10 R0 K15 ["maxTokens"]
      127 FASTCALL1                        TYPEOF R10 ; [+2]
      128 GETIMPORT                        R9 K1 [typeof]
      130 CALL                             R9 1 1
      131 NAMECALL                         R6 R6 K4 ["format"]
      133 CALL                             R6 3 1
      134 MOVE                             R5 R6
      135 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      137 MOVE                             R4 R1
      138 GETIMPORT                        R3 K6 [table.insert]
      140 CALL                             R3 2 0
      141 GETTABLEKS                       R3 R0 K18 ["temperature"]
      143 JUMPIFEQKNIL                     R3 ; [+27]
      145 GETTABLEKS                       R4 R0 K18 ["temperature"]
      147 FASTCALL1                        TYPEOF R4 ; [+2]
      148 GETIMPORT                        R3 K1 [typeof]
      150 CALL                             R3 1 1
      151 JUMPIFEQKS                       R3 K16 ["number"] ; [+19]
      153 LOADK                            R6 K19 ["%*\"temperature\" > Expected number, got %*"]
      154 MOVE                             R8 R2
      155 GETTABLEKS                       R10 R0 K18 ["temperature"]
      157 FASTCALL1                        TYPEOF R10 ; [+2]
      158 GETIMPORT                        R9 K1 [typeof]
      160 CALL                             R9 1 1
      161 NAMECALL                         R6 R6 K4 ["format"]
      163 CALL                             R6 3 1
      164 MOVE                             R5 R6
      165 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      167 MOVE                             R4 R1
      168 GETIMPORT                        R3 K6 [table.insert]
      170 CALL                             R3 2 0
      171 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 GETIMPORT                        R6 K13 [table.freeze]
       22 DUPTABLE                         R7 K16 [{"fromResponse", "toRequest"}]
       23 SETTABLEKS                       R4 R7 K14 ["fromResponse"]
       25 SETTABLEKS                       R5 R7 K15 ["toRequest"]
       27 CALL                             R6 1 1
       28 RETURN                           R6 1
