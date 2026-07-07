PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["add"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["add"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["add"]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["add"]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["add"]
       23 GETUPVAL                         R1 5
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 0
       26 GETTABLEKS                       R0 R0 K0 ["add"]
       28 GETUPVAL                         R1 6
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K0 ["add"]
       33 GETUPVAL                         R1 7
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K0 ["add"]
       38 GETUPVAL                         R1 8
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K0 ["add"]
       43 GETUPVAL                         R1 9
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 0
       46 GETTABLEKS                       R0 R0 K0 ["add"]
       48 GETUPVAL                         R1 10
       49 CALL                             R0 1 0
       50 GETUPVAL                         R0 0
       51 GETTABLEKS                       R0 R0 K0 ["add"]
       53 GETUPVAL                         R1 11
       54 CALL                             R0 1 0
       55 GETUPVAL                         R0 0
       56 GETTABLEKS                       R0 R0 K0 ["add"]
       58 GETUPVAL                         R1 12
       59 CALL                             R0 1 0
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K0 ["add"]
       63 GETUPVAL                         R1 13
       64 CALL                             R0 1 0
       65 GETUPVAL                         R0 0
       66 GETTABLEKS                       R0 R0 K0 ["add"]
       68 GETUPVAL                         R1 14
       69 CALL                             R0 1 0
       70 GETUPVAL                         R0 0
       71 GETTABLEKS                       R0 R0 K0 ["add"]
       73 GETUPVAL                         R1 15
       74 CALL                             R0 1 0
       75 GETUPVAL                         R0 0
       76 GETTABLEKS                       R0 R0 K0 ["add"]
       78 GETUPVAL                         R1 16
       79 CALL                             R0 1 0
       80 GETUPVAL                         R0 0
       81 GETTABLEKS                       R0 R0 K0 ["add"]
       83 GETUPVAL                         R1 17
       84 CALL                             R0 1 0
       85 GETUPVAL                         R0 0
       86 GETTABLEKS                       R0 R0 K0 ["add"]
       88 GETUPVAL                         R1 18
       89 CALL                             R0 1 0
       90 GETUPVAL                         R0 0
       91 GETTABLEKS                       R0 R0 K0 ["add"]
       93 GETUPVAL                         R1 19
       94 CALL                             R0 1 0
       95 GETUPVAL                         R0 0
       96 GETTABLEKS                       R0 R0 K0 ["add"]
       98 GETUPVAL                         R1 20
       99 CALL                             R0 1 0
      100 GETUPVAL                         R0 0
      101 GETTABLEKS                       R0 R0 K0 ["add"]
      103 GETUPVAL                         R1 21
      104 CALL                             R0 1 0
      105 GETUPVAL                         R0 0
      106 GETTABLEKS                       R0 R0 K0 ["add"]
      108 GETUPVAL                         R1 22
      109 CALL                             R0 1 0
      110 GETUPVAL                         R0 0
      111 GETTABLEKS                       R0 R0 K0 ["add"]
      113 GETUPVAL                         R1 23
      114 CALL                             R0 1 0
      115 GETUPVAL                         R0 0
      116 GETTABLEKS                       R0 R0 K0 ["add"]
      118 GETUPVAL                         R1 24
      119 CALL                             R0 1 0
      120 GETUPVAL                         R0 0
      121 GETTABLEKS                       R0 R0 K0 ["add"]
      123 GETUPVAL                         R1 25
      124 CALL                             R0 1 0
      125 GETUPVAL                         R0 0
      126 GETTABLEKS                       R0 R0 K0 ["add"]
      128 GETUPVAL                         R1 26
      129 CALL                             R0 1 0
      130 GETUPVAL                         R0 0
      131 GETTABLEKS                       R0 R0 K0 ["add"]
      133 GETUPVAL                         R1 27
      134 CALL                             R0 1 0
      135 GETUPVAL                         R0 0
      136 GETTABLEKS                       R0 R0 K0 ["add"]
      138 GETUPVAL                         R1 28
      139 CALL                             R0 1 0
      140 GETUPVAL                         R0 0
      141 GETTABLEKS                       R0 R0 K0 ["add"]
      143 GETUPVAL                         R1 29
      144 CALL                             R0 1 0
      145 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ContentWidgetRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Features"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationGenContentWidget"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Features"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetManagement"]
       31 GETTABLEKS                       R4 R4 K13 ["AssetInsertContentWidget"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Features"]
       38 GETTABLEKS                       R5 R5 K12 ["AssetManagement"]
       40 GETTABLEKS                       R5 R5 K14 ["AssetSearchContentWidget"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K15 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["ContentWidgets"]
       49 GETTABLEKS                       R6 R6 K16 ["CreateSkillContentWidget"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Features"]
       56 GETTABLEKS                       R7 R7 K17 ["CreatorStore"]
       58 GETTABLEKS                       R7 R7 K18 ["CreatorStoreInsertContentWidget"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K15 ["Components"]
       65 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       67 GETTABLEKS                       R8 R8 K19 ["ErrorContentWidget"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K15 ["Components"]
       74 GETTABLEKS                       R9 R9 K7 ["ContentWidgets"]
       76 GETTABLEKS                       R9 R9 K20 ["FileSearchContentWidget"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K15 ["Components"]
       83 GETTABLEKS                       R10 R10 K7 ["ContentWidgets"]
       85 GETTABLEKS                       R10 R10 K21 ["FinalizePlanContentWidget"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K15 ["Components"]
       92 GETTABLEKS                       R11 R11 K7 ["ContentWidgets"]
       94 GETTABLEKS                       R11 R11 K22 ["FromHistoryContentWidget"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K15 ["Components"]
      101 GETTABLEKS                       R12 R12 K7 ["ContentWidgets"]
      103 GETTABLEKS                       R12 R12 K23 ["GameTreeContentWidget"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K15 ["Components"]
      110 GETTABLEKS                       R13 R13 K7 ["ContentWidgets"]
      112 GETTABLEKS                       R13 R13 K24 ["GenericToolContentWidget"]
      114 CALL                             R12 1 1
      115 GETIMPORT                        R13 K5 [require]
      117 GETTABLEKS                       R14 R0 K15 ["Components"]
      119 GETTABLEKS                       R14 R14 K7 ["ContentWidgets"]
      121 GETTABLEKS                       R14 R14 K25 ["GrepSearchContentWidget"]
      123 CALL                             R13 1 1
      124 GETIMPORT                        R14 K5 [require]
      126 GETTABLEKS                       R15 R0 K15 ["Components"]
      128 GETTABLEKS                       R15 R15 K7 ["ContentWidgets"]
      130 GETTABLEKS                       R15 R15 K26 ["HttpGetContentWidget"]
      132 CALL                             R14 1 1
      133 GETIMPORT                        R15 K5 [require]
      135 GETTABLEKS                       R16 R0 K15 ["Components"]
      137 GETTABLEKS                       R16 R16 K7 ["ContentWidgets"]
      139 GETTABLEKS                       R16 R16 K27 ["ImageContentWidget"]
      141 CALL                             R15 1 1
      142 GETIMPORT                        R16 K5 [require]
      144 GETTABLEKS                       R17 R0 K15 ["Components"]
      146 GETTABLEKS                       R17 R17 K7 ["ContentWidgets"]
      148 GETTABLEKS                       R17 R17 K28 ["InputRequestedContentWidget"]
      150 CALL                             R16 1 1
      151 GETIMPORT                        R17 K5 [require]
      153 GETTABLEKS                       R18 R0 K15 ["Components"]
      155 GETTABLEKS                       R18 R18 K7 ["ContentWidgets"]
      157 GETTABLEKS                       R18 R18 K29 ["InspectInstanceContentWidget"]
      159 CALL                             R17 1 1
      160 GETIMPORT                        R18 K5 [require]
      162 GETTABLEKS                       R19 R0 K15 ["Components"]
      164 GETTABLEKS                       R19 R19 K7 ["ContentWidgets"]
      166 GETTABLEKS                       R19 R19 K30 ["MaterialGenContentWidget"]
      168 CALL                             R18 1 1
      169 GETIMPORT                        R19 K5 [require]
      171 GETTABLEKS                       R20 R0 K9 ["Features"]
      173 GETTABLEKS                       R20 R20 K31 ["MeshGen"]
      175 GETTABLEKS                       R20 R20 K32 ["MeshGenContentWidget"]
      177 CALL                             R19 1 1
      178 GETIMPORT                        R20 K5 [require]
      180 GETTABLEKS                       R21 R0 K9 ["Features"]
      182 GETTABLEKS                       R21 R21 K33 ["PrimitiveGen"]
      184 GETTABLEKS                       R21 R21 K34 ["PrimitiveGenContentWidget"]
      186 CALL                             R20 1 1
      187 GETIMPORT                        R21 K5 [require]
      189 GETTABLEKS                       R22 R0 K15 ["Components"]
      191 GETTABLEKS                       R22 R22 K7 ["ContentWidgets"]
      193 GETTABLEKS                       R22 R22 K35 ["QuestionAnswerContentWidget"]
      195 CALL                             R21 1 1
      196 GETIMPORT                        R22 K5 [require]
      198 GETTABLEKS                       R23 R0 K15 ["Components"]
      200 GETTABLEKS                       R23 R23 K7 ["ContentWidgets"]
      202 GETTABLEKS                       R23 R23 K36 ["ReadFileContentWidget"]
      204 CALL                             R22 1 1
      205 GETIMPORT                        R23 K5 [require]
      207 GETTABLEKS                       R24 R0 K15 ["Components"]
      209 GETTABLEKS                       R24 R24 K7 ["ContentWidgets"]
      211 GETTABLEKS                       R24 R24 K37 ["RunCodeContentWidget"]
      213 CALL                             R23 1 1
      214 GETIMPORT                        R24 K5 [require]
      216 GETTABLEKS                       R25 R0 K15 ["Components"]
      218 GETTABLEKS                       R25 R25 K7 ["ContentWidgets"]
      220 GETTABLEKS                       R25 R25 K38 ["ScriptChangeConfirmationContentWidget"]
      222 CALL                             R24 1 1
      223 GETIMPORT                        R25 K5 [require]
      225 GETTABLEKS                       R26 R0 K15 ["Components"]
      227 GETTABLEKS                       R26 R26 K7 ["ContentWidgets"]
      229 GETTABLEKS                       R26 R26 K39 ["SkillContentWidget"]
      231 CALL                             R25 1 1
      232 GETIMPORT                        R26 K5 [require]
      234 GETTABLEKS                       R27 R0 K15 ["Components"]
      236 GETTABLEKS                       R27 R27 K7 ["ContentWidgets"]
      238 GETTABLEKS                       R27 R27 K40 ["SubagentProgressContentWidget"]
      240 CALL                             R26 1 1
      241 GETIMPORT                        R27 K5 [require]
      243 GETTABLEKS                       R28 R0 K15 ["Components"]
      245 GETTABLEKS                       R28 R28 K7 ["ContentWidgets"]
      247 GETTABLEKS                       R28 R28 K41 ["SummarizedContentWidget"]
      249 CALL                             R27 1 1
      250 GETIMPORT                        R28 K5 [require]
      252 GETTABLEKS                       R29 R0 K15 ["Components"]
      254 GETTABLEKS                       R29 R29 K7 ["ContentWidgets"]
      256 GETTABLEKS                       R29 R29 K42 ["TextContentWidget"]
      258 CALL                             R28 1 1
      259 GETIMPORT                        R29 K5 [require]
      261 GETTABLEKS                       R30 R0 K15 ["Components"]
      263 GETTABLEKS                       R30 R30 K7 ["ContentWidgets"]
      265 GETTABLEKS                       R30 R30 K43 ["ThinkingContentWidget"]
      267 CALL                             R29 1 1
      268 GETIMPORT                        R30 K5 [require]
      270 GETTABLEKS                       R31 R0 K15 ["Components"]
      272 GETTABLEKS                       R31 R31 K7 ["ContentWidgets"]
      274 GETTABLEKS                       R31 R31 K44 ["ToolConfirmationContentWidget"]
      276 CALL                             R30 1 1
      277 DUPCLOSURE                       R31 K45 [PROTO_0]
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R2
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R6
      285 CAPTURE                          VAL R8
      286 CAPTURE                          VAL R9
      287 CAPTURE                          VAL R10
      288 CAPTURE                          VAL R11
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R13
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R18
      295 CAPTURE                          VAL R19
      296 CAPTURE                          VAL R20
      297 CAPTURE                          VAL R21
      298 CAPTURE                          VAL R22
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R27
      303 CAPTURE                          VAL R7
      304 CAPTURE                          VAL R16
      305 CAPTURE                          VAL R24
      306 CAPTURE                          VAL R29
      307 CAPTURE                          VAL R30
      308 RETURN                           R31 1
