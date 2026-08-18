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
       25 GETTABLEKS                       R3 R0 K7 ["eventTime"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["eventTime"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"eventTime\" > Expected number, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["eventTime"]
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
       55 GETTABLEKS                       R3 R0 K10 ["id"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["id"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       67 LOADK                            R6 K12 ["%*\"id\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["id"]
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
       85 GETTABLEKS                       R3 R0 K13 ["idempotencyKey"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K13 ["idempotencyKey"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       97 LOADK                            R6 K14 ["%*\"idempotencyKey\" > Expected string, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K13 ["idempotencyKey"]
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
      115 GETTABLEKS                       R4 R0 K15 ["tags"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      123 LOADK                            R6 K16 ["%*\"tags\" > Expected table, got %*"]
      124 MOVE                             R8 R2
      125 GETTABLEKS                       R10 R0 K15 ["tags"]
      127 FASTCALL1                        TYPEOF R10 ; [+2]
      128 GETIMPORT                        R9 K1 [typeof]
      130 CALL                             R9 1 1
      131 NAMECALL                         R6 R6 K4 ["format"]
      133 CALL                             R6 3 1
      134 MOVE                             R5 R6
      135 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      137 MOVE                             R4 R1
      138 GETIMPORT                        R3 K6 [table.insert]
      140 CALL                             R3 2 0
      141 RETURN                           R0 1
      142 GETTABLEKS                       R3 R0 K15 ["tags"]
      144 LOADNIL                          R4
      145 LOADNIL                          R5
      146 FORGPREP                         R3
      147 FASTCALL1                        TYPEOF R6 ; [+3]
      148 MOVE                             R9 R6
      149 GETIMPORT                        R8 K1 [typeof]
      151 CALL                             R8 1 1
      152 JUMPIFEQKS                       R8 K11 ["string"] ; [+20]
      154 LOADK                            R11 K17 ["%*\"tags\" > Expected key of type string, got %* as %*"]
      155 MOVE                             R13 R2
      156 MOVE                             R14 R6
      157 FASTCALL1                        TYPEOF R6 ; [+3]
      158 MOVE                             R16 R6
      159 GETIMPORT                        R15 K1 [typeof]
      161 CALL                             R15 1 1
      162 NAMECALL                         R11 R11 K4 ["format"]
      164 CALL                             R11 4 1
      165 MOVE                             R10 R11
      166 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      168 MOVE                             R9 R1
      169 GETIMPORT                        R8 K6 [table.insert]
      171 CALL                             R8 2 0
      172 JUMP                             ; [+16]
      173 GETTABLEKS                       R8 R0 K15 ["tags"]
      175 GETUPVAL                         R9 0
      176 GETTABLEKS                       R9 R9 K18 ["fromResponse"]
      178 MOVE                             R10 R7
      179 MOVE                             R11 R1
      180 LOADK                            R13 K19 ["%*\"tags\" > [\"%*\"] > "]
      181 MOVE                             R15 R2
      182 MOVE                             R16 R6
      183 NAMECALL                         R13 R13 K4 ["format"]
      185 CALL                             R13 3 1
      186 MOVE                             R12 R13
      187 CALL                             R9 3 1
      188 SETTABLE                         R9 R8 R6
      189 FORGLOOP                         R3 2 ; [-43]
      191 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["tags"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["tags"]
       11 GETTABLEKS                       R2 R1 K3 ["tags"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K3 ["tags"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 SETTABLE                         R8 R7 R5
       24 FORGLOOP                         R2 2 ; [-9]
       26 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["TagValueList"]
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
