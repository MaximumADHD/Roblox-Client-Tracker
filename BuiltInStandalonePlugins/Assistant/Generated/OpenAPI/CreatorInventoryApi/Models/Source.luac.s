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
       27 JUMPIFEQKNIL                     R3 ; [+86]
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
       55 JUMP                             ; [+58]
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
       86 JUMP                             ; [+25]
       87 FASTCALL1                        TYPEOF R7 ; [+3]
       88 MOVE                             R9 R7
       89 GETIMPORT                        R8 K1 [typeof]
       91 CALL                             R8 1 1
       92 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
       94 LOADK                            R11 K11 ["%*\"createdDetails\" > [\"%*\"] > Expected table, got %*"]
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
      114 GETTABLEKS                       R3 R0 K12 ["purchasedDetails"]
      116 JUMPIFEQKNIL                     R3 ; [+86]
      118 GETTABLEKS                       R4 R0 K12 ["purchasedDetails"]
      120 FASTCALL1                        TYPEOF R4 ; [+2]
      121 GETIMPORT                        R3 K1 [typeof]
      123 CALL                             R3 1 1
      124 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      126 LOADK                            R6 K13 ["%*\"purchasedDetails\" > Expected table, got %*"]
      127 MOVE                             R8 R2
      128 GETTABLEKS                       R10 R0 K12 ["purchasedDetails"]
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
      144 JUMP                             ; [+58]
      145 GETTABLEKS                       R3 R0 K12 ["purchasedDetails"]
      147 LOADNIL                          R4
      148 LOADNIL                          R5
      149 FORGPREP                         R3
      150 FASTCALL1                        TYPEOF R6 ; [+3]
      151 MOVE                             R9 R6
      152 GETIMPORT                        R8 K1 [typeof]
      154 CALL                             R8 1 1
      155 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
      157 LOADK                            R11 K14 ["%*\"purchasedDetails\" > Expected key of type string, got %* as %*"]
      158 MOVE                             R13 R2
      159 MOVE                             R14 R6
      160 FASTCALL1                        TYPEOF R6 ; [+3]
      161 MOVE                             R16 R6
      162 GETIMPORT                        R15 K1 [typeof]
      164 CALL                             R15 1 1
      165 NAMECALL                         R11 R11 K4 ["format"]
      167 CALL                             R11 4 1
      168 MOVE                             R10 R11
      169 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      171 MOVE                             R9 R1
      172 GETIMPORT                        R8 K6 [table.insert]
      174 CALL                             R8 2 0
      175 JUMP                             ; [+25]
      176 FASTCALL1                        TYPEOF R7 ; [+3]
      177 MOVE                             R9 R7
      178 GETIMPORT                        R8 K1 [typeof]
      180 CALL                             R8 1 1
      181 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
      183 LOADK                            R11 K15 ["%*\"purchasedDetails\" > [\"%*\"] > Expected table, got %*"]
      184 MOVE                             R13 R2
      185 MOVE                             R14 R6
      186 FASTCALL1                        TYPEOF R7 ; [+3]
      187 MOVE                             R16 R7
      188 GETIMPORT                        R15 K1 [typeof]
      190 CALL                             R15 1 1
      191 NAMECALL                         R11 R11 K4 ["format"]
      193 CALL                             R11 4 1
      194 MOVE                             R10 R11
      195 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      197 MOVE                             R9 R1
      198 GETIMPORT                        R8 K6 [table.insert]
      200 CALL                             R8 2 0
      201 FORGLOOP                         R3 2 ; [-52]
      203 GETTABLEKS                       R3 R0 K16 ["sharedDetails"]
      205 JUMPIFEQKNIL                     R3 ; [+86]
      207 GETTABLEKS                       R4 R0 K16 ["sharedDetails"]
      209 FASTCALL1                        TYPEOF R4 ; [+2]
      210 GETIMPORT                        R3 K1 [typeof]
      212 CALL                             R3 1 1
      213 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      215 LOADK                            R6 K17 ["%*\"sharedDetails\" > Expected table, got %*"]
      216 MOVE                             R8 R2
      217 GETTABLEKS                       R10 R0 K16 ["sharedDetails"]
      219 FASTCALL1                        TYPEOF R10 ; [+2]
      220 GETIMPORT                        R9 K1 [typeof]
      222 CALL                             R9 1 1
      223 NAMECALL                         R6 R6 K4 ["format"]
      225 CALL                             R6 3 1
      226 MOVE                             R5 R6
      227 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      229 MOVE                             R4 R1
      230 GETIMPORT                        R3 K6 [table.insert]
      232 CALL                             R3 2 0
      233 RETURN                           R0 1
      234 GETTABLEKS                       R3 R0 K16 ["sharedDetails"]
      236 LOADNIL                          R4
      237 LOADNIL                          R5
      238 FORGPREP                         R3
      239 FASTCALL1                        TYPEOF R6 ; [+3]
      240 MOVE                             R9 R6
      241 GETIMPORT                        R8 K1 [typeof]
      243 CALL                             R8 1 1
      244 JUMPIFEQKS                       R8 K9 ["string"] ; [+20]
      246 LOADK                            R11 K18 ["%*\"sharedDetails\" > Expected key of type string, got %* as %*"]
      247 MOVE                             R13 R2
      248 MOVE                             R14 R6
      249 FASTCALL1                        TYPEOF R6 ; [+3]
      250 MOVE                             R16 R6
      251 GETIMPORT                        R15 K1 [typeof]
      253 CALL                             R15 1 1
      254 NAMECALL                         R11 R11 K4 ["format"]
      256 CALL                             R11 4 1
      257 MOVE                             R10 R11
      258 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      260 MOVE                             R9 R1
      261 GETIMPORT                        R8 K6 [table.insert]
      263 CALL                             R8 2 0
      264 JUMP                             ; [+25]
      265 FASTCALL1                        TYPEOF R7 ; [+3]
      266 MOVE                             R9 R7
      267 GETIMPORT                        R8 K1 [typeof]
      269 CALL                             R8 1 1
      270 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
      272 LOADK                            R11 K19 ["%*\"sharedDetails\" > [\"%*\"] > Expected table, got %*"]
      273 MOVE                             R13 R2
      274 MOVE                             R14 R6
      275 FASTCALL1                        TYPEOF R7 ; [+3]
      276 MOVE                             R16 R7
      277 GETIMPORT                        R15 K1 [typeof]
      279 CALL                             R15 1 1
      280 NAMECALL                         R11 R11 K4 ["format"]
      282 CALL                             R11 4 1
      283 MOVE                             R10 R11
      284 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      286 MOVE                             R9 R1
      287 GETIMPORT                        R8 K6 [table.insert]
      289 CALL                             R8 2 0
      290 FORGLOOP                         R3 2 ; [-52]
      292 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorInventoryApi"]
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
