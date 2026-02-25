PROTO_0:
        0 DUPTABLE                         R2 K32 [{"Started", "Paused", "Resumed", "Canceled", "Finished", "ProgressChanged", "_name", "_description", "_onStartFunc", "_onStepFunc", "_onPauseFunc", "_onResumeFunc", "_onCancelFunc", "_onFinishFunc", "_onErrorFunc", "_budget", "_timeBetweenSteps", "_timeBetweenPauseChecks", "_options", "_canCancel", "_canPause", "_hasStarted", "_isPaused", "_wasCanceled", "_hasFinished", "_isRunning", "_operationProgress", "_errorMessage", "_steps", "_startTime", "_endTime", "_yieldTime"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K33 ["new"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["Started"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K33 ["new"]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K1 ["Paused"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K33 ["new"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K2 ["Resumed"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K33 ["new"]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K3 ["Canceled"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K33 ["new"]
       28 CALL                             R3 0 1
       29 SETTABLEKS                       R3 R2 K4 ["Finished"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K33 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K5 ["ProgressChanged"]
       37 GETTABLEKS                       R3 R0 K34 ["Name"]
       39 SETTABLEKS                       R3 R2 K6 ["_name"]
       41 GETTABLEKS                       R3 R0 K35 ["Description"]
       43 SETTABLEKS                       R3 R2 K7 ["_description"]
       45 GETTABLEKS                       R3 R0 K36 ["OnStart"]
       47 SETTABLEKS                       R3 R2 K8 ["_onStartFunc"]
       49 GETTABLEKS                       R3 R0 K37 ["OnStep"]
       51 SETTABLEKS                       R3 R2 K9 ["_onStepFunc"]
       53 GETTABLEKS                       R3 R0 K38 ["OnPause"]
       55 SETTABLEKS                       R3 R2 K10 ["_onPauseFunc"]
       57 GETTABLEKS                       R3 R0 K39 ["OnResume"]
       59 SETTABLEKS                       R3 R2 K11 ["_onResumeFunc"]
       61 GETTABLEKS                       R3 R0 K40 ["OnCancel"]
       63 SETTABLEKS                       R3 R2 K12 ["_onCancelFunc"]
       65 GETTABLEKS                       R3 R0 K41 ["OnFinish"]
       67 SETTABLEKS                       R3 R2 K13 ["_onFinishFunc"]
       69 GETTABLEKS                       R3 R0 K42 ["OnError"]
       71 SETTABLEKS                       R3 R2 K14 ["_onErrorFunc"]
       73 GETTABLEKS                       R3 R0 K43 ["Budget"]
       75 SETTABLEKS                       R3 R2 K15 ["_budget"]
       77 GETTABLEKS                       R4 R0 K45 ["TimeBetweenSteps"]
       79 ORK                              R3 R4 K44 [0]
       80 SETTABLEKS                       R3 R2 K16 ["_timeBetweenSteps"]
       82 GETTABLEKS                       R4 R0 K47 ["TimeBetweenPauseChecks"]
       84 ORK                              R3 R4 K46 [0.1]
       85 SETTABLEKS                       R3 R2 K17 ["_timeBetweenPauseChecks"]
       87 NEWTABLE                         R3 0 0
       89 SETTABLEKS                       R3 R2 K18 ["_options"]
       91 GETTABLEKS                       R4 R0 K49 ["AllowCancel"]
       93 ORK                              R3 R4 K48 [False]
       94 SETTABLEKS                       R3 R2 K19 ["_canCancel"]
       96 GETTABLEKS                       R4 R0 K50 ["AllowPause"]
       98 ORK                              R3 R4 K48 [False]
       99 SETTABLEKS                       R3 R2 K20 ["_canPause"]
      101 LOADB                            R3 0
      102 SETTABLEKS                       R3 R2 K21 ["_hasStarted"]
      104 LOADB                            R3 0
      105 SETTABLEKS                       R3 R2 K22 ["_isPaused"]
      107 LOADB                            R3 0
      108 SETTABLEKS                       R3 R2 K23 ["_wasCanceled"]
      110 LOADB                            R3 0
      111 SETTABLEKS                       R3 R2 K24 ["_hasFinished"]
      113 LOADB                            R3 0
      114 SETTABLEKS                       R3 R2 K25 ["_isRunning"]
      116 LOADN                            R3 0
      117 SETTABLEKS                       R3 R2 K26 ["_operationProgress"]
      119 LOADNIL                          R3
      120 SETTABLEKS                       R3 R2 K27 ["_errorMessage"]
      122 LOADN                            R3 0
      123 SETTABLEKS                       R3 R2 K28 ["_steps"]
      125 LOADN                            R3 0
      126 SETTABLEKS                       R3 R2 K29 ["_startTime"]
      128 LOADN                            R3 0
      129 SETTABLEKS                       R3 R2 K30 ["_endTime"]
      131 LOADN                            R3 0
      132 SETTABLEKS                       R3 R2 K31 ["_yieldTime"]
      134 GETUPVAL                         R3 1
      135 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
      137 GETIMPORT                        R1 K52 [setmetatable]
      139 CALL                             R1 2 1
      140 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["_hasFinished"]
        5 JUMPIF                           R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
        8 JUMPIF                           R1 ; [+3]
        9 NAMECALL                         R1 R0 K3 ["cancel"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_runOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Options must be a table."]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R4 R0 K6 ["_hasStarted"]
       17 NOT                              R3 R4
       18 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       20 LOADK                            R4 K7 ["Cannot start an operation that was already started."]
       21 GETIMPORT                        R2 K5 [assert]
       23 CALL                             R2 2 0
       24 JUMPIFNOT                        R1 ; [+2]
       25 SETTABLEKS                       R1 R0 K8 ["_options"]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R0 K6 ["_hasStarted"]
       30 LOADB                            R2 1
       31 SETTABLEKS                       R2 R0 K9 ["_isRunning"]
       33 GETIMPORT                        R2 K12 [os.clock]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R0 K13 ["_startTime"]
       38 GETTABLEKS                       R2 R1 K14 ["cycles"]
       40 SETTABLEKS                       R2 R0 K15 ["_cycles"]
       42 GETTABLEKS                       R2 R1 K16 ["Synchronous"]
       44 SETTABLEKS                       R2 R0 K17 ["_Synchronous"]
       46 GETTABLEKS                       R2 R0 K18 ["Started"]
       48 NAMECALL                         R2 R2 K19 ["Fire"]
       50 CALL                             R2 1 0
       51 GETTABLEKS                       R2 R0 K15 ["_cycles"]
       53 JUMPIF                           R2 ; [+3]
       54 GETTABLEKS                       R2 R0 K17 ["_Synchronous"]
       56 JUMPIFNOT                        R2 ; [+4]
       57 NAMECALL                         R2 R0 K20 ["_runOperation"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0
       61 GETIMPORT                        R2 K23 [task.spawn]
       63 NEWCLOSURE                       R3 P0
       64 CAPTURE                          VAL R0
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_hasFinished"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K3 ["_isPaused"]
       12 NOT                              R2 R3
       13 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       15 LOADK                            R3 K4 ["Operation already paused."]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K3 ["_isPaused"]
       22 GETTABLEKS                       R1 R0 K7 ["Paused"]
       24 NAMECALL                         R1 R1 K8 ["Fire"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_hasFinished"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["_isPaused"]
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["Operation already running."]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 LOADB                            R1 0
       19 SETTABLEKS                       R1 R0 K3 ["_isPaused"]
       21 GETTABLEKS                       R1 R0 K7 ["Resumed"]
       23 NAMECALL                         R1 R1 K8 ["Fire"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_hasFinished"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K3 ["_isPaused"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["resume"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 NAMECALL                         R1 R0 K5 ["pause"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_hasFinished"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["_wasCanceled"]
       13 GETTABLEKS                       R1 R0 K3 ["Canceled"]
       15 NAMECALL                         R1 R1 K4 ["Fire"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_name"]
        2 RETURN                           R1 1

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_name"]
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_description"]
        2 RETURN                           R1 1

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["_description"]
        2 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_options"]
        2 RETURN                           R1 1

PROTO_13:
        0 SETTABLEKS                       R1 R0 K0 ["_options"]
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["join"]
        3 GETTABLEKS                       R3 R0 K1 ["_options"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R0 K1 ["_options"]
        9 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_options"]
        2 SETTABLEKS                       R1 R2 K1 ["Payload"]
        4 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_canCancel"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_canPause"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_canPause"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_hasStarted"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_isPaused"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_wasCanceled"]
        2 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_hasFinished"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_isRunning"]
        2 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_errorMessage"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_errorMessage"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_operationProgress"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["_operationProgress"]
        2 JUMPIFEQ                         R2 R1 ; [+28]
        4 SETTABLEKS                       R1 R0 K0 ["_operationProgress"]
        6 GETIMPORT                        R3 K3 [os.clock]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R4 R0 K4 ["_startTime"]
       11 SUB                              R2 R3 R4
       12 SETTABLEKS                       R2 R0 K5 ["_runningTime"]
       14 GETTABLEKS                       R2 R0 K6 ["ProgressChanged"]
       16 MOVE                             R4 R1
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R1 ; [+8]
       20 GETTABLEKS                       R7 R0 K5 ["_runningTime"]
       22 DIV                              R6 R7 R1
       23 GETTABLEKS                       R7 R0 K5 ["_runningTime"]
       25 SUB                              R5 R6 R7
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 NAMECALL                         R2 R2 K7 ["Fire"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_steps"]
        2 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        4 LOADN                            R1 1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["_steps"]
        8 RETURN                           R1 1

PROTO_29:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K3 ["_startTime"]
        5 SUB                              R1 R2 R3
        6 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_hasFinished"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K1 ["_endTime"]
        7 GETTABLEKS                       R3 R0 K2 ["_startTime"]
        9 SUB                              R1 R2 R3
       10 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_yieldTime"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_hasFinished"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 NAMECALL                         R2 R0 K1 ["getTimeTaken"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R0 K2 ["getYieldTime"]
       10 CALL                             R3 1 1
       11 SUB                              R1 R2 R3
       12 RETURN                           R1 1

PROTO_33:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["_time"]
        4 JUMPIF                           R2 ; [+6]
        5 SETTABLEKS                       R1 R0 K0 ["_time"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R0 K1 ["_timeTotals"]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K0 ["_time"]
       13 ADD                              R2 R2 R1
       14 SETTABLEKS                       R2 R0 K0 ["_time"]
       16 GETTABLEKS                       R2 R0 K1 ["_timeTotals"]
       18 ADDK                             R2 R2 K2 [1]
       19 SETTABLEKS                       R2 R0 K1 ["_timeTotals"]
       21 RETURN                           R0 0

PROTO_34:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_skipBudget"]
        3 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_time"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["_timeTotals"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R0 K0 ["_time"]
        8 GETTABLEKS                       R3 R0 K1 ["_timeTotals"]
       10 DIV                              R1 R2 R3
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_36:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_cycles"]
        3 JUMPIF                           R1 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["_Synchronous"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K4 [os.clock]
       10 CALL                             R1 0 1
       11 GETIMPORT                        R2 K7 [task.wait]
       13 GETVARARGS                       R3 -1
       14 CALL                             R2 -1 0
       15 GETIMPORT                        R2 K4 [os.clock]
       17 CALL                             R2 0 1
       18 GETTABLEKS                       R4 R0 K8 ["_yieldTime"]
       20 SUB                              R5 R2 R1
       21 ADD                              R3 R4 R5
       22 SETTABLEKS                       R3 R0 K8 ["_yieldTime"]
       24 RETURN                           R0 0

PROTO_37:
        0 NAMECALL                         R2 R0 K0 ["didError"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [tostring]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K3 ["_errorMessage"]
       12 GETTABLEKS                       R2 R0 K4 ["_onErrorFunc"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETTABLEKS                       R4 R0 K4 ["_onErrorFunc"]
       17 NAMECALL                         R2 R0 K5 ["_runCallback"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K7 [error]
       23 GETTABLEKS                       R3 R0 K3 ["_errorMessage"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R0 K2 [table.pack]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K3 ["_options"]
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_39:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 LOADNIL                          R2
        4 GETIMPORT                        R3 K1 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 2
       11 JUMPIFNOT                        R3 ; [+8]
       12 LOADB                            R5 1
       13 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       14 MOVE                             R7 R2
       15 GETIMPORT                        R6 K3 [unpack]
       17 CALL                             R6 1 -1
       18 CLOSEUPVALS                      R2
       19 RETURN                           R5 -1
       20 MOVE                             R7 R4
       21 NAMECALL                         R5 R0 K4 ["_handleError"]
       23 CALL                             R5 2 0
       24 LOADB                            R5 0
       25 CLOSEUPVALS                      R2
       26 RETURN                           R5 1

PROTO_40:
        0 GETTABLEKS                       R3 R0 K0 ["_onStartFunc"]
        2 NAMECALL                         R1 R0 K1 ["_runCallback"]
        4 CALL                             R1 2 0
        5 GETTABLEKS                       R3 R0 K2 ["_timeBetweenSteps"]
        7 NAMECALL                         R1 R0 K3 ["_yield"]
        9 CALL                             R1 2 0
       10 LOADB                            R1 0
       11 GETIMPORT                        R2 K6 [os.clock]
       13 CALL                             R2 0 1
       14 NAMECALL                         R3 R0 K7 ["didError"]
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+96]
       18 GETTABLEKS                       R3 R0 K8 ["_wasCanceled"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETTABLEKS                       R5 R0 K9 ["_onCancelFunc"]
       23 NAMECALL                         R3 R0 K1 ["_runCallback"]
       25 CALL                             R3 2 0
       26 JUMP                             ; [+87]
       27 GETTABLEKS                       R3 R0 K10 ["_isPaused"]
       29 JUMPIFNOT                        R3 ; [+17]
       30 JUMPIF                           R1 ; [+9]
       31 GETTABLEKS                       R3 R0 K11 ["_onPauseFunc"]
       33 JUMPIFNOT                        R3 ; [+6]
       34 GETTABLEKS                       R5 R0 K11 ["_onPauseFunc"]
       36 NAMECALL                         R3 R0 K1 ["_runCallback"]
       38 CALL                             R3 2 1
       39 JUMPIFNOT                        R3 ; [+74]
       40 LOADB                            R1 1
       41 GETTABLEKS                       R5 R0 K12 ["_timeBetweenPauseChecks"]
       43 NAMECALL                         R3 R0 K3 ["_yield"]
       45 CALL                             R3 2 0
       46 JUMP                             ; [+66]
       47 JUMPIFNOT                        R1 ; [+9]
       48 GETTABLEKS                       R3 R0 K13 ["_onResumeFunc"]
       50 JUMPIFNOT                        R3 ; [+6]
       51 GETTABLEKS                       R5 R0 K13 ["_onResumeFunc"]
       53 NAMECALL                         R3 R0 K1 ["_runCallback"]
       55 CALL                             R3 2 1
       56 JUMPIFNOT                        R3 ; [+57]
       57 LOADB                            R1 0
       58 GETTABLEKS                       R5 R0 K14 ["_onStepFunc"]
       60 NAMECALL                         R3 R0 K1 ["_runCallback"]
       62 CALL                             R3 2 3
       63 GETTABLEKS                       R6 R0 K15 ["_steps"]
       65 ADDK                             R6 R6 K16 [1]
       66 SETTABLEKS                       R6 R0 K15 ["_steps"]
       68 JUMPIFNOT                        R3 ; [+45]
       69 JUMPIFNOT                        R5 ; [+4]
       70 MOVE                             R8 R5
       71 NAMECALL                         R6 R0 K17 ["_setProgress"]
       73 CALL                             R6 2 0
       74 GETTABLEKS                       R6 R0 K18 ["_cycles"]
       76 JUMPIFNOT                        R6 ; [+5]
       77 GETTABLEKS                       R6 R0 K18 ["_cycles"]
       79 SUBK                             R6 R6 K16 [1]
       80 SETTABLEKS                       R6 R0 K18 ["_cycles"]
       82 JUMPIFNOT                        R4 ; [+31]
       83 GETTABLEKS                       R6 R0 K18 ["_cycles"]
       85 JUMPIFEQKN                       R6 K19 [0] ; [+28]
       87 GETTABLEKS                       R6 R0 K20 ["_budget"]
       89 JUMPIFNOT                        R6 ; [+11]
       90 GETIMPORT                        R7 K6 [os.clock]
       92 CALL                             R7 0 1
       93 SUB                              R6 R7 R2
       94 GETTABLEKS                       R7 R0 K20 ["_budget"]
       96 JUMPIFLT                         R7 R6 ; [+4]
       98 GETTABLEKS                       R6 R0 K21 ["_skipBudget"]
      100 JUMPIFNOT                        R6 ; [+12]
      101 GETTABLEKS                       R8 R0 K2 ["_timeBetweenSteps"]
      103 NAMECALL                         R6 R0 K3 ["_yield"]
      105 CALL                             R6 2 0
      106 LOADB                            R6 0
      107 SETTABLEKS                       R6 R0 K21 ["_skipBudget"]
      109 GETIMPORT                        R6 K6 [os.clock]
      111 CALL                             R6 0 1
      112 MOVE                             R2 R6
      113 JUMPBACK                         ; [-100]
      114 LOADB                            R3 1
      115 SETTABLEKS                       R3 R0 K22 ["_hasFinished"]
      117 LOADB                            R3 0
      118 SETTABLEKS                       R3 R0 K23 ["_isRunning"]
      120 GETIMPORT                        R3 K6 [os.clock]
      122 CALL                             R3 0 1
      123 SETTABLEKS                       R3 R0 K24 ["_endTime"]
      125 GETTABLEKS                       R5 R0 K25 ["_onFinishFunc"]
      127 NAMECALL                         R3 R0 K1 ["_runCallback"]
      129 CALL                             R3 2 0
      130 GETTABLEKS                       R3 R0 K26 ["Finished"]
      132 NAMECALL                         R3 R3 K27 ["Fire"]
      134 CALL                             R3 1 0
      135 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R4 R3 K10 ["Signal"]
       25 NEWTABLE                         R5 64 0
       27 SETTABLEKS                       R5 R5 K11 ["__index"]
       29 DUPCLOSURE                       R6 K12 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 SETTABLEKS                       R6 R5 K13 ["new"]
       34 DUPCLOSURE                       R6 K14 [PROTO_1]
       35 SETTABLEKS                       R6 R5 K15 ["destroy"]
       37 DUPCLOSURE                       R6 K16 [PROTO_3]
       38 SETTABLEKS                       R6 R5 K17 ["start"]
       40 DUPCLOSURE                       R6 K18 [PROTO_4]
       41 SETTABLEKS                       R6 R5 K19 ["pause"]
       43 DUPCLOSURE                       R6 K20 [PROTO_5]
       44 SETTABLEKS                       R6 R5 K21 ["resume"]
       46 DUPCLOSURE                       R6 K22 [PROTO_6]
       47 SETTABLEKS                       R6 R5 K23 ["togglePause"]
       49 DUPCLOSURE                       R6 K24 [PROTO_7]
       50 SETTABLEKS                       R6 R5 K25 ["cancel"]
       52 DUPCLOSURE                       R6 K26 [PROTO_8]
       53 SETTABLEKS                       R6 R5 K27 ["getName"]
       55 DUPCLOSURE                       R6 K28 [PROTO_9]
       56 SETTABLEKS                       R6 R5 K29 ["setName"]
       58 DUPCLOSURE                       R6 K30 [PROTO_10]
       59 SETTABLEKS                       R6 R5 K31 ["getDescription"]
       61 DUPCLOSURE                       R6 K32 [PROTO_11]
       62 SETTABLEKS                       R6 R5 K33 ["setDescription"]
       64 DUPCLOSURE                       R6 K34 [PROTO_12]
       65 SETTABLEKS                       R6 R5 K35 ["getOptions"]
       67 DUPCLOSURE                       R6 K36 [PROTO_13]
       68 SETTABLEKS                       R6 R5 K37 ["setOptions"]
       70 DUPCLOSURE                       R6 K38 [PROTO_14]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R6 R5 K39 ["updateOptions"]
       74 DUPCLOSURE                       R6 K40 [PROTO_15]
       75 SETTABLEKS                       R6 R5 K41 ["updatePayload"]
       77 DUPCLOSURE                       R6 K42 [PROTO_16]
       78 SETTABLEKS                       R6 R5 K43 ["canCancel"]
       80 DUPCLOSURE                       R6 K44 [PROTO_17]
       81 SETTABLEKS                       R6 R5 K45 ["canPause"]
       83 DUPCLOSURE                       R6 K46 [PROTO_18]
       84 SETTABLEKS                       R6 R5 K47 ["canResume"]
       86 DUPCLOSURE                       R6 K48 [PROTO_19]
       87 SETTABLEKS                       R6 R5 K49 ["hasStarted"]
       89 DUPCLOSURE                       R6 K50 [PROTO_20]
       90 SETTABLEKS                       R6 R5 K51 ["isPaused"]
       92 DUPCLOSURE                       R6 K52 [PROTO_21]
       93 SETTABLEKS                       R6 R5 K53 ["wasCanceled"]
       95 DUPCLOSURE                       R6 K54 [PROTO_22]
       96 SETTABLEKS                       R6 R5 K55 ["hasFinished"]
       98 DUPCLOSURE                       R6 K56 [PROTO_23]
       99 SETTABLEKS                       R6 R5 K57 ["isRunning"]
      101 DUPCLOSURE                       R6 K58 [PROTO_24]
      102 SETTABLEKS                       R6 R5 K59 ["didError"]
      104 DUPCLOSURE                       R6 K60 [PROTO_25]
      105 SETTABLEKS                       R6 R5 K61 ["getErrorMessage"]
      107 DUPCLOSURE                       R6 K62 [PROTO_26]
      108 SETTABLEKS                       R6 R5 K63 ["getProgress"]
      110 DUPCLOSURE                       R6 K64 [PROTO_27]
      111 SETTABLEKS                       R6 R5 K65 ["_setProgress"]
      113 DUPCLOSURE                       R6 K66 [PROTO_28]
      114 SETTABLEKS                       R6 R5 K67 ["getStepsTaken"]
      116 DUPCLOSURE                       R6 K68 [PROTO_29]
      117 SETTABLEKS                       R6 R5 K69 ["getCurrentTimeTaken"]
      119 DUPCLOSURE                       R6 K70 [PROTO_30]
      120 SETTABLEKS                       R6 R5 K71 ["getTimeTaken"]
      122 DUPCLOSURE                       R6 K72 [PROTO_31]
      123 SETTABLEKS                       R6 R5 K73 ["getYieldTime"]
      125 DUPCLOSURE                       R6 K74 [PROTO_32]
      126 SETTABLEKS                       R6 R5 K75 ["getWorkTime"]
      128 DUPCLOSURE                       R6 K76 [PROTO_33]
      129 SETTABLEKS                       R6 R5 K77 ["addTimeStatistic"]
      131 DUPCLOSURE                       R6 K78 [PROTO_34]
      132 SETTABLEKS                       R6 R5 K79 ["skipBudget"]
      134 DUPCLOSURE                       R6 K80 [PROTO_35]
      135 SETTABLEKS                       R6 R5 K81 ["getTimeStatistic"]
      137 DUPCLOSURE                       R6 K82 [PROTO_36]
      138 SETTABLEKS                       R6 R5 K83 ["_yield"]
      140 DUPCLOSURE                       R6 K84 [PROTO_37]
      141 SETTABLEKS                       R6 R5 K85 ["_handleError"]
      143 DUPCLOSURE                       R6 K86 [PROTO_39]
      144 SETTABLEKS                       R6 R5 K87 ["_runCallback"]
      146 DUPCLOSURE                       R6 K88 [PROTO_40]
      147 SETTABLEKS                       R6 R5 K89 ["_runOperation"]
      149 RETURN                           R5 1
