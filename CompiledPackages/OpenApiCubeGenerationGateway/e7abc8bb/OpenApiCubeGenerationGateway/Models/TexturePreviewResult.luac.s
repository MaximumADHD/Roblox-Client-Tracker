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
       24 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       26 JUMPIFEQKNIL                     R3 ; [+83]
       28 GETTABLEKS                       R4 R0 K7 ["imageUrls"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"imageUrls\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["imageUrls"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+56]
       54 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"imageUrls\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+24]
       84 FASTCALL1                        TYPEOF R7 ; [+3]
       85 MOVE                             R9 R7
       86 GETIMPORT                        R8 K1 [typeof]
       88 CALL                             R8 1 1
       89 JUMPIFEQKS                       R8 K11 ["string"] ; [+18]
       91 LOADK                            R10 K12 ["%*\"imageUrls\" > [%*] > Expected string, got %*"]
       92 MOVE                             R12 R2
       93 MOVE                             R13 R6
       94 FASTCALL1                        TYPEOF R7 ; [+3]
       95 MOVE                             R15 R7
       96 GETIMPORT                        R14 K1 [typeof]
       98 CALL                             R14 1 1
       99 NAMECALL                         R10 R10 K4 ["format"]
      101 CALL                             R10 4 1
      102 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      104 MOVE                             R9 R1
      105 GETIMPORT                        R8 K6 [table.insert]
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-50]
      110 GETTABLEKS                       R3 R0 K13 ["images"]
      112 JUMPIFEQKNIL                     R3 ; [+74]
      114 GETTABLEKS                       R4 R0 K13 ["images"]
      116 FASTCALL1                        TYPEOF R4 ; [+2]
      117 GETIMPORT                        R3 K1 [typeof]
      119 CALL                             R3 1 1
      120 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      122 LOADK                            R5 K14 ["%*\"images\" > Expected table, got %*"]
      123 MOVE                             R7 R2
      124 GETTABLEKS                       R9 R0 K13 ["images"]
      126 FASTCALL1                        TYPEOF R9 ; [+2]
      127 GETIMPORT                        R8 K1 [typeof]
      129 CALL                             R8 1 1
      130 NAMECALL                         R5 R5 K4 ["format"]
      132 CALL                             R5 3 1
      133 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      135 MOVE                             R4 R1
      136 GETIMPORT                        R3 K6 [table.insert]
      138 CALL                             R3 2 0
      139 JUMP                             ; [+47]
      140 GETTABLEKS                       R3 R0 K13 ["images"]
      142 LOADNIL                          R4
      143 LOADNIL                          R5
      144 FORGPREP                         R3
      145 FASTCALL1                        TYPEOF R6 ; [+3]
      146 MOVE                             R9 R6
      147 GETIMPORT                        R8 K1 [typeof]
      149 CALL                             R8 1 1
      150 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      152 LOADK                            R10 K15 ["%*\"images\" > Expected index of type number, got %* as %*"]
      153 MOVE                             R12 R2
      154 MOVE                             R13 R6
      155 FASTCALL1                        TYPEOF R6 ; [+3]
      156 MOVE                             R15 R6
      157 GETIMPORT                        R14 K1 [typeof]
      159 CALL                             R14 1 1
      160 NAMECALL                         R10 R10 K4 ["format"]
      162 CALL                             R10 4 1
      163 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      165 MOVE                             R9 R1
      166 GETIMPORT                        R8 K6 [table.insert]
      168 CALL                             R8 2 0
      169 JUMP                             ; [+15]
      170 GETTABLEKS                       R8 R0 K13 ["images"]
      172 GETUPVAL                         R9 0
      173 GETTABLEKS                       R9 R9 K16 ["fromResponse"]
      175 MOVE                             R10 R7
      176 MOVE                             R11 R1
      177 LOADK                            R12 K17 ["%*\"images\" > [%*] > "]
      178 MOVE                             R14 R2
      179 MOVE                             R15 R6
      180 NAMECALL                         R12 R12 K4 ["format"]
      182 CALL                             R12 3 1
      183 CALL                             R9 3 1
      184 SETTABLE                         R9 R8 R6
      185 FORGLOOP                         R3 2 ; [-41]
      187 GETTABLEKS                       R3 R0 K18 ["camera"]
      189 JUMPIFEQKNIL                     R3 ; [+15]
      191 GETUPVAL                         R3 1
      192 GETTABLEKS                       R3 R3 K16 ["fromResponse"]
      194 GETTABLEKS                       R4 R0 K18 ["camera"]
      196 MOVE                             R5 R1
      197 LOADK                            R6 K19 ["%*\"camera\" > "]
      198 MOVE                             R8 R2
      199 NAMECALL                         R6 R6 K4 ["format"]
      201 CALL                             R6 2 1
      202 CALL                             R3 3 1
      203 SETTABLEKS                       R3 R0 K18 ["camera"]
      205 GETTABLEKS                       R3 R0 K20 ["artifactKeys"]
      207 JUMPIFEQKNIL                     R3 ; [+83]
      209 GETTABLEKS                       R4 R0 K20 ["artifactKeys"]
      211 FASTCALL1                        TYPEOF R4 ; [+2]
      212 GETIMPORT                        R3 K1 [typeof]
      214 CALL                             R3 1 1
      215 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      217 LOADK                            R5 K21 ["%*\"artifactKeys\" > Expected table, got %*"]
      218 MOVE                             R7 R2
      219 GETTABLEKS                       R9 R0 K20 ["artifactKeys"]
      221 FASTCALL1                        TYPEOF R9 ; [+2]
      222 GETIMPORT                        R8 K1 [typeof]
      224 CALL                             R8 1 1
      225 NAMECALL                         R5 R5 K4 ["format"]
      227 CALL                             R5 3 1
      228 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      230 MOVE                             R4 R1
      231 GETIMPORT                        R3 K6 [table.insert]
      233 CALL                             R3 2 0
      234 RETURN                           R0 1
      235 GETTABLEKS                       R3 R0 K20 ["artifactKeys"]
      237 LOADNIL                          R4
      238 LOADNIL                          R5
      239 FORGPREP                         R3
      240 FASTCALL1                        TYPEOF R6 ; [+3]
      241 MOVE                             R9 R6
      242 GETIMPORT                        R8 K1 [typeof]
      244 CALL                             R8 1 1
      245 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      247 LOADK                            R10 K22 ["%*\"artifactKeys\" > Expected index of type number, got %* as %*"]
      248 MOVE                             R12 R2
      249 MOVE                             R13 R6
      250 FASTCALL1                        TYPEOF R6 ; [+3]
      251 MOVE                             R15 R6
      252 GETIMPORT                        R14 K1 [typeof]
      254 CALL                             R14 1 1
      255 NAMECALL                         R10 R10 K4 ["format"]
      257 CALL                             R10 4 1
      258 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      260 MOVE                             R9 R1
      261 GETIMPORT                        R8 K6 [table.insert]
      263 CALL                             R8 2 0
      264 JUMP                             ; [+24]
      265 FASTCALL1                        TYPEOF R7 ; [+3]
      266 MOVE                             R9 R7
      267 GETIMPORT                        R8 K1 [typeof]
      269 CALL                             R8 1 1
      270 JUMPIFEQKS                       R8 K11 ["string"] ; [+18]
      272 LOADK                            R10 K23 ["%*\"artifactKeys\" > [%*] > Expected string, got %*"]
      273 MOVE                             R12 R2
      274 MOVE                             R13 R6
      275 FASTCALL1                        TYPEOF R7 ; [+3]
      276 MOVE                             R15 R7
      277 GETIMPORT                        R14 K1 [typeof]
      279 CALL                             R14 1 1
      280 NAMECALL                         R10 R10 K4 ["format"]
      282 CALL                             R10 4 1
      283 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      285 MOVE                             R9 R1
      286 GETIMPORT                        R8 K6 [table.insert]
      288 CALL                             R8 2 0
      289 FORGLOOP                         R3 2 ; [-50]
      291 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["images"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["images"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["images"]
       15 GETTABLEKS                       R2 R1 K3 ["images"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["images"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["camera"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["camera"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["camera"]
       42 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["TexturePreviewCamera"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["TexturePreviewImage"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
