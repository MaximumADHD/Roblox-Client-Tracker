PROTO_0:
        0 DUPTABLE                         R0 K19 [{[1] = 0, ["numFailedTests"] = 0, ["numPassedTestSuites"] = 0, ["numPassedTests"] = 0, ["numPendingTestSuites"] = 0, ["numPendingTests"] = 0, ["numRuntimeErrorTestSuites"] = 0, ["numTodoTests"] = 0, ["numTotalTestSuites"] = 0, ["numTotalTests"] = 0, ["openHandles"], ["snapshot"], ["startTime"] = 0, ["success"] = True, ["testResults"], ["wasInterrupted"] = False}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K11 ["openHandles"]
        5 DUPTABLE                         R1 K34 [{["added"] = 0, ["didUpdate"] = False, ["failure"] = False, ["filesAdded"] = 0, ["filesRemoved"] = 0, ["filesRemovedList"], ["filesUnmatched"] = 0, ["filesUpdated"] = 0, ["matched"] = 0, ["total"] = 0, ["unchecked"] = 0, ["uncheckedKeysByFile"], ["unmatched"] = 0, ["updated"] = 0}]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K25 ["filesRemovedList"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K31 ["uncheckedKeysByFile"]
       14 SETTABLEKS                       R1 R0 K12 ["snapshot"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K16 ["testResults"]
       20 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K18 [{[1] = , ["displayName"] = , ["failureMessage"] = , ["leaks"] = False, ["numFailingTests"] = 0, ["numPassingTests"] = 0, ["numPendingTests"] = 0, ["numTodoTests"] = 0, ["openHandles"], ["perfStats"], ["skipped"] = False, ["snapshot"], ["testExecError"], ["testFilePath"], ["testResults"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K11 ["openHandles"]
        5 DUPTABLE                         R3 K23 [{["end_"] = 0, ["runtime"] = 0, ["slow"] = False, ["start"] = 0}]
        6 SETTABLEKS                       R3 R2 K12 ["perfStats"]
        8 DUPTABLE                         R3 K31 [{["added"] = 0, ["fileDeleted"] = False, ["matched"] = 0, ["unchecked"] = 0, ["uncheckedKeys"], ["unmatched"] = 0, ["updated"] = 0}]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K28 ["uncheckedKeys"]
       13 SETTABLEKS                       R3 R2 K14 ["snapshot"]
       15 SETTABLEKS                       R1 R2 K15 ["testExecError"]
       17 SETTABLEKS                       R0 R2 K16 ["testFilePath"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K17 ["testResults"]
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
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
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       65 GETTABLEKS                       R3 R1 K12 ["testExecError"]
       67 CALL                             R2 1 1
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETTABLEKS                       R2 R0 K13 ["numRuntimeErrorTestSuites"]
       71 ADDK                             R2 R2 K14 [1]
       72 SETTABLEKS                       R2 R0 K13 ["numRuntimeErrorTestSuites"]
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       77 GETTABLEKS                       R3 R1 K15 ["skipped"]
       79 CALL                             R2 1 1
       80 JUMPIFNOT                        R2 ; [+6]
       81 GETTABLEKS                       R2 R0 K16 ["numPendingTestSuites"]
       83 ADDK                             R2 R2 K14 [1]
       84 SETTABLEKS                       R2 R0 K16 ["numPendingTestSuites"]
       86 JUMP                             ; [+24]
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
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
      111 GETUPVAL                         R2 0
      112 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
      114 GETTABLEKS                       R3 R1 K19 ["snapshot"]
      116 GETTABLEKS                       R3 R3 K20 ["added"]
      118 CALL                             R2 1 1
      119 JUMPIFNOT                        R2 ; [+7]
      120 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      122 GETTABLEKS                       R3 R2 K21 ["filesAdded"]
      124 ADDK                             R3 R3 K14 [1]
      125 SETTABLEKS                       R3 R2 K21 ["filesAdded"]
      127 GETUPVAL                         R2 0
      128 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
      130 GETTABLEKS                       R3 R1 K19 ["snapshot"]
      132 GETTABLEKS                       R3 R3 K22 ["fileDeleted"]
      134 CALL                             R2 1 1
      135 JUMPIFNOT                        R2 ; [+7]
      136 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      138 GETTABLEKS                       R3 R2 K23 ["filesRemoved"]
      140 ADDK                             R3 R3 K14 [1]
      141 SETTABLEKS                       R3 R2 K23 ["filesRemoved"]
      143 GETUPVAL                         R2 0
      144 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
      146 GETTABLEKS                       R3 R1 K19 ["snapshot"]
      148 GETTABLEKS                       R3 R3 K24 ["unmatched"]
      150 CALL                             R2 1 1
      151 JUMPIFNOT                        R2 ; [+7]
      152 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      154 GETTABLEKS                       R3 R2 K25 ["filesUnmatched"]
      156 ADDK                             R3 R3 K14 [1]
      157 SETTABLEKS                       R3 R2 K25 ["filesUnmatched"]
      159 GETUPVAL                         R2 0
      160 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
      162 GETTABLEKS                       R3 R1 K19 ["snapshot"]
      164 GETTABLEKS                       R3 R3 K26 ["updated"]
      166 CALL                             R2 1 1
      167 JUMPIFNOT                        R2 ; [+7]
      168 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      170 GETTABLEKS                       R3 R2 K27 ["filesUpdated"]
      172 ADDK                             R3 R3 K14 [1]
      173 SETTABLEKS                       R3 R2 K27 ["filesUpdated"]
      175 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      177 GETTABLEKS                       R3 R2 K20 ["added"]
      179 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      181 GETTABLEKS                       R4 R4 K20 ["added"]
      183 ADD                              R3 R3 R4
      184 SETTABLEKS                       R3 R2 K20 ["added"]
      186 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      188 GETTABLEKS                       R3 R2 K28 ["matched"]
      190 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      192 GETTABLEKS                       R4 R4 K28 ["matched"]
      194 ADD                              R3 R3 R4
      195 SETTABLEKS                       R3 R2 K28 ["matched"]
      197 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      199 GETTABLEKS                       R3 R2 K29 ["unchecked"]
      201 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      203 GETTABLEKS                       R4 R4 K29 ["unchecked"]
      205 ADD                              R3 R3 R4
      206 SETTABLEKS                       R3 R2 K29 ["unchecked"]
      208 GETUPVAL                         R2 0
      209 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
      211 GETUPVAL                         R4 0
      212 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
      214 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      216 GETTABLEKS                       R5 R5 K30 ["uncheckedKeys"]
      218 CALL                             R4 1 1
      219 JUMPIFNOT                        R4 ; [+11]
      220 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      222 GETTABLEKS                       R5 R5 K30 ["uncheckedKeys"]
      224 LENGTH                           R4 R5
      225 LOADN                            R5 0
      226 JUMPIFLT                         R5 R4 ; [+2]
      228 LOADB                            R3 0 +1
      229 LOADB                            R3 1
      230 JUMP                             ; [+4]
      231 GETTABLEKS                       R3 R1 K19 ["snapshot"]
      233 GETTABLEKS                       R3 R3 K30 ["uncheckedKeys"]
      235 CALL                             R2 1 1
      236 JUMPIFNOT                        R2 ; [+20]
      237 GETTABLEKS                       R3 R0 K19 ["snapshot"]
      239 GETTABLEKS                       R3 R3 K31 ["uncheckedKeysByFile"]
      241 DUPTABLE                         R4 K34 [{"filePath", "keys"}]
      242 GETTABLEKS                       R5 R1 K35 ["testFilePath"]
      244 SETTABLEKS                       R5 R4 K32 ["filePath"]
      246 GETTABLEKS                       R5 R1 K19 ["snapshot"]
      248 GETTABLEKS                       R5 R5 K30 ["uncheckedKeys"]
      250 SETTABLEKS                       R5 R4 K33 ["keys"]
      252 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
      254 GETIMPORT                        R2 K5 [table.insert]
      256 CALL                             R2 2 0
      257 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      259 GETTABLEKS                       R3 R2 K24 ["unmatched"]
      261 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      263 GETTABLEKS                       R4 R4 K24 ["unmatched"]
      265 ADD                              R3 R3 R4
      266 SETTABLEKS                       R3 R2 K24 ["unmatched"]
      268 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      270 GETTABLEKS                       R3 R2 K26 ["updated"]
      272 GETTABLEKS                       R4 R1 K19 ["snapshot"]
      274 GETTABLEKS                       R4 R4 K26 ["updated"]
      276 ADD                              R3 R3 R4
      277 SETTABLEKS                       R3 R2 K26 ["updated"]
      279 GETTABLEKS                       R2 R0 K19 ["snapshot"]
      281 GETTABLEKS                       R3 R2 K36 ["total"]
      283 GETTABLEKS                       R7 R1 K19 ["snapshot"]
      285 GETTABLEKS                       R7 R7 K20 ["added"]
      287 GETTABLEKS                       R8 R1 K19 ["snapshot"]
      289 GETTABLEKS                       R8 R8 K28 ["matched"]
      291 ADD                              R6 R7 R8
      292 GETTABLEKS                       R7 R1 K19 ["snapshot"]
      294 GETTABLEKS                       R7 R7 K24 ["unmatched"]
      296 ADD                              R5 R6 R7
      297 GETTABLEKS                       R6 R1 K19 ["snapshot"]
      299 GETTABLEKS                       R6 R6 K26 ["updated"]
      301 ADD                              R4 R5 R6
      302 ADD                              R3 R3 R4
      303 SETTABLEKS                       R3 R2 K36 ["total"]
      305 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K14 [{[1] = False, ["numFailingTests"] = 0, ["numPassingTests"] = 0, ["numPendingTests"] = 0, ["numTodoTests"] = 0, ["openHandles"], ["perfStats"], ["skipped"] = False, ["snapshot"], ["testFilePath"] = "", ["testResults"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K7 ["openHandles"]
        5 DUPTABLE                         R1 K19 [{["end_"] = 0, ["runtime"] = 0, ["slow"] = False, ["start"] = 0}]
        6 SETTABLEKS                       R1 R0 K8 ["perfStats"]
        8 DUPTABLE                         R1 K27 [{["added"] = 0, ["fileDeleted"] = False, ["matched"] = 0, ["unchecked"] = 0, ["uncheckedKeys"], ["unmatched"] = 0, ["updated"] = 0}]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K24 ["uncheckedKeys"]
       13 SETTABLEKS                       R1 R0 K10 ["snapshot"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K13 ["testResults"]
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
