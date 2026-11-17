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
       24 GETTABLEKS                       R3 R0 K7 ["model"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["model"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"model\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["model"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["seed"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["seed"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
       65 LOADK                            R5 K12 ["%*\"seed\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["seed"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K13 ["resolution"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K13 ["resolution"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"resolution\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K13 ["resolution"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["image"]
      113 JUMPIFEQKNIL                     R3 ; [+15]
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K16 ["fromResponse"]
      118 GETTABLEKS                       R4 R0 K15 ["image"]
      120 MOVE                             R5 R1
      121 LOADK                            R6 K17 ["%*\"image\" > "]
      122 MOVE                             R8 R2
      123 NAMECALL                         R6 R6 K4 ["format"]
      125 CALL                             R6 2 1
      126 CALL                             R3 3 1
      127 SETTABLEKS                       R3 R0 K15 ["image"]
      129 GETTABLEKS                       R3 R0 K18 ["artifactKeys"]
      131 JUMPIFEQKNIL                     R3 ; [+83]
      133 GETTABLEKS                       R4 R0 K18 ["artifactKeys"]
      135 FASTCALL1                        TYPEOF R4 ; [+2]
      136 GETIMPORT                        R3 K1 [typeof]
      138 CALL                             R3 1 1
      139 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      141 LOADK                            R5 K19 ["%*\"artifactKeys\" > Expected table, got %*"]
      142 MOVE                             R7 R2
      143 GETTABLEKS                       R9 R0 K18 ["artifactKeys"]
      145 FASTCALL1                        TYPEOF R9 ; [+2]
      146 GETIMPORT                        R8 K1 [typeof]
      148 CALL                             R8 1 1
      149 NAMECALL                         R5 R5 K4 ["format"]
      151 CALL                             R5 3 1
      152 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      154 MOVE                             R4 R1
      155 GETIMPORT                        R3 K6 [table.insert]
      157 CALL                             R3 2 0
      158 RETURN                           R0 1
      159 GETTABLEKS                       R3 R0 K18 ["artifactKeys"]
      161 LOADNIL                          R4
      162 LOADNIL                          R5
      163 FORGPREP                         R3
      164 FASTCALL1                        TYPEOF R6 ; [+3]
      165 MOVE                             R9 R6
      166 GETIMPORT                        R8 K1 [typeof]
      168 CALL                             R8 1 1
      169 JUMPIFEQKS                       R8 K11 ["number"] ; [+19]
      171 LOADK                            R10 K20 ["%*\"artifactKeys\" > Expected index of type number, got %* as %*"]
      172 MOVE                             R12 R2
      173 MOVE                             R13 R6
      174 FASTCALL1                        TYPEOF R6 ; [+3]
      175 MOVE                             R15 R6
      176 GETIMPORT                        R14 K1 [typeof]
      178 CALL                             R14 1 1
      179 NAMECALL                         R10 R10 K4 ["format"]
      181 CALL                             R10 4 1
      182 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      184 MOVE                             R9 R1
      185 GETIMPORT                        R8 K6 [table.insert]
      187 CALL                             R8 2 0
      188 JUMP                             ; [+24]
      189 FASTCALL1                        TYPEOF R7 ; [+3]
      190 MOVE                             R9 R7
      191 GETIMPORT                        R8 K1 [typeof]
      193 CALL                             R8 1 1
      194 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      196 LOADK                            R10 K21 ["%*\"artifactKeys\" > [%*] > Expected string, got %*"]
      197 MOVE                             R12 R2
      198 MOVE                             R13 R6
      199 FASTCALL1                        TYPEOF R7 ; [+3]
      200 MOVE                             R15 R7
      201 GETIMPORT                        R14 K1 [typeof]
      203 CALL                             R14 1 1
      204 NAMECALL                         R10 R10 K4 ["format"]
      206 CALL                             R10 4 1
      207 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      209 MOVE                             R9 R1
      210 GETIMPORT                        R8 K6 [table.insert]
      212 CALL                             R8 2 0
      213 FORGLOOP                         R3 2 ; [-50]
      215 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["image"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["image"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["image"]
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
       18 GETTABLEKS                       R4 R4 K9 ["GeneratedImageDto"]
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
