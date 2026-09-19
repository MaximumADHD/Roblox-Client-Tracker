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
       24 GETTABLEKS                       R3 R0 K7 ["dependencyVersion"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["dependencyVersion"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"dependencyVersion\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["dependencyVersion"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["dependencies"]
       55 JUMPIFEQKNIL                     R3 ; [+74]
       57 GETTABLEKS                       R4 R0 K10 ["dependencies"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       65 LOADK                            R5 K11 ["%*\"dependencies\" > Expected table, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["dependencies"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 JUMP                             ; [+47]
       83 GETTABLEKS                       R3 R0 K10 ["dependencies"]
       85 LOADNIL                          R4
       86 LOADNIL                          R5
       87 FORGPREP                         R3
       88 FASTCALL1                        TYPEOF R6 ; [+3]
       89 MOVE                             R9 R6
       90 GETIMPORT                        R8 K1 [typeof]
       92 CALL                             R8 1 1
       93 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       95 LOADK                            R10 K13 ["%*\"dependencies\" > Expected index of type number, got %* as %*"]
       96 MOVE                             R12 R2
       97 MOVE                             R13 R6
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R15 R6
      100 GETIMPORT                        R14 K1 [typeof]
      102 CALL                             R14 1 1
      103 NAMECALL                         R10 R10 K4 ["format"]
      105 CALL                             R10 4 1
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K6 [table.insert]
      111 CALL                             R8 2 0
      112 JUMP                             ; [+15]
      113 GETTABLEKS                       R8 R0 K10 ["dependencies"]
      115 GETUPVAL                         R9 0
      116 GETTABLEKS                       R9 R9 K14 ["fromResponse"]
      118 MOVE                             R10 R7
      119 MOVE                             R11 R1
      120 LOADK                            R12 K15 ["%*\"dependencies\" > [%*] > "]
      121 MOVE                             R14 R2
      122 MOVE                             R15 R6
      123 NAMECALL                         R12 R12 K4 ["format"]
      125 CALL                             R12 3 1
      126 CALL                             R9 3 1
      127 SETTABLE                         R9 R8 R6
      128 FORGLOOP                         R3 2 ; [-41]
      130 GETTABLEKS                       R3 R0 K16 ["standaloneScript"]
      132 JUMPIFEQKNIL                     R3 ; [+26]
      134 GETTABLEKS                       R4 R0 K16 ["standaloneScript"]
      136 FASTCALL1                        TYPEOF R4 ; [+2]
      137 GETIMPORT                        R3 K1 [typeof]
      139 CALL                             R3 1 1
      140 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      142 LOADK                            R5 K17 ["%*\"standaloneScript\" > Expected string, got %*"]
      143 MOVE                             R7 R2
      144 GETTABLEKS                       R9 R0 K16 ["standaloneScript"]
      146 FASTCALL1                        TYPEOF R9 ; [+2]
      147 GETIMPORT                        R8 K1 [typeof]
      149 CALL                             R8 1 1
      150 NAMECALL                         R5 R5 K4 ["format"]
      152 CALL                             R5 3 1
      153 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      155 MOVE                             R4 R1
      156 GETIMPORT                        R3 K6 [table.insert]
      158 CALL                             R3 2 0
      159 GETTABLEKS                       R3 R0 K18 ["script"]
      161 JUMPIFEQKNIL                     R3 ; [+26]
      163 GETTABLEKS                       R4 R0 K18 ["script"]
      165 FASTCALL1                        TYPEOF R4 ; [+2]
      166 GETIMPORT                        R3 K1 [typeof]
      168 CALL                             R3 1 1
      169 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      171 LOADK                            R5 K19 ["%*\"script\" > Expected string, got %*"]
      172 MOVE                             R7 R2
      173 GETTABLEKS                       R9 R0 K18 ["script"]
      175 FASTCALL1                        TYPEOF R9 ; [+2]
      176 GETIMPORT                        R8 K1 [typeof]
      178 CALL                             R8 1 1
      179 NAMECALL                         R5 R5 K4 ["format"]
      181 CALL                             R5 3 1
      182 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      184 MOVE                             R4 R1
      185 GETIMPORT                        R3 K6 [table.insert]
      187 CALL                             R3 2 0
      188 GETTABLEKS                       R3 R0 K20 ["scriptPreviewS3Urls"]
      190 JUMPIFEQKNIL                     R3 ; [+83]
      192 GETTABLEKS                       R4 R0 K20 ["scriptPreviewS3Urls"]
      194 FASTCALL1                        TYPEOF R4 ; [+2]
      195 GETIMPORT                        R3 K1 [typeof]
      197 CALL                             R3 1 1
      198 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      200 LOADK                            R5 K21 ["%*\"scriptPreviewS3Urls\" > Expected table, got %*"]
      201 MOVE                             R7 R2
      202 GETTABLEKS                       R9 R0 K20 ["scriptPreviewS3Urls"]
      204 FASTCALL1                        TYPEOF R9 ; [+2]
      205 GETIMPORT                        R8 K1 [typeof]
      207 CALL                             R8 1 1
      208 NAMECALL                         R5 R5 K4 ["format"]
      210 CALL                             R5 3 1
      211 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      213 MOVE                             R4 R1
      214 GETIMPORT                        R3 K6 [table.insert]
      216 CALL                             R3 2 0
      217 RETURN                           R0 1
      218 GETTABLEKS                       R3 R0 K20 ["scriptPreviewS3Urls"]
      220 LOADNIL                          R4
      221 LOADNIL                          R5
      222 FORGPREP                         R3
      223 FASTCALL1                        TYPEOF R6 ; [+3]
      224 MOVE                             R9 R6
      225 GETIMPORT                        R8 K1 [typeof]
      227 CALL                             R8 1 1
      228 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
      230 LOADK                            R10 K22 ["%*\"scriptPreviewS3Urls\" > Expected index of type number, got %* as %*"]
      231 MOVE                             R12 R2
      232 MOVE                             R13 R6
      233 FASTCALL1                        TYPEOF R6 ; [+3]
      234 MOVE                             R15 R6
      235 GETIMPORT                        R14 K1 [typeof]
      237 CALL                             R14 1 1
      238 NAMECALL                         R10 R10 K4 ["format"]
      240 CALL                             R10 4 1
      241 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      243 MOVE                             R9 R1
      244 GETIMPORT                        R8 K6 [table.insert]
      246 CALL                             R8 2 0
      247 JUMP                             ; [+24]
      248 FASTCALL1                        TYPEOF R7 ; [+3]
      249 MOVE                             R9 R7
      250 GETIMPORT                        R8 K1 [typeof]
      252 CALL                             R8 1 1
      253 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      255 LOADK                            R10 K23 ["%*\"scriptPreviewS3Urls\" > [%*] > Expected string, got %*"]
      256 MOVE                             R12 R2
      257 MOVE                             R13 R6
      258 FASTCALL1                        TYPEOF R7 ; [+3]
      259 MOVE                             R15 R7
      260 GETIMPORT                        R14 K1 [typeof]
      262 CALL                             R14 1 1
      263 NAMECALL                         R10 R10 K4 ["format"]
      265 CALL                             R10 4 1
      266 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      268 MOVE                             R9 R1
      269 GETIMPORT                        R8 K6 [table.insert]
      271 CALL                             R8 2 0
      272 FORGLOOP                         R3 2 ; [-50]
      274 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["dependencies"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["dependencies"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["dependencies"]
       15 GETTABLEKS                       R2 R1 K3 ["dependencies"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["dependencies"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["PrimitiveGenDependencyDto"]
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
