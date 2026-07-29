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
       25 GETTABLEKS                       R3 R0 K7 ["createdDetails"]
       27 JUMPIFEQKNIL                     R3 ; [+61]
       29 GETTABLEKS                       R4 R0 K7 ["createdDetails"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       37 LOADK                            R6 K8 ["%*\"createdDetails\" > Expected table, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["createdDetails"]
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
       55 JUMP                             ; [+33]
       56 GETTABLEKS                       R3 R0 K7 ["createdDetails"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K1 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
       68 LOADK                            R11 K10 ["%*\"createdDetails\" > Expected key of type string, got %* as %*"]
       69 MOVE                             R13 R2
       70 MOVE                             R14 R6
       71 FASTCALL1                        TYPEOF R6 ; [+3]
       72 MOVE                             R16 R6
       73 GETIMPORT                        R15 K1 [typeof]
       75 CALL                             R15 1 1
       76 NAMECALL                         R11 R11 K4 ["format"]
       78 CALL                             R11 4 1
       79 MOVE                             R10 R11
       80 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       82 MOVE                             R9 R1
       83 GETIMPORT                        R8 K6 [table.insert]
       85 CALL                             R8 2 0
       86 JUMP                             ; [0]
       87 FORGLOOP                         R3 2 ; [-27]
       89 GETTABLEKS                       R3 R0 K11 ["purchasedDetails"]
       91 JUMPIFEQKNIL                     R3 ; [+61]
       93 GETTABLEKS                       R4 R0 K11 ["purchasedDetails"]
       95 FASTCALL1                        TYPEOF R4 ; [+2]
       96 GETIMPORT                        R3 K1 [typeof]
       98 CALL                             R3 1 1
       99 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      101 LOADK                            R6 K12 ["%*\"purchasedDetails\" > Expected table, got %*"]
      102 MOVE                             R8 R2
      103 GETTABLEKS                       R10 R0 K11 ["purchasedDetails"]
      105 FASTCALL1                        TYPEOF R10 ; [+2]
      106 GETIMPORT                        R9 K1 [typeof]
      108 CALL                             R9 1 1
      109 NAMECALL                         R6 R6 K4 ["format"]
      111 CALL                             R6 3 1
      112 MOVE                             R5 R6
      113 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      115 MOVE                             R4 R1
      116 GETIMPORT                        R3 K6 [table.insert]
      118 CALL                             R3 2 0
      119 JUMP                             ; [+33]
      120 GETTABLEKS                       R3 R0 K11 ["purchasedDetails"]
      122 LOADNIL                          R4
      123 LOADNIL                          R5
      124 FORGPREP                         R3
      125 FASTCALL1                        TYPEOF R6 ; [+3]
      126 MOVE                             R9 R6
      127 GETIMPORT                        R8 K1 [typeof]
      129 CALL                             R8 1 1
      130 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
      132 LOADK                            R11 K13 ["%*\"purchasedDetails\" > Expected key of type string, got %* as %*"]
      133 MOVE                             R13 R2
      134 MOVE                             R14 R6
      135 FASTCALL1                        TYPEOF R6 ; [+3]
      136 MOVE                             R16 R6
      137 GETIMPORT                        R15 K1 [typeof]
      139 CALL                             R15 1 1
      140 NAMECALL                         R11 R11 K4 ["format"]
      142 CALL                             R11 4 1
      143 MOVE                             R10 R11
      144 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      146 MOVE                             R9 R1
      147 GETIMPORT                        R8 K6 [table.insert]
      149 CALL                             R8 2 0
      150 JUMP                             ; [0]
      151 FORGLOOP                         R3 2 ; [-27]
      153 GETTABLEKS                       R3 R0 K14 ["sharedDetails"]
      155 JUMPIFEQKNIL                     R3 ; [+61]
      157 GETTABLEKS                       R4 R0 K14 ["sharedDetails"]
      159 FASTCALL1                        TYPEOF R4 ; [+2]
      160 GETIMPORT                        R3 K1 [typeof]
      162 CALL                             R3 1 1
      163 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      165 LOADK                            R6 K15 ["%*\"sharedDetails\" > Expected table, got %*"]
      166 MOVE                             R8 R2
      167 GETTABLEKS                       R10 R0 K14 ["sharedDetails"]
      169 FASTCALL1                        TYPEOF R10 ; [+2]
      170 GETIMPORT                        R9 K1 [typeof]
      172 CALL                             R9 1 1
      173 NAMECALL                         R6 R6 K4 ["format"]
      175 CALL                             R6 3 1
      176 MOVE                             R5 R6
      177 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      179 MOVE                             R4 R1
      180 GETIMPORT                        R3 K6 [table.insert]
      182 CALL                             R3 2 0
      183 RETURN                           R0 1
      184 GETTABLEKS                       R3 R0 K14 ["sharedDetails"]
      186 LOADNIL                          R4
      187 LOADNIL                          R5
      188 FORGPREP                         R3
      189 FASTCALL1                        TYPEOF R6 ; [+3]
      190 MOVE                             R9 R6
      191 GETIMPORT                        R8 K1 [typeof]
      193 CALL                             R8 1 1
      194 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
      196 LOADK                            R11 K16 ["%*\"sharedDetails\" > Expected key of type string, got %* as %*"]
      197 MOVE                             R13 R2
      198 MOVE                             R14 R6
      199 FASTCALL1                        TYPEOF R6 ; [+3]
      200 MOVE                             R16 R6
      201 GETIMPORT                        R15 K1 [typeof]
      203 CALL                             R15 1 1
      204 NAMECALL                         R11 R11 K4 ["format"]
      206 CALL                             R11 4 1
      207 MOVE                             R10 R11
      208 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      210 MOVE                             R9 R1
      211 GETIMPORT                        R8 K6 [table.insert]
      213 CALL                             R8 2 0
      214 JUMP                             ; [0]
      215 FORGLOOP                         R3 2 ; [-27]
      217 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
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
