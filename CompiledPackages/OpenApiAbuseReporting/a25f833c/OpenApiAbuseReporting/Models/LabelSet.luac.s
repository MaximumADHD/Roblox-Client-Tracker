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
       25 GETTABLEKS                       R3 R0 K7 ["creationTime"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["creationTime"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"creationTime\" > Expected number, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["creationTime"]
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
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K13 ["fromResponse"]
       88 GETTABLEKS                       R4 R0 K14 ["labeler"]
       90 MOVE                             R5 R1
       91 LOADK                            R7 K15 ["%*\"labeler\" > "]
       92 MOVE                             R9 R2
       93 NAMECALL                         R7 R7 K4 ["format"]
       95 CALL                             R7 2 1
       96 MOVE                             R6 R7
       97 CALL                             R3 3 1
       98 SETTABLEKS                       R3 R0 K14 ["labeler"]
      100 GETTABLEKS                       R3 R0 K16 ["labelerInternalNote"]
      102 JUMPIFEQKNIL                     R3 ; [+27]
      104 GETTABLEKS                       R4 R0 K16 ["labelerInternalNote"]
      106 FASTCALL1                        TYPEOF R4 ; [+2]
      107 GETIMPORT                        R3 K1 [typeof]
      109 CALL                             R3 1 1
      110 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
      112 LOADK                            R6 K17 ["%*\"labelerInternalNote\" > Expected string, got %*"]
      113 MOVE                             R8 R2
      114 GETTABLEKS                       R10 R0 K16 ["labelerInternalNote"]
      116 FASTCALL1                        TYPEOF R10 ; [+2]
      117 GETIMPORT                        R9 K1 [typeof]
      119 CALL                             R9 1 1
      120 NAMECALL                         R6 R6 K4 ["format"]
      122 CALL                             R6 3 1
      123 MOVE                             R5 R6
      124 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      126 MOVE                             R4 R1
      127 GETIMPORT                        R3 K6 [table.insert]
      129 CALL                             R3 2 0
      130 GETTABLEKS                       R4 R0 K18 ["labels"]
      132 FASTCALL1                        TYPEOF R4 ; [+2]
      133 GETIMPORT                        R3 K1 [typeof]
      135 CALL                             R3 1 1
      136 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      138 LOADK                            R6 K19 ["%*\"labels\" > Expected table, got %*"]
      139 MOVE                             R8 R2
      140 GETTABLEKS                       R10 R0 K18 ["labels"]
      142 FASTCALL1                        TYPEOF R10 ; [+2]
      143 GETIMPORT                        R9 K1 [typeof]
      145 CALL                             R9 1 1
      146 NAMECALL                         R6 R6 K4 ["format"]
      148 CALL                             R6 3 1
      149 MOVE                             R5 R6
      150 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      152 MOVE                             R4 R1
      153 GETIMPORT                        R3 K6 [table.insert]
      155 CALL                             R3 2 0
      156 RETURN                           R0 1
      157 GETTABLEKS                       R3 R0 K18 ["labels"]
      159 LOADNIL                          R4
      160 LOADNIL                          R5
      161 FORGPREP                         R3
      162 FASTCALL1                        TYPEOF R6 ; [+3]
      163 MOVE                             R9 R6
      164 GETIMPORT                        R8 K1 [typeof]
      166 CALL                             R8 1 1
      167 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      169 LOADK                            R11 K20 ["%*\"labels\" > Expected index of type number, got %* as %*"]
      170 MOVE                             R13 R2
      171 MOVE                             R14 R6
      172 FASTCALL1                        TYPEOF R6 ; [+3]
      173 MOVE                             R16 R6
      174 GETIMPORT                        R15 K1 [typeof]
      176 CALL                             R15 1 1
      177 NAMECALL                         R11 R11 K4 ["format"]
      179 CALL                             R11 4 1
      180 MOVE                             R10 R11
      181 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      183 MOVE                             R9 R1
      184 GETIMPORT                        R8 K6 [table.insert]
      186 CALL                             R8 2 0
      187 JUMP                             ; [+16]
      188 GETTABLEKS                       R8 R0 K18 ["labels"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K13 ["fromResponse"]
      193 MOVE                             R10 R7
      194 MOVE                             R11 R1
      195 LOADK                            R13 K21 ["%*\"labels\" > [%*] > "]
      196 MOVE                             R15 R2
      197 MOVE                             R16 R6
      198 NAMECALL                         R13 R13 K4 ["format"]
      200 CALL                             R13 3 1
      201 MOVE                             R12 R13
      202 CALL                             R9 3 1
      203 SETTABLE                         R9 R8 R6
      204 FORGLOOP                         R3 2 ; [-43]
      206 RETURN                           R0 1

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
