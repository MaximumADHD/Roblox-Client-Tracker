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
        5 NEWTABLE                         R3 4 0
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K19 ["end"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K20 ["runtime"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K21 ["slow"]
       16 LOADN                            R4 0
       17 SETTABLEKS                       R4 R3 K22 ["start"]
       19 SETTABLEKS                       R3 R2 K12 ["perfStats"]
       21 DUPTABLE                         R3 K30 [{["added"] = 0, ["fileDeleted"] = False, ["matched"] = 0, ["unchecked"] = 0, ["uncheckedKeys"], ["unmatched"] = 0, ["updated"] = 0}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K27 ["uncheckedKeys"]
       26 SETTABLEKS                       R3 R2 K14 ["snapshot"]
       28 SETTABLEKS                       R1 R2 K15 ["testExecError"]
       30 SETTABLEKS                       R0 R2 K16 ["testFilePath"]
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K17 ["testResults"]
       36 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["numTodoTests"]
        2 JUMPIF                           R2 ; [+3]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["numTodoTests"]
        6 GETTABLEKS                       R3 R0 K1 ["testResults"]
        8 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K5 ["numTotalTests"]
       16 GETTABLEKS                       R6 R1 K6 ["numPassingTests"]
       18 GETTABLEKS                       R7 R1 K7 ["numFailingTests"]
       20 ADD                              R5 R6 R7
       21 GETTABLEKS                       R6 R1 K8 ["numPendingTests"]
       23 ADD                              R4 R5 R6
       24 GETTABLEKS                       R5 R1 K0 ["numTodoTests"]
       26 ADD                              R3 R4 R5
       27 ADD                              R2 R2 R3
       28 SETTABLEKS                       R2 R0 K5 ["numTotalTests"]
       30 GETTABLEKS                       R2 R0 K9 ["numFailedTests"]
       32 GETTABLEKS                       R3 R1 K7 ["numFailingTests"]
       34 ADD                              R2 R2 R3
       35 SETTABLEKS                       R2 R0 K9 ["numFailedTests"]
       37 GETTABLEKS                       R2 R0 K10 ["numPassedTests"]
       39 GETTABLEKS                       R3 R1 K6 ["numPassingTests"]
       41 ADD                              R2 R2 R3
       42 SETTABLEKS                       R2 R0 K10 ["numPassedTests"]
       44 GETTABLEKS                       R2 R0 K8 ["numPendingTests"]
       46 GETTABLEKS                       R3 R1 K8 ["numPendingTests"]
       48 ADD                              R2 R2 R3
       49 SETTABLEKS                       R2 R0 K8 ["numPendingTests"]
       51 GETTABLEKS                       R2 R0 K0 ["numTodoTests"]
       53 GETTABLEKS                       R3 R1 K0 ["numTodoTests"]
       55 ADD                              R2 R2 R3
       56 SETTABLEKS                       R2 R0 K0 ["numTodoTests"]
       58 GETTABLEKS                       R2 R1 K11 ["testExecError"]
       60 JUMPIFNOT                        R2 ; [+5]
       61 GETTABLEKS                       R2 R0 K12 ["numRuntimeErrorTestSuites"]
       63 ADDK                             R2 R2 K13 [1]
       64 SETTABLEKS                       R2 R0 K12 ["numRuntimeErrorTestSuites"]
       66 GETTABLEKS                       R2 R1 K14 ["skipped"]
       68 JUMPIFNOT                        R2 ; [+6]
       69 GETTABLEKS                       R2 R0 K15 ["numPendingTestSuites"]
       71 ADDK                             R2 R2 K13 [1]
       72 SETTABLEKS                       R2 R0 K15 ["numPendingTestSuites"]
       74 JUMP                             ; [+19]
       75 GETTABLEKS                       R2 R1 K7 ["numFailingTests"]
       77 LOADN                            R3 0
       78 JUMPIFLT                         R3 R2 ; [+4]
       80 GETTABLEKS                       R2 R1 K11 ["testExecError"]
       82 JUMPIFNOT                        R2 ; [+6]
       83 GETTABLEKS                       R2 R0 K16 ["numFailedTestSuites"]
       85 ADDK                             R2 R2 K13 [1]
       86 SETTABLEKS                       R2 R0 K16 ["numFailedTestSuites"]
       88 JUMP                             ; [+5]
       89 GETTABLEKS                       R2 R0 K17 ["numPassedTestSuites"]
       91 ADDK                             R2 R2 K13 [1]
       92 SETTABLEKS                       R2 R0 K17 ["numPassedTestSuites"]
       94 GETTABLEKS                       R2 R1 K18 ["snapshot"]
       96 GETTABLEKS                       R2 R2 K19 ["added"]
       98 LOADN                            R3 0
       99 JUMPIFNOTLT                      R3 R2 ; [+8]
      101 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      103 GETTABLEKS                       R3 R2 K20 ["filesAdded"]
      105 ADDK                             R3 R3 K13 [1]
      106 SETTABLEKS                       R3 R2 K20 ["filesAdded"]
      108 GETTABLEKS                       R2 R1 K18 ["snapshot"]
      110 GETTABLEKS                       R2 R2 K21 ["fileDeleted"]
      112 JUMPIFNOT                        R2 ; [+7]
      113 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      115 GETTABLEKS                       R3 R2 K22 ["filesRemoved"]
      117 ADDK                             R3 R3 K13 [1]
      118 SETTABLEKS                       R3 R2 K22 ["filesRemoved"]
      120 GETTABLEKS                       R2 R1 K18 ["snapshot"]
      122 GETTABLEKS                       R2 R2 K23 ["unmatched"]
      124 LOADN                            R3 0
      125 JUMPIFNOTLT                      R3 R2 ; [+8]
      127 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      129 GETTABLEKS                       R3 R2 K24 ["filesUnmatched"]
      131 ADDK                             R3 R3 K13 [1]
      132 SETTABLEKS                       R3 R2 K24 ["filesUnmatched"]
      134 GETTABLEKS                       R2 R1 K18 ["snapshot"]
      136 GETTABLEKS                       R2 R2 K25 ["updated"]
      138 LOADN                            R3 0
      139 JUMPIFNOTLT                      R3 R2 ; [+8]
      141 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      143 GETTABLEKS                       R3 R2 K26 ["filesUpdated"]
      145 ADDK                             R3 R3 K13 [1]
      146 SETTABLEKS                       R3 R2 K26 ["filesUpdated"]
      148 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      150 GETTABLEKS                       R3 R2 K19 ["added"]
      152 GETTABLEKS                       R4 R1 K18 ["snapshot"]
      154 GETTABLEKS                       R4 R4 K19 ["added"]
      156 ADD                              R3 R3 R4
      157 SETTABLEKS                       R3 R2 K19 ["added"]
      159 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      161 GETTABLEKS                       R3 R2 K27 ["matched"]
      163 GETTABLEKS                       R4 R1 K18 ["snapshot"]
      165 GETTABLEKS                       R4 R4 K27 ["matched"]
      167 ADD                              R3 R3 R4
      168 SETTABLEKS                       R3 R2 K27 ["matched"]
      170 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      172 GETTABLEKS                       R3 R2 K28 ["unchecked"]
      174 GETTABLEKS                       R4 R1 K18 ["snapshot"]
      176 GETTABLEKS                       R4 R4 K28 ["unchecked"]
      178 ADD                              R3 R3 R4
      179 SETTABLEKS                       R3 R2 K28 ["unchecked"]
      181 GETTABLEKS                       R2 R1 K18 ["snapshot"]
      183 GETTABLEKS                       R2 R2 K29 ["uncheckedKeys"]
      185 JUMPIFNOT                        R2 ; [+28]
      186 GETTABLEKS                       R3 R1 K18 ["snapshot"]
      188 GETTABLEKS                       R3 R3 K29 ["uncheckedKeys"]
      190 LENGTH                           R2 R3
      191 LOADN                            R3 0
      192 JUMPIFNOTLT                      R3 R2 ; [+21]
      194 GETTABLEKS                       R3 R0 K18 ["snapshot"]
      196 GETTABLEKS                       R3 R3 K30 ["uncheckedKeysByFile"]
      198 DUPTABLE                         R4 K33 [{"filePath", "keys"}]
      199 GETTABLEKS                       R5 R1 K34 ["testFilePath"]
      201 SETTABLEKS                       R5 R4 K31 ["filePath"]
      203 GETTABLEKS                       R5 R1 K18 ["snapshot"]
      205 GETTABLEKS                       R5 R5 K29 ["uncheckedKeys"]
      207 SETTABLEKS                       R5 R4 K32 ["keys"]
      209 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
      211 GETIMPORT                        R2 K4 [table.insert]
      213 CALL                             R2 2 0
      214 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      216 GETTABLEKS                       R3 R2 K23 ["unmatched"]
      218 GETTABLEKS                       R4 R1 K18 ["snapshot"]
      220 GETTABLEKS                       R4 R4 K23 ["unmatched"]
      222 ADD                              R3 R3 R4
      223 SETTABLEKS                       R3 R2 K23 ["unmatched"]
      225 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      227 GETTABLEKS                       R3 R2 K25 ["updated"]
      229 GETTABLEKS                       R4 R1 K18 ["snapshot"]
      231 GETTABLEKS                       R4 R4 K25 ["updated"]
      233 ADD                              R3 R3 R4
      234 SETTABLEKS                       R3 R2 K25 ["updated"]
      236 GETTABLEKS                       R2 R0 K18 ["snapshot"]
      238 GETTABLEKS                       R3 R2 K35 ["total"]
      240 GETTABLEKS                       R7 R1 K18 ["snapshot"]
      242 GETTABLEKS                       R7 R7 K19 ["added"]
      244 GETTABLEKS                       R8 R1 K18 ["snapshot"]
      246 GETTABLEKS                       R8 R8 K27 ["matched"]
      248 ADD                              R6 R7 R8
      249 GETTABLEKS                       R7 R1 K18 ["snapshot"]
      251 GETTABLEKS                       R7 R7 K23 ["unmatched"]
      253 ADD                              R5 R6 R7
      254 GETTABLEKS                       R6 R1 K18 ["snapshot"]
      256 GETTABLEKS                       R6 R6 K25 ["updated"]
      258 ADD                              R4 R5 R6
      259 ADD                              R3 R3 R4
      260 SETTABLEKS                       R3 R2 K35 ["total"]
      262 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K14 [{[1] = False, ["numFailingTests"] = 0, ["numPassingTests"] = 0, ["numPendingTests"] = 0, ["numTodoTests"] = 0, ["openHandles"], ["perfStats"], ["skipped"] = False, ["snapshot"], ["testFilePath"] = "", ["testResults"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K7 ["openHandles"]
        5 NEWTABLE                         R1 4 0
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K15 ["end"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K16 ["runtime"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K17 ["slow"]
       16 LOADN                            R2 0
       17 SETTABLEKS                       R2 R1 K18 ["start"]
       19 SETTABLEKS                       R1 R0 K8 ["perfStats"]
       21 DUPTABLE                         R1 K26 [{["added"] = 0, ["fileDeleted"] = False, ["matched"] = 0, ["unchecked"] = 0, ["uncheckedKeys"], ["unmatched"] = 0, ["updated"] = 0}]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K23 ["uncheckedKeys"]
       26 SETTABLEKS                       R1 R0 K10 ["snapshot"]
       28 NEWTABLE                         R1 0 0
       30 SETTABLEKS                       R1 R0 K13 ["testResults"]
       32 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["types"]
       16 CALL                             R3 1 1
       17 DUPCLOSURE                       R4 K7 [PROTO_0]
       18 DUPCLOSURE                       R5 K8 [PROTO_1]
       19 DUPCLOSURE                       R6 K9 [PROTO_2]
       20 DUPCLOSURE                       R7 K10 [PROTO_3]
       21 DUPTABLE                         R8 K15 [{"makeEmptyAggregatedTestResult", "buildFailureTestResult", "addResult", "createEmptyTestResult"}]
       22 SETTABLEKS                       R4 R8 K11 ["makeEmptyAggregatedTestResult"]
       24 SETTABLEKS                       R5 R8 K12 ["buildFailureTestResult"]
       26 SETTABLEKS                       R6 R8 K13 ["addResult"]
       28 SETTABLEKS                       R7 R8 K14 ["createEmptyTestResult"]
       30 RETURN                           R8 1
