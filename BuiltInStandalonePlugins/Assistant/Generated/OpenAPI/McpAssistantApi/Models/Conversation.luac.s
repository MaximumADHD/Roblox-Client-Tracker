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
       27 JUMPIFEQKNIL                     R3 ; [+15]
       29 GETIMPORT                        R3 K10 [string.fromResponse]
       31 GETTABLEKS                       R4 R0 K7 ["system"]
       33 MOVE                             R5 R1
       34 LOADK                            R7 K11 ["%*\"system\" > "]
       35 MOVE                             R9 R2
       36 NAMECALL                         R7 R7 K4 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 CALL                             R3 3 1
       41 SETTABLEKS                       R3 R0 K7 ["system"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K9 ["fromResponse"]
       46 GETTABLEKS                       R4 R0 K12 ["llmConfig"]
       48 MOVE                             R5 R1
       49 LOADK                            R7 K13 ["%*\"llmConfig\" > "]
       50 MOVE                             R9 R2
       51 NAMECALL                         R7 R7 K4 ["format"]
       53 CALL                             R7 2 1
       54 MOVE                             R6 R7
       55 CALL                             R3 3 1
       56 SETTABLEKS                       R3 R0 K12 ["llmConfig"]
       58 GETTABLEKS                       R4 R0 K14 ["messages"]
       60 FASTCALL1                        TYPEOF R4 ; [+2]
       61 GETIMPORT                        R3 K1 [typeof]
       63 CALL                             R3 1 1
       64 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       66 LOADK                            R6 K15 ["%*\"messages\" > Expected table, got %*"]
       67 MOVE                             R8 R2
       68 GETTABLEKS                       R10 R0 K14 ["messages"]
       70 FASTCALL1                        TYPEOF R10 ; [+2]
       71 GETIMPORT                        R9 K1 [typeof]
       73 CALL                             R9 1 1
       74 NAMECALL                         R6 R6 K4 ["format"]
       76 CALL                             R6 3 1
       77 MOVE                             R5 R6
       78 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       80 MOVE                             R4 R1
       81 GETIMPORT                        R3 K6 [table.insert]
       83 CALL                             R3 2 0
       84 JUMP                             ; [+49]
       85 GETTABLEKS                       R3 R0 K14 ["messages"]
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 FASTCALL1                        TYPEOF R6 ; [+3]
       91 MOVE                             R9 R6
       92 GETIMPORT                        R8 K1 [typeof]
       94 CALL                             R8 1 1
       95 JUMPIFEQKS                       R8 K16 ["number"] ; [+20]
       97 LOADK                            R11 K17 ["%*\"messages\" > Expected index of type number, got %* as %*"]
       98 MOVE                             R13 R2
       99 MOVE                             R14 R6
      100 FASTCALL1                        TYPEOF R6 ; [+3]
      101 MOVE                             R16 R6
      102 GETIMPORT                        R15 K1 [typeof]
      104 CALL                             R15 1 1
      105 NAMECALL                         R11 R11 K4 ["format"]
      107 CALL                             R11 4 1
      108 MOVE                             R10 R11
      109 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      111 MOVE                             R9 R1
      112 GETIMPORT                        R8 K6 [table.insert]
      114 CALL                             R8 2 0
      115 JUMP                             ; [+16]
      116 GETTABLEKS                       R8 R0 K14 ["messages"]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K9 ["fromResponse"]
      121 MOVE                             R10 R7
      122 MOVE                             R11 R1
      123 LOADK                            R13 K18 ["%*\"messages\" > [%*] > "]
      124 MOVE                             R15 R2
      125 MOVE                             R16 R6
      126 NAMECALL                         R13 R13 K4 ["format"]
      128 CALL                             R13 3 1
      129 MOVE                             R12 R13
      130 CALL                             R9 3 1
      131 SETTABLE                         R9 R8 R6
      132 FORGLOOP                         R3 2 ; [-43]
      134 GETTABLEKS                       R4 R0 K19 ["tools"]
      136 FASTCALL1                        TYPEOF R4 ; [+2]
      137 GETIMPORT                        R3 K1 [typeof]
      139 CALL                             R3 1 1
      140 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      142 LOADK                            R6 K20 ["%*\"tools\" > Expected table, got %*"]
      143 MOVE                             R8 R2
      144 GETTABLEKS                       R10 R0 K19 ["tools"]
      146 FASTCALL1                        TYPEOF R10 ; [+2]
      147 GETIMPORT                        R9 K1 [typeof]
      149 CALL                             R9 1 1
      150 NAMECALL                         R6 R6 K4 ["format"]
      152 CALL                             R6 3 1
      153 MOVE                             R5 R6
      154 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      156 MOVE                             R4 R1
      157 GETIMPORT                        R3 K6 [table.insert]
      159 CALL                             R3 2 0
      160 RETURN                           R0 1
      161 GETTABLEKS                       R3 R0 K19 ["tools"]
      163 LOADNIL                          R4
      164 LOADNIL                          R5
      165 FORGPREP                         R3
      166 FASTCALL1                        TYPEOF R6 ; [+3]
      167 MOVE                             R9 R6
      168 GETIMPORT                        R8 K1 [typeof]
      170 CALL                             R8 1 1
      171 JUMPIFEQKS                       R8 K16 ["number"] ; [+20]
      173 LOADK                            R11 K21 ["%*\"tools\" > Expected index of type number, got %* as %*"]
      174 MOVE                             R13 R2
      175 MOVE                             R14 R6
      176 FASTCALL1                        TYPEOF R6 ; [+3]
      177 MOVE                             R16 R6
      178 GETIMPORT                        R15 K1 [typeof]
      180 CALL                             R15 1 1
      181 NAMECALL                         R11 R11 K4 ["format"]
      183 CALL                             R11 4 1
      184 MOVE                             R10 R11
      185 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      187 MOVE                             R9 R1
      188 GETIMPORT                        R8 K6 [table.insert]
      190 CALL                             R8 2 0
      191 JUMP                             ; [+16]
      192 GETTABLEKS                       R8 R0 K19 ["tools"]
      194 GETUPVAL                         R10 2
      195 GETTABLEKS                       R9 R10 K9 ["fromResponse"]
      197 MOVE                             R10 R7
      198 MOVE                             R11 R1
      199 LOADK                            R13 K22 ["%*\"tools\" > [%*] > "]
      200 MOVE                             R15 R2
      201 MOVE                             R16 R6
      202 NAMECALL                         R13 R13 K4 ["format"]
      204 CALL                             R13 3 1
      205 MOVE                             R12 R13
      206 CALL                             R9 3 1
      207 SETTABLE                         R9 R8 R6
      208 FORGLOOP                         R3 2 ; [-43]
      210 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["system"]
        6 JUMPIFEQKNIL                     R2 ; [+8]
        8 GETIMPORT                        R2 K6 [string.toRequest]
       10 GETTABLEKS                       R3 R1 K3 ["system"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["system"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K5 ["toRequest"]
       18 GETTABLEKS                       R3 R1 K7 ["llmConfig"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K7 ["llmConfig"]
       23 GETIMPORT                        R2 K2 [table.clone]
       25 GETTABLEKS                       R3 R1 K8 ["messages"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K8 ["messages"]
       30 GETTABLEKS                       R2 R1 K8 ["messages"]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R1 K8 ["messages"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["toRequest"]
       40 MOVE                             R9 R6
       41 CALL                             R8 1 1
       42 SETTABLE                         R8 R7 R5
       43 FORGLOOP                         R2 2 ; [-9]
       45 GETIMPORT                        R2 K2 [table.clone]
       47 GETTABLEKS                       R3 R1 K9 ["tools"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R1 K9 ["tools"]
       52 GETTABLEKS                       R2 R1 K9 ["tools"]
       54 LOADNIL                          R3
       55 LOADNIL                          R4
       56 FORGPREP                         R2
       57 GETTABLEKS                       R7 R1 K9 ["tools"]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R8 R9 K5 ["toRequest"]
       62 MOVE                             R9 R6
       63 CALL                             R8 1 1
       64 SETTABLE                         R8 R7 R5
       65 FORGLOOP                         R2 2 ; [-9]
       67 RETURN                           R1 1

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
