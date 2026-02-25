PROTO_0:
        0 DUPTABLE                         R0 K16 [{"numFailedTestSuites", "numFailedTests", "numPassedTestSuites", "numPassedTests", "numPendingTestSuites", "numPendingTests", "numRuntimeErrorTestSuites", "numTodoTests", "numTotalTestSuites", "numTotalTests", "openHandles", "snapshot", "startTime", "success", "testResults", "wasInterrupted"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["numFailedTestSuites"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["numFailedTests"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["numPassedTestSuites"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["numPassedTests"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["numPendingTestSuites"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K5 ["numPendingTests"]
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K6 ["numRuntimeErrorTestSuites"]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K7 ["numTodoTests"]
       25 LOADN                            R1 0
       26 SETTABLEKS                       R1 R0 K8 ["numTotalTestSuites"]
       28 LOADN                            R1 0
       29 SETTABLEKS                       R1 R0 K9 ["numTotalTests"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K10 ["openHandles"]
       35 DUPTABLE                         R1 K31 [{"added", "didUpdate", "failure", "filesAdded", "filesRemoved", "filesRemovedList", "filesUnmatched", "filesUpdated", "matched", "total", "unchecked", "uncheckedKeysByFile", "unmatched", "updated"}]
       36 LOADN                            R2 0
       37 SETTABLEKS                       R2 R1 K17 ["added"]
       39 LOADB                            R2 0
       40 SETTABLEKS                       R2 R1 K18 ["didUpdate"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R1 K19 ["failure"]
       45 LOADN                            R2 0
       46 SETTABLEKS                       R2 R1 K20 ["filesAdded"]
       48 LOADN                            R2 0
       49 SETTABLEKS                       R2 R1 K21 ["filesRemoved"]
       51 NEWTABLE                         R2 0 0
       53 SETTABLEKS                       R2 R1 K22 ["filesRemovedList"]
       55 LOADN                            R2 0
       56 SETTABLEKS                       R2 R1 K23 ["filesUnmatched"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R1 K24 ["filesUpdated"]
       61 LOADN                            R2 0
       62 SETTABLEKS                       R2 R1 K25 ["matched"]
       64 LOADN                            R2 0
       65 SETTABLEKS                       R2 R1 K26 ["total"]
       67 LOADN                            R2 0
       68 SETTABLEKS                       R2 R1 K27 ["unchecked"]
       70 NEWTABLE                         R2 0 0
       72 SETTABLEKS                       R2 R1 K28 ["uncheckedKeysByFile"]
       74 LOADN                            R2 0
       75 SETTABLEKS                       R2 R1 K29 ["unmatched"]
       77 LOADN                            R2 0
       78 SETTABLEKS                       R2 R1 K30 ["updated"]
       80 SETTABLEKS                       R1 R0 K11 ["snapshot"]
       82 LOADN                            R1 0
       83 SETTABLEKS                       R1 R0 K12 ["startTime"]
       85 LOADB                            R1 1
       86 SETTABLEKS                       R1 R0 K13 ["success"]
       88 NEWTABLE                         R1 0 0
       90 SETTABLEKS                       R1 R0 K14 ["testResults"]
       92 LOADB                            R1 0
       93 SETTABLEKS                       R1 R0 K15 ["wasInterrupted"]
       95 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K15 [{"console", "displayName", "failureMessage", "leaks", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "openHandles", "perfStats", "skipped", "snapshot", "testExecError", "testFilePath", "testResults"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["console"]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K1 ["displayName"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["failureMessage"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["leaks"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["numFailingTests"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["numPassingTests"]
       19 LOADN                            R3 0
       20 SETTABLEKS                       R3 R2 K6 ["numPendingTests"]
       22 LOADN                            R3 0
       23 SETTABLEKS                       R3 R2 K7 ["numTodoTests"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K8 ["openHandles"]
       29 DUPTABLE                         R3 K20 [{"end_", "runtime", "slow", "start"}]
       30 LOADN                            R4 0
       31 SETTABLEKS                       R4 R3 K16 ["end_"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K17 ["runtime"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K18 ["slow"]
       39 LOADN                            R4 0
       40 SETTABLEKS                       R4 R3 K19 ["start"]
       42 SETTABLEKS                       R3 R2 K9 ["perfStats"]
       44 LOADB                            R3 0
       45 SETTABLEKS                       R3 R2 K10 ["skipped"]
       47 DUPTABLE                         R3 K28 [{"added", "fileDeleted", "matched", "unchecked", "uncheckedKeys", "unmatched", "updated"}]
       48 LOADN                            R4 0
       49 SETTABLEKS                       R4 R3 K21 ["added"]
       51 LOADB                            R4 0
       52 SETTABLEKS                       R4 R3 K22 ["fileDeleted"]
       54 LOADN                            R4 0
       55 SETTABLEKS                       R4 R3 K23 ["matched"]
       57 LOADN                            R4 0
       58 SETTABLEKS                       R4 R3 K24 ["unchecked"]
       60 NEWTABLE                         R4 0 0
       62 SETTABLEKS                       R4 R3 K25 ["uncheckedKeys"]
       64 LOADN                            R4 0
       65 SETTABLEKS                       R4 R3 K26 ["unmatched"]
       67 LOADN                            R4 0
       68 SETTABLEKS                       R4 R3 K27 ["updated"]
       70 SETTABLEKS                       R3 R2 K11 ["snapshot"]
       72 SETTABLEKS                       R1 R2 K12 ["testExecError"]
       74 SETTABLEKS                       R0 R2 K13 ["testFilePath"]
       76 NEWTABLE                         R3 0 0
       78 SETTABLEKS                       R3 R2 K14 ["testResults"]
       80 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R3 R1 K1 ["numTodoTests"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+3]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K1 ["numTodoTests"]
       10 GETTABLEKS                       R3 R0 K2 ["testResults"]
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K6 ["numTotalTests"]
       20 GETTABLEKS                       R6 R1 K7 ["numPassingTests"]
       22 GETTABLEKS                       R7 R1 K8 ["numFailingTests"]
       24 ADD                              R5 R6 R7
       25 GETTABLEKS                       R6 R1 K9 ["numPendingTests"]
       27 ADD                              R4 R5 R6
       28 GETTABLEKS                       R5 R1 K1 ["numTodoTests"]
       30 ADD                              R3 R4 R5
       31 ADD                              R2 R2 R3
       32 SETTABLEKS                       R2 R0 K6 ["numTotalTests"]
       34 GETTABLEKS                       R2 R0 K10 ["numFailedTests"]
       36 GETTABLEKS                       R3 R1 K8 ["numFailingTests"]
       38 ADD                              R2 R2 R3
       39 SETTABLEKS                       R2 R0 K10 ["numFailedTests"]
       41 GETTABLEKS                       R2 R0 K11 ["numPassedTests"]
       43 GETTABLEKS                       R3 R1 K7 ["numPassingTests"]
       45 ADD                              R2 R2 R3
       46 SETTABLEKS                       R2 R0 K11 ["numPassedTests"]
       48 GETTABLEKS                       R2 R0 K9 ["numPendingTests"]
       50 GETTABLEKS                       R3 R1 K9 ["numPendingTests"]
       52 ADD                              R2 R2 R3
       53 SETTABLEKS                       R2 R0 K9 ["numPendingTests"]
       55 GETTABLEKS                       R2 R0 K1 ["numTodoTests"]
       57 GETTABLEKS                       R3 R1 K1 ["numTodoTests"]
       59 ADD                              R2 R2 R3
       60 SETTABLEKS                       R2 R0 K1 ["numTodoTests"]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
       65 GETTABLEKS                       R3 R1 K12 ["testExecError"]
       67 CALL                             R2 1 1
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETTABLEKS                       R2 R0 K13 ["numRuntimeErrorTestSuites"]
       71 ADDK                             R2 R2 K14 [1]
       72 SETTABLEKS                       R2 R0 K13 ["numRuntimeErrorTestSuites"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
       77 GETTABLEKS                       R3 R1 K15 ["skipped"]
       79 CALL                             R2 1 1
       80 JUMPIFNOT                        R2 ; [+6]
       81 GETTABLEKS                       R2 R0 K16 ["numPendingTestSuites"]
       83 ADDK                             R2 R2 K14 [1]
       84 SETTABLEKS                       R2 R0 K16 ["numPendingTestSuites"]
       86 JUMP                             ; [+24]
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
       90 LOADB                            R3 1
       91 GETTABLEKS                       R4 R1 K8 ["numFailingTests"]
       93 LOADN                            R5 0
       94 JUMPIFLT                         R5 R4 ; [+3]
       96 GETTABLEKS                       R3 R1 K12 ["testExecError"]
       98 CALL                             R2 1 1
       99 JUMPIFNOT                        R2 ; [+6]
      100 GETTABLEKS                       R2 R0 K17 ["numFailedTestSuites"]
      102 ADDK                             R2 R2 K14 [1]
      103 SETTABLEKS                       R2 R0 K17 ["numFailedTestSuites"]
      105 JUMP                             ; [+5]
      106 GETTABLEKS                       R2 R0 K18 ["numPassedTestSuites"]
      108 ADDK                             R2 R2 K14 [1]
      109 SETTABLEKS                       R2 R0 K18 ["numPassedTestSuites"]
      111 GETUPVAL                         R3 0
      112 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
      114 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      116 GETTABLEKS                       R3 R4 K20 ["added"]
      118 CALL                             R2 1 1
      119 JUMPIFNOT                        R2 ; [+7]
      120 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      122 GETTABLEKS                       R3 R2 K21 ["filesAdded"]
      124 ADDK                             R3 R3 K14 [1]
      125 SETTABLEKS                       R3 R2 K21 ["filesAdded"]
      127 GETUPVAL                         R3 0
      128 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
      130 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      132 GETTABLEKS                       R3 R4 K22 ["fileDeleted"]
      134 CALL                             R2 1 1
      135 JUMPIFNOT                        R2 ; [+7]
      136 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      138 GETTABLEKS                       R3 R2 K23 ["filesRemoved"]
      140 ADDK                             R3 R3 K14 [1]
      141 SETTABLEKS                       R3 R2 K23 ["filesRemoved"]
      143 GETUPVAL                         R3 0
      144 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
      146 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      148 GETTABLEKS                       R3 R4 K24 ["unmatched"]
      150 CALL                             R2 1 1
      151 JUMPIFNOT                        R2 ; [+7]
      152 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      154 GETTABLEKS                       R3 R2 K25 ["filesUnmatched"]
      156 ADDK                             R3 R3 K14 [1]
      157 SETTABLEKS                       R3 R2 K25 ["filesUnmatched"]
      159 GETUPVAL                         R3 0
      160 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
      162 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      164 GETTABLEKS                       R3 R4 K26 ["updated"]
      166 CALL                             R2 1 1
      167 JUMPIFNOT                        R2 ; [+7]
      168 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      170 GETTABLEKS                       R3 R2 K27 ["filesUpdated"]
      172 ADDK                             R3 R3 K14 [1]
      173 SETTABLEKS                       R3 R2 K27 ["filesUpdated"]
      175 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      177 GETTABLEKS                       R3 R2 K20 ["added"]
      179 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      181 GETTABLEKS                       R4 R5 K20 ["added"]
      183 ADD                              R3 R3 R4
      184 SETTABLEKS                       R3 R2 K20 ["added"]
      186 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      188 GETTABLEKS                       R3 R2 K28 ["matched"]
      190 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      192 GETTABLEKS                       R4 R5 K28 ["matched"]
      194 ADD                              R3 R3 R4
      195 SETTABLEKS                       R3 R2 K28 ["matched"]
      197 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      199 GETTABLEKS                       R3 R2 K29 ["unchecked"]
      201 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      203 GETTABLEKS                       R4 R5 K29 ["unchecked"]
      205 ADD                              R3 R3 R4
      206 SETTABLEKS                       R3 R2 K29 ["unchecked"]
      208 GETUPVAL                         R3 0
      209 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
      211 GETUPVAL                         R5 0
      212 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
      214 GETTABLEKS                       R6 R1 K19 ["snapshot"]
      216 GETTABLEKS                       R5 R6 K30 ["uncheckedKeys"]
      218 CALL                             R4 1 1
      219 JUMPIFNOT                        R4 ; [+11]
      220 GETTABLEKS                       R6 R1 K19 ["snapshot"]
      222 GETTABLEKS                       R5 R6 K30 ["uncheckedKeys"]
      224 LENGTH                           R4 R5
      225 LOADN                            R5 0
      226 JUMPIFLT                         R5 R4 ; [+2]
      228 LOADB                            R3 0 +1
      229 LOADB                            R3 1
      230 JUMP                             ; [+4]
      231 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      233 GETTABLEKS                       R3 R4 K30 ["uncheckedKeys"]
      235 CALL                             R2 1 1
      236 JUMPIFNOT                        R2 ; [+20]
      237 GETTABLEKS                       R4 R0 K19 ["snapshot"]
      239 GETTABLEKS                       R3 R4 K31 ["uncheckedKeysByFile"]
      241 DUPTABLE                         R4 K34 [{"filePath", "keys"}]
      242 GETTABLEKS                       R5 R1 K35 ["testFilePath"]
      244 SETTABLEKS                       R5 R4 K32 ["filePath"]
      246 GETTABLEKS                       R6 R1 K19 ["snapshot"]
      248 GETTABLEKS                       R5 R6 K30 ["uncheckedKeys"]
      250 SETTABLEKS                       R5 R4 K33 ["keys"]
      252 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
      254 GETIMPORT                        R2 K5 [table.insert]
      256 CALL                             R2 2 0
      257 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      259 GETTABLEKS                       R3 R2 K24 ["unmatched"]
      261 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      263 GETTABLEKS                       R4 R5 K24 ["unmatched"]
      265 ADD                              R3 R3 R4
      266 SETTABLEKS                       R3 R2 K24 ["unmatched"]
      268 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      270 GETTABLEKS                       R3 R2 K26 ["updated"]
      272 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      274 GETTABLEKS                       R4 R5 K26 ["updated"]
      276 ADD                              R3 R3 R4
      277 SETTABLEKS                       R3 R2 K26 ["updated"]
      279 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      281 GETTABLEKS                       R3 R2 K36 ["total"]
      283 GETTABLEKS                       R8 R1 K19 ["snapshot"]
      285 GETTABLEKS                       R7 R8 K20 ["added"]
      287 GETTABLEKS                       R9 R1 K19 ["snapshot"]
      289 GETTABLEKS                       R8 R9 K28 ["matched"]
      291 ADD                              R6 R7 R8
      292 GETTABLEKS                       R8 R1 K19 ["snapshot"]
      294 GETTABLEKS                       R7 R8 K24 ["unmatched"]
      296 ADD                              R5 R6 R7
      297 GETTABLEKS                       R7 R1 K19 ["snapshot"]
      299 GETTABLEKS                       R6 R7 K26 ["updated"]
      301 ADD                              R4 R5 R6
      302 ADD                              R3 R3 R4
      303 SETTABLEKS                       R3 R2 K36 ["total"]
      305 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K11 [{"leaks", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "openHandles", "perfStats", "skipped", "snapshot", "testFilePath", "testResults"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["leaks"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["numFailingTests"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["numPassingTests"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["numPendingTests"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["numTodoTests"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K5 ["openHandles"]
       20 DUPTABLE                         R1 K16 [{"end_", "runtime", "slow", "start"}]
       21 LOADN                            R2 0
       22 SETTABLEKS                       R2 R1 K12 ["end_"]
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R1 K13 ["runtime"]
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K14 ["slow"]
       30 LOADN                            R2 0
       31 SETTABLEKS                       R2 R1 K15 ["start"]
       33 SETTABLEKS                       R1 R0 K6 ["perfStats"]
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K7 ["skipped"]
       38 DUPTABLE                         R1 K24 [{"added", "fileDeleted", "matched", "unchecked", "uncheckedKeys", "unmatched", "updated"}]
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R1 K17 ["added"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R1 K18 ["fileDeleted"]
       45 LOADN                            R2 0
       46 SETTABLEKS                       R2 R1 K19 ["matched"]
       48 LOADN                            R2 0
       49 SETTABLEKS                       R2 R1 K20 ["unchecked"]
       51 NEWTABLE                         R2 0 0
       53 SETTABLEKS                       R2 R1 K21 ["uncheckedKeys"]
       55 LOADN                            R2 0
       56 SETTABLEKS                       R2 R1 K22 ["unmatched"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R1 K23 ["updated"]
       61 SETTABLEKS                       R1 R0 K8 ["snapshot"]
       63 LOADK                            R1 K25 [""]
       64 SETTABLEKS                       R1 R0 K9 ["testFilePath"]
       66 NEWTABLE                         R1 0 0
       68 SETTABLEKS                       R1 R0 K10 ["testResults"]
       70 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["JestTypes"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R0 K8 ["types"]
       23 CALL                             R5 1 1
       24 DUPCLOSURE                       R6 K9 [PROTO_0]
       25 DUPCLOSURE                       R7 K10 [PROTO_1]
       26 DUPCLOSURE                       R8 K11 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R9 K12 [PROTO_3]
       29 DUPTABLE                         R10 K17 [{"makeEmptyAggregatedTestResult", "buildFailureTestResult", "addResult", "createEmptyTestResult"}]
       30 SETTABLEKS                       R6 R10 K13 ["makeEmptyAggregatedTestResult"]
       32 SETTABLEKS                       R7 R10 K14 ["buildFailureTestResult"]
       34 SETTABLEKS                       R8 R10 K15 ["addResult"]
       36 SETTABLEKS                       R9 R10 K16 ["createEmptyTestResult"]
       38 RETURN                           R10 1
