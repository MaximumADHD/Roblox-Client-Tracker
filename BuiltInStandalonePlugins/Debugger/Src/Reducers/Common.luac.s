PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["debuggerConnectionIdToCurrentThreadId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLEKS R4 R1 K2 ["currentThreadId"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K5 [{"debuggerConnectionIdToCurrentThreadId"}]
  SETTABLEKS R2 R5 K0 ["debuggerConnectionIdToCurrentThreadId"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["currentFrameMap"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLE R5 R2 R6
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K3 [assert]
  CALL R3 1 0
  GETTABLEKS R4 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R1 K4 ["threadId"]
  GETTABLEKS R5 R1 K5 ["currentFrame"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Dictionary"]
  GETTABLEKS R3 R4 K7 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K8 [{"currentFrameMap"}]
  SETTABLEKS R2 R5 K0 ["currentFrameMap"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"debuggerConnectionIdToDST", "debuggerConnectionIdToCurrentThreadId", "currentFrameMap", "isPaused", "hitException", "pausedDebuggerConnectionIds"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["debuggerConnectionIdToDST"]
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K9 ["debuggerStateToken"]
  GETTABLEKS R8 R9 K10 ["debuggerConnectionId"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["debuggerConnectionIdToDST"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["debuggerConnectionIdToCurrentThreadId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["currentFrameMap"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["isPaused"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["hitException"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K7 ["pausedDebuggerConnectionIds"]
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K9 ["debuggerStateToken"]
  GETTABLEKS R8 R9 K10 ["debuggerConnectionId"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["pausedDebuggerConnectionIds"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R3 R1 K0 ["debuggerStateToken"]
  GETTABLEKS R2 R3 K1 ["debuggerConnectionId"]
  GETTABLEKS R3 R0 K2 ["isPaused"]
  GETTABLEKS R4 R0 K3 ["currentDebuggerConnectionId"]
  GETTABLEKS R5 R0 K3 ["currentDebuggerConnectionId"]
  JUMPIFNOTEQ R2 R5 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["kInvalidDebuggerConnectionId"]
  LOADB R3 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Dictionary"]
  GETTABLEKS R5 R6 K6 ["join"]
  GETTABLEKS R6 R0 K7 ["pausedDebuggerConnectionIds"]
  NEWTABLE R7 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["None"]
  SETTABLE R8 R7 R2
  CALL R5 2 1
  GETIMPORT R6 K10 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R3 0
  GETUPVAL R6 2
  GETTABLEKS R7 R0 K11 ["hitException"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K12 ["currentFrameMap"]
  GETTABLE R7 R8 R2
  JUMPIFNOT R7 [+23]
  GETIMPORT R7 K14 [pairs]
  GETTABLEKS R10 R0 K12 ["currentFrameMap"]
  GETTABLE R8 R10 R2
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["Dictionary"]
  GETTABLEKS R12 R13 K6 ["join"]
  MOVE R13 R6
  NEWTABLE R14 1 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["None"]
  SETTABLE R15 R14 R10
  CALL R12 2 1
  MOVE R6 R12
  FORGLOOP R7 2 [-15]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Dictionary"]
  GETTABLEKS R7 R8 K6 ["join"]
  MOVE R8 R0
  DUPTABLE R9 K17 [{"debuggerConnectionIdToDST", "currentDebuggerConnectionId", "debuggerConnectionIdToCurrentThreadId", "currentFrameMap", "isPaused", "hitException", "pausedDebuggerConnectionIds"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["Dictionary"]
  GETTABLEKS R10 R11 K6 ["join"]
  GETTABLEKS R11 R0 K15 ["debuggerConnectionIdToDST"]
  NEWTABLE R12 1 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["None"]
  SETTABLE R13 R12 R2
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["debuggerConnectionIdToDST"]
  SETTABLEKS R4 R9 K3 ["currentDebuggerConnectionId"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K18 ["List"]
  GETTABLEKS R10 R11 K19 ["removeValue"]
  GETTABLEKS R11 R0 K16 ["debuggerConnectionIdToCurrentThreadId"]
  MOVE R12 R2
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["debuggerConnectionIdToCurrentThreadId"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K18 ["List"]
  GETTABLEKS R10 R11 K19 ["removeValue"]
  GETTABLEKS R11 R0 K12 ["currentFrameMap"]
  MOVE R12 R2
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["currentFrameMap"]
  SETTABLEKS R3 R9 K2 ["isPaused"]
  SETTABLEKS R6 R9 K11 ["hitException"]
  SETTABLEKS R5 R9 K7 ["pausedDebuggerConnectionIds"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_4:
  GETTABLEKS R3 R1 K0 ["debuggerStateToken"]
  GETTABLEKS R2 R3 K1 ["debuggerConnectionId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K10 [{"debuggerConnectionIdToDST", "isPaused", "hitException", "pausedDebuggerConnectionIds", "debuggerConnectionIdToCurrentThreadId", "currentFrameMap"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K4 ["debuggerConnectionIdToDST"]
  NEWTABLE R8 1 0
  GETTABLEKS R10 R1 K0 ["debuggerStateToken"]
  GETTABLEKS R9 R10 K1 ["debuggerConnectionId"]
  GETTABLEKS R10 R1 K0 ["debuggerStateToken"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["debuggerConnectionIdToDST"]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["isPaused"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K6 ["hitException"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R1 K11 ["threadId"]
  GETTABLEKS R10 R1 K6 ["hitException"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["hitException"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K7 ["pausedDebuggerConnectionIds"]
  NEWTABLE R8 1 0
  SETTABLE R2 R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["pausedDebuggerConnectionIds"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K8 ["debuggerConnectionIdToCurrentThreadId"]
  NEWTABLE R8 1 0
  LOADNIL R9
  SETTABLE R9 R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["debuggerConnectionIdToCurrentThreadId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K9 ["currentFrameMap"]
  NEWTABLE R8 1 0
  LOADNIL R9
  SETTABLE R9 R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["currentFrameMap"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"currentBreakpointId"}]
  GETTABLEKS R5 R1 K4 ["breakpointId"]
  SETTABLEKS R5 R4 K2 ["currentBreakpointId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R2 R1 K0 ["pause"]
  JUMPIFNOT R2 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"isPaused"}]
  GETTABLEKS R5 R1 K0 ["pause"]
  SETTABLEKS R5 R4 K3 ["isPaused"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"isPaused", "debuggerConnectionIdToCurrentThreadId"}]
  GETTABLEKS R5 R1 K0 ["pause"]
  SETTABLEKS R5 R4 K3 ["isPaused"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["debuggerConnectionIdToCurrentThreadId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  NEWTABLE R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K0 ["debuggerConnectionIdToCurrentThreadId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
  GETTABLEKS R4 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
  GETTABLEKS R5 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKNIL R3 [+8]
  GETTABLEKS R3 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
  GETTABLEKS R4 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLEKS R5 R1 K2 ["threadId"]
  SETTABLE R5 R3 R4
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K3 ["currentFrameMap"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["currentFrameMap"]
  GETTABLEKS R4 R2 K3 ["currentFrameMap"]
  GETTABLEKS R5 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKNIL R3 [+8]
  GETTABLEKS R3 R2 K3 ["currentFrameMap"]
  GETTABLEKS R4 R0 K1 ["currentDebuggerConnectionId"]
  NEWTABLE R5 0 0
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R2 K3 ["currentFrameMap"]
  GETTABLEKS R5 R0 K1 ["currentDebuggerConnectionId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R1 K2 ["threadId"]
  LOADN R5 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K5 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"currentDebuggerConnectionId"}]
  GETTABLEKS R5 R1 K4 ["debuggerConnectionId"]
  SETTABLEKS R5 R4 K2 ["currentDebuggerConnectionId"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K12 ["Callstack"]
  GETTABLEKS R6 R7 K13 ["SetCurrentThread"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K12 ["Callstack"]
  GETTABLEKS R7 R8 K14 ["SetCurrentFrameNumber"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R4 K15 ["Common"]
  GETTABLEKS R8 R9 K16 ["Resumed"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R4 K15 ["Common"]
  GETTABLEKS R9 R10 K17 ["SetPausedState"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R4 K15 ["Common"]
  GETTABLEKS R10 R11 K18 ["SimPaused"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R4 K15 ["Common"]
  GETTABLEKS R11 R12 K19 ["SetCurrentBreakpointId"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R4 K15 ["Common"]
  GETTABLEKS R12 R13 K20 ["ClearConnectionData"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R4 K12 ["Callstack"]
  GETTABLEKS R13 R14 K21 ["AddThreadId"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R4 K15 ["Common"]
  GETTABLEKS R14 R15 K22 ["SetFocusedDebuggerConnection"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K5 ["Packages"]
  GETTABLEKS R15 R16 K23 ["Framework"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K9 ["Util"]
  GETTABLEKS R16 R15 K24 ["deepCopy"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K8 ["Src"]
  GETTABLEKS R19 R20 K25 ["Models"]
  GETTABLEKS R18 R19 K26 ["DebuggerStateToken"]
  CALL R17 1 1
  DUPTABLE R18 K35 [{"debuggerConnectionIdToDST", "currentDebuggerConnectionId", "debuggerConnectionIdToCurrentThreadId", "currentFrameMap", "currentBreakpointId", "isPaused", "hitException", "pausedDebuggerConnectionIds"}]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K27 ["debuggerConnectionIdToDST"]
  GETTABLEKS R19 R3 K36 ["kInvalidDebuggerConnectionId"]
  SETTABLEKS R19 R18 K28 ["currentDebuggerConnectionId"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K29 ["debuggerConnectionIdToCurrentThreadId"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K30 ["currentFrameMap"]
  LOADNIL R19
  SETTABLEKS R19 R18 K31 ["currentBreakpointId"]
  LOADB R19 0
  SETTABLEKS R19 R18 K32 ["isPaused"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K33 ["hitException"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K34 ["pausedDebuggerConnectionIds"]
  GETTABLEKS R19 R1 K37 ["createReducer"]
  MOVE R20 R18
  NEWTABLE R21 16 0
  GETTABLEKS R22 R5 K38 ["name"]
  DUPCLOSURE R23 K39 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K38 ["name"]
  DUPCLOSURE R23 K40 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K38 ["name"]
  DUPCLOSURE R23 K41 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R11 K38 ["name"]
  DUPCLOSURE R23 K42 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R16
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K38 ["name"]
  DUPCLOSURE R23 K43 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R10 K38 ["name"]
  DUPCLOSURE R23 K44 [PROTO_5]
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R8 K38 ["name"]
  DUPCLOSURE R23 K45 [PROTO_6]
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R12 K38 ["name"]
  DUPCLOSURE R23 K46 [PROTO_7]
  CAPTURE VAL R16
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R13 K38 ["name"]
  DUPCLOSURE R23 K47 [PROTO_8]
  CAPTURE VAL R2
  SETTABLE R23 R21 R22
  CALL R19 2 -1
  RETURN R19 -1
