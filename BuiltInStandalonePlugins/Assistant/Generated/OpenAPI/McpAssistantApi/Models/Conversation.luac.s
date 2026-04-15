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
       25 GETTABLEKS                       R3 R0 K7 ["system"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["system"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"system\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["system"]
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
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K10 ["fromResponse"]
       58 GETTABLEKS                       R4 R0 K11 ["llmConfig"]
       60 MOVE                             R5 R1
       61 LOADK                            R7 K12 ["%*\"llmConfig\" > "]
       62 MOVE                             R9 R2
       63 NAMECALL                         R7 R7 K4 ["format"]
       65 CALL                             R7 2 1
       66 MOVE                             R6 R7
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R0 K11 ["llmConfig"]
       70 GETTABLEKS                       R4 R0 K13 ["messages"]
       72 FASTCALL1                        TYPEOF R4 ; [+2]
       73 GETIMPORT                        R3 K1 [typeof]
       75 CALL                             R3 1 1
       76 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       78 LOADK                            R6 K14 ["%*\"messages\" > Expected table, got %*"]
       79 MOVE                             R8 R2
       80 GETTABLEKS                       R10 R0 K13 ["messages"]
       82 FASTCALL1                        TYPEOF R10 ; [+2]
       83 GETIMPORT                        R9 K1 [typeof]
       85 CALL                             R9 1 1
       86 NAMECALL                         R6 R6 K4 ["format"]
       88 CALL                             R6 3 1
       89 MOVE                             R5 R6
       90 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       92 MOVE                             R4 R1
       93 GETIMPORT                        R3 K6 [table.insert]
       95 CALL                             R3 2 0
       96 JUMP                             ; [+49]
       97 GETTABLEKS                       R3 R0 K13 ["messages"]
       99 LOADNIL                          R4
      100 LOADNIL                          R5
      101 FORGPREP                         R3
      102 FASTCALL1                        TYPEOF R6 ; [+3]
      103 MOVE                             R9 R6
      104 GETIMPORT                        R8 K1 [typeof]
      106 CALL                             R8 1 1
      107 JUMPIFEQKS                       R8 K15 ["number"] ; [+20]
      109 LOADK                            R11 K16 ["%*\"messages\" > Expected index of type number, got %* as %*"]
      110 MOVE                             R13 R2
      111 MOVE                             R14 R6
      112 FASTCALL1                        TYPEOF R6 ; [+3]
      113 MOVE                             R16 R6
      114 GETIMPORT                        R15 K1 [typeof]
      116 CALL                             R15 1 1
      117 NAMECALL                         R11 R11 K4 ["format"]
      119 CALL                             R11 4 1
      120 MOVE                             R10 R11
      121 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      123 MOVE                             R9 R1
      124 GETIMPORT                        R8 K6 [table.insert]
      126 CALL                             R8 2 0
      127 JUMP                             ; [+16]
      128 GETTABLEKS                       R8 R0 K13 ["messages"]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R9 R10 K10 ["fromResponse"]
      133 MOVE                             R10 R7
      134 MOVE                             R11 R1
      135 LOADK                            R13 K17 ["%*\"messages\" > [%*] > "]
      136 MOVE                             R15 R2
      137 MOVE                             R16 R6
      138 NAMECALL                         R13 R13 K4 ["format"]
      140 CALL                             R13 3 1
      141 MOVE                             R12 R13
      142 CALL                             R9 3 1
      143 SETTABLE                         R9 R8 R6
      144 FORGLOOP                         R3 2 ; [-43]
      146 GETTABLEKS                       R4 R0 K18 ["tools"]
      148 FASTCALL1                        TYPEOF R4 ; [+2]
      149 GETIMPORT                        R3 K1 [typeof]
      151 CALL                             R3 1 1
      152 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      154 LOADK                            R6 K19 ["%*\"tools\" > Expected table, got %*"]
      155 MOVE                             R8 R2
      156 GETTABLEKS                       R10 R0 K18 ["tools"]
      158 FASTCALL1                        TYPEOF R10 ; [+2]
      159 GETIMPORT                        R9 K1 [typeof]
      161 CALL                             R9 1 1
      162 NAMECALL                         R6 R6 K4 ["format"]
      164 CALL                             R6 3 1
      165 MOVE                             R5 R6
      166 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      168 MOVE                             R4 R1
      169 GETIMPORT                        R3 K6 [table.insert]
      171 CALL                             R3 2 0
      172 RETURN                           R0 1
      173 GETTABLEKS                       R3 R0 K18 ["tools"]
      175 LOADNIL                          R4
      176 LOADNIL                          R5
      177 FORGPREP                         R3
      178 FASTCALL1                        TYPEOF R6 ; [+3]
      179 MOVE                             R9 R6
      180 GETIMPORT                        R8 K1 [typeof]
      182 CALL                             R8 1 1
      183 JUMPIFEQKS                       R8 K15 ["number"] ; [+20]
      185 LOADK                            R11 K20 ["%*\"tools\" > Expected index of type number, got %* as %*"]
      186 MOVE                             R13 R2
      187 MOVE                             R14 R6
      188 FASTCALL1                        TYPEOF R6 ; [+3]
      189 MOVE                             R16 R6
      190 GETIMPORT                        R15 K1 [typeof]
      192 CALL                             R15 1 1
      193 NAMECALL                         R11 R11 K4 ["format"]
      195 CALL                             R11 4 1
      196 MOVE                             R10 R11
      197 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      199 MOVE                             R9 R1
      200 GETIMPORT                        R8 K6 [table.insert]
      202 CALL                             R8 2 0
      203 JUMP                             ; [+16]
      204 GETTABLEKS                       R8 R0 K18 ["tools"]
      206 GETUPVAL                         R10 2
      207 GETTABLEKS                       R9 R10 K10 ["fromResponse"]
      209 MOVE                             R10 R7
      210 MOVE                             R11 R1
      211 LOADK                            R13 K21 ["%*\"tools\" > [%*] > "]
      212 MOVE                             R15 R2
      213 MOVE                             R16 R6
      214 NAMECALL                         R13 R13 K4 ["format"]
      216 CALL                             R13 3 1
      217 MOVE                             R12 R13
      218 CALL                             R9 3 1
      219 SETTABLE                         R9 R8 R6
      220 FORGLOOP                         R3 2 ; [-43]
      222 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["toRequest"]
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
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K3 ["toRequest"]
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
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K3 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 RETURN                           R1 1

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
       22 GETTABLEKS                       R5 R6 K10 ["LLMConfig"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R7 K11 ["Message"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Models"]
       36 GETTABLEKS                       R7 R8 K12 ["ToolDefinition"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K13 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R8 K14 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 GETIMPORT                        R9 K17 [table.freeze]
       49 DUPTABLE                         R10 K20 [{"fromResponse", "toRequest"}]
       50 SETTABLEKS                       R7 R10 K18 ["fromResponse"]
       52 SETTABLEKS                       R8 R10 K19 ["toRequest"]
       54 CALL                             R9 1 1
       55 RETURN                           R9 1
