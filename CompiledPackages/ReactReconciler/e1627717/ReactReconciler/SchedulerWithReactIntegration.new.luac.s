PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 SUB                              R0 R1 R2
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 GETUPVAL                         R1 2
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 3
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 GETUPVAL                         R1 4
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 5
       13 JUMPIFNOTEQ                      R0 R1 ; [+3]
       15 GETUPVAL                         R1 6
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 7
       18 JUMPIFNOTEQ                      R0 R1 ; [+3]
       20 GETUPVAL                         R1 8
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 9
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 GETUPVAL                         R1 10
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 11
       28 LOADB                            R2 0
       29 LOADK                            R3 K0 ["Unknown priority level."]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 12
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 3
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 4
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 GETUPVAL                         R1 5
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 6
       16 JUMPIFNOTEQ                      R0 R1 ; [+3]
       18 GETUPVAL                         R1 7
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 8
       21 JUMPIFNOTEQ                      R0 R1 ; [+3]
       23 GETUPVAL                         R1 9
       24 RETURN                           R1 1
       25 GETUPVAL                         R1 10
       26 LOADB                            R2 0
       27 LOADK                            R3 K0 ["Unknown priority level."]
       28 CALL                             R1 2 0
       29 LOADNIL                          R1
       30 RETURN                           R1 1

