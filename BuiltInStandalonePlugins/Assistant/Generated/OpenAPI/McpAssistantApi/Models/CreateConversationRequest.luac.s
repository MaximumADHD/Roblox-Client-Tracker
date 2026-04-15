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
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["threadId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"threadId\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["threadId"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R4 R0 K10 ["requestId"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       63 LOADK                            R6 K11 ["%*\"requestId\" > Expected string, got %*"]
       64 MOVE                             R8 R2
       65 GETTABLEKS                       R10 R0 K10 ["requestId"]
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
       81 GETTABLEKS                       R3 R0 K12 ["messageId"]
       83 JUMPIFEQKNIL                     R3 ; [+27]
       85 GETTABLEKS                       R4 R0 K12 ["messageId"]
       87 FASTCALL1                        TYPEOF R4 ; [+2]
       88 GETIMPORT                        R3 K1 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       93 LOADK                            R6 K13 ["%*\"messageId\" > Expected string, got %*"]
       94 MOVE                             R8 R2
       95 GETTABLEKS                       R10 R0 K12 ["messageId"]
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
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R3 R4 K14 ["fromResponse"]
      114 GETTABLEKS                       R4 R0 K15 ["conversation"]
      116 MOVE                             R5 R1
      117 LOADK                            R7 K16 ["%*\"conversation\" > "]
      118 MOVE                             R9 R2
      119 NAMECALL                         R7 R7 K4 ["format"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 CALL                             R3 3 1
      124 SETTABLEKS                       R3 R0 K15 ["conversation"]
      126 GETTABLEKS                       R3 R0 K17 ["firstMessage"]
      128 JUMPIFEQKNIL                     R3 ; [+27]
      130 GETTABLEKS                       R4 R0 K17 ["firstMessage"]
      132 FASTCALL1                        TYPEOF R4 ; [+2]
      133 GETIMPORT                        R3 K1 [typeof]
      135 CALL                             R3 1 1
      136 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+19]
      138 LOADK                            R6 K19 ["%*\"firstMessage\" > Expected boolean, got %*"]
      139 MOVE                             R8 R2
      140 GETTABLEKS                       R10 R0 K17 ["firstMessage"]
      142 FASTCALL1                        TYPEOF R10 ; [+2]
      143 GETIMPORT                        R9 K1 [typeof]
      145 CALL                             R9 1 1
      146 NAMECALL                         R6 R6 K4 ["format"]
      148 CALL                             R6 3 1
      149 MOVE                             R5 R6
      150 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      152 MOVE                             R4 R1
      153 GETIMPORT                        R3 K6 [table.insert]
      155 CALL                             R3 2 0
      156 GETTABLEKS                       R3 R0 K20 ["useAgenticMode"]
      158 JUMPIFEQKNIL                     R3 ; [+27]
      160 GETTABLEKS                       R4 R0 K20 ["useAgenticMode"]
      162 FASTCALL1                        TYPEOF R4 ; [+2]
      163 GETIMPORT                        R3 K1 [typeof]
      165 CALL                             R3 1 1
      166 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+19]
      168 LOADK                            R6 K21 ["%*\"useAgenticMode\" > Expected boolean, got %*"]
      169 MOVE                             R8 R2
      170 GETTABLEKS                       R10 R0 K20 ["useAgenticMode"]
      172 FASTCALL1                        TYPEOF R10 ; [+2]
      173 GETIMPORT                        R9 K1 [typeof]
      175 CALL                             R9 1 1
      176 NAMECALL                         R6 R6 K4 ["format"]
      178 CALL                             R6 3 1
      179 MOVE                             R5 R6
      180 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      182 MOVE                             R4 R1
      183 GETIMPORT                        R3 K6 [table.insert]
      185 CALL                             R3 2 0
      186 GETTABLEKS                       R3 R0 K22 ["isDebugMode"]
      188 JUMPIFEQKNIL                     R3 ; [+27]
      190 GETTABLEKS                       R4 R0 K22 ["isDebugMode"]
      192 FASTCALL1                        TYPEOF R4 ; [+2]
      193 GETIMPORT                        R3 K1 [typeof]
      195 CALL                             R3 1 1
      196 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+19]
      198 LOADK                            R6 K23 ["%*\"isDebugMode\" > Expected boolean, got %*"]
      199 MOVE                             R8 R2
      200 GETTABLEKS                       R10 R0 K22 ["isDebugMode"]
      202 FASTCALL1                        TYPEOF R10 ; [+2]
      203 GETIMPORT                        R9 K1 [typeof]
      205 CALL                             R9 1 1
      206 NAMECALL                         R6 R6 K4 ["format"]
      208 CALL                             R6 3 1
      209 MOVE                             R5 R6
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 GETTABLEKS                       R3 R0 K24 ["assistantMode"]
      218 JUMPIFEQKNIL                     R3 ; [+27]
      220 GETTABLEKS                       R4 R0 K24 ["assistantMode"]
      222 FASTCALL1                        TYPEOF R4 ; [+2]
      223 GETIMPORT                        R3 K1 [typeof]
      225 CALL                             R3 1 1
      226 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      228 LOADK                            R6 K25 ["%*\"assistantMode\" > Expected string, got %*"]
      229 MOVE                             R8 R2
      230 GETTABLEKS                       R10 R0 K24 ["assistantMode"]
      232 FASTCALL1                        TYPEOF R10 ; [+2]
      233 GETIMPORT                        R9 K1 [typeof]
      235 CALL                             R9 1 1
      236 NAMECALL                         R6 R6 K4 ["format"]
      238 CALL                             R6 3 1
      239 MOVE                             R5 R6
      240 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      242 MOVE                             R4 R1
      243 GETIMPORT                        R3 K6 [table.insert]
      245 CALL                             R3 2 0
      246 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["conversation"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["conversation"]
       12 RETURN                           R1 1

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
