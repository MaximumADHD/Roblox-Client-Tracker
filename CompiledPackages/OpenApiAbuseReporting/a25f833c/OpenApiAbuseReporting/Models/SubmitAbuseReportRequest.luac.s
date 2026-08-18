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
       25 GETTABLEKS                       R3 R0 K7 ["abuseVector"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["abuseVector"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"abuseVector\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["abuseVector"]
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
       55 GETTABLEKS                       R3 R0 K10 ["category"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["category"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"category\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["category"]
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
       85 GETTABLEKS                       R3 R0 K12 ["comment"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["comment"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       97 LOADK                            R6 K13 ["%*\"comment\" > Expected string, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["comment"]
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
      115 GETTABLEKS                       R3 R0 K14 ["custom"]
      117 JUMPIFEQKNIL                     R3 ; [+61]
      119 GETTABLEKS                       R4 R0 K14 ["custom"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      127 LOADK                            R6 K15 ["%*\"custom\" > Expected table, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K14 ["custom"]
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
      145 JUMP                             ; [+33]
      146 GETTABLEKS                       R3 R0 K14 ["custom"]
      148 LOADNIL                          R4
      149 LOADNIL                          R5
      150 FORGPREP                         R3
      151 FASTCALL1                        TYPEOF R6 ; [+3]
      152 MOVE                             R9 R6
      153 GETIMPORT                        R8 K1 [typeof]
      155 CALL                             R8 1 1
      156 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      158 LOADK                            R11 K16 ["%*\"custom\" > Expected key of type string, got %* as %*"]
      159 MOVE                             R13 R2
      160 MOVE                             R14 R6
      161 FASTCALL1                        TYPEOF R6 ; [+3]
      162 MOVE                             R16 R6
      163 GETIMPORT                        R15 K1 [typeof]
      165 CALL                             R15 1 1
      166 NAMECALL                         R11 R11 K4 ["format"]
      168 CALL                             R11 4 1
      169 MOVE                             R10 R11
      170 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      172 MOVE                             R9 R1
      173 GETIMPORT                        R8 K6 [table.insert]
      175 CALL                             R8 2 0
      176 JUMP                             ; [0]
      177 FORGLOOP                         R3 2 ; [-27]
      179 GETTABLEKS                       R3 R0 K17 ["submitterId"]
      181 JUMPIFEQKNIL                     R3 ; [+27]
      183 GETTABLEKS                       R4 R0 K17 ["submitterId"]
      185 FASTCALL1                        TYPEOF R4 ; [+2]
      186 GETIMPORT                        R3 K1 [typeof]
      188 CALL                             R3 1 1
      189 JUMPIFEQKS                       R3 K18 ["number"] ; [+19]
      191 LOADK                            R6 K19 ["%*\"submitterId\" > Expected number, got %*"]
      192 MOVE                             R8 R2
      193 GETTABLEKS                       R10 R0 K17 ["submitterId"]
      195 FASTCALL1                        TYPEOF R10 ; [+2]
      196 GETIMPORT                        R9 K1 [typeof]
      198 CALL                             R9 1 1
      199 NAMECALL                         R6 R6 K4 ["format"]
      201 CALL                             R6 3 1
      202 MOVE                             R5 R6
      203 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      205 MOVE                             R4 R1
      206 GETIMPORT                        R3 K6 [table.insert]
      208 CALL                             R3 2 0
      209 GETTABLEKS                       R3 R0 K20 ["targetId"]
      211 JUMPIFEQKNIL                     R3 ; [+27]
      213 GETTABLEKS                       R4 R0 K20 ["targetId"]
      215 FASTCALL1                        TYPEOF R4 ; [+2]
      216 GETIMPORT                        R3 K1 [typeof]
      218 CALL                             R3 1 1
      219 JUMPIFEQKS                       R3 K18 ["number"] ; [+19]
      221 LOADK                            R6 K21 ["%*\"targetId\" > Expected number, got %*"]
      222 MOVE                             R8 R2
      223 GETTABLEKS                       R10 R0 K20 ["targetId"]
      225 FASTCALL1                        TYPEOF R10 ; [+2]
      226 GETIMPORT                        R9 K1 [typeof]
      228 CALL                             R9 1 1
      229 NAMECALL                         R6 R6 K4 ["format"]
      231 CALL                             R6 3 1
      232 MOVE                             R5 R6
      233 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      235 MOVE                             R4 R1
      236 GETIMPORT                        R3 K6 [table.insert]
      238 CALL                             R3 2 0
      239 GETTABLEKS                       R3 R0 K22 ["targetIdStr"]
      241 JUMPIFEQKNIL                     R3 ; [+27]
      243 GETTABLEKS                       R4 R0 K22 ["targetIdStr"]
      245 FASTCALL1                        TYPEOF R4 ; [+2]
      246 GETIMPORT                        R3 K1 [typeof]
      248 CALL                             R3 1 1
      249 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      251 LOADK                            R6 K23 ["%*\"targetIdStr\" > Expected string, got %*"]
      252 MOVE                             R8 R2
      253 GETTABLEKS                       R10 R0 K22 ["targetIdStr"]
      255 FASTCALL1                        TYPEOF R10 ; [+2]
      256 GETIMPORT                        R9 K1 [typeof]
      258 CALL                             R9 1 1
      259 NAMECALL                         R6 R6 K4 ["format"]
      261 CALL                             R6 3 1
      262 MOVE                             R5 R6
      263 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      265 MOVE                             R4 R1
      266 GETIMPORT                        R3 K6 [table.insert]
      268 CALL                             R3 2 0
      269 GETTABLEKS                       R4 R0 K24 ["targetType"]
      271 FASTCALL1                        TYPEOF R4 ; [+2]
      272 GETIMPORT                        R3 K1 [typeof]
      274 CALL                             R3 1 1
      275 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      277 LOADK                            R6 K25 ["%*\"targetType\" > Expected string, got %*"]
      278 MOVE                             R8 R2
      279 GETTABLEKS                       R10 R0 K24 ["targetType"]
      281 FASTCALL1                        TYPEOF R10 ; [+2]
      282 GETIMPORT                        R9 K1 [typeof]
      284 CALL                             R9 1 1
      285 NAMECALL                         R6 R6 K4 ["format"]
      287 CALL                             R6 3 1
      288 MOVE                             R5 R6
      289 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      291 MOVE                             R4 R1
      292 GETIMPORT                        R3 K6 [table.insert]
      294 CALL                             R3 2 0
      295 RETURN                           R0 1

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
