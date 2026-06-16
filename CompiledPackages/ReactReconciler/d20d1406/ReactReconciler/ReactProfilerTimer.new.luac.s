PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 2
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 2
        4 CALL                             R1 0 1
        5 SETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R0 K0 ["actualStartTime"]
        8 JUMPIFEQKNIL                     R1 ; [+10]
       10 GETTABLEKS                       R1 R0 K0 ["actualStartTime"]
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R1 R2 ; [+5]
       15 GETUPVAL                         R1 2
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K0 ["actualStartTime"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADN                            R1 255
        4 SETUPVAL                         R1 1
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 0
        5 JUMPIFNOTLE                      R3 R2 ; [+15]
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 1
       10 SUB                              R2 R3 R4
       11 GETTABLEKS                       R3 R0 K0 ["actualDuration"]
       13 ADD                              R3 R3 R2
       14 SETTABLEKS                       R3 R0 K0 ["actualDuration"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 SETTABLEKS                       R2 R0 K1 ["selfBaseDuration"]
       19 LOADN                            R3 255
       20 SETUPVAL                         R3 1
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 LOADN                            R2 0
        7 JUMPIFNOTLE                      R2 R1 ; [+27]
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 SUB                              R1 R2 R3
       13 LOADN                            R2 255
       14 SETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R0 K0 ["return_"]
       17 JUMPIFEQKNIL                     R2 ; [+17]
       19 GETTABLEKS                       R3 R2 K1 ["tag"]
       21 GETUPVAL                         R4 4
       22 JUMPIFNOTEQ                      R3 R4 ; [+9]
       24 GETTABLEKS                       R3 R2 K2 ["stateNode"]
       26 GETTABLEKS                       R4 R3 K3 ["effectDuration"]
       28 ADD                              R4 R4 R1
       29 SETTABLEKS                       R4 R3 K3 ["effectDuration"]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R2 K0 ["return_"]
       34 JUMPBACK                         ; [-18]
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 LOADN                            R2 0
        7 JUMPIFNOTLE                      R2 R1 ; [+29]
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 SUB                              R1 R2 R3
       13 LOADN                            R2 255
       14 SETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R0 K0 ["return_"]
       17 JUMPIFEQKNIL                     R2 ; [+19]
       19 GETTABLEKS                       R3 R2 K1 ["tag"]
       21 GETUPVAL                         R4 4
       22 JUMPIFNOTEQ                      R3 R4 ; [+11]
       24 GETTABLEKS                       R3 R2 K2 ["stateNode"]
       26 JUMPIFEQKNIL                     R3 ; [+10]
       28 GETTABLEKS                       R4 R3 K3 ["passiveEffectDuration"]
       30 ADD                              R4 R4 R1
       31 SETTABLEKS                       R4 R3 K3 ["passiveEffectDuration"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R2 K0 ["return_"]
       36 JUMPBACK                         ; [-20]
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 3
        6 CALL                             R0 0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 3
        6 CALL                             R0 0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["child"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R2 R0 K1 ["actualDuration"]
        5 GETTABLEKS                       R3 R1 K1 ["actualDuration"]
        7 ADD                              R2 R2 R3
        8 SETTABLEKS                       R2 R0 K1 ["actualDuration"]
       10 GETTABLEKS                       R1 R1 K2 ["sibling"]
       12 JUMPBACK                         ; [-11]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["ReactInternalTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Shared"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K7 ["ReactFeatureFlags"]
       23 GETTABLEKS                       R3 R2 K8 ["enableProfilerTimer"]
       25 GETTABLEKS                       R4 R2 K9 ["enableProfilerCommitHooks"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R6 R6 K2 ["Parent"]
       33 GETTABLEKS                       R6 R6 K10 ["ReactWorkTags"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K11 ["Profiler"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Scheduler"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R7 K13 ["unstable_now"]
       45 LOADN                            R9 0
       46 LOADN                            R10 255
       47 LOADN                            R11 255
       48 LOADN                            R12 255
       49 NEWCLOSURE                       R13 P0
       50 CAPTURE                          REF R9
       51 SETGLOBAL                        R13 K14 ["getCommitTime"]
       53 NEWCLOSURE                       R13 P1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          REF R9
       56 CAPTURE                          VAL R8
       57 SETGLOBAL                        R13 K15 ["recordCommitTime"]
       59 NEWCLOSURE                       R13 P2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          REF R11
       62 CAPTURE                          VAL R8
       63 SETGLOBAL                        R13 K16 ["startProfilerTimer"]
       65 NEWCLOSURE                       R13 P3
       66 CAPTURE                          VAL R3
       67 CAPTURE                          REF R11
       68 SETGLOBAL                        R13 K17 ["stopProfilerTimerIfRunning"]
       70 NEWCLOSURE                       R13 P4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R11
       73 CAPTURE                          VAL R8
       74 SETGLOBAL                        R13 K18 ["stopProfilerTimerIfRunningAndRecordDelta"]
       76 NEWCLOSURE                       R13 P5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          REF R10
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 SETGLOBAL                        R13 K19 ["recordLayoutEffectDuration"]
       84 NEWCLOSURE                       R13 P6
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          REF R12
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 SETGLOBAL                        R13 K20 ["recordPassiveEffectDuration"]
       92 NEWCLOSURE                       R13 P7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          REF R10
       96 CAPTURE                          VAL R8
       97 SETGLOBAL                        R13 K21 ["startLayoutEffectTimer"]
       99 NEWCLOSURE                       R13 P8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          REF R12
      103 CAPTURE                          VAL R8
      104 SETGLOBAL                        R13 K22 ["startPassiveEffectTimer"]
      106 DUPCLOSURE                       R13 K23 [PROTO_9]
      107 SETGLOBAL                        R13 K24 ["transferActualDuration"]
      109 DUPTABLE                         R13 K25 [{"getCommitTime", "recordCommitTime", "recordLayoutEffectDuration", "recordPassiveEffectDuration", "startLayoutEffectTimer", "startPassiveEffectTimer", "startProfilerTimer", "stopProfilerTimerIfRunning", "stopProfilerTimerIfRunningAndRecordDelta", "transferActualDuration"}]
      110 GETGLOBAL                        R14 K14 ["getCommitTime"]
      112 SETTABLEKS                       R14 R13 K14 ["getCommitTime"]
      114 GETGLOBAL                        R14 K15 ["recordCommitTime"]
      116 SETTABLEKS                       R14 R13 K15 ["recordCommitTime"]
      118 GETGLOBAL                        R14 K19 ["recordLayoutEffectDuration"]
      120 SETTABLEKS                       R14 R13 K19 ["recordLayoutEffectDuration"]
      122 GETGLOBAL                        R14 K20 ["recordPassiveEffectDuration"]
      124 SETTABLEKS                       R14 R13 K20 ["recordPassiveEffectDuration"]
      126 GETGLOBAL                        R14 K21 ["startLayoutEffectTimer"]
      128 SETTABLEKS                       R14 R13 K21 ["startLayoutEffectTimer"]
      130 GETGLOBAL                        R14 K22 ["startPassiveEffectTimer"]
      132 SETTABLEKS                       R14 R13 K22 ["startPassiveEffectTimer"]
      134 GETGLOBAL                        R14 K16 ["startProfilerTimer"]
      136 SETTABLEKS                       R14 R13 K16 ["startProfilerTimer"]
      138 GETGLOBAL                        R14 K17 ["stopProfilerTimerIfRunning"]
      140 SETTABLEKS                       R14 R13 K17 ["stopProfilerTimerIfRunning"]
      142 GETGLOBAL                        R14 K18 ["stopProfilerTimerIfRunningAndRecordDelta"]
      144 SETTABLEKS                       R14 R13 K18 ["stopProfilerTimerIfRunningAndRecordDelta"]
      146 GETGLOBAL                        R14 K24 ["transferActualDuration"]
      148 SETTABLEKS                       R14 R13 K24 ["transferActualDuration"]
      150 CLOSEUPVALS                      R9
      151 RETURN                           R13 1
