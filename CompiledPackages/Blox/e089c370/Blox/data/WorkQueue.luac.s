PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 DUPTABLE                         R5 K7 [{"name", "frameDuration", "consume", "_stack", "_thread", "perf"}]
        5 SETTABLEKS                       R0 R5 K1 ["name"]
        7 SETTABLEKS                       R1 R5 K2 ["frameDuration"]
        9 SETTABLEKS                       R2 R5 K3 ["consume"]
       11 SETTABLEKS                       R3 R5 K4 ["_stack"]
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R5 K5 ["_thread"]
       16 GETUPVAL                         R7 1
       17 JUMPIFNOT                        R7 ; [+30]
       18 DUPTABLE                         R6 K13 [{"totalProcessedTasks", "totalFrameCount", "activeFrameCount", "pausedFrameCount", "durationCohorts"}]
       19 LOADN                            R7 0
       20 SETTABLEKS                       R7 R6 K8 ["totalProcessedTasks"]
       22 LOADN                            R7 0
       23 SETTABLEKS                       R7 R6 K9 ["totalFrameCount"]
       25 LOADN                            R7 0
       26 SETTABLEKS                       R7 R6 K10 ["activeFrameCount"]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K11 ["pausedFrameCount"]
       31 NEWTABLE                         R7 0 10
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 0
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 LOADN                            R13 0
       39 LOADN                            R14 0
       40 LOADN                            R15 0
       41 LOADN                            R16 0
       42 LOADN                            R17 0
       43 SETLIST                          R7 R8 10 [1]
       45 SETTABLEKS                       R7 R6 K12 ["durationCohorts"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K6 ["perf"]
       51 GETUPVAL                         R6 2
       52 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       54 GETIMPORT                        R4 K15 [setmetatable]
       56 CALL                             R4 2 1
       57 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_stack"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["enqueue"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_stack"]
        2 GETTABLEKS                       R1 R1 K1 ["size"]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+11]
        7 GETTABLEKS                       R1 R0 K0 ["_stack"]
        9 NAMECALL                         R1 R1 K2 ["dequeue"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K3 ["consume"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 JUMPBACK                         ; [-17]
       17 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R0 0
        1 GETIMPORT                        R2 K1 [tick]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["frameDuration"]
        7 ADD                              R1 R2 R3
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["_stack"]
       12 NAMECALL                         R3 R3 K4 ["dequeue"]
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+33]
       16 JUMPIF                           R2 ; [+20]
       17 GETIMPORT                        R4 K6 [pcall]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["TryBeginRecording"]
       22 GETUPVAL                         R6 1
       23 LOADK                            R7 K8 ["blox work queue"]
       24 CALL                             R4 3 2
       25 JUMPIF                           R4 ; [+9]
       26 GETUPVAL                         R6 2
       27 JUMPIF                           R6 ; [+7]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K9 ["warn"]
       31 LOADK                            R7 K10 ["Could not start ChangeHistory recording for work queue. Undo/Redo may not function correctly in the Studio plugin."]
       32 CALL                             R6 1 0
       33 LOADB                            R6 1
       34 SETUPVAL                         R6 2
       35 JUMPIFNOT                        R4 ; [+1]
       36 MOVE                             R2 R5
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K11 ["consume"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 ADDK                             R0 R0 K12 [1]
       43 GETIMPORT                        R4 K1 [tick]
       45 CALL                             R4 0 1
       46 JUMPIFLE                         R1 R4 ; [+2]
       48 JUMPBACK                         ; [-40]
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R3 R3 K13 ["PROFILE_WORK_QUEUE"]
       52 JUMPIFNOT                        R3 ; [+28]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K3 ["_stack"]
       56 GETTABLEKS                       R3 R3 K14 ["size"]
       58 LOADN                            R4 0
       59 JUMPIFNOTLT                      R4 R3 ; [+21]
       61 GETIMPORT                        R3 K16 [print]
       63 GETIMPORT                        R4 K19 [string.format]
       65 LOADK                            R5 K20 ["[WorkQueue:%s] CROSS-FRAME processed=%d remaining=%d frameDuration=%.1fms"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K21 ["name"]
       69 MOVE                             R7 R0
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K3 ["_stack"]
       73 GETTABLEKS                       R8 R8 K14 ["size"]
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K2 ["frameDuration"]
       78 MULK                             R9 R10 K22 [1000]
       79 CALL                             R4 5 -1
       80 CALL                             R3 -1 0
       81 GETUPVAL                         R3 4
       82 JUMPIFNOT                        R3 ; [+63]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K23 ["perf"]
       86 GETTABLEKS                       R4 R3 K24 ["totalProcessedTasks"]
       88 ADD                              R4 R4 R0
       89 SETTABLEKS                       R4 R3 K24 ["totalProcessedTasks"]
       91 GETTABLEKS                       R4 R3 K25 ["totalFrameCount"]
       93 ADDK                             R4 R4 K12 [1]
       94 SETTABLEKS                       R4 R3 K25 ["totalFrameCount"]
       96 LOADN                            R4 0
       97 JUMPIFNOTLT                      R4 R0 ; [+35]
       99 GETTABLEKS                       R4 R3 K26 ["activeFrameCount"]
      101 ADDK                             R4 R4 K12 [1]
      102 SETTABLEKS                       R4 R3 K26 ["activeFrameCount"]
      104 GETIMPORT                        R5 K1 [tick]
      106 CALL                             R5 0 1
      107 SUB                              R4 R1 R5
      108 LOADN                            R5 0
      109 JUMPIFNOTLE                      R5 R4 ; [+23]
      111 GETUPVAL                         R8 0
      112 GETTABLEKS                       R8 R8 K2 ["frameDuration"]
      114 DIV                              R7 R4 R8
      115 SUBRK                            R6 R12 K7 ["TryBeginRecording"]
      116 LOADN                            R7 0
      117 LOADN                            R8 1
      118 FASTCALL                         MATH_CLAMP ; [+2]
      119 GETIMPORT                        R5 K29 [math.clamp]
      121 CALL                             R5 3 1
      122 GETTABLEKS                       R6 R3 K30 ["durationCohorts"]
      124 MULK                             R9 R5 K31 [10]
      125 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      126 GETIMPORT                        R8 K33 [math.floor]
      128 CALL                             R8 1 1
      129 ADDK                             R7 R8 K12 [1]
      130 GETTABLE                         R8 R6 R7
      131 ADDK                             R8 R8 K12 [1]
      132 SETTABLE                         R8 R6 R7
      133 GETUPVAL                         R4 0
      134 GETTABLEKS                       R4 R4 K3 ["_stack"]
      136 GETTABLEKS                       R4 R4 K14 ["size"]
      138 LOADN                            R5 0
      139 JUMPIFNOTLT                      R5 R4 ; [+6]
      141 GETTABLEKS                       R4 R3 K34 ["pausedFrameCount"]
      143 ADDK                             R4 R4 K12 [1]
      144 SETTABLEKS                       R4 R3 K34 ["pausedFrameCount"]
      146 JUMPIFNOT                        R2 ; [+7]
      147 GETUPVAL                         R3 1
      148 MOVE                             R5 R2
      149 GETIMPORT                        R6 K38 [Enum.FinishRecordingOperation.Commit]
      151 NAMECALL                         R3 R3 K39 ["FinishRecording"]
      153 CALL                             R3 3 0
      154 GETIMPORT                        R3 K42 [task.wait]
      156 CALL                             R3 0 0
      157 JUMPBACK                         ; [-158]
      158 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_thread"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K3 [task.defer]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["_thread"]
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_stack"]
        3 GETTABLEKS                       R0 R0 K1 ["size"]
        5 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K4 [tick]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 1
       12 ADD                              R0 R1 R2
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["_stack"]
       17 NAMECALL                         R2 R2 K5 ["dequeue"]
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+22]
       21 JUMPIF                           R1 ; [+10]
       22 GETIMPORT                        R3 K7 [pcall]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K8 ["TryBeginRecording"]
       27 GETUPVAL                         R5 2
       28 LOADK                            R6 K9 ["blox pre-render flush"]
       29 CALL                             R3 3 2
       30 JUMPIFNOT                        R3 ; [+1]
       31 MOVE                             R1 R4
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K10 ["consume"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 GETIMPORT                        R3 K4 [tick]
       39 CALL                             R3 0 1
       40 JUMPIFLE                         R0 R3 ; [+2]
       42 JUMPBACK                         ; [-29]
       43 JUMPIFNOT                        R1 ; [+7]
       44 GETUPVAL                         R2 2
       45 MOVE                             R4 R1
       46 GETIMPORT                        R5 K14 [Enum.FinishRecordingOperation.Commit]
       48 NAMECALL                         R2 R2 K15 ["FinishRecording"]
       50 CALL                             R2 3 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_preRenderConn"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 ORK                              R2 R1 K1 [0.016]
        5 GETIMPORT                        R3 K3 [game]
        7 LOADK                            R5 K4 ["RunService"]
        8 NAMECALL                         R3 R3 K5 ["GetService"]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R4 R3 K6 ["RenderStepped"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 NAMECALL                         R4 R4 K7 ["Connect"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R0 K0 ["_preRenderConn"]
       22 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_thread"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETIMPORT                        R1 K3 [coroutine.status]
        5 GETTABLEKS                       R2 R0 K0 ["_thread"]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K4 ["suspended"] ; [+6]
       10 GETIMPORT                        R1 K7 [task.cancel]
       12 GETTABLEKS                       R2 R0 K0 ["_thread"]
       14 CALL                             R1 1 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["_thread"]
       18 GETTABLEKS                       R1 R0 K8 ["_preRenderConn"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K8 ["_preRenderConn"]
       23 NAMECALL                         R1 R1 K9 ["Disconnect"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K8 ["_preRenderConn"]
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Debug"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["BENCHMARK_WORK_QUEUE"]
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R3 K3 [script]
       18 GETTABLEKS                       R3 R3 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["PriorityStack"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["ChangeHistoryService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 NEWTABLE                         R4 8 0
       31 SETTABLEKS                       R4 R4 K12 ["__index"]
       33 LOADB                            R5 0
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R4 K14 ["new"]
       40 DUPCLOSURE                       R6 K15 [PROTO_1]
       41 SETTABLEKS                       R6 R4 K16 ["enqueue"]
       43 DUPCLOSURE                       R6 K17 [PROTO_2]
       44 SETTABLEKS                       R6 R4 K18 ["flushNow"]
       46 NEWCLOSURE                       R6 P3
       47 CAPTURE                          VAL R3
       48 CAPTURE                          REF R5
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R6 R4 K19 ["start"]
       53 DUPCLOSURE                       R6 K20 [PROTO_6]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R6 R4 K21 ["enablePreRenderFlush"]
       57 DUPCLOSURE                       R6 K22 [PROTO_7]
       58 SETTABLEKS                       R6 R4 K23 ["stop"]
       60 CLOSEUPVALS                      R5
       61 RETURN                           R4 1
