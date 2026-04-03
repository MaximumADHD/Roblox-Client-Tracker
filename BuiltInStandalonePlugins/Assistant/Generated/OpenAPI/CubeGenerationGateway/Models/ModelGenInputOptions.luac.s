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
       25 GETTABLEKS                       R3 R0 K7 ["adminOptions"]
       27 JUMPIFEQKNIL                     R3 ; [+86]
       29 GETTABLEKS                       R4 R0 K7 ["adminOptions"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       37 LOADK                            R6 K8 ["%*\"adminOptions\" > Expected table, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["adminOptions"]
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
       55 JUMP                             ; [+58]
       56 GETTABLEKS                       R3 R0 K7 ["adminOptions"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K1 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
       68 LOADK                            R11 K10 ["%*\"adminOptions\" > Expected key of type string, got %* as %*"]
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
       86 JUMP                             ; [+25]
       87 FASTCALL1                        TYPEOF R7 ; [+3]
       88 MOVE                             R9 R7
       89 GETIMPORT                        R8 K1 [typeof]
       91 CALL                             R8 1 1
       92 JUMPIFEQKS                       R8 K9 ["string"] ; [+19]
       94 LOADK                            R11 K11 ["%*\"adminOptions\" > [\"%*\"] > Expected string, got %*"]
       95 MOVE                             R13 R2
       96 MOVE                             R14 R6
       97 FASTCALL1                        TYPEOF R7 ; [+3]
       98 MOVE                             R16 R7
       99 GETIMPORT                        R15 K1 [typeof]
      101 CALL                             R15 1 1
      102 NAMECALL                         R11 R11 K4 ["format"]
      104 CALL                             R11 4 1
      105 MOVE                             R10 R11
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K6 [table.insert]
      111 CALL                             R8 2 0
      112 FORGLOOP                         R3 2 ; [-52]
      114 GETTABLEKS                       R3 R0 K12 ["suggestedSize"]
      116 JUMPIFEQKNIL                     R3 ; [+16]
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R3 R4 K13 ["fromResponse"]
      121 GETTABLEKS                       R4 R0 K12 ["suggestedSize"]
      123 MOVE                             R5 R1
      124 LOADK                            R7 K14 ["%*\"suggestedSize\" > "]
      125 MOVE                             R9 R2
      126 NAMECALL                         R7 R7 K4 ["format"]
      128 CALL                             R7 2 1
      129 MOVE                             R6 R7
      130 CALL                             R3 3 1
      131 SETTABLEKS                       R3 R0 K12 ["suggestedSize"]
      133 GETTABLEKS                       R3 R0 K15 ["maxTriangleCount"]
      135 JUMPIFEQKNIL                     R3 ; [+27]
      137 GETTABLEKS                       R4 R0 K15 ["maxTriangleCount"]
      139 FASTCALL1                        TYPEOF R4 ; [+2]
      140 GETIMPORT                        R3 K1 [typeof]
      142 CALL                             R3 1 1
      143 JUMPIFEQKS                       R3 K16 ["number"] ; [+19]
      145 LOADK                            R6 K17 ["%*\"maxTriangleCount\" > Expected number, got %*"]
      146 MOVE                             R8 R2
      147 GETTABLEKS                       R10 R0 K15 ["maxTriangleCount"]
      149 FASTCALL1                        TYPEOF R10 ; [+2]
      150 GETIMPORT                        R9 K1 [typeof]
      152 CALL                             R9 1 1
      153 NAMECALL                         R6 R6 K4 ["format"]
      155 CALL                             R6 3 1
      156 MOVE                             R5 R6
      157 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      159 MOVE                             R4 R1
      160 GETIMPORT                        R3 K6 [table.insert]
      162 CALL                             R3 2 0
      163 GETTABLEKS                       R3 R0 K18 ["shouldGenerateTexture"]
      165 JUMPIFEQKNIL                     R3 ; [+27]
      167 GETTABLEKS                       R4 R0 K18 ["shouldGenerateTexture"]
      169 FASTCALL1                        TYPEOF R4 ; [+2]
      170 GETIMPORT                        R3 K1 [typeof]
      172 CALL                             R3 1 1
      173 JUMPIFEQKS                       R3 K19 ["boolean"] ; [+19]
      175 LOADK                            R6 K20 ["%*\"shouldGenerateTexture\" > Expected boolean, got %*"]
      176 MOVE                             R8 R2
      177 GETTABLEKS                       R10 R0 K18 ["shouldGenerateTexture"]
      179 FASTCALL1                        TYPEOF R10 ; [+2]
      180 GETIMPORT                        R9 K1 [typeof]
      182 CALL                             R9 1 1
      183 NAMECALL                         R6 R6 K4 ["format"]
      185 CALL                             R6 3 1
      186 MOVE                             R5 R6
      187 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      189 MOVE                             R4 R1
      190 GETIMPORT                        R3 K6 [table.insert]
      192 CALL                             R3 2 0
      193 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["suggestedSize"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["suggestedSize"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["suggestedSize"]
       16 RETURN                           R1 1

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
       22 GETTABLEKS                       R5 R6 K10 ["ModelGenSuggestedSize"]
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
