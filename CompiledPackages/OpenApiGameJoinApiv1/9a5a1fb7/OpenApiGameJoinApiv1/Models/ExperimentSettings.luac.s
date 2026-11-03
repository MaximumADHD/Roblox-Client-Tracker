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
       24 GETTABLEKS                       R3 R0 K7 ["scoringSettings"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["scoringSettings"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"scoringSettings\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["scoringSettings"]
       42 GETTABLEKS                       R3 R0 K10 ["rankedPolicyGroupIds"]
       44 JUMPIFEQKNIL                     R3 ; [+141]
       46 GETTABLEKS                       R4 R0 K10 ["rankedPolicyGroupIds"]
       48 FASTCALL1                        TYPEOF R4 ; [+2]
       49 GETIMPORT                        R3 K1 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       54 LOADK                            R5 K11 ["%*\"rankedPolicyGroupIds\" > Expected table, got %*"]
       55 MOVE                             R7 R2
       56 GETTABLEKS                       R9 R0 K10 ["rankedPolicyGroupIds"]
       58 FASTCALL1                        TYPEOF R9 ; [+2]
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 NAMECALL                         R5 R5 K4 ["format"]
       64 CALL                             R5 3 1
       65 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       67 MOVE                             R4 R1
       68 GETIMPORT                        R3 K6 [table.insert]
       70 CALL                             R3 2 0
       71 JUMP                             ; [+114]
       72 GETTABLEKS                       R3 R0 K10 ["rankedPolicyGroupIds"]
       74 LOADNIL                          R4
       75 LOADNIL                          R5
       76 FORGPREP                         R3
       77 FASTCALL1                        TYPEOF R6 ; [+3]
       78 MOVE                             R9 R6
       79 GETIMPORT                        R8 K1 [typeof]
       81 CALL                             R8 1 1
       82 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       84 LOADK                            R10 K13 ["%*\"rankedPolicyGroupIds\" > Expected index of type number, got %* as %*"]
       85 MOVE                             R12 R2
       86 MOVE                             R13 R6
       87 FASTCALL1                        TYPEOF R6 ; [+3]
       88 MOVE                             R15 R6
       89 GETIMPORT                        R14 K1 [typeof]
       91 CALL                             R14 1 1
       92 NAMECALL                         R10 R10 K4 ["format"]
       94 CALL                             R10 4 1
       95 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       97 MOVE                             R9 R1
       98 GETIMPORT                        R8 K6 [table.insert]
      100 CALL                             R8 2 0
      101 JUMP                             ; [+82]
      102 FASTCALL1                        TYPEOF R7 ; [+3]
      103 MOVE                             R9 R7
      104 GETIMPORT                        R8 K1 [typeof]
      106 CALL                             R8 1 1
      107 JUMPIFEQKS                       R8 K2 ["table"] ; [+19]
      109 LOADK                            R10 K14 ["%*\"rankedPolicyGroupIds\" > [%*] > Expected table, got %*"]
      110 MOVE                             R12 R2
      111 MOVE                             R13 R6
      112 FASTCALL1                        TYPEOF R7 ; [+3]
      113 MOVE                             R15 R7
      114 GETIMPORT                        R14 K1 [typeof]
      116 CALL                             R14 1 1
      117 NAMECALL                         R10 R10 K4 ["format"]
      119 CALL                             R10 4 1
      120 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      122 MOVE                             R9 R1
      123 GETIMPORT                        R8 K6 [table.insert]
      125 CALL                             R8 2 0
      126 JUMP                             ; [+57]
      127 MOVE                             R8 R7
      128 LOADNIL                          R9
      129 LOADNIL                          R10
      130 FORGPREP                         R8
      131 FASTCALL1                        TYPEOF R11 ; [+3]
      132 MOVE                             R14 R11
      133 GETIMPORT                        R13 K1 [typeof]
      135 CALL                             R13 1 1
      136 JUMPIFEQKS                       R13 K12 ["number"] ; [+20]
      138 LOADK                            R15 K15 ["%*\"rankedPolicyGroupIds\" > [%*] > Expected index of type number, got %* as %*"]
      139 MOVE                             R17 R2
      140 MOVE                             R18 R6
      141 MOVE                             R19 R11
      142 FASTCALL1                        TYPEOF R11 ; [+3]
      143 MOVE                             R21 R11
      144 GETIMPORT                        R20 K1 [typeof]
      146 CALL                             R20 1 1
      147 NAMECALL                         R15 R15 K4 ["format"]
      149 CALL                             R15 5 1
      150 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
      152 MOVE                             R14 R1
      153 GETIMPORT                        R13 K6 [table.insert]
      155 CALL                             R13 2 0
      156 JUMP                             ; [+25]
      157 FASTCALL1                        TYPEOF R12 ; [+3]
      158 MOVE                             R14 R12
      159 GETIMPORT                        R13 K1 [typeof]
      161 CALL                             R13 1 1
      162 JUMPIFEQKS                       R13 K12 ["number"] ; [+19]
      164 LOADK                            R15 K16 ["%*\"rankedPolicyGroupIds\" > [%*] > [%*] > Expected number, got %*"]
      165 MOVE                             R17 R2
      166 MOVE                             R18 R6
      167 MOVE                             R19 R11
      168 FASTCALL1                        TYPEOF R12 ; [+3]
      169 MOVE                             R21 R12
      170 GETIMPORT                        R20 K1 [typeof]
      172 CALL                             R20 1 1
      173 NAMECALL                         R15 R15 K4 ["format"]
      175 CALL                             R15 5 1
      176 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
      178 MOVE                             R14 R1
      179 GETIMPORT                        R13 K6 [table.insert]
      181 CALL                             R13 2 0
      182 FORGLOOP                         R8 2 ; [-52]
      184 FORGLOOP                         R3 2 ; [-108]
      186 GETTABLEKS                       R3 R0 K17 ["eligibleGameFinderSettings"]
      188 JUMPIFEQKNIL                     R3 ; [+15]
      190 GETUPVAL                         R3 1
      191 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
      193 GETTABLEKS                       R4 R0 K17 ["eligibleGameFinderSettings"]
      195 MOVE                             R5 R1
      196 LOADK                            R6 K18 ["%*\"eligibleGameFinderSettings\" > "]
      197 MOVE                             R8 R2
      198 NAMECALL                         R6 R6 K4 ["format"]
      200 CALL                             R6 2 1
      201 CALL                             R3 3 1
      202 SETTABLEKS                       R3 R0 K17 ["eligibleGameFinderSettings"]
      204 GETTABLEKS                       R3 R0 K19 ["gameStarterSettings"]
      206 JUMPIFEQKNIL                     R3 ; [+15]
      208 GETUPVAL                         R3 2
      209 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
      211 GETTABLEKS                       R4 R0 K19 ["gameStarterSettings"]
      213 MOVE                             R5 R1
      214 LOADK                            R6 K20 ["%*\"gameStarterSettings\" > "]
      215 MOVE                             R8 R2
      216 NAMECALL                         R6 R6 K4 ["format"]
      218 CALL                             R6 2 1
      219 CALL                             R3 3 1
      220 SETTABLEKS                       R3 R0 K19 ["gameStarterSettings"]
      222 GETTABLEKS                       R3 R0 K21 ["creatorExperimentSettings"]
      224 JUMPIFEQKNIL                     R3 ; [+15]
      226 GETUPVAL                         R3 3
      227 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
      229 GETTABLEKS                       R4 R0 K21 ["creatorExperimentSettings"]
      231 MOVE                             R5 R1
      232 LOADK                            R6 K22 ["%*\"creatorExperimentSettings\" > "]
      233 MOVE                             R8 R2
      234 NAMECALL                         R6 R6 K4 ["format"]
      236 CALL                             R6 2 1
      237 CALL                             R3 3 1
      238 SETTABLEKS                       R3 R0 K21 ["creatorExperimentSettings"]
      240 GETTABLEKS                       R3 R0 K23 ["experimentLabels"]
      242 JUMPIFEQKNIL                     R3 ; [+15]
      244 GETUPVAL                         R3 4
      245 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
      247 GETTABLEKS                       R4 R0 K23 ["experimentLabels"]
      249 MOVE                             R5 R1
      250 LOADK                            R6 K24 ["%*\"experimentLabels\" > "]
      251 MOVE                             R8 R2
      252 NAMECALL                         R6 R6 K4 ["format"]
      254 CALL                             R6 2 1
      255 CALL                             R3 3 1
      256 SETTABLEKS                       R3 R0 K23 ["experimentLabels"]
      258 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["scoringSettings"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["scoringSettings"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["scoringSettings"]
       16 GETTABLEKS                       R2 R1 K5 ["eligibleGameFinderSettings"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["eligibleGameFinderSettings"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["eligibleGameFinderSettings"]
       28 GETTABLEKS                       R2 R1 K6 ["gameStarterSettings"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["gameStarterSettings"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["gameStarterSettings"]
       40 GETTABLEKS                       R2 R1 K7 ["creatorExperimentSettings"]
       42 JUMPIFEQKNIL                     R2 ; [+9]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       47 GETTABLEKS                       R3 R1 K7 ["creatorExperimentSettings"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R1 K7 ["creatorExperimentSettings"]
       52 GETTABLEKS                       R2 R1 K8 ["experimentLabels"]
       54 JUMPIFEQKNIL                     R2 ; [+9]
       56 GETUPVAL                         R2 4
       57 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       59 GETTABLEKS                       R3 R1 K8 ["experimentLabels"]
       61 CALL                             R2 1 1
       62 SETTABLEKS                       R2 R1 K8 ["experimentLabels"]
       64 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["CreatorExperimentSettings"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["EligibleGameFinderSettings"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["ExperimentLabels"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Models"]
       39 GETTABLEKS                       R7 R7 K12 ["GameStarterSettings"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Models"]
       46 GETTABLEKS                       R8 R8 K13 ["ScoringSettings"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 DUPCLOSURE                       R9 K15 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 GETIMPORT                        R10 K18 [table.freeze]
       63 DUPTABLE                         R11 K21 [{"fromResponse", "toRequest"}]
       64 SETTABLEKS                       R8 R11 K19 ["fromResponse"]
       66 SETTABLEKS                       R9 R11 K20 ["toRequest"]
       68 CALL                             R10 1 1
       69 RETURN                           R10 1
