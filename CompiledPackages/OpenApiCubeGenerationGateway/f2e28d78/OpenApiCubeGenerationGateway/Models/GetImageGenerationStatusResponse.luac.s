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
       25 GETTABLEKS                       R3 R0 K7 ["imageGenerationId"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["imageGenerationId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"imageGenerationId\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["imageGenerationId"]
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
       55 GETTABLEKS                       R3 R0 K10 ["startTime"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["startTime"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"startTime\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["startTime"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 NAMECALL                         R6 R6 K4 ["format"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       81 MOVE                             R4 R1
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 GETTABLEKS                       R3 R0 K12 ["closeTime"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["closeTime"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       97 LOADK                            R6 K13 ["%*\"closeTime\" > Expected string, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["closeTime"]
      101 FASTCALL1                        TYPEOF R10 ; [+2]
      102 GETIMPORT                        R9 K1 [typeof]
      104 CALL                             R9 1 1
      105 NAMECALL                         R6 R6 K4 ["format"]
      107 CALL                             R6 3 1
      108 MOVE                             R5 R6
      109 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      111 MOVE                             R4 R1
      112 GETIMPORT                        R3 K6 [table.insert]
      114 CALL                             R3 2 0
      115 GETTABLEKS                       R3 R0 K14 ["status"]
      117 JUMPIFEQKNIL                     R3 ; [+27]
      119 GETTABLEKS                       R4 R0 K14 ["status"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      127 LOADK                            R6 K15 ["%*\"status\" > Expected string, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K14 ["status"]
      131 FASTCALL1                        TYPEOF R10 ; [+2]
      132 GETIMPORT                        R9 K1 [typeof]
      134 CALL                             R9 1 1
      135 NAMECALL                         R6 R6 K4 ["format"]
      137 CALL                             R6 3 1
      138 MOVE                             R5 R6
      139 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      141 MOVE                             R4 R1
      142 GETIMPORT                        R3 K6 [table.insert]
      144 CALL                             R3 2 0
      145 GETTABLEKS                       R3 R0 K16 ["currentStage"]
      147 JUMPIFEQKNIL                     R3 ; [+27]
      149 GETTABLEKS                       R4 R0 K16 ["currentStage"]
      151 FASTCALL1                        TYPEOF R4 ; [+2]
      152 GETIMPORT                        R3 K1 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      157 LOADK                            R6 K17 ["%*\"currentStage\" > Expected string, got %*"]
      158 MOVE                             R8 R2
      159 GETTABLEKS                       R10 R0 K16 ["currentStage"]
      161 FASTCALL1                        TYPEOF R10 ; [+2]
      162 GETIMPORT                        R9 K1 [typeof]
      164 CALL                             R9 1 1
      165 NAMECALL                         R6 R6 K4 ["format"]
      167 CALL                             R6 3 1
      168 MOVE                             R5 R6
      169 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      171 MOVE                             R4 R1
      172 GETIMPORT                        R3 K6 [table.insert]
      174 CALL                             R3 2 0
      175 GETTABLEKS                       R3 R0 K18 ["progressUpdates"]
      177 JUMPIFEQKNIL                     R3 ; [+77]
      179 GETTABLEKS                       R4 R0 K18 ["progressUpdates"]
      181 FASTCALL1                        TYPEOF R4 ; [+2]
      182 GETIMPORT                        R3 K1 [typeof]
      184 CALL                             R3 1 1
      185 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      187 LOADK                            R6 K19 ["%*\"progressUpdates\" > Expected table, got %*"]
      188 MOVE                             R8 R2
      189 GETTABLEKS                       R10 R0 K18 ["progressUpdates"]
      191 FASTCALL1                        TYPEOF R10 ; [+2]
      192 GETIMPORT                        R9 K1 [typeof]
      194 CALL                             R9 1 1
      195 NAMECALL                         R6 R6 K4 ["format"]
      197 CALL                             R6 3 1
      198 MOVE                             R5 R6
      199 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      201 MOVE                             R4 R1
      202 GETIMPORT                        R3 K6 [table.insert]
      204 CALL                             R3 2 0
      205 JUMP                             ; [+49]
      206 GETTABLEKS                       R3 R0 K18 ["progressUpdates"]
      208 LOADNIL                          R4
      209 LOADNIL                          R5
      210 FORGPREP                         R3
      211 FASTCALL1                        TYPEOF R6 ; [+3]
      212 MOVE                             R9 R6
      213 GETIMPORT                        R8 K1 [typeof]
      215 CALL                             R8 1 1
      216 JUMPIFEQKS                       R8 K20 ["number"] ; [+20]
      218 LOADK                            R11 K21 ["%*\"progressUpdates\" > Expected index of type number, got %* as %*"]
      219 MOVE                             R13 R2
      220 MOVE                             R14 R6
      221 FASTCALL1                        TYPEOF R6 ; [+3]
      222 MOVE                             R16 R6
      223 GETIMPORT                        R15 K1 [typeof]
      225 CALL                             R15 1 1
      226 NAMECALL                         R11 R11 K4 ["format"]
      228 CALL                             R11 4 1
      229 MOVE                             R10 R11
      230 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      232 MOVE                             R9 R1
      233 GETIMPORT                        R8 K6 [table.insert]
      235 CALL                             R8 2 0
      236 JUMP                             ; [+16]
      237 GETTABLEKS                       R8 R0 K18 ["progressUpdates"]
      239 GETUPVAL                         R9 0
      240 GETTABLEKS                       R9 R9 K22 ["fromResponse"]
      242 MOVE                             R10 R7
      243 MOVE                             R11 R1
      244 LOADK                            R13 K23 ["%*\"progressUpdates\" > [%*] > "]
      245 MOVE                             R15 R2
      246 MOVE                             R16 R6
      247 NAMECALL                         R13 R13 K4 ["format"]
      249 CALL                             R13 3 1
      250 MOVE                             R12 R13
      251 CALL                             R9 3 1
      252 SETTABLE                         R9 R8 R6
      253 FORGLOOP                         R3 2 ; [-43]
      255 GETTABLEKS                       R3 R0 K24 ["result"]
      257 JUMPIFEQKNIL                     R3 ; [+16]
      259 GETUPVAL                         R3 1
      260 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      262 GETTABLEKS                       R4 R0 K24 ["result"]
      264 MOVE                             R5 R1
      265 LOADK                            R7 K25 ["%*\"result\" > "]
      266 MOVE                             R9 R2
      267 NAMECALL                         R7 R7 K4 ["format"]
      269 CALL                             R7 2 1
      270 MOVE                             R6 R7
      271 CALL                             R3 3 1
      272 SETTABLEKS                       R3 R0 K24 ["result"]
      274 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["progressUpdates"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["progressUpdates"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["progressUpdates"]
       15 GETTABLEKS                       R2 R1 K3 ["progressUpdates"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["progressUpdates"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["result"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["result"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["result"]
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
       18 GETTABLEKS                       R4 R4 K9 ["ImageGenCompletedResult"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["ImageGenProgressUpdateDto"]
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