PROTO_4:
        0 GETGLOBAL                        R2 K0 ["reactPriorityToSchedulerPriority"]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_5:
        0 GETGLOBAL                        R3 K0 ["reactPriorityToSchedulerPriority"]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 CALL                             R4 3 -1
        9 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+13]
        3 NEWTABLE                         R1 0 1
        5 MOVE                             R2 R0
        6 SETLIST                          R1 R2 1 [1]
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R3 4
       12 CALL                             R1 2 1
       13 SETUPVAL                         R1 1
       14 JUMP                             ; [+8]
       15 GETUPVAL                         R1 0
       16 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       18 MOVE                             R3 R1
       19 MOVE                             R4 R0
       20 GETIMPORT                        R2 K2 [table.insert]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R1 5
       24 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 -1
       11 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 SETUPVAL                         R3 1
        5 MOVE                             R5 R4
        6 LOADB                            R6 1
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 JUMPIFEQKNIL                     R4 ; [+2]
       11 JUMPBACK                         ; [-7]
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 SETUPVAL                         R3 1
        5 MOVE                             R5 R4
        6 LOADB                            R6 1
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 JUMPIFEQKNIL                     R4 ; [+2]
       11 JUMPBACK                         ; [-7]
       12 GETUPVAL                         R5 1
       13 ADDK                             R5 R5 K0 [1]
       14 SETUPVAL                         R5 1
       15 FORGLOOP                         R0 2 ; [-12]
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 SETUPVAL                         R3 1
        5 MOVE                             R5 R4
        6 LOADB                            R6 1
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 JUMPIFEQKNIL                     R4 ; [+2]
       11 JUMPBACK                         ; [-7]
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 SETUPVAL                         R3 1
        5 MOVE                             R5 R4
        6 LOADB                            R6 1
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 JUMPIFEQKNIL                     R4 ; [+2]
       11 JUMPBACK                         ; [-7]
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+142]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+140]
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 0
        7 LOADN                            R0 1
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+71]
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 LOADB                            R2 1
       13 LOADNIL                          R3
       14 GETIMPORT                        R4 K1 [_G]
       16 GETTABLEKS                       R4 R4 K2 ["__YOLO__"]
       18 JUMPIF                           R4 ; [+18]
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R6 5
       22 CALL                             R5 1 0
       23 GETIMPORT                        R5 K4 [xpcall]
       25 GETUPVAL                         R6 6
       26 GETUPVAL                         R7 7
       27 GETUPVAL                         R8 8
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          REF R0
       31 CALL                             R5 4 2
       32 MOVE                             R2 R5
       33 MOVE                             R3 R6
       34 LOADNIL                          R5
       35 SETUPVAL                         R5 1
       36 JUMP                             ; [+19]
       37 LOADB                            R2 1
       38 GETUPVAL                         R4 1
       39 GETUPVAL                         R5 4
       40 GETUPVAL                         R6 5
       41 CALL                             R5 1 0
       42 GETUPVAL                         R5 8
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          REF R0
       46 GETGLOBAL                        R7 K5 ["reactPriorityToSchedulerPriority"]
       48 MOVE                             R8 R5
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 9
       51 MOVE                             R9 R7
       52 MOVE                             R10 R6
       53 CALL                             R8 2 1
       54 LOADNIL                          R5
       55 SETUPVAL                         R5 1
       56 GETUPVAL                         R4 4
       57 MOVE                             R5 R1
       58 CALL                             R4 1 0
       59 LOADB                            R4 0
       60 SETUPVAL                         R4 0
       61 JUMPIF                           R2 ; [+78]
       62 GETUPVAL                         R4 1
       63 JUMPIFEQKNIL                     R4 ; [+8]
       65 GETUPVAL                         R4 10
       66 GETTABLEKS                       R4 R4 K6 ["slice"]
       68 GETUPVAL                         R5 1
       69 ADDK                             R6 R0 K7 [1]
       70 CALL                             R4 2 1
       71 SETUPVAL                         R4 1
       72 GETUPVAL                         R4 11
       73 GETUPVAL                         R5 12
       74 GETUPVAL                         R6 13
       75 CALL                             R4 2 0
       76 GETIMPORT                        R4 K9 [error]
       78 MOVE                             R5 R3
       79 CALL                             R4 1 0
       80 JUMP                             ; [+59]
       81 LOADNIL                          R1
       82 LOADNIL                          R2
       83 GETIMPORT                        R3 K1 [_G]
       85 GETTABLEKS                       R3 R3 K2 ["__YOLO__"]
       87 JUMPIF                           R3 ; [+15]
       88 GETUPVAL                         R3 1
       89 GETIMPORT                        R4 K4 [xpcall]
       91 GETUPVAL                         R5 6
       92 GETUPVAL                         R6 7
       93 GETUPVAL                         R7 8
       94 NEWCLOSURE                       R8 P2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          REF R0
       97 CALL                             R4 4 2
       98 MOVE                             R1 R4
       99 MOVE                             R2 R5
      100 LOADNIL                          R4
      101 SETUPVAL                         R4 1
      102 JUMP                             ; [+16]
      103 LOADB                            R1 1
      104 GETUPVAL                         R3 1
      105 GETUPVAL                         R4 8
      106 NEWCLOSURE                       R5 P3
      107 CAPTURE                          VAL R3
      108 CAPTURE                          REF R0
      109 GETGLOBAL                        R6 K5 ["reactPriorityToSchedulerPriority"]
      111 MOVE                             R7 R4
      112 CALL                             R6 1 1
      113 GETUPVAL                         R7 9
      114 MOVE                             R8 R6
      115 MOVE                             R9 R5
      116 CALL                             R7 2 1
      117 LOADNIL                          R4
      118 SETUPVAL                         R4 1
      119 LOADB                            R3 0
      120 SETUPVAL                         R3 0
      121 JUMPIF                           R1 ; [+18]
      122 GETUPVAL                         R3 1
      123 JUMPIFEQKNIL                     R3 ; [+8]
      125 GETUPVAL                         R3 10
      126 GETTABLEKS                       R3 R3 K6 ["slice"]
      128 GETUPVAL                         R4 1
      129 ADDK                             R5 R0 K7 [1]
      130 CALL                             R3 2 1
      131 SETUPVAL                         R3 1
      132 GETUPVAL                         R3 11
      133 GETUPVAL                         R4 12
      134 GETUPVAL                         R5 13
      135 CALL                             R3 2 0
      136 GETIMPORT                        R3 K9 [error]
      138 MOVE                             R4 R2
      139 CALL                             R3 1 0
      140 LOADB                            R1 1
      141 CLOSEUPVALS                      R0
      142 RETURN                           R1 1
      143 CLOSEUPVALS                      R0
      144 LOADB                            R0 0
      145 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["ReactInternalTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Scheduler"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Shared"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R5 R5 K10 ["ReactFeatureFlags"]
       35 GETTABLEKS                       R6 R5 K11 ["decoupleUpdatePriorityFromScheduler"]
       37 GETIMPORT                        R7 K4 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Shared"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R7 R7 K12 ["invariant"]
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R9 R0 K9 ["Shared"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R8 R8 K13 ["describeError"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R10 K1 [script]
       55 GETTABLEKS                       R10 R10 K2 ["Parent"]
       57 GETTABLEKS                       R10 R10 K14 ["ReactFiberLane"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R9 K15 ["SyncLanePriority"]
       62 GETTABLEKS                       R11 R9 K16 ["getCurrentUpdateLanePriority"]
       64 GETTABLEKS                       R12 R9 K17 ["setCurrentUpdateLanePriority"]
       66 GETTABLEKS                       R13 R4 K18 ["unstable_runWithPriority"]
       68 GETTABLEKS                       R14 R4 K19 ["unstable_scheduleCallback"]
       70 GETTABLEKS                       R15 R4 K20 ["unstable_cancelCallback"]
       72 GETTABLEKS                       R16 R4 K21 ["unstable_shouldYield"]
       74 GETTABLEKS                       R17 R4 K22 ["unstable_requestPaint"]
       76 GETTABLEKS                       R18 R4 K23 ["unstable_now"]
       78 GETTABLEKS                       R19 R4 K24 ["unstable_getCurrentPriorityLevel"]
       80 GETTABLEKS                       R20 R4 K25 ["unstable_ImmediatePriority"]
       82 GETTABLEKS                       R21 R4 K26 ["unstable_UserBlockingPriority"]
       84 GETTABLEKS                       R22 R4 K27 ["unstable_NormalPriority"]
       86 GETTABLEKS                       R23 R4 K28 ["unstable_LowPriority"]
       88 GETTABLEKS                       R24 R4 K29 ["unstable_IdlePriority"]
       90 GETIMPORT                        R25 K4 [require]
       92 GETIMPORT                        R27 K1 [script]
       94 GETTABLEKS                       R27 R27 K2 ["Parent"]
       96 GETTABLEKS                       R26 R27 K30 ["ReactFiberSchedulerPriorities.roblox"]
       98 CALL                             R25 1 1
       99 GETTABLEKS                       R26 R25 K31 ["ImmediatePriority"]
      101 GETTABLEKS                       R27 R25 K32 ["UserBlockingPriority"]
      103 GETTABLEKS                       R28 R25 K33 ["NormalPriority"]
      105 GETTABLEKS                       R29 R25 K34 ["LowPriority"]
      107 GETTABLEKS                       R30 R25 K35 ["IdlePriority"]
      109 GETTABLEKS                       R31 R25 K36 ["NoPriority"]
      111 LOADNIL                          R32
      112 NEWTABLE                         R33 0 0
      114 LOADNIL                          R34
      115 JUMPIFEQKNIL                     R17 ; [+3]
      117 MOVE                             R34 R17
      118 JUMP                             ; [+1]
      119 DUPCLOSURE                       R34 K37 [PROTO_0]
      120 LOADNIL                          R35
      121 LOADNIL                          R36
      122 LOADB                            R37 0
      123 MOVE                             R38 R18
      124 CALL                             R38 0 1
      125 DUPCLOSURE                       R39 K38 [PROTO_1]
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R38
      128 DUPCLOSURE                       R40 K39 [PROTO_2]
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R26
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R27
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R28
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R29
      138 CAPTURE                          VAL R24
      139 CAPTURE                          VAL R30
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R31
      142 DUPCLOSURE                       R41 K40 [PROTO_3]
      143 CAPTURE                          VAL R26
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R27
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R28
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R29
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R30
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R7
      154 SETGLOBAL                        R41 K41 ["reactPriorityToSchedulerPriority"]
      156 DUPCLOSURE                       R41 K42 [PROTO_4]
      157 CAPTURE                          VAL R13
      158 DUPCLOSURE                       R42 K43 [PROTO_5]
      159 CAPTURE                          VAL R14
      160 NEWCLOSURE                       R43 P6
      161 CAPTURE                          REF R35
      162 CAPTURE                          REF R36
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R20
      165 CAPTURE                          REF R32
      166 CAPTURE                          VAL R33
      167 DUPCLOSURE                       R44 K44 [PROTO_7]
      168 CAPTURE                          VAL R33
      169 CAPTURE                          VAL R15
      170 NEWCLOSURE                       R45 P8
      171 CAPTURE                          REF R36
      172 CAPTURE                          VAL R15
      173 CAPTURE                          REF R32
      174 NEWCLOSURE                       R32 P9
      175 CAPTURE                          REF R37
      176 CAPTURE                          REF R35
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R41
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R45
      189 DUPTABLE                         R46 K54 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority", "getCurrentPriorityLevel", "flushSyncCallbackQueue", "runWithPriority", "scheduleCallback", "scheduleSyncCallback", "cancelCallback", "now", "requestPaint", "shouldYield"}]
      190 SETTABLEKS                       R26 R46 K31 ["ImmediatePriority"]
      192 SETTABLEKS                       R27 R46 K32 ["UserBlockingPriority"]
      194 SETTABLEKS                       R28 R46 K33 ["NormalPriority"]
      196 SETTABLEKS                       R29 R46 K34 ["LowPriority"]
      198 SETTABLEKS                       R30 R46 K35 ["IdlePriority"]
      200 SETTABLEKS                       R31 R46 K36 ["NoPriority"]
      202 SETTABLEKS                       R40 R46 K45 ["getCurrentPriorityLevel"]
      204 SETTABLEKS                       R45 R46 K46 ["flushSyncCallbackQueue"]
      206 SETTABLEKS                       R41 R46 K47 ["runWithPriority"]
      208 SETTABLEKS                       R42 R46 K48 ["scheduleCallback"]
      210 SETTABLEKS                       R43 R46 K49 ["scheduleSyncCallback"]
      212 SETTABLEKS                       R44 R46 K50 ["cancelCallback"]
      214 SETTABLEKS                       R39 R46 K51 ["now"]
      216 SETTABLEKS                       R34 R46 K52 ["requestPaint"]
      218 SETTABLEKS                       R16 R46 K53 ["shouldYield"]
      220 CLOSEUPVALS                      R32
      221 RETURN                           R46 1
