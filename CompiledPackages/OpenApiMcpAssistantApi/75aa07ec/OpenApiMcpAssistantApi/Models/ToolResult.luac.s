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
       25 GETTABLEKS                       R3 R0 K7 ["type"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["type"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"type\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["type"]
       44 GETTABLEKS                       R4 R0 K10 ["name"]
       46 FASTCALL1                        TYPEOF R4 ; [+2]
       47 GETIMPORT                        R3 K1 [typeof]
       49 CALL                             R3 1 1
       50 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       52 LOADK                            R6 K12 ["%*\"name\" > Expected string, got %*"]
       53 MOVE                             R8 R2
       54 GETTABLEKS                       R10 R0 K10 ["name"]
       56 FASTCALL1                        TYPEOF R10 ; [+2]
       57 GETIMPORT                        R9 K1 [typeof]
       59 CALL                             R9 1 1
       60 NAMECALL                         R6 R6 K4 ["format"]
       62 CALL                             R6 3 1
       63 MOVE                             R5 R6
       64 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       66 MOVE                             R4 R1
       67 GETIMPORT                        R3 K6 [table.insert]
       69 CALL                             R3 2 0
       70 GETTABLEKS                       R4 R0 K13 ["id"]
       72 FASTCALL1                        TYPEOF R4 ; [+2]
       73 GETIMPORT                        R3 K1 [typeof]
       75 CALL                             R3 1 1
       76 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       78 LOADK                            R6 K14 ["%*\"id\" > Expected string, got %*"]
       79 MOVE                             R8 R2
       80 GETTABLEKS                       R10 R0 K13 ["id"]
       82 FASTCALL1                        TYPEOF R10 ; [+2]
       83 GETIMPORT                        R9 K1 [typeof]
       85 CALL                             R9 1 1
       86 NAMECALL                         R6 R6 K4 ["format"]
       88 CALL                             R6 3 1
       89 MOVE                             R5 R6
       90 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       92 MOVE                             R4 R1
       93 GETIMPORT                        R3 K6 [table.insert]
       95 CALL                             R3 2 0
       96 GETTABLEKS                       R4 R0 K15 ["content"]
       98 FASTCALL1                        TYPEOF R4 ; [+2]
       99 GETIMPORT                        R3 K1 [typeof]
      101 CALL                             R3 1 1
      102 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      104 LOADK                            R6 K16 ["%*\"content\" > Expected table, got %*"]
      105 MOVE                             R8 R2
      106 GETTABLEKS                       R10 R0 K15 ["content"]
      108 FASTCALL1                        TYPEOF R10 ; [+2]
      109 GETIMPORT                        R9 K1 [typeof]
      111 CALL                             R9 1 1
      112 NAMECALL                         R6 R6 K4 ["format"]
      114 CALL                             R6 3 1
      115 MOVE                             R5 R6
      116 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      118 MOVE                             R4 R1
      119 GETIMPORT                        R3 K6 [table.insert]
      121 CALL                             R3 2 0
      122 JUMP                             ; [+33]
      123 GETTABLEKS                       R3 R0 K15 ["content"]
      125 LOADNIL                          R4
      126 LOADNIL                          R5
      127 FORGPREP                         R3
      128 FASTCALL1                        TYPEOF R6 ; [+3]
      129 MOVE                             R9 R6
      130 GETIMPORT                        R8 K1 [typeof]
      132 CALL                             R8 1 1
      133 JUMPIFEQKS                       R8 K17 ["number"] ; [+20]
      135 LOADK                            R11 K18 ["%*\"content\" > Expected index of type number, got %* as %*"]
      136 MOVE                             R13 R2
      137 MOVE                             R14 R6
      138 FASTCALL1                        TYPEOF R6 ; [+3]
      139 MOVE                             R16 R6
      140 GETIMPORT                        R15 K1 [typeof]
      142 CALL                             R15 1 1
      143 NAMECALL                         R11 R11 K4 ["format"]
      145 CALL                             R11 4 1
      146 MOVE                             R10 R11
      147 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      149 MOVE                             R9 R1
      150 GETIMPORT                        R8 K6 [table.insert]
      152 CALL                             R8 2 0
      153 JUMP                             ; [0]
      154 FORGLOOP                         R3 2 ; [-27]
      156 GETTABLEKS                       R3 R0 K19 ["isError"]
      158 JUMPIFEQKNIL                     R3 ; [+27]
      160 GETTABLEKS                       R4 R0 K19 ["isError"]
      162 FASTCALL1                        TYPEOF R4 ; [+2]
      163 GETIMPORT                        R3 K1 [typeof]
      165 CALL                             R3 1 1
      166 JUMPIFEQKS                       R3 K20 ["boolean"] ; [+19]
      168 LOADK                            R6 K21 ["%*\"isError\" > Expected boolean, got %*"]
      169 MOVE                             R8 R2
      170 GETTABLEKS                       R10 R0 K19 ["isError"]
      172 FASTCALL1                        TYPEOF R10 ; [+2]
      173 GETIMPORT                        R9 K1 [typeof]
      175 CALL                             R9 1 1
      176 NAMECALL                         R6 R6 K4 ["format"]
      178 CALL                             R6 3 1
      179 MOVE                             R5 R6
      180 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      182 MOVE                             R4 R1
      183 GETIMPORT                        R3 K6 [table.insert]
      185 CALL                             R3 2 0
      186 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["type"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["type"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["type"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["Type4"]
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
