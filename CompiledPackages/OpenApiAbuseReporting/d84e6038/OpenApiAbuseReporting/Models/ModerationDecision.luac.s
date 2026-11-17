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
       24 GETTABLEKS                       R3 R0 K7 ["abuseReportId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["abuseReportId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"abuseReportId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["abuseReportId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["createdAtTime"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["createdAtTime"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"createdAtTime\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["createdAtTime"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["decisionSource"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["decisionSource"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       94 LOADK                            R5 K13 ["%*\"decisionSource\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["decisionSource"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["isFinalDecision"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K14 ["isFinalDecision"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K15 ["boolean"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"isFinalDecision\" > Expected boolean, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K14 ["isFinalDecision"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["moderationDecisionId"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["moderationDecisionId"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      152 LOADK                            R5 K18 ["%*\"moderationDecisionId\" > Expected string, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["moderationDecisionId"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K19 ["moderationLabelTargets"]
      171 JUMPIFEQKNIL                     R3 ; [+74]
      173 GETTABLEKS                       R4 R0 K19 ["moderationLabelTargets"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      181 LOADK                            R5 K20 ["%*\"moderationLabelTargets\" > Expected table, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K19 ["moderationLabelTargets"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 JUMP                             ; [+47]
      199 GETTABLEKS                       R3 R0 K19 ["moderationLabelTargets"]
      201 LOADNIL                          R4
      202 LOADNIL                          R5
      203 FORGPREP                         R3
      204 FASTCALL1                        TYPEOF R6 ; [+3]
      205 MOVE                             R9 R6
      206 GETIMPORT                        R8 K1 [typeof]
      208 CALL                             R8 1 1
      209 JUMPIFEQKS                       R8 K21 ["number"] ; [+19]
      211 LOADK                            R10 K22 ["%*\"moderationLabelTargets\" > Expected index of type number, got %* as %*"]
      212 MOVE                             R12 R2
      213 MOVE                             R13 R6
      214 FASTCALL1                        TYPEOF R6 ; [+3]
      215 MOVE                             R15 R6
      216 GETIMPORT                        R14 K1 [typeof]
      218 CALL                             R14 1 1
      219 NAMECALL                         R10 R10 K4 ["format"]
      221 CALL                             R10 4 1
      222 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      224 MOVE                             R9 R1
      225 GETIMPORT                        R8 K6 [table.insert]
      227 CALL                             R8 2 0
      228 JUMP                             ; [+15]
      229 GETTABLEKS                       R8 R0 K19 ["moderationLabelTargets"]
      231 GETUPVAL                         R9 0
      232 GETTABLEKS                       R9 R9 K23 ["fromResponse"]
      234 MOVE                             R10 R7
      235 MOVE                             R11 R1
      236 LOADK                            R12 K24 ["%*\"moderationLabelTargets\" > [%*] > "]
      237 MOVE                             R14 R2
      238 MOVE                             R15 R6
      239 NAMECALL                         R12 R12 K4 ["format"]
      241 CALL                             R12 3 1
      242 CALL                             R9 3 1
      243 SETTABLE                         R9 R8 R6
      244 FORGLOOP                         R3 2 ; [-41]
      246 GETTABLEKS                       R3 R0 K25 ["moderatorIdentifier"]
      248 JUMPIFEQKNIL                     R3 ; [+26]
      250 GETTABLEKS                       R4 R0 K25 ["moderatorIdentifier"]
      252 FASTCALL1                        TYPEOF R4 ; [+2]
      253 GETIMPORT                        R3 K1 [typeof]
      255 CALL                             R3 1 1
      256 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      258 LOADK                            R5 K26 ["%*\"moderatorIdentifier\" > Expected string, got %*"]
      259 MOVE                             R7 R2
      260 GETTABLEKS                       R9 R0 K25 ["moderatorIdentifier"]
      262 FASTCALL1                        TYPEOF R9 ; [+2]
      263 GETIMPORT                        R8 K1 [typeof]
      265 CALL                             R8 1 1
      266 NAMECALL                         R5 R5 K4 ["format"]
      268 CALL                             R5 3 1
      269 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      271 MOVE                             R4 R1
      272 GETIMPORT                        R3 K6 [table.insert]
      274 CALL                             R3 2 0
      275 GETTABLEKS                       R3 R0 K27 ["moderatorNote"]
      277 JUMPIFEQKNIL                     R3 ; [+26]
      279 GETTABLEKS                       R4 R0 K27 ["moderatorNote"]
      281 FASTCALL1                        TYPEOF R4 ; [+2]
      282 GETIMPORT                        R3 K1 [typeof]
      284 CALL                             R3 1 1
      285 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      287 LOADK                            R5 K28 ["%*\"moderatorNote\" > Expected string, got %*"]
      288 MOVE                             R7 R2
      289 GETTABLEKS                       R9 R0 K27 ["moderatorNote"]
      291 FASTCALL1                        TYPEOF R9 ; [+2]
      292 GETIMPORT                        R8 K1 [typeof]
      294 CALL                             R8 1 1
      295 NAMECALL                         R5 R5 K4 ["format"]
      297 CALL                             R5 3 1
      298 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      300 MOVE                             R4 R1
      301 GETIMPORT                        R3 K6 [table.insert]
      303 CALL                             R3 2 0
      304 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["moderationLabelTargets"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["moderationLabelTargets"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["moderationLabelTargets"]
       15 GETTABLEKS                       R2 R1 K3 ["moderationLabelTargets"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["moderationLabelTargets"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ModerationLabelTarget"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
