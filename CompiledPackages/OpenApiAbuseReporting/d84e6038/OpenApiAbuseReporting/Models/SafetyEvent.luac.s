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
       24 GETTABLEKS                       R3 R0 K7 ["eventTime"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["eventTime"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"eventTime\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["eventTime"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["id"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["id"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
       65 LOADK                            R5 K12 ["%*\"id\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["id"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K13 ["idempotencyKey"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K13 ["idempotencyKey"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"idempotencyKey\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K13 ["idempotencyKey"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R4 R0 K15 ["tags"]
      113 FASTCALL1                        TYPEOF R4 ; [+2]
      114 GETIMPORT                        R3 K1 [typeof]
      116 CALL                             R3 1 1
      117 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      119 LOADK                            R5 K16 ["%*\"tags\" > Expected table, got %*"]
      120 MOVE                             R7 R2
      121 GETTABLEKS                       R9 R0 K15 ["tags"]
      123 FASTCALL1                        TYPEOF R9 ; [+2]
      124 GETIMPORT                        R8 K1 [typeof]
      126 CALL                             R8 1 1
      127 NAMECALL                         R5 R5 K4 ["format"]
      129 CALL                             R5 3 1
      130 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      132 MOVE                             R4 R1
      133 GETIMPORT                        R3 K6 [table.insert]
      135 CALL                             R3 2 0
      136 RETURN                           R0 1
      137 GETTABLEKS                       R3 R0 K15 ["tags"]
      139 LOADNIL                          R4
      140 LOADNIL                          R5
      141 FORGPREP                         R3
      142 FASTCALL1                        TYPEOF R6 ; [+3]
      143 MOVE                             R9 R6
      144 GETIMPORT                        R8 K1 [typeof]
      146 CALL                             R8 1 1
      147 JUMPIFEQKS                       R8 K11 ["string"] ; [+19]
      149 LOADK                            R10 K17 ["%*\"tags\" > Expected key of type string, got %* as %*"]
      150 MOVE                             R12 R2
      151 MOVE                             R13 R6
      152 FASTCALL1                        TYPEOF R6 ; [+3]
      153 MOVE                             R15 R6
      154 GETIMPORT                        R14 K1 [typeof]
      156 CALL                             R14 1 1
      157 NAMECALL                         R10 R10 K4 ["format"]
      159 CALL                             R10 4 1
      160 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      162 MOVE                             R9 R1
      163 GETIMPORT                        R8 K6 [table.insert]
      165 CALL                             R8 2 0
      166 JUMP                             ; [+15]
      167 GETTABLEKS                       R8 R0 K15 ["tags"]
      169 GETUPVAL                         R9 0
      170 GETTABLEKS                       R9 R9 K18 ["fromResponse"]
      172 MOVE                             R10 R7
      173 MOVE                             R11 R1
      174 LOADK                            R12 K19 ["%*\"tags\" > [\"%*\"] > "]
      175 MOVE                             R14 R2
      176 MOVE                             R15 R6
      177 NAMECALL                         R12 R12 K4 ["format"]
      179 CALL                             R12 3 1
      180 CALL                             R9 3 1
      181 SETTABLE                         R9 R8 R6
      182 FORGLOOP                         R3 2 ; [-41]
      184 RETURN                           R0 1

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
