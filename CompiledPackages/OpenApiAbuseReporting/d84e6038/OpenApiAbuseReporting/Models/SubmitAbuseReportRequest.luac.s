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
       24 GETTABLEKS                       R3 R0 K7 ["abuseVector"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["abuseVector"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"abuseVector\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["abuseVector"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["category"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["category"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"category\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["category"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["comment"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["comment"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       94 LOADK                            R5 K13 ["%*\"comment\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["comment"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["custom"]
      113 JUMPIFEQKNIL                     R3 ; [+59]
      115 GETTABLEKS                       R4 R0 K14 ["custom"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      123 LOADK                            R5 K15 ["%*\"custom\" > Expected table, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K14 ["custom"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 JUMP                             ; [+32]
      141 GETTABLEKS                       R3 R0 K14 ["custom"]
      143 LOADNIL                          R4
      144 LOADNIL                          R5
      145 FORGPREP                         R3
      146 FASTCALL1                        TYPEOF R6 ; [+3]
      147 MOVE                             R9 R6
      148 GETIMPORT                        R8 K1 [typeof]
      150 CALL                             R8 1 1
      151 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      153 LOADK                            R10 K16 ["%*\"custom\" > Expected key of type string, got %* as %*"]
      154 MOVE                             R12 R2
      155 MOVE                             R13 R6
      156 FASTCALL1                        TYPEOF R6 ; [+3]
      157 MOVE                             R15 R6
      158 GETIMPORT                        R14 K1 [typeof]
      160 CALL                             R14 1 1
      161 NAMECALL                         R10 R10 K4 ["format"]
      163 CALL                             R10 4 1
      164 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      166 MOVE                             R9 R1
      167 GETIMPORT                        R8 K6 [table.insert]
      169 CALL                             R8 2 0
      170 JUMP                             ; [0]
      171 FORGLOOP                         R3 2 ; [-26]
      173 GETTABLEKS                       R3 R0 K17 ["submitterId"]
      175 JUMPIFEQKNIL                     R3 ; [+26]
      177 GETTABLEKS                       R4 R0 K17 ["submitterId"]
      179 FASTCALL1                        TYPEOF R4 ; [+2]
      180 GETIMPORT                        R3 K1 [typeof]
      182 CALL                             R3 1 1
      183 JUMPIFEQKS                       R3 K18 ["number"] ; [+18]
      185 LOADK                            R5 K19 ["%*\"submitterId\" > Expected number, got %*"]
      186 MOVE                             R7 R2
      187 GETTABLEKS                       R9 R0 K17 ["submitterId"]
      189 FASTCALL1                        TYPEOF R9 ; [+2]
      190 GETIMPORT                        R8 K1 [typeof]
      192 CALL                             R8 1 1
      193 NAMECALL                         R5 R5 K4 ["format"]
      195 CALL                             R5 3 1
      196 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      198 MOVE                             R4 R1
      199 GETIMPORT                        R3 K6 [table.insert]
      201 CALL                             R3 2 0
      202 GETTABLEKS                       R3 R0 K20 ["targetId"]
      204 JUMPIFEQKNIL                     R3 ; [+26]
      206 GETTABLEKS                       R4 R0 K20 ["targetId"]
      208 FASTCALL1                        TYPEOF R4 ; [+2]
      209 GETIMPORT                        R3 K1 [typeof]
      211 CALL                             R3 1 1
      212 JUMPIFEQKS                       R3 K18 ["number"] ; [+18]
      214 LOADK                            R5 K21 ["%*\"targetId\" > Expected number, got %*"]
      215 MOVE                             R7 R2
      216 GETTABLEKS                       R9 R0 K20 ["targetId"]
      218 FASTCALL1                        TYPEOF R9 ; [+2]
      219 GETIMPORT                        R8 K1 [typeof]
      221 CALL                             R8 1 1
      222 NAMECALL                         R5 R5 K4 ["format"]
      224 CALL                             R5 3 1
      225 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      227 MOVE                             R4 R1
      228 GETIMPORT                        R3 K6 [table.insert]
      230 CALL                             R3 2 0
      231 GETTABLEKS                       R3 R0 K22 ["targetIdStr"]
      233 JUMPIFEQKNIL                     R3 ; [+26]
      235 GETTABLEKS                       R4 R0 K22 ["targetIdStr"]
      237 FASTCALL1                        TYPEOF R4 ; [+2]
      238 GETIMPORT                        R3 K1 [typeof]
      240 CALL                             R3 1 1
      241 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      243 LOADK                            R5 K23 ["%*\"targetIdStr\" > Expected string, got %*"]
      244 MOVE                             R7 R2
      245 GETTABLEKS                       R9 R0 K22 ["targetIdStr"]
      247 FASTCALL1                        TYPEOF R9 ; [+2]
      248 GETIMPORT                        R8 K1 [typeof]
      250 CALL                             R8 1 1
      251 NAMECALL                         R5 R5 K4 ["format"]
      253 CALL                             R5 3 1
      254 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      256 MOVE                             R4 R1
      257 GETIMPORT                        R3 K6 [table.insert]
      259 CALL                             R3 2 0
      260 GETTABLEKS                       R4 R0 K24 ["targetType"]
      262 FASTCALL1                        TYPEOF R4 ; [+2]
      263 GETIMPORT                        R3 K1 [typeof]
      265 CALL                             R3 1 1
      266 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      268 LOADK                            R5 K25 ["%*\"targetType\" > Expected string, got %*"]
      269 MOVE                             R7 R2
      270 GETTABLEKS                       R9 R0 K24 ["targetType"]
      272 FASTCALL1                        TYPEOF R9 ; [+2]
      273 GETIMPORT                        R8 K1 [typeof]
      275 CALL                             R8 1 1
      276 NAMECALL                         R5 R5 K4 ["format"]
      278 CALL                             R5 3 1
      279 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      281 MOVE                             R4 R1
      282 GETIMPORT                        R3 K6 [table.insert]
      284 CALL                             R3 2 0
      285 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_1]
       16 GETIMPORT                        R5 K12 [table.freeze]
       18 DUPTABLE                         R6 K15 [{"fromResponse", "toRequest"}]
       19 SETTABLEKS                       R3 R6 K13 ["fromResponse"]
       21 SETTABLEKS                       R4 R6 K14 ["toRequest"]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
