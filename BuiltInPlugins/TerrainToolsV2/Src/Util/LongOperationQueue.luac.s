PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["_progress"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ProgressChanged"]
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["_paused"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["PausedChanged"]
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  LOADB R3 1
  NAMECALL R1 R1 K0 ["_setQueueRunning"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_cleanupCurrentOperation"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["_wasCanceled"]
  JUMPIF R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["didError"]
  CALL R0 1 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K3 ["_setQueueRunning"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K4 ["_hasNextOperation"]
  CALL R0 1 1
  JUMPIFNOT R0 [+14]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["_timeBetweenOperations"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K6 ["_moveToNextOperation"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K7 ["_startCurrentOperation"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K3 ["_setQueueRunning"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  DUPTABLE R2 K15 [{"_timeBetweenOperations", "_queue", "_currentOperationIndex", "_currentOperation", "_currentOperationConnections", "_lastOperationData", "_lastOperationErrorMessage", "_queueRunning", "QueueRunningChanged", "NextOperationStarted", "_paused", "PausedChanged", "_progress", "ProgressChanged", "_wasCanceled"}]
  GETTABLEKS R4 R0 K17 ["timeBetweenOperations"]
  ORK R3 R4 K16 [0]
  SETTABLEKS R3 R2 K0 ["_timeBetweenOperations"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["_queue"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["_currentOperationIndex"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["_currentOperation"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["_currentOperationConnections"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["_lastOperationData"]
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["_lastOperationErrorMessage"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["_queueRunning"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K8 ["QueueRunningChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K9 ["NextOperationStarted"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["_paused"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K11 ["PausedChanged"]
  LOADN R3 0
  SETTABLEKS R3 R2 K12 ["_progress"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K13 ["ProgressChanged"]
  LOADB R3 0
  SETTABLEKS R3 R2 K14 ["_wasCanceled"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K20 [setmetatable]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K21 ["_updateProgress"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K22 ["_updatePaused"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K23 ["_updateRunning"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K24 ["_operationFinished"]
  RETURN R1 1

PROTO_5:
  NAMECALL R1 R0 K0 ["destroy"]
  CALL R1 1 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["_queue"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["_currentOperationIndex"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["_lastOperationData"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["_queueRunning"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["_paused"]
  LOADN R1 0
  SETTABLEKS R1 R0 K6 ["_progress"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["_wasCanceled"]
  RETURN R0 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["_cleanupCurrentOperation"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_queue"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K3 [table.insert]
  CALL R2 2 0
  RETURN R0 1

PROTO_8:
  GETTABLEKS R4 R0 K0 ["_currentOperation"]
  NOT R3 R4
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["LongOperationQueue is already running an operation"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  NAMECALL R3 R0 K4 ["_hasNextOperation"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["LongOperationQueue has no operation to run"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  JUMPIFNOT R1 [+17]
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K7 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["LongOperationQueue:start() initialData should be nil or table"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  SETTABLEKS R1 R0 K10 ["_lastOperationData"]
  NAMECALL R2 R0 K11 ["_moveToNextOperation"]
  CALL R2 1 0
  NAMECALL R2 R0 K12 ["_startCurrentOperation"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K1 ["pause"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K1 ["resume"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K1 ["togglePause"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_wasCanceled"]
  GETTABLEKS R1 R0 K1 ["_currentOperation"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["_currentOperation"]
  NAMECALL R1 R1 K2 ["cancel"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_queueRunning"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_progress"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_paused"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R3 R0 K0 ["_lastOperationErrorMessage"]
  NOT R2 R3
  NOT R1 R2
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_lastOperationErrorMessage"]
  RETURN R1 1

PROTO_18:
  GETTABLEKS R2 R0 K0 ["_queueRunning"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_queueRunning"]
  GETTABLEKS R2 R0 K1 ["QueueRunningChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  FASTCALL2K ASSERT R1 K1 [+5]
  MOVE R3 R1
  LOADK R4 K1 ["LongOperationQueue:_startCurrentOperation() has no operation to start)"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["_updateProgress"]
  LOADN R3 0
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["NextOperationStarted"]
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 2 0
  GETTABLEKS R4 R0 K7 ["_lastOperationData"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  NAMECALL R2 R1 K8 ["start"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R3 R0 K1 ["_currentOperationIndex"]
  ADDK R2 R3 K0 [1]
  GETTABLEKS R4 R0 K2 ["_queue"]
  LENGTH R3 R4
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_21:
  GETTABLEKS R3 R0 K0 ["_currentOperation"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["LongOperationQueue is already running an operation"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  NAMECALL R1 R0 K4 ["_hasNextOperation"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R2 R0 K6 ["_currentOperationIndex"]
  ADDK R1 R2 K5 [1]
  SETTABLEKS R1 R0 K6 ["_currentOperationIndex"]
  GETTABLEKS R2 R0 K7 ["_queue"]
  GETTABLEKS R3 R0 K6 ["_currentOperationIndex"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["_currentOperation"]
  DUPTABLE R1 K12 [{"progressChanged", "pausedChanged", "runningChanged", "finished"}]
  GETTABLEKS R3 R0 K0 ["_currentOperation"]
  GETTABLEKS R2 R3 K13 ["ProgressChanged"]
  GETTABLEKS R4 R0 K14 ["_updateProgress"]
  NAMECALL R2 R2 K15 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K8 ["progressChanged"]
  GETTABLEKS R3 R0 K0 ["_currentOperation"]
  GETTABLEKS R2 R3 K16 ["PausedChanged"]
  GETTABLEKS R4 R0 K17 ["_updatePaused"]
  NAMECALL R2 R2 K15 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["pausedChanged"]
  GETTABLEKS R3 R0 K0 ["_currentOperation"]
  GETTABLEKS R2 R3 K18 ["RunningChanged"]
  GETTABLEKS R4 R0 K19 ["_updateRunning"]
  NAMECALL R2 R2 K15 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K10 ["runningChanged"]
  GETTABLEKS R3 R0 K0 ["_currentOperation"]
  GETTABLEKS R2 R3 K20 ["Finished"]
  GETTABLEKS R4 R0 K21 ["_operationFinished"]
  NAMECALL R2 R2 K15 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K11 ["finished"]
  SETTABLEKS R1 R0 K22 ["_currentOperationConnections"]
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETTABLEKS R2 R0 K0 ["_currentOperation"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["LongOperationQueue has no operation to clean up"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K4 ["getOperationData"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["_lastOperationData"]
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K6 ["getErrorMessage"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["_lastOperationErrorMessage"]
  GETIMPORT R1 K9 [pairs]
  GETTABLEKS R2 R0 K10 ["_currentOperationConnections"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K11 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["_currentOperationConnections"]
  GETTABLEKS R1 R0 K0 ["_currentOperation"]
  NAMECALL R1 R1 K12 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_currentOperation"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Signal"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K10 ["quickWait"]
  CALL R4 1 1
  NEWTABLE R5 32 0
  SETTABLEKS R5 R5 K11 ["__index"]
  DUPCLOSURE R6 K12 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K13 ["new"]
  DUPCLOSURE R6 K14 [PROTO_5]
  SETTABLEKS R6 R5 K15 ["reset"]
  DUPCLOSURE R6 K16 [PROTO_6]
  SETTABLEKS R6 R5 K17 ["destroy"]
  DUPCLOSURE R6 K18 [PROTO_7]
  SETTABLEKS R6 R5 K19 ["addToQueue"]
  DUPCLOSURE R6 K20 [PROTO_8]
  SETTABLEKS R6 R5 K21 ["start"]
  DUPCLOSURE R6 K22 [PROTO_9]
  SETTABLEKS R6 R5 K23 ["pause"]
  DUPCLOSURE R6 K24 [PROTO_10]
  SETTABLEKS R6 R5 K25 ["resume"]
  DUPCLOSURE R6 K26 [PROTO_11]
  SETTABLEKS R6 R5 K27 ["togglePause"]
  DUPCLOSURE R6 K28 [PROTO_12]
  SETTABLEKS R6 R5 K29 ["cancel"]
  DUPCLOSURE R6 K30 [PROTO_13]
  SETTABLEKS R6 R5 K31 ["isQueueRunning"]
  DUPCLOSURE R6 K32 [PROTO_14]
  SETTABLEKS R6 R5 K33 ["getProgress"]
  DUPCLOSURE R6 K34 [PROTO_15]
  SETTABLEKS R6 R5 K35 ["isPaused"]
  DUPCLOSURE R6 K36 [PROTO_16]
  SETTABLEKS R6 R5 K37 ["didError"]
  DUPCLOSURE R6 K38 [PROTO_17]
  SETTABLEKS R6 R5 K39 ["getErrorMessage"]
  DUPCLOSURE R6 K40 [PROTO_18]
  SETTABLEKS R6 R5 K41 ["_setQueueRunning"]
  DUPCLOSURE R6 K42 [PROTO_19]
  SETTABLEKS R6 R5 K43 ["_startCurrentOperation"]
  DUPCLOSURE R6 K44 [PROTO_20]
  SETTABLEKS R6 R5 K45 ["_hasNextOperation"]
  DUPCLOSURE R6 K46 [PROTO_21]
  SETTABLEKS R6 R5 K47 ["_moveToNextOperation"]
  DUPCLOSURE R6 K48 [PROTO_22]
  SETTABLEKS R6 R5 K49 ["_cleanupCurrentOperation"]
  RETURN R5 1
