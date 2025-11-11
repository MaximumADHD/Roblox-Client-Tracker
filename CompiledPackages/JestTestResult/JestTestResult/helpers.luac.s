PROTO_0:
  DUPTABLE R0 K16 [{"numFailedTestSuites", "numFailedTests", "numPassedTestSuites", "numPassedTests", "numPendingTestSuites", "numPendingTests", "numRuntimeErrorTestSuites", "numTodoTests", "numTotalTestSuites", "numTotalTests", "openHandles", "snapshot", "startTime", "success", "testResults", "wasInterrupted"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["numFailedTestSuites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["numFailedTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["numPassedTestSuites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["numPassedTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["numPendingTestSuites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["numPendingTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K6 ["numRuntimeErrorTestSuites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K7 ["numTodoTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K8 ["numTotalTestSuites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K9 ["numTotalTests"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K10 ["openHandles"]
  DUPTABLE R1 K31 [{"added", "didUpdate", "failure", "filesAdded", "filesRemoved", "filesRemovedList", "filesUnmatched", "filesUpdated", "matched", "total", "unchecked", "uncheckedKeysByFile", "unmatched", "updated"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K17 ["added"]
  LOADB R2 0
  SETTABLEKS R2 R1 K18 ["didUpdate"]
  LOADB R2 0
  SETTABLEKS R2 R1 K19 ["failure"]
  LOADN R2 0
  SETTABLEKS R2 R1 K20 ["filesAdded"]
  LOADN R2 0
  SETTABLEKS R2 R1 K21 ["filesRemoved"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K22 ["filesRemovedList"]
  LOADN R2 0
  SETTABLEKS R2 R1 K23 ["filesUnmatched"]
  LOADN R2 0
  SETTABLEKS R2 R1 K24 ["filesUpdated"]
  LOADN R2 0
  SETTABLEKS R2 R1 K25 ["matched"]
  LOADN R2 0
  SETTABLEKS R2 R1 K26 ["total"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["unchecked"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K28 ["uncheckedKeysByFile"]
  LOADN R2 0
  SETTABLEKS R2 R1 K29 ["unmatched"]
  LOADN R2 0
  SETTABLEKS R2 R1 K30 ["updated"]
  SETTABLEKS R1 R0 K11 ["snapshot"]
  LOADN R1 0
  SETTABLEKS R1 R0 K12 ["startTime"]
  LOADB R1 1
  SETTABLEKS R1 R0 K13 ["success"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K14 ["testResults"]
  LOADB R1 0
  SETTABLEKS R1 R0 K15 ["wasInterrupted"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R2 K15 [{"console", "displayName", "failureMessage", "leaks", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "openHandles", "perfStats", "skipped", "snapshot", "testExecError", "testFilePath", "testResults"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["console"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["displayName"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["failureMessage"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["leaks"]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["numFailingTests"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["numPassingTests"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["numPendingTests"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["numTodoTests"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["openHandles"]
  DUPTABLE R3 K20 [{"end_", "runtime", "slow", "start"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["end_"]
  LOADN R4 0
  SETTABLEKS R4 R3 K17 ["runtime"]
  LOADB R4 0
  SETTABLEKS R4 R3 K18 ["slow"]
  LOADN R4 0
  SETTABLEKS R4 R3 K19 ["start"]
  SETTABLEKS R3 R2 K9 ["perfStats"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["skipped"]
  DUPTABLE R3 K28 [{"added", "fileDeleted", "matched", "unchecked", "uncheckedKeys", "unmatched", "updated"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K21 ["added"]
  LOADB R4 0
  SETTABLEKS R4 R3 K22 ["fileDeleted"]
  LOADN R4 0
  SETTABLEKS R4 R3 K23 ["matched"]
  LOADN R4 0
  SETTABLEKS R4 R3 K24 ["unchecked"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K25 ["uncheckedKeys"]
  LOADN R4 0
  SETTABLEKS R4 R3 K26 ["unmatched"]
  LOADN R4 0
  SETTABLEKS R4 R3 K27 ["updated"]
  SETTABLEKS R3 R2 K11 ["snapshot"]
  SETTABLEKS R1 R2 K12 ["testExecError"]
  SETTABLEKS R0 R2 K13 ["testFilePath"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K14 ["testResults"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R3 R1 K1 ["numTodoTests"]
  CALL R2 1 1
  JUMPIF R2 [+3]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["numTodoTests"]
  GETTABLEKS R3 R0 K2 ["testResults"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["numTotalTests"]
  GETTABLEKS R6 R1 K7 ["numPassingTests"]
  GETTABLEKS R7 R1 K8 ["numFailingTests"]
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K9 ["numPendingTests"]
  ADD R4 R5 R6
  GETTABLEKS R5 R1 K1 ["numTodoTests"]
  ADD R3 R4 R5
  ADD R2 R2 R3
  SETTABLEKS R2 R0 K6 ["numTotalTests"]
  GETTABLEKS R2 R0 K10 ["numFailedTests"]
  GETTABLEKS R3 R1 K8 ["numFailingTests"]
  ADD R2 R2 R3
  SETTABLEKS R2 R0 K10 ["numFailedTests"]
  GETTABLEKS R2 R0 K11 ["numPassedTests"]
  GETTABLEKS R3 R1 K7 ["numPassingTests"]
  ADD R2 R2 R3
  SETTABLEKS R2 R0 K11 ["numPassedTests"]
  GETTABLEKS R2 R0 K9 ["numPendingTests"]
  GETTABLEKS R3 R1 K9 ["numPendingTests"]
  ADD R2 R2 R3
  SETTABLEKS R2 R0 K9 ["numPendingTests"]
  GETTABLEKS R2 R0 K1 ["numTodoTests"]
  GETTABLEKS R3 R1 K1 ["numTodoTests"]
  ADD R2 R2 R3
  SETTABLEKS R2 R0 K1 ["numTodoTests"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R3 R1 K12 ["testExecError"]
  CALL R2 1 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K13 ["numRuntimeErrorTestSuites"]
  ADDK R2 R2 K14 [1]
  SETTABLEKS R2 R0 K13 ["numRuntimeErrorTestSuites"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R3 R1 K15 ["skipped"]
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K16 ["numPendingTestSuites"]
  ADDK R2 R2 K14 [1]
  SETTABLEKS R2 R0 K16 ["numPendingTestSuites"]
  JUMP [+24]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  LOADB R3 1
  GETTABLEKS R4 R1 K8 ["numFailingTests"]
  LOADN R5 0
  JUMPIFLT R5 R4 [+3]
  GETTABLEKS R3 R1 K12 ["testExecError"]
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K17 ["numFailedTestSuites"]
  ADDK R2 R2 K14 [1]
  SETTABLEKS R2 R0 K17 ["numFailedTestSuites"]
  JUMP [+5]
  GETTABLEKS R2 R0 K18 ["numPassedTestSuites"]
  ADDK R2 R2 K14 [1]
  SETTABLEKS R2 R0 K18 ["numPassedTestSuites"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R4 R1 K19 ["snapshot"]
  GETTABLEKS R3 R4 K20 ["added"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K21 ["filesAdded"]
  ADDK R3 R3 K14 [1]
  SETTABLEKS R3 R2 K21 ["filesAdded"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R4 R1 K19 ["snapshot"]
  GETTABLEKS R3 R4 K22 ["fileDeleted"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K23 ["filesRemoved"]
  ADDK R3 R3 K14 [1]
  SETTABLEKS R3 R2 K23 ["filesRemoved"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R4 R1 K19 ["snapshot"]
  GETTABLEKS R3 R4 K24 ["unmatched"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K25 ["filesUnmatched"]
  ADDK R3 R3 K14 [1]
  SETTABLEKS R3 R2 K25 ["filesUnmatched"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETTABLEKS R4 R1 K19 ["snapshot"]
  GETTABLEKS R3 R4 K26 ["updated"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K27 ["filesUpdated"]
  ADDK R3 R3 K14 [1]
  SETTABLEKS R3 R2 K27 ["filesUpdated"]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K20 ["added"]
  GETTABLEKS R5 R1 K19 ["snapshot"]
  GETTABLEKS R4 R5 K20 ["added"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K20 ["added"]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K28 ["matched"]
  GETTABLEKS R5 R1 K19 ["snapshot"]
  GETTABLEKS R4 R5 K28 ["matched"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K28 ["matched"]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K29 ["unchecked"]
  GETTABLEKS R5 R1 K19 ["snapshot"]
  GETTABLEKS R4 R5 K29 ["unchecked"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K29 ["unchecked"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toJSBoolean"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["toJSBoolean"]
  GETTABLEKS R6 R1 K19 ["snapshot"]
  GETTABLEKS R5 R6 K30 ["uncheckedKeys"]
  CALL R4 1 1
  JUMPIFNOT R4 [+11]
  GETTABLEKS R6 R1 K19 ["snapshot"]
  GETTABLEKS R5 R6 K30 ["uncheckedKeys"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMP [+4]
  GETTABLEKS R4 R1 K19 ["snapshot"]
  GETTABLEKS R3 R4 K30 ["uncheckedKeys"]
  CALL R2 1 1
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K19 ["snapshot"]
  GETTABLEKS R3 R4 K31 ["uncheckedKeysByFile"]
  DUPTABLE R4 K34 [{"filePath", "keys"}]
  GETTABLEKS R5 R1 K35 ["testFilePath"]
  SETTABLEKS R5 R4 K32 ["filePath"]
  GETTABLEKS R6 R1 K19 ["snapshot"]
  GETTABLEKS R5 R6 K30 ["uncheckedKeys"]
  SETTABLEKS R5 R4 K33 ["keys"]
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K24 ["unmatched"]
  GETTABLEKS R5 R1 K19 ["snapshot"]
  GETTABLEKS R4 R5 K24 ["unmatched"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K24 ["unmatched"]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K26 ["updated"]
  GETTABLEKS R5 R1 K19 ["snapshot"]
  GETTABLEKS R4 R5 K26 ["updated"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K26 ["updated"]
  GETTABLEKS R2 R0 K19 ["snapshot"]
  GETTABLEKS R3 R2 K36 ["total"]
  GETTABLEKS R8 R1 K19 ["snapshot"]
  GETTABLEKS R7 R8 K20 ["added"]
  GETTABLEKS R9 R1 K19 ["snapshot"]
  GETTABLEKS R8 R9 K28 ["matched"]
  ADD R6 R7 R8
  GETTABLEKS R8 R1 K19 ["snapshot"]
  GETTABLEKS R7 R8 K24 ["unmatched"]
  ADD R5 R6 R7
  GETTABLEKS R7 R1 K19 ["snapshot"]
  GETTABLEKS R6 R7 K26 ["updated"]
  ADD R4 R5 R6
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K36 ["total"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R0 K11 [{"leaks", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "openHandles", "perfStats", "skipped", "snapshot", "testFilePath", "testResults"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["leaks"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["numFailingTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["numPassingTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["numPendingTests"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["numTodoTests"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["openHandles"]
  DUPTABLE R1 K16 [{"end_", "runtime", "slow", "start"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K12 ["end_"]
  LOADN R2 0
  SETTABLEKS R2 R1 K13 ["runtime"]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["slow"]
  LOADN R2 0
  SETTABLEKS R2 R1 K15 ["start"]
  SETTABLEKS R1 R0 K6 ["perfStats"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["skipped"]
  DUPTABLE R1 K24 [{"added", "fileDeleted", "matched", "unchecked", "uncheckedKeys", "unmatched", "updated"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K17 ["added"]
  LOADB R2 0
  SETTABLEKS R2 R1 K18 ["fileDeleted"]
  LOADN R2 0
  SETTABLEKS R2 R1 K19 ["matched"]
  LOADN R2 0
  SETTABLEKS R2 R1 K20 ["unchecked"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K21 ["uncheckedKeys"]
  LOADN R2 0
  SETTABLEKS R2 R1 K22 ["unmatched"]
  LOADN R2 0
  SETTABLEKS R2 R1 K23 ["updated"]
  SETTABLEKS R1 R0 K8 ["snapshot"]
  LOADK R1 K25 [""]
  SETTABLEKS R1 R0 K9 ["testFilePath"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K10 ["testResults"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K6 ["Boolean"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R1 K7 ["JestTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K8 ["types"]
  CALL R5 1 1
  DUPCLOSURE R6 K9 [PROTO_0]
  DUPCLOSURE R7 K10 [PROTO_1]
  DUPCLOSURE R8 K11 [PROTO_2]
  CAPTURE VAL R3
  DUPCLOSURE R9 K12 [PROTO_3]
  DUPTABLE R10 K17 [{"makeEmptyAggregatedTestResult", "buildFailureTestResult", "addResult", "createEmptyTestResult"}]
  SETTABLEKS R6 R10 K13 ["makeEmptyAggregatedTestResult"]
  SETTABLEKS R7 R10 K14 ["buildFailureTestResult"]
  SETTABLEKS R8 R10 K15 ["addResult"]
  SETTABLEKS R9 R10 K16 ["createEmptyTestResult"]
  RETURN R10 1
