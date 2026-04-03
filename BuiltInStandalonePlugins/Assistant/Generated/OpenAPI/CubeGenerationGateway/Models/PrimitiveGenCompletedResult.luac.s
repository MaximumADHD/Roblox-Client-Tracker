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
       25 GETTABLEKS                       R3 R0 K7 ["dependencyVersion"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["dependencyVersion"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"dependencyVersion\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["dependencyVersion"]
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
       55 GETTABLEKS                       R3 R0 K10 ["dependencies"]
       57 JUMPIFEQKNIL                     R3 ; [+77]
       59 GETTABLEKS                       R4 R0 K10 ["dependencies"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       67 LOADK                            R6 K11 ["%*\"dependencies\" > Expected table, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["dependencies"]
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
       85 JUMP                             ; [+49]
       86 GETTABLEKS                       R3 R0 K10 ["dependencies"]
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 FASTCALL1                        TYPEOF R6 ; [+3]
       92 MOVE                             R9 R6
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
       98 LOADK                            R11 K13 ["%*\"dependencies\" > Expected index of type number, got %* as %*"]
       99 MOVE                             R13 R2
      100 MOVE                             R14 R6
      101 FASTCALL1                        TYPEOF R6 ; [+3]
      102 MOVE                             R16 R6
      103 GETIMPORT                        R15 K1 [typeof]
      105 CALL                             R15 1 1
      106 NAMECALL                         R11 R11 K4 ["format"]
      108 CALL                             R11 4 1
      109 MOVE                             R10 R11
      110 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      112 MOVE                             R9 R1
      113 GETIMPORT                        R8 K6 [table.insert]
      115 CALL                             R8 2 0
      116 JUMP                             ; [+16]
      117 GETTABLEKS                       R8 R0 K10 ["dependencies"]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R9 R10 K14 ["fromResponse"]
      122 MOVE                             R10 R7
      123 MOVE                             R11 R1
      124 LOADK                            R13 K15 ["%*\"dependencies\" > [%*] > "]
      125 MOVE                             R15 R2
      126 MOVE                             R16 R6
      127 NAMECALL                         R13 R13 K4 ["format"]
      129 CALL                             R13 3 1
      130 MOVE                             R12 R13
      131 CALL                             R9 3 1
      132 SETTABLE                         R9 R8 R6
      133 FORGLOOP                         R3 2 ; [-43]
      135 GETTABLEKS                       R3 R0 K16 ["standaloneScript"]
      137 JUMPIFEQKNIL                     R3 ; [+27]
      139 GETTABLEKS                       R4 R0 K16 ["standaloneScript"]
      141 FASTCALL1                        TYPEOF R4 ; [+2]
      142 GETIMPORT                        R3 K1 [typeof]
      144 CALL                             R3 1 1
      145 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      147 LOADK                            R6 K17 ["%*\"standaloneScript\" > Expected string, got %*"]
      148 MOVE                             R8 R2
      149 GETTABLEKS                       R10 R0 K16 ["standaloneScript"]
      151 FASTCALL1                        TYPEOF R10 ; [+2]
      152 GETIMPORT                        R9 K1 [typeof]
      154 CALL                             R9 1 1
      155 NAMECALL                         R6 R6 K4 ["format"]
      157 CALL                             R6 3 1
      158 MOVE                             R5 R6
      159 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      161 MOVE                             R4 R1
      162 GETIMPORT                        R3 K6 [table.insert]
      164 CALL                             R3 2 0
      165 GETTABLEKS                       R3 R0 K18 ["script"]
      167 JUMPIFEQKNIL                     R3 ; [+27]
      169 GETTABLEKS                       R4 R0 K18 ["script"]
      171 FASTCALL1                        TYPEOF R4 ; [+2]
      172 GETIMPORT                        R3 K1 [typeof]
      174 CALL                             R3 1 1
      175 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      177 LOADK                            R6 K19 ["%*\"script\" > Expected string, got %*"]
      178 MOVE                             R8 R2
      179 GETTABLEKS                       R10 R0 K18 ["script"]
      181 FASTCALL1                        TYPEOF R10 ; [+2]
      182 GETIMPORT                        R9 K1 [typeof]
      184 CALL                             R9 1 1
      185 NAMECALL                         R6 R6 K4 ["format"]
      187 CALL                             R6 3 1
      188 MOVE                             R5 R6
      189 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      191 MOVE                             R4 R1
      192 GETIMPORT                        R3 K6 [table.insert]
      194 CALL                             R3 2 0
      195 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["dependencies"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["dependencies"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["dependencies"]
       15 GETTABLEKS                       R2 R1 K3 ["dependencies"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["dependencies"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CubeGenerationGateway"]
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
       20 GETTABLEKS                       R6 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R6 K10 ["PrimitiveGenDependencyDto"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R6 K12 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 GETIMPORT                        R7 K15 [table.freeze]
       31 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       32 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       34 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       36 CALL                             R7 1 1
       37 RETURN                           R7 1
