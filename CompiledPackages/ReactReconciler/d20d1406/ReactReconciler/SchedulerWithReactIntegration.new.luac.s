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
        1 JUMPIF                           R0 ; [+140]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+138]
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 0
        7 LOADN                            R0 1
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+70]
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 LOADB                            R2 1
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K0 ["__YOLO__"]
       17 JUMPIF                           R4 ; [+18]
       18 GETUPVAL                         R4 1
       19 GETUPVAL                         R5 5
       20 GETUPVAL                         R6 6
       21 CALL                             R5 1 0
       22 GETIMPORT                        R5 K2 [xpcall]
       24 GETUPVAL                         R6 7
       25 GETUPVAL                         R7 8
       26 GETUPVAL                         R8 9
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          REF R0
       30 CALL                             R5 4 2
       31 MOVE                             R2 R5
       32 MOVE                             R3 R6
       33 LOADNIL                          R5
       34 SETUPVAL                         R5 1
       35 JUMP                             ; [+19]
       36 LOADB                            R2 1
       37 GETUPVAL                         R4 1
       38 GETUPVAL                         R5 5
       39 GETUPVAL                         R6 6
       40 CALL                             R5 1 0
       41 GETUPVAL                         R5 9
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          REF R0
       45 GETGLOBAL                        R7 K3 ["reactPriorityToSchedulerPriority"]
       47 MOVE                             R8 R5
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 10
       50 MOVE                             R9 R7
       51 MOVE                             R10 R6
       52 CALL                             R8 2 1
       53 LOADNIL                          R5
       54 SETUPVAL                         R5 1
       55 GETUPVAL                         R4 5
       56 MOVE                             R5 R1
       57 CALL                             R4 1 0
       58 LOADB                            R4 0
       59 SETUPVAL                         R4 0
       60 JUMPIF                           R2 ; [+77]
       61 GETUPVAL                         R4 1
       62 JUMPIFEQKNIL                     R4 ; [+8]
       64 GETUPVAL                         R4 11
       65 GETTABLEKS                       R4 R4 K4 ["slice"]
       67 GETUPVAL                         R5 1
       68 ADDK                             R6 R0 K5 [1]
       69 CALL                             R4 2 1
       70 SETUPVAL                         R4 1
       71 GETUPVAL                         R4 12
       72 GETUPVAL                         R5 13
       73 GETUPVAL                         R6 14
       74 CALL                             R4 2 0
       75 GETIMPORT                        R4 K7 [error]
       77 MOVE                             R5 R3
       78 CALL                             R4 1 0
       79 JUMP                             ; [+58]
       80 LOADNIL                          R1
       81 LOADNIL                          R2
       82 GETUPVAL                         R3 4
       83 GETTABLEKS                       R3 R3 K0 ["__YOLO__"]
       85 JUMPIF                           R3 ; [+15]
       86 GETUPVAL                         R3 1
       87 GETIMPORT                        R4 K2 [xpcall]
       89 GETUPVAL                         R5 7
       90 GETUPVAL                         R6 8
       91 GETUPVAL                         R7 9
       92 NEWCLOSURE                       R8 P2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          REF R0
       95 CALL                             R4 4 2
       96 MOVE                             R1 R4
       97 MOVE                             R2 R5
       98 LOADNIL                          R4
       99 SETUPVAL                         R4 1
      100 JUMP                             ; [+16]
      101 LOADB                            R1 1
      102 GETUPVAL                         R3 1
      103 GETUPVAL                         R4 9
      104 NEWCLOSURE                       R5 P3
      105 CAPTURE                          VAL R3
      106 CAPTURE                          REF R0
      107 GETGLOBAL                        R6 K3 ["reactPriorityToSchedulerPriority"]
      109 MOVE                             R7 R4
      110 CALL                             R6 1 1
      111 GETUPVAL                         R7 10
      112 MOVE                             R8 R6
      113 MOVE                             R9 R5
      114 CALL                             R7 2 1
      115 LOADNIL                          R4
      116 SETUPVAL                         R4 1
      117 LOADB                            R3 0
      118 SETUPVAL                         R3 0
      119 JUMPIF                           R1 ; [+18]
      120 GETUPVAL                         R3 1
      121 JUMPIFEQKNIL                     R3 ; [+8]
      123 GETUPVAL                         R3 11
      124 GETTABLEKS                       R3 R3 K4 ["slice"]
      126 GETUPVAL                         R4 1
      127 ADDK                             R5 R0 K5 [1]
      128 CALL                             R3 2 1
      129 SETUPVAL                         R3 1
      130 GETUPVAL                         R3 12
      131 GETUPVAL                         R4 13
      132 GETUPVAL                         R5 14
      133 CALL                             R3 2 0
      134 GETIMPORT                        R3 K7 [error]
      136 MOVE                             R4 R2
      137 CALL                             R3 1 0
      138 LOADB                            R1 1
      139 CLOSEUPVALS                      R0
      140 RETURN                           R1 1
      141 CLOSEUPVALS                      R0
      142 LOADB                            R0 0
      143 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K2 ["Parent"]
       25 GETTABLEKS                       R5 R5 K8 ["ReactInternalTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Scheduler"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Shared"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R6 R6 K11 ["ReactFeatureFlags"]
       40 GETTABLEKS                       R7 R6 K12 ["decoupleUpdatePriorityFromScheduler"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K10 ["Shared"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R8 R8 K13 ["invariant"]
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K10 ["Shared"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R9 R9 K14 ["describeError"]
       56 GETIMPORT                        R10 K4 [require]
       58 GETIMPORT                        R11 K1 [script]
       60 GETTABLEKS                       R11 R11 K2 ["Parent"]
       62 GETTABLEKS                       R11 R11 K15 ["ReactFiberLane"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K16 ["SyncLanePriority"]
       67 GETTABLEKS                       R12 R10 K17 ["getCurrentUpdateLanePriority"]
       69 GETTABLEKS                       R13 R10 K18 ["setCurrentUpdateLanePriority"]
       71 GETTABLEKS                       R14 R5 K19 ["unstable_runWithPriority"]
       73 GETTABLEKS                       R15 R5 K20 ["unstable_scheduleCallback"]
       75 GETTABLEKS                       R16 R5 K21 ["unstable_cancelCallback"]
       77 GETTABLEKS                       R17 R5 K22 ["unstable_shouldYield"]
       79 GETTABLEKS                       R18 R5 K23 ["unstable_requestPaint"]
       81 GETTABLEKS                       R19 R5 K24 ["unstable_now"]
       83 GETTABLEKS                       R20 R5 K25 ["unstable_getCurrentPriorityLevel"]
       85 GETTABLEKS                       R21 R5 K26 ["unstable_ImmediatePriority"]
       87 GETTABLEKS                       R22 R5 K27 ["unstable_UserBlockingPriority"]
       89 GETTABLEKS                       R23 R5 K28 ["unstable_NormalPriority"]
       91 GETTABLEKS                       R24 R5 K29 ["unstable_LowPriority"]
       93 GETTABLEKS                       R25 R5 K30 ["unstable_IdlePriority"]
       95 GETIMPORT                        R26 K4 [require]
       97 GETIMPORT                        R28 K1 [script]
       99 GETTABLEKS                       R28 R28 K2 ["Parent"]
      101 GETTABLEKS                       R27 R28 K31 ["ReactFiberSchedulerPriorities.roblox"]
      103 CALL                             R26 1 1
      104 GETTABLEKS                       R27 R26 K32 ["ImmediatePriority"]
      106 GETTABLEKS                       R28 R26 K33 ["UserBlockingPriority"]
      108 GETTABLEKS                       R29 R26 K34 ["NormalPriority"]
      110 GETTABLEKS                       R30 R26 K35 ["LowPriority"]
      112 GETTABLEKS                       R31 R26 K36 ["IdlePriority"]
      114 GETTABLEKS                       R32 R26 K37 ["NoPriority"]
      116 LOADNIL                          R33
      117 NEWTABLE                         R34 0 0
      119 LOADNIL                          R35
      120 JUMPIFEQKNIL                     R18 ; [+3]
      122 MOVE                             R35 R18
      123 JUMP                             ; [+1]
      124 DUPCLOSURE                       R35 K38 [PROTO_0]
      125 LOADNIL                          R36
      126 LOADNIL                          R37
      127 LOADB                            R38 0
      128 MOVE                             R39 R19
      129 CALL                             R39 0 1
      130 DUPCLOSURE                       R40 K39 [PROTO_1]
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R39
      133 DUPCLOSURE                       R41 K40 [PROTO_2]
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R27
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R28
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R29
      141 CAPTURE                          VAL R24
      142 CAPTURE                          VAL R30
      143 CAPTURE                          VAL R25
      144 CAPTURE                          VAL R31
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R32
      147 DUPCLOSURE                       R42 K41 [PROTO_3]
      148 CAPTURE                          VAL R27
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R28
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R29
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R30
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R31
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R8
      159 SETGLOBAL                        R42 K42 ["reactPriorityToSchedulerPriority"]
      161 DUPCLOSURE                       R42 K43 [PROTO_4]
      162 CAPTURE                          VAL R14
      163 DUPCLOSURE                       R43 K44 [PROTO_5]
      164 CAPTURE                          VAL R15
      165 NEWCLOSURE                       R44 P6
      166 CAPTURE                          REF R36
      167 CAPTURE                          REF R37
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R21
      170 CAPTURE                          REF R33
      171 CAPTURE                          VAL R34
      172 DUPCLOSURE                       R45 K45 [PROTO_7]
      173 CAPTURE                          VAL R34
      174 CAPTURE                          VAL R16
      175 NEWCLOSURE                       R46 P8
      176 CAPTURE                          REF R37
      177 CAPTURE                          VAL R16
      178 CAPTURE                          REF R33
      179 NEWCLOSURE                       R33 P9
      180 CAPTURE                          REF R38
      181 CAPTURE                          REF R36
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R42
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R46
      195 DUPTABLE                         R47 K55 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority", "getCurrentPriorityLevel", "flushSyncCallbackQueue", "runWithPriority", "scheduleCallback", "scheduleSyncCallback", "cancelCallback", "now", "requestPaint", "shouldYield"}]
      196 SETTABLEKS                       R27 R47 K32 ["ImmediatePriority"]
      198 SETTABLEKS                       R28 R47 K33 ["UserBlockingPriority"]
      200 SETTABLEKS                       R29 R47 K34 ["NormalPriority"]
      202 SETTABLEKS                       R30 R47 K35 ["LowPriority"]
      204 SETTABLEKS                       R31 R47 K36 ["IdlePriority"]
      206 SETTABLEKS                       R32 R47 K37 ["NoPriority"]
      208 SETTABLEKS                       R41 R47 K46 ["getCurrentPriorityLevel"]
      210 SETTABLEKS                       R46 R47 K47 ["flushSyncCallbackQueue"]
      212 SETTABLEKS                       R42 R47 K48 ["runWithPriority"]
      214 SETTABLEKS                       R43 R47 K49 ["scheduleCallback"]
      216 SETTABLEKS                       R44 R47 K50 ["scheduleSyncCallback"]
      218 SETTABLEKS                       R45 R47 K51 ["cancelCallback"]
      220 SETTABLEKS                       R40 R47 K52 ["now"]
      222 SETTABLEKS                       R35 R47 K53 ["requestPaint"]
      224 SETTABLEKS                       R17 R47 K54 ["shouldYield"]
      226 CLOSEUPVALS                      R33
      227 RETURN                           R47 1
