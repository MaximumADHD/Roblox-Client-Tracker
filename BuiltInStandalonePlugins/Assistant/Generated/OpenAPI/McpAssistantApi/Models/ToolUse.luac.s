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
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["type"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"type\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["type"]
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
       55 GETTABLEKS                       R4 R0 K10 ["id"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       63 LOADK                            R6 K11 ["%*\"id\" > Expected string, got %*"]
       64 MOVE                             R8 R2
       65 GETTABLEKS                       R10 R0 K10 ["id"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K1 [typeof]
       70 CALL                             R9 1 1
       71 NAMECALL                         R6 R6 K4 ["format"]
       73 CALL                             R6 3 1
       74 MOVE                             R5 R6
       75 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       77 MOVE                             R4 R1
       78 GETIMPORT                        R3 K6 [table.insert]
       80 CALL                             R3 2 0
       81 GETTABLEKS                       R4 R0 K12 ["name"]
       83 FASTCALL1                        TYPEOF R4 ; [+2]
       84 GETIMPORT                        R3 K1 [typeof]
       86 CALL                             R3 1 1
       87 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       89 LOADK                            R6 K13 ["%*\"name\" > Expected string, got %*"]
       90 MOVE                             R8 R2
       91 GETTABLEKS                       R10 R0 K12 ["name"]
       93 FASTCALL1                        TYPEOF R10 ; [+2]
       94 GETIMPORT                        R9 K1 [typeof]
       96 CALL                             R9 1 1
       97 NAMECALL                         R6 R6 K4 ["format"]
       99 CALL                             R6 3 1
      100 MOVE                             R5 R6
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETTABLEKS                       R4 R0 K14 ["input"]
      109 FASTCALL1                        TYPEOF R4 ; [+2]
      110 GETIMPORT                        R3 K1 [typeof]
      112 CALL                             R3 1 1
      113 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      115 LOADK                            R6 K15 ["%*\"input\" > Expected table, got %*"]
      116 MOVE                             R8 R2
      117 GETTABLEKS                       R10 R0 K14 ["input"]
      119 FASTCALL1                        TYPEOF R10 ; [+2]
      120 GETIMPORT                        R9 K1 [typeof]
      122 CALL                             R9 1 1
      123 NAMECALL                         R6 R6 K4 ["format"]
      125 CALL                             R6 3 1
      126 MOVE                             R5 R6
      127 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      129 MOVE                             R4 R1
      130 GETIMPORT                        R3 K6 [table.insert]
      132 CALL                             R3 2 0
      133 RETURN                           R0 1
      134 GETTABLEKS                       R3 R0 K14 ["input"]
      136 LOADNIL                          R4
      137 LOADNIL                          R5
      138 FORGPREP                         R3
      139 FASTCALL1                        TYPEOF R6 ; [+3]
      140 MOVE                             R9 R6
      141 GETIMPORT                        R8 K1 [typeof]
      143 CALL                             R8 1 1
      144 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      146 LOADK                            R11 K16 ["%*\"input\" > Expected key of type string, got %* as %*"]
      147 MOVE                             R13 R2
      148 MOVE                             R14 R6
      149 FASTCALL1                        TYPEOF R6 ; [+3]
      150 MOVE                             R16 R6
      151 GETIMPORT                        R15 K1 [typeof]
      153 CALL                             R15 1 1
      154 NAMECALL                         R11 R11 K4 ["format"]
      156 CALL                             R11 4 1
      157 MOVE                             R10 R11
      158 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      160 MOVE                             R9 R1
      161 GETIMPORT                        R8 K6 [table.insert]
      163 CALL                             R8 2 0
      164 JUMP                             ; [+25]
      165 FASTCALL1                        TYPEOF R7 ; [+3]
      166 MOVE                             R9 R7
      167 GETIMPORT                        R8 K1 [typeof]
      169 CALL                             R8 1 1
      170 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
      172 LOADK                            R11 K17 ["%*\"input\" > [\"%*\"] > Expected table, got %*"]
      173 MOVE                             R13 R2
      174 MOVE                             R14 R6
      175 FASTCALL1                        TYPEOF R7 ; [+3]
      176 MOVE                             R16 R7
      177 GETIMPORT                        R15 K1 [typeof]
      179 CALL                             R15 1 1
      180 NAMECALL                         R11 R11 K4 ["format"]
      182 CALL                             R11 4 1
      183 MOVE                             R10 R11
      184 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      186 MOVE                             R9 R1
      187 GETIMPORT                        R8 K6 [table.insert]
      189 CALL                             R8 2 0
      190 FORGLOOP                         R3 2 ; [-52]
      192 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 GETIMPORT                        R6 K13 [table.freeze]
       22 DUPTABLE                         R7 K16 [{"fromResponse", "toRequest"}]
       23 SETTABLEKS                       R4 R7 K14 ["fromResponse"]
       25 SETTABLEKS                       R5 R7 K15 ["toRequest"]
       27 CALL                             R6 1 1
       28 RETURN                           R6 1
