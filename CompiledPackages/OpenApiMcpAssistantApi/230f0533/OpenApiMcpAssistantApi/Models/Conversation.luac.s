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
       24 GETTABLEKS                       R3 R0 K7 ["system"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["system"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"system\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["system"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K10 ["fromResponse"]
       56 GETTABLEKS                       R4 R0 K11 ["llmConfig"]
       58 MOVE                             R5 R1
       59 LOADK                            R6 K12 ["%*\"llmConfig\" > "]
       60 MOVE                             R8 R2
       61 NAMECALL                         R6 R6 K4 ["format"]
       63 CALL                             R6 2 1
       64 CALL                             R3 3 1
       65 SETTABLEKS                       R3 R0 K11 ["llmConfig"]
       67 GETTABLEKS                       R4 R0 K13 ["messages"]
       69 FASTCALL1                        TYPEOF R4 ; [+2]
       70 GETIMPORT                        R3 K1 [typeof]
       72 CALL                             R3 1 1
       73 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       75 LOADK                            R5 K14 ["%*\"messages\" > Expected table, got %*"]
       76 MOVE                             R7 R2
       77 GETTABLEKS                       R9 R0 K13 ["messages"]
       79 FASTCALL1                        TYPEOF R9 ; [+2]
       80 GETIMPORT                        R8 K1 [typeof]
       82 CALL                             R8 1 1
       83 NAMECALL                         R5 R5 K4 ["format"]
       85 CALL                             R5 3 1
       86 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       88 MOVE                             R4 R1
       89 GETIMPORT                        R3 K6 [table.insert]
       91 CALL                             R3 2 0
       92 JUMP                             ; [+47]
       93 GETTABLEKS                       R3 R0 K13 ["messages"]
       95 LOADNIL                          R4
       96 LOADNIL                          R5
       97 FORGPREP                         R3
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R9 R6
      100 GETIMPORT                        R8 K1 [typeof]
      102 CALL                             R8 1 1
      103 JUMPIFEQKS                       R8 K15 ["number"] ; [+19]
      105 LOADK                            R10 K16 ["%*\"messages\" > Expected index of type number, got %* as %*"]
      106 MOVE                             R12 R2
      107 MOVE                             R13 R6
      108 FASTCALL1                        TYPEOF R6 ; [+3]
      109 MOVE                             R15 R6
      110 GETIMPORT                        R14 K1 [typeof]
      112 CALL                             R14 1 1
      113 NAMECALL                         R10 R10 K4 ["format"]
      115 CALL                             R10 4 1
      116 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      118 MOVE                             R9 R1
      119 GETIMPORT                        R8 K6 [table.insert]
      121 CALL                             R8 2 0
      122 JUMP                             ; [+15]
      123 GETTABLEKS                       R8 R0 K13 ["messages"]
      125 GETUPVAL                         R9 1
      126 GETTABLEKS                       R9 R9 K10 ["fromResponse"]
      128 MOVE                             R10 R7
      129 MOVE                             R11 R1
      130 LOADK                            R12 K17 ["%*\"messages\" > [%*] > "]
      131 MOVE                             R14 R2
      132 MOVE                             R15 R6
      133 NAMECALL                         R12 R12 K4 ["format"]
      135 CALL                             R12 3 1
      136 CALL                             R9 3 1
      137 SETTABLE                         R9 R8 R6
      138 FORGLOOP                         R3 2 ; [-41]
      140 GETTABLEKS                       R4 R0 K18 ["tools"]
      142 FASTCALL1                        TYPEOF R4 ; [+2]
      143 GETIMPORT                        R3 K1 [typeof]
      145 CALL                             R3 1 1
      146 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      148 LOADK                            R5 K19 ["%*\"tools\" > Expected table, got %*"]
      149 MOVE                             R7 R2
      150 GETTABLEKS                       R9 R0 K18 ["tools"]
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
      166 GETTABLEKS                       R3 R0 K18 ["tools"]
      168 LOADNIL                          R4
      169 LOADNIL                          R5
      170 FORGPREP                         R3
      171 FASTCALL1                        TYPEOF R6 ; [+3]
      172 MOVE                             R9 R6
      173 GETIMPORT                        R8 K1 [typeof]
      175 CALL                             R8 1 1
      176 JUMPIFEQKS                       R8 K15 ["number"] ; [+19]
      178 LOADK                            R10 K20 ["%*\"tools\" > Expected index of type number, got %* as %*"]
      179 MOVE                             R12 R2
      180 MOVE                             R13 R6
      181 FASTCALL1                        TYPEOF R6 ; [+3]
      182 MOVE                             R15 R6
      183 GETIMPORT                        R14 K1 [typeof]
      185 CALL                             R14 1 1
      186 NAMECALL                         R10 R10 K4 ["format"]
      188 CALL                             R10 4 1
      189 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      191 MOVE                             R9 R1
      192 GETIMPORT                        R8 K6 [table.insert]
      194 CALL                             R8 2 0
      195 JUMP                             ; [+15]
      196 GETTABLEKS                       R8 R0 K18 ["tools"]
      198 GETUPVAL                         R9 2
      199 GETTABLEKS                       R9 R9 K10 ["fromResponse"]
      201 MOVE                             R10 R7
      202 MOVE                             R11 R1
      203 LOADK                            R12 K21 ["%*\"tools\" > [%*] > "]
      204 MOVE                             R14 R2
      205 MOVE                             R15 R6
      206 NAMECALL                         R12 R12 K4 ["format"]
      208 CALL                             R12 3 1
      209 CALL                             R9 3 1
      210 SETTABLE                         R9 R8 R6
      211 FORGLOOP                         R3 2 ; [-41]
      213 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["llmConfig"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["llmConfig"]
       12 GETIMPORT                        R2 K2 [table.clone]
       14 GETTABLEKS                       R3 R1 K5 ["messages"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K5 ["messages"]
       19 GETTABLEKS                       R2 R1 K5 ["messages"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLEKS                       R7 R1 K5 ["messages"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K3 ["toRequest"]
       29 MOVE                             R9 R6
       30 CALL                             R8 1 1
       31 SETTABLE                         R8 R7 R5
       32 FORGLOOP                         R2 2 ; [-9]
       34 GETIMPORT                        R2 K2 [table.clone]
       36 GETTABLEKS                       R3 R1 K6 ["tools"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K6 ["tools"]
       41 GETTABLEKS                       R2 R1 K6 ["tools"]
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R1 K6 ["tools"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K3 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["LLMConfig"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["Message"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["ToolDefinition"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
