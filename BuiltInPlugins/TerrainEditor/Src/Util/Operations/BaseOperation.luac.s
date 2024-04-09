PROTO_0:
  DUPTABLE R2 K32 [{"Started", "Paused", "Resumed", "Canceled", "Finished", "ProgressChanged", "_name", "_description", "_onStartFunc", "_onStepFunc", "_onPauseFunc", "_onResumeFunc", "_onCancelFunc", "_onFinishFunc", "_onErrorFunc", "_budget", "_timeBetweenSteps", "_timeBetweenPauseChecks", "_options", "_canCancel", "_canPause", "_hasStarted", "_isPaused", "_wasCanceled", "_hasFinished", "_isRunning", "_operationProgress", "_errorMessage", "_steps", "_startTime", "_endTime", "_yieldTime"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["Started"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K1 ["Paused"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K2 ["Resumed"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K3 ["Canceled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K4 ["Finished"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K5 ["ProgressChanged"]
  GETTABLEKS R3 R0 K34 ["Name"]
  SETTABLEKS R3 R2 K6 ["_name"]
  GETTABLEKS R3 R0 K35 ["Description"]
  SETTABLEKS R3 R2 K7 ["_description"]
  GETTABLEKS R3 R0 K36 ["OnStart"]
  SETTABLEKS R3 R2 K8 ["_onStartFunc"]
  GETTABLEKS R3 R0 K37 ["OnStep"]
  SETTABLEKS R3 R2 K9 ["_onStepFunc"]
  GETTABLEKS R3 R0 K38 ["OnPause"]
  SETTABLEKS R3 R2 K10 ["_onPauseFunc"]
  GETTABLEKS R3 R0 K39 ["OnResume"]
  SETTABLEKS R3 R2 K11 ["_onResumeFunc"]
  GETTABLEKS R3 R0 K40 ["OnCancel"]
  SETTABLEKS R3 R2 K12 ["_onCancelFunc"]
  GETTABLEKS R3 R0 K41 ["OnFinish"]
  SETTABLEKS R3 R2 K13 ["_onFinishFunc"]
  GETTABLEKS R3 R0 K42 ["OnError"]
  SETTABLEKS R3 R2 K14 ["_onErrorFunc"]
  GETTABLEKS R3 R0 K43 ["Budget"]
  SETTABLEKS R3 R2 K15 ["_budget"]
  GETTABLEKS R4 R0 K45 ["TimeBetweenSteps"]
  ORK R3 R4 K44 [0]
  SETTABLEKS R3 R2 K16 ["_timeBetweenSteps"]
  GETTABLEKS R4 R0 K47 ["TimeBetweenPauseChecks"]
  ORK R3 R4 K46 [0.1]
  SETTABLEKS R3 R2 K17 ["_timeBetweenPauseChecks"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K18 ["_options"]
  GETTABLEKS R4 R0 K49 ["AllowCancel"]
  ORK R3 R4 K48 [False]
  SETTABLEKS R3 R2 K19 ["_canCancel"]
  GETTABLEKS R4 R0 K50 ["AllowPause"]
  ORK R3 R4 K48 [False]
  SETTABLEKS R3 R2 K20 ["_canPause"]
  LOADB R3 0
  SETTABLEKS R3 R2 K21 ["_hasStarted"]
  LOADB R3 0
  SETTABLEKS R3 R2 K22 ["_isPaused"]
  LOADB R3 0
  SETTABLEKS R3 R2 K23 ["_wasCanceled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K24 ["_hasFinished"]
  LOADB R3 0
  SETTABLEKS R3 R2 K25 ["_isRunning"]
  LOADN R3 0
  SETTABLEKS R3 R2 K26 ["_operationProgress"]
  LOADNIL R3
  SETTABLEKS R3 R2 K27 ["_errorMessage"]
  LOADN R3 0
  SETTABLEKS R3 R2 K28 ["_steps"]
  LOADN R3 0
  SETTABLEKS R3 R2 K29 ["_startTime"]
  LOADN R3 0
  SETTABLEKS R3 R2 K30 ["_endTime"]
  LOADN R3 0
  SETTABLEKS R3 R2 K31 ["_yieldTime"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K52 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K1 ["_hasFinished"]
  JUMPIF R1 [+6]
  GETTABLEKS R1 R0 K2 ["_wasCanceled"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["cancel"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_runOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Options must be a table."]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K6 ["_hasStarted"]
  NOT R3 R4
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Cannot start an operation that was already started."]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  JUMPIFNOT R1 [+2]
  SETTABLEKS R1 R0 K8 ["_options"]
  LOADB R2 1
  SETTABLEKS R2 R0 K6 ["_hasStarted"]
  LOADB R2 1
  SETTABLEKS R2 R0 K9 ["_isRunning"]
  GETIMPORT R2 K12 [os.clock]
  CALL R2 0 1
  SETTABLEKS R2 R0 K13 ["_startTime"]
  GETTABLEKS R2 R1 K14 ["cycles"]
  SETTABLEKS R2 R0 K15 ["_cycles"]
  GETTABLEKS R2 R1 K16 ["Synchronous"]
  SETTABLEKS R2 R0 K17 ["_Synchronous"]
  GETTABLEKS R2 R0 K18 ["Started"]
  NAMECALL R2 R2 K19 ["Fire"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K15 ["_cycles"]
  JUMPIF R2 [+3]
  GETTABLEKS R2 R0 K17 ["_Synchronous"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K20 ["_runOperation"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K23 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K1 ["_hasFinished"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K2 ["_wasCanceled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K3 ["_isPaused"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["Operation already paused."]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["_isPaused"]
  GETTABLEKS R1 R0 K7 ["Paused"]
  NAMECALL R1 R1 K8 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K1 ["_hasFinished"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K2 ["_wasCanceled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K3 ["_isPaused"]
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["Operation already running."]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["_isPaused"]
  GETTABLEKS R1 R0 K7 ["Resumed"]
  NAMECALL R1 R1 K8 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K1 ["_hasFinished"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K2 ["_wasCanceled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K3 ["_isPaused"]
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K4 ["resume"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K5 ["pause"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K1 ["_hasFinished"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K2 ["_wasCanceled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["_wasCanceled"]
  GETTABLEKS R1 R0 K3 ["Canceled"]
  NAMECALL R1 R1 K4 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_name"]
  RETURN R1 1

PROTO_9:
  SETTABLEKS R1 R0 K0 ["_name"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_description"]
  RETURN R1 1

PROTO_11:
  SETTABLEKS R1 R0 K0 ["_description"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_options"]
  RETURN R1 1

PROTO_13:
  SETTABLEKS R1 R0 K0 ["_options"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  GETTABLEKS R3 R0 K1 ["_options"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["_options"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_options"]
  SETTABLEKS R1 R2 K1 ["Payload"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_canCancel"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_canPause"]
  RETURN R1 1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_canPause"]
  RETURN R1 1

PROTO_19:
  GETTABLEKS R1 R0 K0 ["_hasStarted"]
  RETURN R1 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_isPaused"]
  RETURN R1 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_wasCanceled"]
  RETURN R1 1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["_hasFinished"]
  RETURN R1 1

PROTO_23:
  GETTABLEKS R1 R0 K0 ["_isRunning"]
  RETURN R1 1

PROTO_24:
  GETTABLEKS R2 R0 K0 ["_errorMessage"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["_errorMessage"]
  RETURN R1 1

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_operationProgress"]
  RETURN R1 1

PROTO_27:
  GETTABLEKS R2 R0 K0 ["_operationProgress"]
  JUMPIFEQ R2 R1 [+28]
  SETTABLEKS R1 R0 K0 ["_operationProgress"]
  GETIMPORT R3 K3 [os.clock]
  CALL R3 0 1
  GETTABLEKS R4 R0 K4 ["_startTime"]
  SUB R2 R3 R4
  SETTABLEKS R2 R0 K5 ["_runningTime"]
  GETTABLEKS R2 R0 K6 ["ProgressChanged"]
  MOVE R4 R1
  LOADN R6 0
  JUMPIFNOTLT R6 R1 [+8]
  GETTABLEKS R7 R0 K5 ["_runningTime"]
  DIV R6 R7 R1
  GETTABLEKS R7 R0 K5 ["_runningTime"]
  SUB R5 R6 R7
  JUMP [+1]
  LOADNIL R5
  NAMECALL R2 R2 K7 ["Fire"]
  CALL R2 3 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R2 R0 K0 ["_steps"]
  JUMPIFNOTEQKN R2 K1 [0] [+3]
  LOADN R1 1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["_steps"]
  RETURN R1 1

PROTO_29:
  GETIMPORT R2 K2 [os.clock]
  CALL R2 0 1
  GETTABLEKS R3 R0 K3 ["_startTime"]
  SUB R1 R2 R3
  RETURN R1 1

PROTO_30:
  GETTABLEKS R1 R0 K0 ["_hasFinished"]
  JUMPIF R1 [+2]
  LOADN R1 0
  RETURN R1 1
  GETTABLEKS R2 R0 K1 ["_endTime"]
  GETTABLEKS R3 R0 K2 ["_startTime"]
  SUB R1 R2 R3
  RETURN R1 1

PROTO_31:
  GETTABLEKS R1 R0 K0 ["_yieldTime"]
  RETURN R1 1

PROTO_32:
  GETTABLEKS R1 R0 K0 ["_hasFinished"]
  JUMPIF R1 [+2]
  LOADN R1 0
  RETURN R1 1
  NAMECALL R2 R0 K1 ["getTimeTaken"]
  CALL R2 1 1
  NAMECALL R3 R0 K2 ["getYieldTime"]
  CALL R3 1 1
  SUB R1 R2 R3
  RETURN R1 1

PROTO_33:
  GETTABLEKS R2 R0 K0 ["_time"]
  JUMPIF R2 [+6]
  SETTABLEKS R1 R0 K0 ["_time"]
  LOADN R2 1
  SETTABLEKS R2 R0 K1 ["_timeTotals"]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_time"]
  ADD R2 R2 R1
  SETTABLEKS R2 R0 K0 ["_time"]
  GETTABLEKS R2 R0 K1 ["_timeTotals"]
  ADDK R2 R2 K2 [1]
  SETTABLEKS R2 R0 K1 ["_timeTotals"]
  RETURN R0 0

PROTO_34:
  GETTABLEKS R1 R0 K0 ["_time"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K1 ["_timeTotals"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["_time"]
  GETTABLEKS R3 R0 K1 ["_timeTotals"]
  DIV R1 R2 R3
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_35:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_cycles"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K1 ["_Synchronous"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K4 [os.clock]
  CALL R1 0 1
  GETIMPORT R2 K7 [task.wait]
  GETVARARGS R3 -1
  CALL R2 -1 0
  GETIMPORT R2 K4 [os.clock]
  CALL R2 0 1
  GETTABLEKS R4 R0 K8 ["_yieldTime"]
  SUB R5 R2 R1
  ADD R3 R4 R5
  SETTABLEKS R3 R0 K8 ["_yieldTime"]
  RETURN R0 0

PROTO_36:
  NAMECALL R2 R0 K0 ["didError"]
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R0 K3 ["_errorMessage"]
  GETTABLEKS R2 R0 K4 ["_onErrorFunc"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R4 R0 K4 ["_onErrorFunc"]
  NAMECALL R2 R0 K5 ["_runCallback"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K7 [error]
  GETTABLEKS R3 R0 K3 ["_errorMessage"]
  CALL R2 1 0
  RETURN R0 0

PROTO_37:
  GETIMPORT R0 K2 [table.pack]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["_options"]
  GETUPVAL R3 2
  CALL R1 2 -1
  CALL R0 -1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_38:
  JUMPIF R1 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADNIL R2
  GETIMPORT R3 K1 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R3 1 2
  JUMPIFNOT R3 [+8]
  LOADB R5 1
  FASTCALL1 TABLE_UNPACK R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K3 [unpack]
  CALL R6 1 -1
  CLOSEUPVALS R2
  RETURN R5 -1
  MOVE R7 R4
  NAMECALL R5 R0 K4 ["_handleError"]
  CALL R5 2 0
  LOADB R5 0
  CLOSEUPVALS R2
  RETURN R5 1

PROTO_39:
  GETTABLEKS R3 R0 K0 ["_onStartFunc"]
  NAMECALL R1 R0 K1 ["_runCallback"]
  CALL R1 2 0
  GETTABLEKS R3 R0 K2 ["_timeBetweenSteps"]
  NAMECALL R1 R0 K3 ["_yield"]
  CALL R1 2 0
  LOADB R1 0
  GETIMPORT R2 K6 [os.clock]
  CALL R2 0 1
  NAMECALL R3 R0 K7 ["didError"]
  CALL R3 1 1
  JUMPIF R3 [+90]
  GETTABLEKS R3 R0 K8 ["_wasCanceled"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R5 R0 K9 ["_onCancelFunc"]
  NAMECALL R3 R0 K1 ["_runCallback"]
  CALL R3 2 0
  JUMP [+81]
  GETTABLEKS R3 R0 K10 ["_isPaused"]
  JUMPIFNOT R3 [+17]
  JUMPIF R1 [+9]
  GETTABLEKS R3 R0 K11 ["_onPauseFunc"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R5 R0 K11 ["_onPauseFunc"]
  NAMECALL R3 R0 K1 ["_runCallback"]
  CALL R3 2 1
  JUMPIFNOT R3 [+68]
  LOADB R1 1
  GETTABLEKS R5 R0 K12 ["_timeBetweenPauseChecks"]
  NAMECALL R3 R0 K3 ["_yield"]
  CALL R3 2 0
  JUMP [+60]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R3 R0 K13 ["_onResumeFunc"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R5 R0 K13 ["_onResumeFunc"]
  NAMECALL R3 R0 K1 ["_runCallback"]
  CALL R3 2 1
  JUMPIFNOT R3 [+51]
  LOADB R1 0
  GETTABLEKS R5 R0 K14 ["_onStepFunc"]
  NAMECALL R3 R0 K1 ["_runCallback"]
  CALL R3 2 3
  GETTABLEKS R6 R0 K15 ["_steps"]
  ADDK R6 R6 K16 [1]
  SETTABLEKS R6 R0 K15 ["_steps"]
  JUMPIFNOT R3 [+39]
  JUMPIFNOT R5 [+4]
  MOVE R8 R5
  NAMECALL R6 R0 K17 ["_setProgress"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K18 ["_cycles"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K18 ["_cycles"]
  SUBK R6 R6 K16 [1]
  SETTABLEKS R6 R0 K18 ["_cycles"]
  JUMPIFNOT R4 [+25]
  GETTABLEKS R6 R0 K18 ["_cycles"]
  JUMPIFEQKN R6 K19 [0] [+22]
  GETTABLEKS R6 R0 K20 ["_budget"]
  JUMPIFNOT R6 [+8]
  GETIMPORT R7 K6 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R2
  GETTABLEKS R7 R0 K20 ["_budget"]
  JUMPIFNOTLT R7 R6 [+10]
  GETTABLEKS R8 R0 K2 ["_timeBetweenSteps"]
  NAMECALL R6 R0 K3 ["_yield"]
  CALL R6 2 0
  GETIMPORT R6 K6 [os.clock]
  CALL R6 0 1
  MOVE R2 R6
  JUMPBACK [-94]
  LOADB R3 1
  SETTABLEKS R3 R0 K21 ["_hasFinished"]
  LOADB R3 0
  SETTABLEKS R3 R0 K22 ["_isRunning"]
  GETIMPORT R3 K6 [os.clock]
  CALL R3 0 1
  SETTABLEKS R3 R0 K23 ["_endTime"]
  GETTABLEKS R5 R0 K24 ["_onFinishFunc"]
  NAMECALL R3 R0 K1 ["_runCallback"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K25 ["Finished"]
  NAMECALL R3 R3 K26 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["Signal"]
  NEWTABLE R5 64 0
  SETTABLEKS R5 R5 K11 ["__index"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K13 ["new"]
  DUPCLOSURE R6 K14 [PROTO_1]
  SETTABLEKS R6 R5 K15 ["destroy"]
  DUPCLOSURE R6 K16 [PROTO_3]
  SETTABLEKS R6 R5 K17 ["start"]
  DUPCLOSURE R6 K18 [PROTO_4]
  SETTABLEKS R6 R5 K19 ["pause"]
  DUPCLOSURE R6 K20 [PROTO_5]
  SETTABLEKS R6 R5 K21 ["resume"]
  DUPCLOSURE R6 K22 [PROTO_6]
  SETTABLEKS R6 R5 K23 ["togglePause"]
  DUPCLOSURE R6 K24 [PROTO_7]
  SETTABLEKS R6 R5 K25 ["cancel"]
  DUPCLOSURE R6 K26 [PROTO_8]
  SETTABLEKS R6 R5 K27 ["getName"]
  DUPCLOSURE R6 K28 [PROTO_9]
  SETTABLEKS R6 R5 K29 ["setName"]
  DUPCLOSURE R6 K30 [PROTO_10]
  SETTABLEKS R6 R5 K31 ["getDescription"]
  DUPCLOSURE R6 K32 [PROTO_11]
  SETTABLEKS R6 R5 K33 ["setDescription"]
  DUPCLOSURE R6 K34 [PROTO_12]
  SETTABLEKS R6 R5 K35 ["getOptions"]
  DUPCLOSURE R6 K36 [PROTO_13]
  SETTABLEKS R6 R5 K37 ["setOptions"]
  DUPCLOSURE R6 K38 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K39 ["updateOptions"]
  DUPCLOSURE R6 K40 [PROTO_15]
  SETTABLEKS R6 R5 K41 ["updatePayload"]
  DUPCLOSURE R6 K42 [PROTO_16]
  SETTABLEKS R6 R5 K43 ["canCancel"]
  DUPCLOSURE R6 K44 [PROTO_17]
  SETTABLEKS R6 R5 K45 ["canPause"]
  DUPCLOSURE R6 K46 [PROTO_18]
  SETTABLEKS R6 R5 K47 ["canResume"]
  DUPCLOSURE R6 K48 [PROTO_19]
  SETTABLEKS R6 R5 K49 ["hasStarted"]
  DUPCLOSURE R6 K50 [PROTO_20]
  SETTABLEKS R6 R5 K51 ["isPaused"]
  DUPCLOSURE R6 K52 [PROTO_21]
  SETTABLEKS R6 R5 K53 ["wasCanceled"]
  DUPCLOSURE R6 K54 [PROTO_22]
  SETTABLEKS R6 R5 K55 ["hasFinished"]
  DUPCLOSURE R6 K56 [PROTO_23]
  SETTABLEKS R6 R5 K57 ["isRunning"]
  DUPCLOSURE R6 K58 [PROTO_24]
  SETTABLEKS R6 R5 K59 ["didError"]
  DUPCLOSURE R6 K60 [PROTO_25]
  SETTABLEKS R6 R5 K61 ["getErrorMessage"]
  DUPCLOSURE R6 K62 [PROTO_26]
  SETTABLEKS R6 R5 K63 ["getProgress"]
  DUPCLOSURE R6 K64 [PROTO_27]
  SETTABLEKS R6 R5 K65 ["_setProgress"]
  DUPCLOSURE R6 K66 [PROTO_28]
  SETTABLEKS R6 R5 K67 ["getStepsTaken"]
  DUPCLOSURE R6 K68 [PROTO_29]
  SETTABLEKS R6 R5 K69 ["getCurrentTimeTaken"]
  DUPCLOSURE R6 K70 [PROTO_30]
  SETTABLEKS R6 R5 K71 ["getTimeTaken"]
  DUPCLOSURE R6 K72 [PROTO_31]
  SETTABLEKS R6 R5 K73 ["getYieldTime"]
  DUPCLOSURE R6 K74 [PROTO_32]
  SETTABLEKS R6 R5 K75 ["getWorkTime"]
  DUPCLOSURE R6 K76 [PROTO_33]
  SETTABLEKS R6 R5 K77 ["addTimeStatistic"]
  DUPCLOSURE R6 K78 [PROTO_34]
  SETTABLEKS R6 R5 K79 ["getTimeStatistic"]
  DUPCLOSURE R6 K80 [PROTO_35]
  SETTABLEKS R6 R5 K81 ["_yield"]
  DUPCLOSURE R6 K82 [PROTO_36]
  SETTABLEKS R6 R5 K83 ["_handleError"]
  DUPCLOSURE R6 K84 [PROTO_38]
  SETTABLEKS R6 R5 K85 ["_runCallback"]
  DUPCLOSURE R6 K86 [PROTO_39]
  SETTABLEKS R6 R5 K87 ["_runOperation"]
  RETURN R5 1
