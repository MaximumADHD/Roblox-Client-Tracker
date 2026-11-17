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
       24 GETTABLEKS                       R3 R0 K7 ["extrinsic"]
       26 JUMPIFEQKNIL                     R3 ; [+83]
       28 GETTABLEKS                       R4 R0 K7 ["extrinsic"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"extrinsic\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["extrinsic"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+56]
       54 GETTABLEKS                       R3 R0 K7 ["extrinsic"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"extrinsic\" > Expected index of type number, got %* as %*"]
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
       83 JUMP                             ; [+24]
       84 FASTCALL1                        TYPEOF R7 ; [+3]
       85 MOVE                             R9 R7
       86 GETIMPORT                        R8 K1 [typeof]
       88 CALL                             R8 1 1
       89 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
       91 LOADK                            R10 K11 ["%*\"extrinsic\" > [%*] > Expected number, got %*"]
       92 MOVE                             R12 R2
       93 MOVE                             R13 R6
       94 FASTCALL1                        TYPEOF R7 ; [+3]
       95 MOVE                             R15 R7
       96 GETIMPORT                        R14 K1 [typeof]
       98 CALL                             R14 1 1
       99 NAMECALL                         R10 R10 K4 ["format"]
      101 CALL                             R10 4 1
      102 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      104 MOVE                             R9 R1
      105 GETIMPORT                        R8 K6 [table.insert]
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-50]
      110 GETTABLEKS                       R3 R0 K12 ["intrinsic"]
      112 JUMPIFEQKNIL                     R3 ; [+83]
      114 GETTABLEKS                       R4 R0 K12 ["intrinsic"]
      116 FASTCALL1                        TYPEOF R4 ; [+2]
      117 GETIMPORT                        R3 K1 [typeof]
      119 CALL                             R3 1 1
      120 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      122 LOADK                            R5 K13 ["%*\"intrinsic\" > Expected table, got %*"]
      123 MOVE                             R7 R2
      124 GETTABLEKS                       R9 R0 K12 ["intrinsic"]
      126 FASTCALL1                        TYPEOF R9 ; [+2]
      127 GETIMPORT                        R8 K1 [typeof]
      129 CALL                             R8 1 1
      130 NAMECALL                         R5 R5 K4 ["format"]
      132 CALL                             R5 3 1
      133 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      135 MOVE                             R4 R1
      136 GETIMPORT                        R3 K6 [table.insert]
      138 CALL                             R3 2 0
      139 RETURN                           R0 1
      140 GETTABLEKS                       R3 R0 K12 ["intrinsic"]
      142 LOADNIL                          R4
      143 LOADNIL                          R5
      144 FORGPREP                         R3
      145 FASTCALL1                        TYPEOF R6 ; [+3]
      146 MOVE                             R9 R6
      147 GETIMPORT                        R8 K1 [typeof]
      149 CALL                             R8 1 1
      150 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      152 LOADK                            R10 K14 ["%*\"intrinsic\" > Expected index of type number, got %* as %*"]
      153 MOVE                             R12 R2
      154 MOVE                             R13 R6
      155 FASTCALL1                        TYPEOF R6 ; [+3]
      156 MOVE                             R15 R6
      157 GETIMPORT                        R14 K1 [typeof]
      159 CALL                             R14 1 1
      160 NAMECALL                         R10 R10 K4 ["format"]
      162 CALL                             R10 4 1
      163 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      165 MOVE                             R9 R1
      166 GETIMPORT                        R8 K6 [table.insert]
      168 CALL                             R8 2 0
      169 JUMP                             ; [+24]
      170 FASTCALL1                        TYPEOF R7 ; [+3]
      171 MOVE                             R9 R7
      172 GETIMPORT                        R8 K1 [typeof]
      174 CALL                             R8 1 1
      175 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      177 LOADK                            R10 K15 ["%*\"intrinsic\" > [%*] > Expected number, got %*"]
      178 MOVE                             R12 R2
      179 MOVE                             R13 R6
      180 FASTCALL1                        TYPEOF R7 ; [+3]
      181 MOVE                             R15 R7
      182 GETIMPORT                        R14 K1 [typeof]
      184 CALL                             R14 1 1
      185 NAMECALL                         R10 R10 K4 ["format"]
      187 CALL                             R10 4 1
      188 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      190 MOVE                             R9 R1
      191 GETIMPORT                        R8 K6 [table.insert]
      193 CALL                             R8 2 0
      194 FORGLOOP                         R3 2 ; [-50]
      196 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCubeGenerationGateway"]
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
