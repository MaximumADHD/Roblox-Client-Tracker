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
       24 GETTABLEKS                       R3 R0 K7 ["threadId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["threadId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"threadId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["threadId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R4 R0 K10 ["requestId"]
       55 FASTCALL1                        TYPEOF R4 ; [+2]
       56 GETIMPORT                        R3 K1 [typeof]
       58 CALL                             R3 1 1
       59 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       61 LOADK                            R5 K11 ["%*\"requestId\" > Expected string, got %*"]
       62 MOVE                             R7 R2
       63 GETTABLEKS                       R9 R0 K10 ["requestId"]
       65 FASTCALL1                        TYPEOF R9 ; [+2]
       66 GETIMPORT                        R8 K1 [typeof]
       68 CALL                             R8 1 1
       69 NAMECALL                         R5 R5 K4 ["format"]
       71 CALL                             R5 3 1
       72 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R3 K6 [table.insert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R3 R0 K12 ["messageId"]
       80 JUMPIFEQKNIL                     R3 ; [+26]
       82 GETTABLEKS                       R4 R0 K12 ["messageId"]
       84 FASTCALL1                        TYPEOF R4 ; [+2]
       85 GETIMPORT                        R3 K1 [typeof]
       87 CALL                             R3 1 1
       88 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       90 LOADK                            R5 K13 ["%*\"messageId\" > Expected string, got %*"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R9 R0 K12 ["messageId"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K1 [typeof]
       97 CALL                             R8 1 1
       98 NAMECALL                         R5 R5 K4 ["format"]
      100 CALL                             R5 3 1
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETUPVAL                         R3 0
      108 GETTABLEKS                       R3 R3 K14 ["fromResponse"]
      110 GETTABLEKS                       R4 R0 K15 ["conversation"]
      112 MOVE                             R5 R1
      113 LOADK                            R6 K16 ["%*\"conversation\" > "]
      114 MOVE                             R8 R2
      115 NAMECALL                         R6 R6 K4 ["format"]
      117 CALL                             R6 2 1
      118 CALL                             R3 3 1
      119 SETTABLEKS                       R3 R0 K15 ["conversation"]
      121 GETTABLEKS                       R3 R0 K17 ["firstMessage"]
      123 JUMPIFEQKNIL                     R3 ; [+26]
      125 GETTABLEKS                       R4 R0 K17 ["firstMessage"]
      127 FASTCALL1                        TYPEOF R4 ; [+2]
      128 GETIMPORT                        R3 K1 [typeof]
      130 CALL                             R3 1 1
      131 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      133 LOADK                            R5 K19 ["%*\"firstMessage\" > Expected boolean, got %*"]
      134 MOVE                             R7 R2
      135 GETTABLEKS                       R9 R0 K17 ["firstMessage"]
      137 FASTCALL1                        TYPEOF R9 ; [+2]
      138 GETIMPORT                        R8 K1 [typeof]
      140 CALL                             R8 1 1
      141 NAMECALL                         R5 R5 K4 ["format"]
      143 CALL                             R5 3 1
      144 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      146 MOVE                             R4 R1
      147 GETIMPORT                        R3 K6 [table.insert]
      149 CALL                             R3 2 0
      150 GETTABLEKS                       R3 R0 K20 ["useAgenticMode"]
      152 JUMPIFEQKNIL                     R3 ; [+26]
      154 GETTABLEKS                       R4 R0 K20 ["useAgenticMode"]
      156 FASTCALL1                        TYPEOF R4 ; [+2]
      157 GETIMPORT                        R3 K1 [typeof]
      159 CALL                             R3 1 1
      160 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      162 LOADK                            R5 K21 ["%*\"useAgenticMode\" > Expected boolean, got %*"]
      163 MOVE                             R7 R2
      164 GETTABLEKS                       R9 R0 K20 ["useAgenticMode"]
      166 FASTCALL1                        TYPEOF R9 ; [+2]
      167 GETIMPORT                        R8 K1 [typeof]
      169 CALL                             R8 1 1
      170 NAMECALL                         R5 R5 K4 ["format"]
      172 CALL                             R5 3 1
      173 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      175 MOVE                             R4 R1
      176 GETIMPORT                        R3 K6 [table.insert]
      178 CALL                             R3 2 0
      179 GETTABLEKS                       R3 R0 K22 ["isDebugMode"]
      181 JUMPIFEQKNIL                     R3 ; [+26]
      183 GETTABLEKS                       R4 R0 K22 ["isDebugMode"]
      185 FASTCALL1                        TYPEOF R4 ; [+2]
      186 GETIMPORT                        R3 K1 [typeof]
      188 CALL                             R3 1 1
      189 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      191 LOADK                            R5 K23 ["%*\"isDebugMode\" > Expected boolean, got %*"]
      192 MOVE                             R7 R2
      193 GETTABLEKS                       R9 R0 K22 ["isDebugMode"]
      195 FASTCALL1                        TYPEOF R9 ; [+2]
      196 GETIMPORT                        R8 K1 [typeof]
      198 CALL                             R8 1 1
      199 NAMECALL                         R5 R5 K4 ["format"]
      201 CALL                             R5 3 1
      202 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      204 MOVE                             R4 R1
      205 GETIMPORT                        R3 K6 [table.insert]
      207 CALL                             R3 2 0
      208 GETTABLEKS                       R3 R0 K24 ["assistantMode"]
      210 JUMPIFEQKNIL                     R3 ; [+26]
      212 GETTABLEKS                       R4 R0 K24 ["assistantMode"]
      214 FASTCALL1                        TYPEOF R4 ; [+2]
      215 GETIMPORT                        R3 K1 [typeof]
      217 CALL                             R3 1 1
      218 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      220 LOADK                            R5 K25 ["%*\"assistantMode\" > Expected string, got %*"]
      221 MOVE                             R7 R2
      222 GETTABLEKS                       R9 R0 K24 ["assistantMode"]
      224 FASTCALL1                        TYPEOF R9 ; [+2]
      225 GETIMPORT                        R8 K1 [typeof]
      227 CALL                             R8 1 1
      228 NAMECALL                         R5 R5 K4 ["format"]
      230 CALL                             R5 3 1
      231 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      233 MOVE                             R4 R1
      234 GETIMPORT                        R3 K6 [table.insert]
      236 CALL                             R3 2 0
      237 GETTABLEKS                       R3 R0 K26 ["newQuotaChecking"]
      239 JUMPIFEQKNIL                     R3 ; [+26]
      241 GETTABLEKS                       R4 R0 K26 ["newQuotaChecking"]
      243 FASTCALL1                        TYPEOF R4 ; [+2]
      244 GETIMPORT                        R3 K1 [typeof]
      246 CALL                             R3 1 1
      247 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      249 LOADK                            R5 K27 ["%*\"newQuotaChecking\" > Expected boolean, got %*"]
      250 MOVE                             R7 R2
      251 GETTABLEKS                       R9 R0 K26 ["newQuotaChecking"]
      253 FASTCALL1                        TYPEOF R9 ; [+2]
      254 GETIMPORT                        R8 K1 [typeof]
      256 CALL                             R8 1 1
      257 NAMECALL                         R5 R5 K4 ["format"]
      259 CALL                             R5 3 1
      260 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      262 MOVE                             R4 R1
      263 GETIMPORT                        R3 K6 [table.insert]
      265 CALL                             R3 2 0
      266 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["conversation"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["conversation"]
       12 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["Conversation"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
