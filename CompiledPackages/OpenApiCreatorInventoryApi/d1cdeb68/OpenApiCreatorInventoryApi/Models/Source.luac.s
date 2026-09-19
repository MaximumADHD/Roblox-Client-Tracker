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
       24 GETTABLEKS                       R3 R0 K7 ["createdDetails"]
       26 JUMPIFEQKNIL                     R3 ; [+59]
       28 GETTABLEKS                       R4 R0 K7 ["createdDetails"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"createdDetails\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["createdDetails"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+32]
       54 GETTABLEKS                       R3 R0 K7 ["createdDetails"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["string"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"createdDetails\" > Expected key of type string, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [0]
       84 FORGLOOP                         R3 2 ; [-26]
       86 GETTABLEKS                       R3 R0 K11 ["purchasedDetails"]
       88 JUMPIFEQKNIL                     R3 ; [+59]
       90 GETTABLEKS                       R4 R0 K11 ["purchasedDetails"]
       92 FASTCALL1                        TYPEOF R4 ; [+2]
       93 GETIMPORT                        R3 K1 [typeof]
       95 CALL                             R3 1 1
       96 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       98 LOADK                            R5 K12 ["%*\"purchasedDetails\" > Expected table, got %*"]
       99 MOVE                             R7 R2
      100 GETTABLEKS                       R9 R0 K11 ["purchasedDetails"]
      102 FASTCALL1                        TYPEOF R9 ; [+2]
      103 GETIMPORT                        R8 K1 [typeof]
      105 CALL                             R8 1 1
      106 NAMECALL                         R5 R5 K4 ["format"]
      108 CALL                             R5 3 1
      109 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      111 MOVE                             R4 R1
      112 GETIMPORT                        R3 K6 [table.insert]
      114 CALL                             R3 2 0
      115 JUMP                             ; [+32]
      116 GETTABLEKS                       R3 R0 K11 ["purchasedDetails"]
      118 LOADNIL                          R4
      119 LOADNIL                          R5
      120 FORGPREP                         R3
      121 FASTCALL1                        TYPEOF R6 ; [+3]
      122 MOVE                             R9 R6
      123 GETIMPORT                        R8 K1 [typeof]
      125 CALL                             R8 1 1
      126 JUMPIFEQKS                       R8 K9 ["string"] ; [+19]
      128 LOADK                            R10 K13 ["%*\"purchasedDetails\" > Expected key of type string, got %* as %*"]
      129 MOVE                             R12 R2
      130 MOVE                             R13 R6
      131 FASTCALL1                        TYPEOF R6 ; [+3]
      132 MOVE                             R15 R6
      133 GETIMPORT                        R14 K1 [typeof]
      135 CALL                             R14 1 1
      136 NAMECALL                         R10 R10 K4 ["format"]
      138 CALL                             R10 4 1
      139 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      141 MOVE                             R9 R1
      142 GETIMPORT                        R8 K6 [table.insert]
      144 CALL                             R8 2 0
      145 JUMP                             ; [0]
      146 FORGLOOP                         R3 2 ; [-26]
      148 GETTABLEKS                       R3 R0 K14 ["sharedDetails"]
      150 JUMPIFEQKNIL                     R3 ; [+59]
      152 GETTABLEKS                       R4 R0 K14 ["sharedDetails"]
      154 FASTCALL1                        TYPEOF R4 ; [+2]
      155 GETIMPORT                        R3 K1 [typeof]
      157 CALL                             R3 1 1
      158 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      160 LOADK                            R5 K15 ["%*\"sharedDetails\" > Expected table, got %*"]
      161 MOVE                             R7 R2
      162 GETTABLEKS                       R9 R0 K14 ["sharedDetails"]
      164 FASTCALL1                        TYPEOF R9 ; [+2]
      165 GETIMPORT                        R8 K1 [typeof]
      167 CALL                             R8 1 1
      168 NAMECALL                         R5 R5 K4 ["format"]
      170 CALL                             R5 3 1
      171 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      173 MOVE                             R4 R1
      174 GETIMPORT                        R3 K6 [table.insert]
      176 CALL                             R3 2 0
      177 RETURN                           R0 1
      178 GETTABLEKS                       R3 R0 K14 ["sharedDetails"]
      180 LOADNIL                          R4
      181 LOADNIL                          R5
      182 FORGPREP                         R3
      183 FASTCALL1                        TYPEOF R6 ; [+3]
      184 MOVE                             R9 R6
      185 GETIMPORT                        R8 K1 [typeof]
      187 CALL                             R8 1 1
      188 JUMPIFEQKS                       R8 K9 ["string"] ; [+19]
      190 LOADK                            R10 K16 ["%*\"sharedDetails\" > Expected key of type string, got %* as %*"]
      191 MOVE                             R12 R2
      192 MOVE                             R13 R6
      193 FASTCALL1                        TYPEOF R6 ; [+3]
      194 MOVE                             R15 R6
      195 GETIMPORT                        R14 K1 [typeof]
      197 CALL                             R14 1 1
      198 NAMECALL                         R10 R10 K4 ["format"]
      200 CALL                             R10 4 1
      201 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      203 MOVE                             R9 R1
      204 GETIMPORT                        R8 K6 [table.insert]
      206 CALL                             R8 2 0
      207 JUMP                             ; [0]
      208 FORGLOOP                         R3 2 ; [-26]
      210 RETURN                           R0 1

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
