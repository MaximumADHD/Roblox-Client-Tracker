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
       25 GETTABLEKS                       R3 R0 K7 ["jsonRpc"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["jsonRpc"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"jsonRpc\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["jsonRpc"]
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
       57 JUMPIFEQKNIL                     R3 ; [+16]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
       62 GETTABLEKS                       R4 R0 K10 ["id"]
       64 MOVE                             R5 R1
       65 LOADK                            R7 K12 ["%*\"id\" > "]
       66 MOVE                             R9 R2
       67 NAMECALL                         R7 R7 K4 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R3 3 1
       72 SETTABLEKS                       R3 R0 K10 ["id"]
       74 GETTABLEKS                       R3 R0 K13 ["result"]
       76 JUMPIFEQKNIL                     R3 ; [+86]
       78 GETTABLEKS                       R4 R0 K13 ["result"]
       80 FASTCALL1                        TYPEOF R4 ; [+2]
       81 GETIMPORT                        R3 K1 [typeof]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       86 LOADK                            R6 K14 ["%*\"result\" > Expected table, got %*"]
       87 MOVE                             R8 R2
       88 GETTABLEKS                       R10 R0 K13 ["result"]
       90 FASTCALL1                        TYPEOF R10 ; [+2]
       91 GETIMPORT                        R9 K1 [typeof]
       93 CALL                             R9 1 1
       94 NAMECALL                         R6 R6 K4 ["format"]
       96 CALL                             R6 3 1
       97 MOVE                             R5 R6
       98 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      100 MOVE                             R4 R1
      101 GETIMPORT                        R3 K6 [table.insert]
      103 CALL                             R3 2 0
      104 JUMP                             ; [+58]
      105 GETTABLEKS                       R3 R0 K13 ["result"]
      107 LOADNIL                          R4
      108 LOADNIL                          R5
      109 FORGPREP                         R3
      110 FASTCALL1                        TYPEOF R6 ; [+3]
      111 MOVE                             R9 R6
      112 GETIMPORT                        R8 K1 [typeof]
      114 CALL                             R8 1 1
      115 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      117 LOADK                            R11 K15 ["%*\"result\" > Expected key of type string, got %* as %*"]
      118 MOVE                             R13 R2
      119 MOVE                             R14 R6
      120 FASTCALL1                        TYPEOF R6 ; [+3]
      121 MOVE                             R16 R6
      122 GETIMPORT                        R15 K1 [typeof]
      124 CALL                             R15 1 1
      125 NAMECALL                         R11 R11 K4 ["format"]
      127 CALL                             R11 4 1
      128 MOVE                             R10 R11
      129 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      131 MOVE                             R9 R1
      132 GETIMPORT                        R8 K6 [table.insert]
      134 CALL                             R8 2 0
      135 JUMP                             ; [+25]
      136 FASTCALL1                        TYPEOF R7 ; [+3]
      137 MOVE                             R9 R7
      138 GETIMPORT                        R8 K1 [typeof]
      140 CALL                             R8 1 1
      141 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
      143 LOADK                            R11 K16 ["%*\"result\" > [\"%*\"] > Expected table, got %*"]
      144 MOVE                             R13 R2
      145 MOVE                             R14 R6
      146 FASTCALL1                        TYPEOF R7 ; [+3]
      147 MOVE                             R16 R7
      148 GETIMPORT                        R15 K1 [typeof]
      150 CALL                             R15 1 1
      151 NAMECALL                         R11 R11 K4 ["format"]
      153 CALL                             R11 4 1
      154 MOVE                             R10 R11
      155 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      157 MOVE                             R9 R1
      158 GETIMPORT                        R8 K6 [table.insert]
      160 CALL                             R8 2 0
      161 FORGLOOP                         R3 2 ; [-52]
      163 GETTABLEKS                       R3 R0 K17 ["error"]
      165 JUMPIFEQKNIL                     R3 ; [+16]
      167 GETUPVAL                         R3 1
      168 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
      170 GETTABLEKS                       R4 R0 K17 ["error"]
      172 MOVE                             R5 R1
      173 LOADK                            R7 K18 ["%*\"error\" > "]
      174 MOVE                             R9 R2
      175 NAMECALL                         R7 R7 K4 ["format"]
      177 CALL                             R7 2 1
      178 MOVE                             R6 R7
      179 CALL                             R3 3 1
      180 SETTABLEKS                       R3 R0 K17 ["error"]
      182 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["id"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["id"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["id"]
       16 GETTABLEKS                       R2 R1 K5 ["error"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["error"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["error"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorAgentsService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["JsonElement"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R6 K11 ["JsonRpcError"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 GETIMPORT                        R8 K16 [table.freeze]
       40 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       41 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       43 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       45 CALL                             R8 1 1
       46 RETURN                           R8 1
