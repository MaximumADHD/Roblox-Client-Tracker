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
       24 GETTABLEKS                       R3 R0 K7 ["textPrompt"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["textPrompt"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"textPrompt\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["textPrompt"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["schema"]
       55 JUMPIFEQKNIL                     R3 ; [+15]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
       60 GETTABLEKS                       R4 R0 K10 ["schema"]
       62 MOVE                             R5 R1
       63 LOADK                            R6 K12 ["%*\"schema\" > "]
       64 MOVE                             R8 R2
       65 NAMECALL                         R6 R6 K4 ["format"]
       67 CALL                             R6 2 1
       68 CALL                             R3 3 1
       69 SETTABLEKS                       R3 R0 K10 ["schema"]
       71 GETTABLEKS                       R3 R0 K13 ["predefinedSchema"]
       73 JUMPIFEQKNIL                     R3 ; [+26]
       75 GETTABLEKS                       R4 R0 K13 ["predefinedSchema"]
       77 FASTCALL1                        TYPEOF R4 ; [+2]
       78 GETIMPORT                        R3 K1 [typeof]
       80 CALL                             R3 1 1
       81 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       83 LOADK                            R5 K14 ["%*\"predefinedSchema\" > Expected string, got %*"]
       84 MOVE                             R7 R2
       85 GETTABLEKS                       R9 R0 K13 ["predefinedSchema"]
       87 FASTCALL1                        TYPEOF R9 ; [+2]
       88 GETIMPORT                        R8 K1 [typeof]
       90 CALL                             R8 1 1
       91 NAMECALL                         R5 R5 K4 ["format"]
       93 CALL                             R5 3 1
       94 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       96 MOVE                             R4 R1
       97 GETIMPORT                        R3 K6 [table.insert]
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R3 R0 K15 ["schemaDefinition"]
      102 JUMPIFEQKNIL                     R3 ; [+83]
      104 GETTABLEKS                       R4 R0 K15 ["schemaDefinition"]
      106 FASTCALL1                        TYPEOF R4 ; [+2]
      107 GETIMPORT                        R3 K1 [typeof]
      109 CALL                             R3 1 1
      110 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      112 LOADK                            R5 K16 ["%*\"schemaDefinition\" > Expected table, got %*"]
      113 MOVE                             R7 R2
      114 GETTABLEKS                       R9 R0 K15 ["schemaDefinition"]
      116 FASTCALL1                        TYPEOF R9 ; [+2]
      117 GETIMPORT                        R8 K1 [typeof]
      119 CALL                             R8 1 1
      120 NAMECALL                         R5 R5 K4 ["format"]
      122 CALL                             R5 3 1
      123 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      125 MOVE                             R4 R1
      126 GETIMPORT                        R3 K6 [table.insert]
      128 CALL                             R3 2 0
      129 JUMP                             ; [+56]
      130 GETTABLEKS                       R3 R0 K15 ["schemaDefinition"]
      132 LOADNIL                          R4
      133 LOADNIL                          R5
      134 FORGPREP                         R3
      135 FASTCALL1                        TYPEOF R6 ; [+3]
      136 MOVE                             R9 R6
      137 GETIMPORT                        R8 K1 [typeof]
      139 CALL                             R8 1 1
      140 JUMPIFEQKS                       R8 K17 ["number"] ; [+19]
      142 LOADK                            R10 K18 ["%*\"schemaDefinition\" > Expected index of type number, got %* as %*"]
      143 MOVE                             R12 R2
      144 MOVE                             R13 R6
      145 FASTCALL1                        TYPEOF R6 ; [+3]
      146 MOVE                             R15 R6
      147 GETIMPORT                        R14 K1 [typeof]
      149 CALL                             R14 1 1
      150 NAMECALL                         R10 R10 K4 ["format"]
      152 CALL                             R10 4 1
      153 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      155 MOVE                             R9 R1
      156 GETIMPORT                        R8 K6 [table.insert]
      158 CALL                             R8 2 0
      159 JUMP                             ; [+24]
      160 FASTCALL1                        TYPEOF R7 ; [+3]
      161 MOVE                             R9 R7
      162 GETIMPORT                        R8 K1 [typeof]
      164 CALL                             R8 1 1
      165 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      167 LOADK                            R10 K19 ["%*\"schemaDefinition\" > [%*] > Expected string, got %*"]
      168 MOVE                             R12 R2
      169 MOVE                             R13 R6
      170 FASTCALL1                        TYPEOF R7 ; [+3]
      171 MOVE                             R15 R7
      172 GETIMPORT                        R14 K1 [typeof]
      174 CALL                             R14 1 1
      175 NAMECALL                         R10 R10 K4 ["format"]
      177 CALL                             R10 4 1
      178 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      180 MOVE                             R9 R1
      181 GETIMPORT                        R8 K6 [table.insert]
      183 CALL                             R8 2 0
      184 FORGLOOP                         R3 2 ; [-50]
      186 GETTABLEKS                       R3 R0 K20 ["imageS3Url"]
      188 JUMPIFEQKNIL                     R3 ; [+26]
      190 GETTABLEKS                       R4 R0 K20 ["imageS3Url"]
      192 FASTCALL1                        TYPEOF R4 ; [+2]
      193 GETIMPORT                        R3 K1 [typeof]
      195 CALL                             R3 1 1
      196 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      198 LOADK                            R5 K21 ["%*\"imageS3Url\" > Expected string, got %*"]
      199 MOVE                             R7 R2
      200 GETTABLEKS                       R9 R0 K20 ["imageS3Url"]
      202 FASTCALL1                        TYPEOF R9 ; [+2]
      203 GETIMPORT                        R8 K1 [typeof]
      205 CALL                             R8 1 1
      206 NAMECALL                         R5 R5 K4 ["format"]
      208 CALL                             R5 3 1
      209 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      211 MOVE                             R4 R1
      212 GETIMPORT                        R3 K6 [table.insert]
      214 CALL                             R3 2 0
      215 RETURN                           R0 1

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
        3 LOADK                            R2 K2 ["OpenApiCubeGenerationGateway"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ModelGenSchemaEnum"]
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
