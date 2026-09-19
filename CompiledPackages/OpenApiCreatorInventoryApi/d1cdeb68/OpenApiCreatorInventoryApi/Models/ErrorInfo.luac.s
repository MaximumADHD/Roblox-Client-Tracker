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
       24 GETTABLEKS                       R3 R0 K7 ["reason"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["reason"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"reason\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["reason"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["domain"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["domain"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"domain\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["domain"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["metadata"]
       84 JUMPIFEQKNIL                     R3 ; [+83]
       86 GETTABLEKS                       R4 R0 K12 ["metadata"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       94 LOADK                            R5 K13 ["%*\"metadata\" > Expected table, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["metadata"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 RETURN                           R0 1
      112 GETTABLEKS                       R3 R0 K12 ["metadata"]
      114 LOADNIL                          R4
      115 LOADNIL                          R5
      116 FORGPREP                         R3
      117 FASTCALL1                        TYPEOF R6 ; [+3]
      118 MOVE                             R9 R6
      119 GETIMPORT                        R8 K1 [typeof]
      121 CALL                             R8 1 1
      122 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      124 LOADK                            R10 K14 ["%*\"metadata\" > Expected key of type string, got %* as %*"]
      125 MOVE                             R12 R2
      126 MOVE                             R13 R6
      127 FASTCALL1                        TYPEOF R6 ; [+3]
      128 MOVE                             R15 R6
      129 GETIMPORT                        R14 K1 [typeof]
      131 CALL                             R14 1 1
      132 NAMECALL                         R10 R10 K4 ["format"]
      134 CALL                             R10 4 1
      135 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      137 MOVE                             R9 R1
      138 GETIMPORT                        R8 K6 [table.insert]
      140 CALL                             R8 2 0
      141 JUMP                             ; [+24]
      142 FASTCALL1                        TYPEOF R7 ; [+3]
      143 MOVE                             R9 R7
      144 GETIMPORT                        R8 K1 [typeof]
      146 CALL                             R8 1 1
      147 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      149 LOADK                            R10 K15 ["%*\"metadata\" > [\"%*\"] > Expected string, got %*"]
      150 MOVE                             R12 R2
      151 MOVE                             R13 R6
      152 FASTCALL1                        TYPEOF R7 ; [+3]
      153 MOVE                             R15 R7
      154 GETIMPORT                        R14 K1 [typeof]
      156 CALL                             R14 1 1
      157 NAMECALL                         R10 R10 K4 ["format"]
      159 CALL                             R10 4 1
      160 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      162 MOVE                             R9 R1
      163 GETIMPORT                        R8 K6 [table.insert]
      165 CALL                             R8 2 0
      166 FORGLOOP                         R3 2 ; [-50]
      168 RETURN                           R0 1

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
