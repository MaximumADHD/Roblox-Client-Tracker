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
       25 GETTABLEKS                       R3 R0 K7 ["freeTrialDailyAllowance"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["freeTrialDailyAllowance"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"freeTrialDailyAllowance\" > Expected number, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["freeTrialDailyAllowance"]
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
       55 GETTABLEKS                       R3 R0 K10 ["freeTrialRemaining"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["freeTrialRemaining"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"freeTrialRemaining\" > Expected number, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["freeTrialRemaining"]
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
       85 GETTABLEKS                       R3 R0 K12 ["freeTrialPctUsed"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["freeTrialPctUsed"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       97 LOADK                            R6 K13 ["%*\"freeTrialPctUsed\" > Expected number, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["freeTrialPctUsed"]
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
      115 GETTABLEKS                       R3 R0 K14 ["nextResetEligibleTime"]
      117 JUMPIFEQKNIL                     R3 ; [+27]
      119 GETTABLEKS                       R4 R0 K14 ["nextResetEligibleTime"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K15 ["string"] ; [+19]
      127 LOADK                            R6 K16 ["%*\"nextResetEligibleTime\" > Expected string, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K14 ["nextResetEligibleTime"]
      131 FASTCALL1                        TYPEOF R10 ; [+2]
      132 GETIMPORT                        R9 K1 [typeof]
      134 CALL                             R9 1 1
      135 NAMECALL                         R6 R6 K4 ["format"]
      137 CALL                             R6 3 1
      138 MOVE                             R5 R6
      139 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      141 MOVE                             R4 R1
      142 GETIMPORT                        R3 K6 [table.insert]
      144 CALL                             R3 2 0
      145 GETTABLEKS                       R3 R0 K17 ["robuxBalance"]
      147 JUMPIFEQKNIL                     R3 ; [+27]
      149 GETTABLEKS                       R4 R0 K17 ["robuxBalance"]
      151 FASTCALL1                        TYPEOF R4 ; [+2]
      152 GETIMPORT                        R3 K1 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
      157 LOADK                            R6 K18 ["%*\"robuxBalance\" > Expected number, got %*"]
      158 MOVE                             R8 R2
      159 GETTABLEKS                       R10 R0 K17 ["robuxBalance"]
      161 FASTCALL1                        TYPEOF R10 ; [+2]
      162 GETIMPORT                        R9 K1 [typeof]
      164 CALL                             R9 1 1
      165 NAMECALL                         R6 R6 K4 ["format"]
      167 CALL                             R6 3 1
      168 MOVE                             R5 R6
      169 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      171 MOVE                             R4 R1
      172 GETIMPORT                        R3 K6 [table.insert]
      174 CALL                             R3 2 0
      175 GETTABLEKS                       R3 R0 K19 ["limitSettings"]
      177 JUMPIFEQKNIL                     R3 ; [+16]
      179 GETUPVAL                         R3 0
      180 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      182 GETTABLEKS                       R4 R0 K19 ["limitSettings"]
      184 MOVE                             R5 R1
      185 LOADK                            R7 K21 ["%*\"limitSettings\" > "]
      186 MOVE                             R9 R2
      187 NAMECALL                         R7 R7 K4 ["format"]
      189 CALL                             R7 2 1
      190 MOVE                             R6 R7
      191 CALL                             R3 3 1
      192 SETTABLEKS                       R3 R0 K19 ["limitSettings"]
      194 GETTABLEKS                       R3 R0 K22 ["robuxSpentToday"]
      196 JUMPIFEQKNIL                     R3 ; [+27]
      198 GETTABLEKS                       R4 R0 K22 ["robuxSpentToday"]
      200 FASTCALL1                        TYPEOF R4 ; [+2]
      201 GETIMPORT                        R3 K1 [typeof]
      203 CALL                             R3 1 1
      204 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
      206 LOADK                            R6 K23 ["%*\"robuxSpentToday\" > Expected number, got %*"]
      207 MOVE                             R8 R2
      208 GETTABLEKS                       R10 R0 K22 ["robuxSpentToday"]
      210 FASTCALL1                        TYPEOF R10 ; [+2]
      211 GETIMPORT                        R9 K1 [typeof]
      213 CALL                             R9 1 1
      214 NAMECALL                         R6 R6 K4 ["format"]
      216 CALL                             R6 3 1
      217 MOVE                             R5 R6
      218 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      220 MOVE                             R4 R1
      221 GETIMPORT                        R3 K6 [table.insert]
      223 CALL                             R3 2 0
      224 GETTABLEKS                       R3 R0 K24 ["limitRemaining"]
      226 JUMPIFEQKNIL                     R3 ; [+27]
      228 GETTABLEKS                       R4 R0 K24 ["limitRemaining"]
      230 FASTCALL1                        TYPEOF R4 ; [+2]
      231 GETIMPORT                        R3 K1 [typeof]
      233 CALL                             R3 1 1
      234 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
      236 LOADK                            R6 K25 ["%*\"limitRemaining\" > Expected number, got %*"]
      237 MOVE                             R8 R2
      238 GETTABLEKS                       R10 R0 K24 ["limitRemaining"]
      240 FASTCALL1                        TYPEOF R10 ; [+2]
      241 GETIMPORT                        R9 K1 [typeof]
      243 CALL                             R9 1 1
      244 NAMECALL                         R6 R6 K4 ["format"]
      246 CALL                             R6 3 1
      247 MOVE                             R5 R6
      248 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      250 MOVE                             R4 R1
      251 GETIMPORT                        R3 K6 [table.insert]
      253 CALL                             R3 2 0
      254 GETTABLEKS                       R3 R0 K26 ["allowed"]
      256 JUMPIFEQKNIL                     R3 ; [+27]
      258 GETTABLEKS                       R4 R0 K26 ["allowed"]
      260 FASTCALL1                        TYPEOF R4 ; [+2]
      261 GETIMPORT                        R3 K1 [typeof]
      263 CALL                             R3 1 1
      264 JUMPIFEQKS                       R3 K27 ["boolean"] ; [+19]
      266 LOADK                            R6 K28 ["%*\"allowed\" > Expected boolean, got %*"]
      267 MOVE                             R8 R2
      268 GETTABLEKS                       R10 R0 K26 ["allowed"]
      270 FASTCALL1                        TYPEOF R10 ; [+2]
      271 GETIMPORT                        R9 K1 [typeof]
      273 CALL                             R9 1 1
      274 NAMECALL                         R6 R6 K4 ["format"]
      276 CALL                             R6 3 1
      277 MOVE                             R5 R6
      278 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      280 MOVE                             R4 R1
      281 GETIMPORT                        R3 K6 [table.insert]
      283 CALL                             R3 2 0
      284 GETTABLEKS                       R3 R0 K29 ["reason"]
      286 JUMPIFEQKNIL                     R3 ; [+16]
      288 GETUPVAL                         R3 1
      289 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      291 GETTABLEKS                       R4 R0 K29 ["reason"]
      293 MOVE                             R5 R1
      294 LOADK                            R7 K30 ["%*\"reason\" > "]
      295 MOVE                             R9 R2
      296 NAMECALL                         R7 R7 K4 ["format"]
      298 CALL                             R7 2 1
      299 MOVE                             R6 R7
      300 CALL                             R3 3 1
      301 SETTABLEKS                       R3 R0 K29 ["reason"]
      303 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["limitSettings"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["limitSettings"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["limitSettings"]
       16 GETTABLEKS                       R2 R1 K5 ["reason"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["reason"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["reason"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreditMeteringService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["BlockReason"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["DailyLimitSettings"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
