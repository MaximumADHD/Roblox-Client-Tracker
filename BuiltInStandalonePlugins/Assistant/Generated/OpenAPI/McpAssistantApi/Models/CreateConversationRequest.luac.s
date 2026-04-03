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
       25 GETTABLEKS                       R3 R0 K7 ["threadId"]
       27 JUMPIFEQKNIL                     R3 ; [+15]
       29 GETIMPORT                        R3 K10 [string.fromResponse]
       31 GETTABLEKS                       R4 R0 K7 ["threadId"]
       33 MOVE                             R5 R1
       34 LOADK                            R7 K11 ["%*\"threadId\" > "]
       35 MOVE                             R9 R2
       36 NAMECALL                         R7 R7 K4 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 CALL                             R3 3 1
       41 SETTABLEKS                       R3 R0 K7 ["threadId"]
       43 GETTABLEKS                       R4 R0 K12 ["requestId"]
       45 FASTCALL1                        TYPEOF R4 ; [+2]
       46 GETIMPORT                        R3 K1 [typeof]
       48 CALL                             R3 1 1
       49 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       51 LOADK                            R6 K13 ["%*\"requestId\" > Expected string, got %*"]
       52 MOVE                             R8 R2
       53 GETTABLEKS                       R10 R0 K12 ["requestId"]
       55 FASTCALL1                        TYPEOF R10 ; [+2]
       56 GETIMPORT                        R9 K1 [typeof]
       58 CALL                             R9 1 1
       59 NAMECALL                         R6 R6 K4 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       65 MOVE                             R4 R1
       66 GETIMPORT                        R3 K6 [table.insert]
       68 CALL                             R3 2 0
       69 GETTABLEKS                       R3 R0 K14 ["messageId"]
       71 JUMPIFEQKNIL                     R3 ; [+15]
       73 GETIMPORT                        R3 K10 [string.fromResponse]
       75 GETTABLEKS                       R4 R0 K14 ["messageId"]
       77 MOVE                             R5 R1
       78 LOADK                            R7 K15 ["%*\"messageId\" > "]
       79 MOVE                             R9 R2
       80 NAMECALL                         R7 R7 K4 ["format"]
       82 CALL                             R7 2 1
       83 MOVE                             R6 R7
       84 CALL                             R3 3 1
       85 SETTABLEKS                       R3 R0 K14 ["messageId"]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K9 ["fromResponse"]
       90 GETTABLEKS                       R4 R0 K16 ["conversation"]
       92 MOVE                             R5 R1
       93 LOADK                            R7 K17 ["%*\"conversation\" > "]
       94 MOVE                             R9 R2
       95 NAMECALL                         R7 R7 K4 ["format"]
       97 CALL                             R7 2 1
       98 MOVE                             R6 R7
       99 CALL                             R3 3 1
      100 SETTABLEKS                       R3 R0 K16 ["conversation"]
      102 GETTABLEKS                       R3 R0 K18 ["firstMessage"]
      104 JUMPIFEQKNIL                     R3 ; [+15]
      106 GETIMPORT                        R3 K20 [boolean.fromResponse]
      108 GETTABLEKS                       R4 R0 K18 ["firstMessage"]
      110 MOVE                             R5 R1
      111 LOADK                            R7 K21 ["%*\"firstMessage\" > "]
      112 MOVE                             R9 R2
      113 NAMECALL                         R7 R7 K4 ["format"]
      115 CALL                             R7 2 1
      116 MOVE                             R6 R7
      117 CALL                             R3 3 1
      118 SETTABLEKS                       R3 R0 K18 ["firstMessage"]
      120 GETTABLEKS                       R3 R0 K22 ["useAgenticMode"]
      122 JUMPIFEQKNIL                     R3 ; [+15]
      124 GETIMPORT                        R3 K20 [boolean.fromResponse]
      126 GETTABLEKS                       R4 R0 K22 ["useAgenticMode"]
      128 MOVE                             R5 R1
      129 LOADK                            R7 K23 ["%*\"useAgenticMode\" > "]
      130 MOVE                             R9 R2
      131 NAMECALL                         R7 R7 K4 ["format"]
      133 CALL                             R7 2 1
      134 MOVE                             R6 R7
      135 CALL                             R3 3 1
      136 SETTABLEKS                       R3 R0 K22 ["useAgenticMode"]
      138 GETTABLEKS                       R3 R0 K24 ["isDebugMode"]
      140 JUMPIFEQKNIL                     R3 ; [+15]
      142 GETIMPORT                        R3 K20 [boolean.fromResponse]
      144 GETTABLEKS                       R4 R0 K24 ["isDebugMode"]
      146 MOVE                             R5 R1
      147 LOADK                            R7 K25 ["%*\"isDebugMode\" > "]
      148 MOVE                             R9 R2
      149 NAMECALL                         R7 R7 K4 ["format"]
      151 CALL                             R7 2 1
      152 MOVE                             R6 R7
      153 CALL                             R3 3 1
      154 SETTABLEKS                       R3 R0 K24 ["isDebugMode"]
      156 GETTABLEKS                       R3 R0 K26 ["assistantMode"]
      158 JUMPIFEQKNIL                     R3 ; [+15]
      160 GETIMPORT                        R3 K10 [string.fromResponse]
      162 GETTABLEKS                       R4 R0 K26 ["assistantMode"]
      164 MOVE                             R5 R1
      165 LOADK                            R7 K27 ["%*\"assistantMode\" > "]
      166 MOVE                             R9 R2
      167 NAMECALL                         R7 R7 K4 ["format"]
      169 CALL                             R7 2 1
      170 MOVE                             R6 R7
      171 CALL                             R3 3 1
      172 SETTABLEKS                       R3 R0 K26 ["assistantMode"]
      174 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["threadId"]
        6 JUMPIFEQKNIL                     R2 ; [+8]
        8 GETIMPORT                        R2 K6 [string.toRequest]
       10 GETTABLEKS                       R3 R1 K3 ["threadId"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["threadId"]
       15 GETTABLEKS                       R2 R1 K7 ["messageId"]
       17 JUMPIFEQKNIL                     R2 ; [+8]
       19 GETIMPORT                        R2 K6 [string.toRequest]
       21 GETTABLEKS                       R3 R1 K7 ["messageId"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K7 ["messageId"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K5 ["toRequest"]
       29 GETTABLEKS                       R3 R1 K8 ["conversation"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K8 ["conversation"]
       34 GETTABLEKS                       R2 R1 K9 ["firstMessage"]
       36 JUMPIFEQKNIL                     R2 ; [+8]
       38 GETIMPORT                        R2 K11 [boolean.toRequest]
       40 GETTABLEKS                       R3 R1 K9 ["firstMessage"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K9 ["firstMessage"]
       45 GETTABLEKS                       R2 R1 K12 ["useAgenticMode"]
       47 JUMPIFEQKNIL                     R2 ; [+8]
       49 GETIMPORT                        R2 K11 [boolean.toRequest]
       51 GETTABLEKS                       R3 R1 K12 ["useAgenticMode"]
       53 CALL                             R2 1 1
       54 SETTABLEKS                       R2 R1 K12 ["useAgenticMode"]
       56 GETTABLEKS                       R2 R1 K13 ["isDebugMode"]
       58 JUMPIFEQKNIL                     R2 ; [+8]
       60 GETIMPORT                        R2 K11 [boolean.toRequest]
       62 GETTABLEKS                       R3 R1 K13 ["isDebugMode"]
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R1 K13 ["isDebugMode"]
       67 GETTABLEKS                       R2 R1 K14 ["assistantMode"]
       69 JUMPIFEQKNIL                     R2 ; [+8]
       71 GETIMPORT                        R2 K6 [string.toRequest]
       73 GETTABLEKS                       R3 R1 K14 ["assistantMode"]
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R2 R1 K14 ["assistantMode"]
       78 RETURN                           R1 1

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
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R6 K10 ["Conversation"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R6 K12 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 GETIMPORT                        R7 K15 [table.freeze]
       31 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       32 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       34 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       36 CALL                             R7 1 1
       37 RETURN                           R7 1
