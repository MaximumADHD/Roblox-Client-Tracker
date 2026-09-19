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
       24 GETTABLEKS                       R3 R0 K7 ["freeTrialDailyAllowance"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["freeTrialDailyAllowance"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"freeTrialDailyAllowance\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["freeTrialDailyAllowance"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["freeTrialRemaining"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["freeTrialRemaining"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"freeTrialRemaining\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["freeTrialRemaining"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["freeTrialPctUsed"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["freeTrialPctUsed"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       94 LOADK                            R5 K13 ["%*\"freeTrialPctUsed\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["freeTrialPctUsed"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["nextResetEligibleTime"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K14 ["nextResetEligibleTime"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K15 ["string"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"nextResetEligibleTime\" > Expected string, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K14 ["nextResetEligibleTime"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["robuxBalance"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["robuxBalance"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      152 LOADK                            R5 K18 ["%*\"robuxBalance\" > Expected number, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["robuxBalance"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K19 ["limitSettings"]
      171 JUMPIFEQKNIL                     R3 ; [+15]
      173 GETUPVAL                         R3 0
      174 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      176 GETTABLEKS                       R4 R0 K19 ["limitSettings"]
      178 MOVE                             R5 R1
      179 LOADK                            R6 K21 ["%*\"limitSettings\" > "]
      180 MOVE                             R8 R2
      181 NAMECALL                         R6 R6 K4 ["format"]
      183 CALL                             R6 2 1
      184 CALL                             R3 3 1
      185 SETTABLEKS                       R3 R0 K19 ["limitSettings"]
      187 GETTABLEKS                       R3 R0 K22 ["robuxSpentToday"]
      189 JUMPIFEQKNIL                     R3 ; [+26]
      191 GETTABLEKS                       R4 R0 K22 ["robuxSpentToday"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      199 LOADK                            R5 K23 ["%*\"robuxSpentToday\" > Expected number, got %*"]
      200 MOVE                             R7 R2
      201 GETTABLEKS                       R9 R0 K22 ["robuxSpentToday"]
      203 FASTCALL1                        TYPEOF R9 ; [+2]
      204 GETIMPORT                        R8 K1 [typeof]
      206 CALL                             R8 1 1
      207 NAMECALL                         R5 R5 K4 ["format"]
      209 CALL                             R5 3 1
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 GETTABLEKS                       R3 R0 K24 ["limitRemaining"]
      218 JUMPIFEQKNIL                     R3 ; [+26]
      220 GETTABLEKS                       R4 R0 K24 ["limitRemaining"]
      222 FASTCALL1                        TYPEOF R4 ; [+2]
      223 GETIMPORT                        R3 K1 [typeof]
      225 CALL                             R3 1 1
      226 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
      228 LOADK                            R5 K25 ["%*\"limitRemaining\" > Expected number, got %*"]
      229 MOVE                             R7 R2
      230 GETTABLEKS                       R9 R0 K24 ["limitRemaining"]
      232 FASTCALL1                        TYPEOF R9 ; [+2]
      233 GETIMPORT                        R8 K1 [typeof]
      235 CALL                             R8 1 1
      236 NAMECALL                         R5 R5 K4 ["format"]
      238 CALL                             R5 3 1
      239 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      241 MOVE                             R4 R1
      242 GETIMPORT                        R3 K6 [table.insert]
      244 CALL                             R3 2 0
      245 GETTABLEKS                       R3 R0 K26 ["allowed"]
      247 JUMPIFEQKNIL                     R3 ; [+26]
      249 GETTABLEKS                       R4 R0 K26 ["allowed"]
      251 FASTCALL1                        TYPEOF R4 ; [+2]
      252 GETIMPORT                        R3 K1 [typeof]
      254 CALL                             R3 1 1
      255 JUMPIFEQKS                       R3 K27 ["boolean"] ; [+18]
      257 LOADK                            R5 K28 ["%*\"allowed\" > Expected boolean, got %*"]
      258 MOVE                             R7 R2
      259 GETTABLEKS                       R9 R0 K26 ["allowed"]
      261 FASTCALL1                        TYPEOF R9 ; [+2]
      262 GETIMPORT                        R8 K1 [typeof]
      264 CALL                             R8 1 1
      265 NAMECALL                         R5 R5 K4 ["format"]
      267 CALL                             R5 3 1
      268 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      270 MOVE                             R4 R1
      271 GETIMPORT                        R3 K6 [table.insert]
      273 CALL                             R3 2 0
      274 GETTABLEKS                       R3 R0 K29 ["reason"]
      276 JUMPIFEQKNIL                     R3 ; [+15]
      278 GETUPVAL                         R3 1
      279 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      281 GETTABLEKS                       R4 R0 K29 ["reason"]
      283 MOVE                             R5 R1
      284 LOADK                            R6 K30 ["%*\"reason\" > "]
      285 MOVE                             R8 R2
      286 NAMECALL                         R6 R6 K4 ["format"]
      288 CALL                             R6 2 1
      289 CALL                             R3 3 1
      290 SETTABLEKS                       R3 R0 K29 ["reason"]
      292 RETURN                           R0 1

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
