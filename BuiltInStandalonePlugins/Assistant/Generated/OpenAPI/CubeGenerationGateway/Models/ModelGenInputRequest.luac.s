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
       25 GETTABLEKS                       R3 R0 K7 ["textPrompt"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["textPrompt"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"textPrompt\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["textPrompt"]
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
       55 GETTABLEKS                       R3 R0 K10 ["schema"]
       57 JUMPIFEQKNIL                     R3 ; [+16]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
       62 GETTABLEKS                       R4 R0 K10 ["schema"]
       64 MOVE                             R5 R1
       65 LOADK                            R7 K12 ["%*\"schema\" > "]
       66 MOVE                             R9 R2
       67 NAMECALL                         R7 R7 K4 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R3 3 1
       72 SETTABLEKS                       R3 R0 K10 ["schema"]
       74 GETTABLEKS                       R3 R0 K13 ["predefinedSchema"]
       76 JUMPIFEQKNIL                     R3 ; [+27]
       78 GETTABLEKS                       R4 R0 K13 ["predefinedSchema"]
       80 FASTCALL1                        TYPEOF R4 ; [+2]
       81 GETIMPORT                        R3 K1 [typeof]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       86 LOADK                            R6 K14 ["%*\"predefinedSchema\" > Expected string, got %*"]
       87 MOVE                             R8 R2
       88 GETTABLEKS                       R10 R0 K13 ["predefinedSchema"]
       90 FASTCALL1                        TYPEOF R10 ; [+2]
       91 GETIMPORT                        R9 K1 [typeof]
       93 CALL                             R9 1 1
       94 NAMECALL                         R6 R6 K4 ["format"]
       96 CALL                             R6 3 1
       97 MOVE                             R5 R6
       98 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      100 MOVE                             R4 R1
      101 GETIMPORT                        R3 K6 [table.insert]
      103 CALL                             R3 2 0
      104 GETTABLEKS                       R3 R0 K15 ["schemaDefinition"]
      106 JUMPIFEQKNIL                     R3 ; [+86]
      108 GETTABLEKS                       R4 R0 K15 ["schemaDefinition"]
      110 FASTCALL1                        TYPEOF R4 ; [+2]
      111 GETIMPORT                        R3 K1 [typeof]
      113 CALL                             R3 1 1
      114 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      116 LOADK                            R6 K16 ["%*\"schemaDefinition\" > Expected table, got %*"]
      117 MOVE                             R8 R2
      118 GETTABLEKS                       R10 R0 K15 ["schemaDefinition"]
      120 FASTCALL1                        TYPEOF R10 ; [+2]
      121 GETIMPORT                        R9 K1 [typeof]
      123 CALL                             R9 1 1
      124 NAMECALL                         R6 R6 K4 ["format"]
      126 CALL                             R6 3 1
      127 MOVE                             R5 R6
      128 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      130 MOVE                             R4 R1
      131 GETIMPORT                        R3 K6 [table.insert]
      133 CALL                             R3 2 0
      134 JUMP                             ; [+58]
      135 GETTABLEKS                       R3 R0 K15 ["schemaDefinition"]
      137 LOADNIL                          R4
      138 LOADNIL                          R5
      139 FORGPREP                         R3
      140 FASTCALL1                        TYPEOF R6 ; [+3]
      141 MOVE                             R9 R6
      142 GETIMPORT                        R8 K1 [typeof]
      144 CALL                             R8 1 1
      145 JUMPIFEQKS                       R8 K17 ["number"] ; [+20]
      147 LOADK                            R11 K18 ["%*\"schemaDefinition\" > Expected index of type number, got %* as %*"]
      148 MOVE                             R13 R2
      149 MOVE                             R14 R6
      150 FASTCALL1                        TYPEOF R6 ; [+3]
      151 MOVE                             R16 R6
      152 GETIMPORT                        R15 K1 [typeof]
      154 CALL                             R15 1 1
      155 NAMECALL                         R11 R11 K4 ["format"]
      157 CALL                             R11 4 1
      158 MOVE                             R10 R11
      159 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      161 MOVE                             R9 R1
      162 GETIMPORT                        R8 K6 [table.insert]
      164 CALL                             R8 2 0
      165 JUMP                             ; [+25]
      166 FASTCALL1                        TYPEOF R7 ; [+3]
      167 MOVE                             R9 R7
      168 GETIMPORT                        R8 K1 [typeof]
      170 CALL                             R8 1 1
      171 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      173 LOADK                            R11 K19 ["%*\"schemaDefinition\" > [%*] > Expected string, got %*"]
      174 MOVE                             R13 R2
      175 MOVE                             R14 R6
      176 FASTCALL1                        TYPEOF R7 ; [+3]
      177 MOVE                             R16 R7
      178 GETIMPORT                        R15 K1 [typeof]
      180 CALL                             R15 1 1
      181 NAMECALL                         R11 R11 K4 ["format"]
      183 CALL                             R11 4 1
      184 MOVE                             R10 R11
      185 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      187 MOVE                             R9 R1
      188 GETIMPORT                        R8 K6 [table.insert]
      190 CALL                             R8 2 0
      191 FORGLOOP                         R3 2 ; [-52]
      193 GETTABLEKS                       R3 R0 K20 ["imageS3Url"]
      195 JUMPIFEQKNIL                     R3 ; [+27]
      197 GETTABLEKS                       R4 R0 K20 ["imageS3Url"]
      199 FASTCALL1                        TYPEOF R4 ; [+2]
      200 GETIMPORT                        R3 K1 [typeof]
      202 CALL                             R3 1 1
      203 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      205 LOADK                            R6 K21 ["%*\"imageS3Url\" > Expected string, got %*"]
      206 MOVE                             R8 R2
      207 GETTABLEKS                       R10 R0 K20 ["imageS3Url"]
      209 FASTCALL1                        TYPEOF R10 ; [+2]
      210 GETIMPORT                        R9 K1 [typeof]
      212 CALL                             R9 1 1
      213 NAMECALL                         R6 R6 K4 ["format"]
      215 CALL                             R6 3 1
      216 MOVE                             R5 R6
      217 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      219 MOVE                             R4 R1
      220 GETIMPORT                        R3 K6 [table.insert]
      222 CALL                             R3 2 0
      223 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["schema"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["schema"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["schema"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CubeGenerationGateway"]
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
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["ModelGenSchemaEnum"]
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
