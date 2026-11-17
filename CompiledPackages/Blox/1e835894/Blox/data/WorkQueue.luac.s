PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 DUPTABLE                         R5 K8 [{["name"], ["frameDuration"], ["consume"], ["_stack"], ["_thread"] = , ["perf"]}]
        5 SETTABLEKS                       R0 R5 K1 ["name"]
        7 SETTABLEKS                       R1 R5 K2 ["frameDuration"]
        9 SETTABLEKS                       R2 R5 K3 ["consume"]
       11 SETTABLEKS                       R3 R5 K4 ["_stack"]
       13 GETUPVAL                         R7 1
       14 JUMPIFNOT                        R7 ; [+18]
       15 DUPTABLE                         R6 K15 [{["totalProcessedTasks"] = 0, ["totalFrameCount"] = 0, ["activeFrameCount"] = 0, ["pausedFrameCount"] = 0, ["durationCohorts"]}]
       16 NEWTABLE                         R7 0 10
       18 LOADN                            R8 0
       19 LOADN                            R9 0
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 LOADN                            R14 0
       25 LOADN                            R15 0
       26 LOADN                            R16 0
       27 LOADN                            R17 0
       28 SETLIST                          R7 R8 10 [1]
       30 SETTABLEKS                       R7 R6 K14 ["durationCohorts"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K7 ["perf"]
       36 GETUPVAL                         R6 2
       37 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       39 GETIMPORT                        R4 K17 [setmetatable]
       41 CALL                             R4 2 1
       42 RETURN                           R4 1

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
       15 JUMPIFNOT                        R3 ; [+34]
       16 JUMPIF                           R2 ; [+21]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["TryBeginRecording"]
       20 GETUPVAL                         R6 1
       21 LOADK                            R7 K6 ["blox work queue"]
       22 FASTPCALL                        pcall 3 ; [+2]
       23 GETIMPORT                        R4 K8 [pcall]
       25 CALL                             R4 3 2
       26 JUMPIF                           R4 ; [+9]
       27 GETUPVAL                         R6 2
       28 JUMPIF                           R6 ; [+7]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K9 ["warn"]
       32 LOADK                            R7 K10 ["Could not start ChangeHistory recording for work queue. Undo/Redo may not function correctly in the Studio plugin."]
       33 CALL                             R6 1 0
       34 LOADB                            R6 1
       35 SETUPVAL                         R6 2
       36 JUMPIFNOT                        R4 ; [+1]
       37 MOVE                             R2 R5
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K11 ["consume"]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 ADDK                             R0 R0 K12 [1]
       44 GETIMPORT                        R4 K1 [tick]
       46 CALL                             R4 0 1
       47 JUMPIFLE                         R1 R4 ; [+2]
       49 JUMPBACK                         ; [-41]
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R3 R3 K13 ["PROFILE_WORK_QUEUE"]
       53 JUMPIFNOT                        R3 ; [+28]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K3 ["_stack"]
       57 GETTABLEKS                       R3 R3 K14 ["size"]
       59 LOADN                            R4 0
       60 JUMPIFNOTLT                      R4 R3 ; [+21]
       62 GETIMPORT                        R3 K16 [print]
       64 GETIMPORT                        R4 K19 [string.format]
       66 LOADK                            R5 K20 ["[WorkQueue:%s] CROSS-FRAME processed=%d remaining=%d frameDuration=%.1fms"]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K21 ["name"]
       70 MOVE                             R7 R0
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K3 ["_stack"]
       74 GETTABLEKS                       R8 R8 K14 ["size"]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K2 ["frameDuration"]
       79 MULK                             R9 R10 K22 [1000]
       80 CALL                             R4 5 -1
       81 CALL                             R3 -1 0
       82 GETUPVAL                         R3 4
       83 JUMPIFNOT                        R3 ; [+63]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K23 ["perf"]
       87 GETTABLEKS                       R4 R3 K24 ["totalProcessedTasks"]
       89 ADD                              R4 R4 R0
       90 SETTABLEKS                       R4 R3 K24 ["totalProcessedTasks"]
       92 GETTABLEKS                       R4 R3 K25 ["totalFrameCount"]
       94 ADDK                             R4 R4 K12 [1]
       95 SETTABLEKS                       R4 R3 K25 ["totalFrameCount"]
       97 LOADN                            R4 0
       98 JUMPIFNOTLT                      R4 R0 ; [+35]
      100 GETTABLEKS                       R4 R3 K26 ["activeFrameCount"]
      102 ADDK                             R4 R4 K12 [1]
      103 SETTABLEKS                       R4 R3 K26 ["activeFrameCount"]
      105 GETIMPORT                        R5 K1 [tick]
      107 CALL                             R5 0 1
      108 SUB                              R4 R1 R5
      109 LOADN                            R5 0
      110 JUMPIFNOTLE                      R5 R4 ; [+23]
      112 GETUPVAL                         R8 0
      113 GETTABLEKS                       R8 R8 K2 ["frameDuration"]
      115 DIV                              R7 R4 R8
      116 SUBRK                            R6 K12 [1] R7
      117 LOADN                            R7 0
      118 LOADN                            R8 1
      119 FASTCALL                         MATH_CLAMP ; [+2]
      120 GETIMPORT                        R5 K29 [math.clamp]
      122 CALL                             R5 3 1
      123 GETTABLEKS                       R6 R3 K30 ["durationCohorts"]
      125 MULK                             R9 R5 K31 [10]
      126 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      127 GETIMPORT                        R8 K33 [math.floor]
      129 CALL                             R8 1 1
      130 ADDK                             R7 R8 K12 [1]
      131 GETTABLE                         R8 R6 R7
      132 ADDK                             R8 R8 K12 [1]
      133 SETTABLE                         R8 R6 R7
      134 GETUPVAL                         R4 0
      135 GETTABLEKS                       R4 R4 K3 ["_stack"]
      137 GETTABLEKS                       R4 R4 K14 ["size"]
      139 LOADN                            R5 0
      140 JUMPIFNOTLT                      R5 R4 ; [+6]
      142 GETTABLEKS                       R4 R3 K34 ["pausedFrameCount"]
      144 ADDK                             R4 R4 K12 [1]
      145 SETTABLEKS                       R4 R3 K34 ["pausedFrameCount"]
      147 JUMPIFNOT                        R2 ; [+7]
      148 GETUPVAL                         R3 1
      149 MOVE                             R5 R2
      150 GETIMPORT                        R6 K38 [Enum.FinishRecordingOperation.Commit]
      152 NAMECALL                         R3 R3 K39 ["FinishRecording"]
      154 CALL                             R3 3 0
      155 GETIMPORT                        R3 K42 [task.wait]
      157 CALL                             R3 0 0
      158 JUMPBACK                         ; [-159]
      159 RETURN                           R0 0

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
       20 JUMPIFNOT                        R2 ; [+23]
       21 JUMPIF                           R1 ; [+11]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K6 ["TryBeginRecording"]
       25 GETUPVAL                         R5 2
       26 LOADK                            R6 K7 ["blox pre-render flush"]
       27 FASTPCALL                        pcall 3 ; [+2]
       28 GETIMPORT                        R3 K9 [pcall]
       30 CALL                             R3 3 2
       31 JUMPIFNOT                        R3 ; [+1]
       32 MOVE                             R1 R4
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K10 ["consume"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 GETIMPORT                        R3 K4 [tick]
       40 CALL                             R3 0 1
       41 JUMPIFLE                         R0 R3 ; [+2]
       43 JUMPBACK                         ; [-30]
       44 JUMPIFNOT                        R1 ; [+7]
       45 GETUPVAL                         R2 2
       46 MOVE                             R4 R1
       47 GETIMPORT                        R5 K14 [Enum.FinishRecordingOperation.Commit]
       49 NAMECALL                         R2 R2 K15 ["FinishRecording"]
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

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
