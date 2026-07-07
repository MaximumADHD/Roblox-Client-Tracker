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
      114 GETTABLEKS                       R3 R0 K12 ["topP"]
      116 JUMPIFEQKNIL                     R3 ; [+27]
      118 GETTABLEKS                       R4 R0 K12 ["topP"]
      120 FASTCALL1                        TYPEOF R4 ; [+2]
      121 GETIMPORT                        R3 K1 [typeof]
      123 CALL                             R3 1 1
      124 JUMPIFEQKS                       R3 K13 ["number"] ; [+19]
      126 LOADK                            R6 K14 ["%*\"topP\" > Expected number, got %*"]
      127 MOVE                             R8 R2
      128 GETTABLEKS                       R10 R0 K12 ["topP"]
      130 FASTCALL1                        TYPEOF R10 ; [+2]
      131 GETIMPORT                        R9 K1 [typeof]
      133 CALL                             R9 1 1
      134 NAMECALL                         R6 R6 K4 ["format"]
      136 CALL                             R6 3 1
      137 MOVE                             R5 R6
      138 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      140 MOVE                             R4 R1
      141 GETIMPORT                        R3 K6 [table.insert]
      143 CALL                             R3 2 0
      144 GETTABLEKS                       R3 R0 K15 ["temperature"]
      146 JUMPIFEQKNIL                     R3 ; [+27]
      148 GETTABLEKS                       R4 R0 K15 ["temperature"]
      150 FASTCALL1                        TYPEOF R4 ; [+2]
      151 GETIMPORT                        R3 K1 [typeof]
      153 CALL                             R3 1 1
      154 JUMPIFEQKS                       R3 K13 ["number"] ; [+19]
      156 LOADK                            R6 K16 ["%*\"temperature\" > Expected number, got %*"]
      157 MOVE                             R8 R2
      158 GETTABLEKS                       R10 R0 K15 ["temperature"]
      160 FASTCALL1                        TYPEOF R10 ; [+2]
      161 GETIMPORT                        R9 K1 [typeof]
      163 CALL                             R9 1 1
      164 NAMECALL                         R6 R6 K4 ["format"]
      166 CALL                             R6 3 1
      167 MOVE                             R5 R6
      168 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      170 MOVE                             R4 R1
      171 GETIMPORT                        R3 K6 [table.insert]
      173 CALL                             R3 2 0
      174 GETTABLEKS                       R3 R0 K17 ["suggestedSize"]
      176 JUMPIFEQKNIL                     R3 ; [+16]
      178 GETUPVAL                         R3 0
      179 GETTABLEKS                       R3 R3 K18 ["fromResponse"]
      181 GETTABLEKS                       R4 R0 K17 ["suggestedSize"]
      183 MOVE                             R5 R1
      184 LOADK                            R7 K19 ["%*\"suggestedSize\" > "]
      185 MOVE                             R9 R2
      186 NAMECALL                         R7 R7 K4 ["format"]
      188 CALL                             R7 2 1
      189 MOVE                             R6 R7
      190 CALL                             R3 3 1
      191 SETTABLEKS                       R3 R0 K17 ["suggestedSize"]
      193 GETTABLEKS                       R3 R0 K20 ["maxTriangleCount"]
      195 JUMPIFEQKNIL                     R3 ; [+27]
      197 GETTABLEKS                       R4 R0 K20 ["maxTriangleCount"]
      199 FASTCALL1                        TYPEOF R4 ; [+2]
      200 GETIMPORT                        R3 K1 [typeof]
      202 CALL                             R3 1 1
      203 JUMPIFEQKS                       R3 K13 ["number"] ; [+19]
      205 LOADK                            R6 K21 ["%*\"maxTriangleCount\" > Expected number, got %*"]
      206 MOVE                             R8 R2
      207 GETTABLEKS                       R10 R0 K20 ["maxTriangleCount"]
      209 FASTCALL1                        TYPEOF R10 ; [+2]
      210 GETIMPORT                        R9 K1 [typeof]
      212 CALL                             R9 1 1
      213 NAMECALL                         R6 R6 K4 ["format"]
      215 CALL                             R6 3 1
      216 MOVE                             R5 R6
      217 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      219 MOVE                             R4 R1
      220 GETIMPORT                        R3 K6 [table.insert]
      222 CALL                             R3 2 0
      223 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["suggestedSize"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
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
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["OptionSize"]
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
