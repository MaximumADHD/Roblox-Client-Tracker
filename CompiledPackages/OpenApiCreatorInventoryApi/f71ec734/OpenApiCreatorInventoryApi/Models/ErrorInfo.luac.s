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
       25 GETTABLEKS                       R3 R0 K7 ["reason"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["reason"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"reason\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["reason"]
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
       55 GETTABLEKS                       R3 R0 K10 ["domain"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["domain"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"domain\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["domain"]
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
       85 GETTABLEKS                       R3 R0 K12 ["metadata"]
       87 JUMPIFEQKNIL                     R3 ; [+86]
       89 GETTABLEKS                       R4 R0 K12 ["metadata"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       97 LOADK                            R6 K13 ["%*\"metadata\" > Expected table, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["metadata"]
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
      115 RETURN                           R0 1
      116 GETTABLEKS                       R3 R0 K12 ["metadata"]
      118 LOADNIL                          R4
      119 LOADNIL                          R5
      120 FORGPREP                         R3
      121 FASTCALL1                        TYPEOF R6 ; [+3]
      122 MOVE                             R9 R6
      123 GETIMPORT                        R8 K1 [typeof]
      125 CALL                             R8 1 1
      126 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      128 LOADK                            R11 K14 ["%*\"metadata\" > Expected key of type string, got %* as %*"]
      129 MOVE                             R13 R2
      130 MOVE                             R14 R6
      131 FASTCALL1                        TYPEOF R6 ; [+3]
      132 MOVE                             R16 R6
      133 GETIMPORT                        R15 K1 [typeof]
      135 CALL                             R15 1 1
      136 NAMECALL                         R11 R11 K4 ["format"]
      138 CALL                             R11 4 1
      139 MOVE                             R10 R11
      140 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      142 MOVE                             R9 R1
      143 GETIMPORT                        R8 K6 [table.insert]
      145 CALL                             R8 2 0
      146 JUMP                             ; [+25]
      147 FASTCALL1                        TYPEOF R7 ; [+3]
      148 MOVE                             R9 R7
      149 GETIMPORT                        R8 K1 [typeof]
      151 CALL                             R8 1 1
      152 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      154 LOADK                            R11 K15 ["%*\"metadata\" > [\"%*\"] > Expected string, got %*"]
      155 MOVE                             R13 R2
      156 MOVE                             R14 R6
      157 FASTCALL1                        TYPEOF R7 ; [+3]
      158 MOVE                             R16 R7
      159 GETIMPORT                        R15 K1 [typeof]
      161 CALL                             R15 1 1
      162 NAMECALL                         R11 R11 K4 ["format"]
      164 CALL                             R11 4 1
      165 MOVE                             R10 R11
      166 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      168 MOVE                             R9 R1
      169 GETIMPORT                        R8 K6 [table.insert]
      171 CALL                             R8 2 0
      172 FORGLOOP                         R3 2 ; [-52]
      174 RETURN                           R0 1

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
