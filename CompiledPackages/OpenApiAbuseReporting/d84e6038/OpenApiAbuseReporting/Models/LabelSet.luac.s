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
       24 GETTABLEKS                       R3 R0 K7 ["creationTime"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["creationTime"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"creationTime\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["creationTime"]
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
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R3 R3 K13 ["fromResponse"]
       85 GETTABLEKS                       R4 R0 K14 ["labeler"]
       87 MOVE                             R5 R1
       88 LOADK                            R6 K15 ["%*\"labeler\" > "]
       89 MOVE                             R8 R2
       90 NAMECALL                         R6 R6 K4 ["format"]
       92 CALL                             R6 2 1
       93 CALL                             R3 3 1
       94 SETTABLEKS                       R3 R0 K14 ["labeler"]
       96 GETTABLEKS                       R3 R0 K16 ["labelerInternalNote"]
       98 JUMPIFEQKNIL                     R3 ; [+26]
      100 GETTABLEKS                       R4 R0 K16 ["labelerInternalNote"]
      102 FASTCALL1                        TYPEOF R4 ; [+2]
      103 GETIMPORT                        R3 K1 [typeof]
      105 CALL                             R3 1 1
      106 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
      108 LOADK                            R5 K17 ["%*\"labelerInternalNote\" > Expected string, got %*"]
      109 MOVE                             R7 R2
      110 GETTABLEKS                       R9 R0 K16 ["labelerInternalNote"]
      112 FASTCALL1                        TYPEOF R9 ; [+2]
      113 GETIMPORT                        R8 K1 [typeof]
      115 CALL                             R8 1 1
      116 NAMECALL                         R5 R5 K4 ["format"]
      118 CALL                             R5 3 1
      119 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      121 MOVE                             R4 R1
      122 GETIMPORT                        R3 K6 [table.insert]
      124 CALL                             R3 2 0
      125 GETTABLEKS                       R4 R0 K18 ["labels"]
      127 FASTCALL1                        TYPEOF R4 ; [+2]
      128 GETIMPORT                        R3 K1 [typeof]
      130 CALL                             R3 1 1
      131 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      133 LOADK                            R5 K19 ["%*\"labels\" > Expected table, got %*"]
      134 MOVE                             R7 R2
      135 GETTABLEKS                       R9 R0 K18 ["labels"]
      137 FASTCALL1                        TYPEOF R9 ; [+2]
      138 GETIMPORT                        R8 K1 [typeof]
      140 CALL                             R8 1 1
      141 NAMECALL                         R5 R5 K4 ["format"]
      143 CALL                             R5 3 1
      144 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      146 MOVE                             R4 R1
      147 GETIMPORT                        R3 K6 [table.insert]
      149 CALL                             R3 2 0
      150 RETURN                           R0 1
      151 GETTABLEKS                       R3 R0 K18 ["labels"]
      153 LOADNIL                          R4
      154 LOADNIL                          R5
      155 FORGPREP                         R3
      156 FASTCALL1                        TYPEOF R6 ; [+3]
      157 MOVE                             R9 R6
      158 GETIMPORT                        R8 K1 [typeof]
      160 CALL                             R8 1 1
      161 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      163 LOADK                            R10 K20 ["%*\"labels\" > Expected index of type number, got %* as %*"]
      164 MOVE                             R12 R2
      165 MOVE                             R13 R6
      166 FASTCALL1                        TYPEOF R6 ; [+3]
      167 MOVE                             R15 R6
      168 GETIMPORT                        R14 K1 [typeof]
      170 CALL                             R14 1 1
      171 NAMECALL                         R10 R10 K4 ["format"]
      173 CALL                             R10 4 1
      174 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      176 MOVE                             R9 R1
      177 GETIMPORT                        R8 K6 [table.insert]
      179 CALL                             R8 2 0
      180 JUMP                             ; [+15]
      181 GETTABLEKS                       R8 R0 K18 ["labels"]
      183 GETUPVAL                         R9 1
      184 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      186 MOVE                             R10 R7
      187 MOVE                             R11 R1
      188 LOADK                            R12 K21 ["%*\"labels\" > [%*] > "]
      189 MOVE                             R14 R2
      190 MOVE                             R15 R6
      191 NAMECALL                         R12 R12 K4 ["format"]
      193 CALL                             R12 3 1
      194 CALL                             R9 3 1
      195 SETTABLE                         R9 R8 R6
      196 FORGLOOP                         R3 2 ; [-41]
      198 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["labeler"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["labeler"]
       12 GETIMPORT                        R2 K2 [table.clone]
       14 GETTABLEKS                       R3 R1 K5 ["labels"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K5 ["labels"]
       19 GETTABLEKS                       R2 R1 K5 ["labels"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLEKS                       R7 R1 K5 ["labels"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K3 ["toRequest"]
       29 MOVE                             R9 R6
       30 CALL                             R8 1 1
       31 SETTABLE                         R8 R7 R5
       32 FORGLOOP                         R2 2 ; [-9]
       34 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["Label"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["Labeler"]
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
