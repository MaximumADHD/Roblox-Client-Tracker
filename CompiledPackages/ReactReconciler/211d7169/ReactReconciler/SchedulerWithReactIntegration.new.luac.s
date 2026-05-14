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
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 SETUPVAL                         R3 1
        6 MOVE                             R5 R4
        7 LOADB                            R6 1
        8 CALL                             R5 1 1
        9 MOVE                             R4 R5
       10 JUMPIFEQKNIL                     R4 ; [+2]
       12 JUMPBACK                         ; [-7]
       13 FORGLOOP                         R0 2 [inext] ; [-9]
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLE                      R0 R1 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R0 R1 R2
        8 MOVE                             R1 R0
        9 LOADB                            R2 1
       10 CALL                             R1 1 1
       11 MOVE                             R0 R1
       12 JUMPIFEQKNIL                     R0 ; [+2]
       14 JUMPBACK                         ; [-7]
       15 GETUPVAL                         R1 0
       16 ADDK                             R1 R1 K0 [1]
       17 SETUPVAL                         R1 0
       18 JUMPBACK                         ; [-19]
       19 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 SETUPVAL                         R3 1
        6 MOVE                             R5 R4
        7 LOADB                            R6 1
        8 CALL                             R5 1 1
        9 MOVE                             R4 R5
       10 JUMPIFEQKNIL                     R4 ; [+2]
       12 JUMPBACK                         ; [-7]
       13 FORGLOOP                         R0 2 [inext] ; [-9]
       15 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 SETUPVAL                         R3 1
        6 MOVE                             R5 R4
        7 LOADB                            R6 1
        8 CALL                             R5 1 1
        9 MOVE                             R4 R5
       10 JUMPIFEQKNIL                     R4 ; [+2]
       12 JUMPBACK                         ; [-7]
       13 FORGLOOP                         R0 2 [inext] ; [-9]
       15 RETURN                           R0 0

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
       14 GETIMPORT                        R4 K1 [_G]
       16 GETTABLEKS                       R4 R4 K2 ["__YOLO__"]
       18 JUMPIF                           R4 ; [+17]
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R6 5
       22 CALL                             R5 1 0
       23 GETIMPORT                        R5 K4 [pcall]
       25 GETUPVAL                         R6 6
       26 GETUPVAL                         R7 7
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          REF R0
       30 CALL                             R5 3 2
       31 MOVE                             R2 R5
       32 MOVE                             R3 R6
       33 LOADNIL                          R5
       34 SETUPVAL                         R5 1
       35 JUMP                             ; [+19]
       36 LOADB                            R2 1
       37 GETUPVAL                         R4 1
       38 GETUPVAL                         R5 4
       39 GETUPVAL                         R6 5
       40 CALL                             R5 1 0
       41 GETUPVAL                         R5 7
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          REF R0
       44 CAPTURE                          VAL R4
       45 GETGLOBAL                        R7 K5 ["reactPriorityToSchedulerPriority"]
       47 MOVE                             R8 R5
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 8
       50 MOVE                             R9 R7
       51 MOVE                             R10 R6
       52 CALL                             R8 2 1
       53 LOADNIL                          R5
       54 SETUPVAL                         R5 1
       55 GETUPVAL                         R4 4
       56 MOVE                             R5 R1
       57 CALL                             R4 1 0
       58 LOADB                            R4 0
       59 SETUPVAL                         R4 0
       60 JUMPIF                           R2 ; [+77]
       61 GETUPVAL                         R4 1
       62 JUMPIFEQKNIL                     R4 ; [+8]
       64 GETUPVAL                         R4 9
       65 GETTABLEKS                       R4 R4 K6 ["slice"]
       67 GETUPVAL                         R5 1
       68 ADDK                             R6 R0 K7 [1]
       69 CALL                             R4 2 1
       70 SETUPVAL                         R4 1
       71 GETUPVAL                         R4 10
       72 GETUPVAL                         R5 11
       73 GETUPVAL                         R6 12
       74 CALL                             R4 2 0
       75 GETIMPORT                        R4 K9 [error]
       77 MOVE                             R5 R3
       78 CALL                             R4 1 0
       79 JUMP                             ; [+58]
       80 LOADNIL                          R1
       81 LOADNIL                          R2
       82 GETIMPORT                        R3 K1 [_G]
       84 GETTABLEKS                       R3 R3 K2 ["__YOLO__"]
       86 JUMPIF                           R3 ; [+14]
       87 GETUPVAL                         R3 1
       88 GETIMPORT                        R4 K4 [pcall]
       90 GETUPVAL                         R5 6
       91 GETUPVAL                         R6 7
       92 NEWCLOSURE                       R7 P2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          REF R0
       95 CALL                             R4 3 2
       96 MOVE                             R1 R4
       97 MOVE                             R2 R5
       98 LOADNIL                          R4
       99 SETUPVAL                         R4 1
      100 JUMP                             ; [+16]
      101 LOADB                            R1 1
      102 GETUPVAL                         R3 1
      103 GETUPVAL                         R4 7
      104 NEWCLOSURE                       R5 P3
      105 CAPTURE                          VAL R3
      106 CAPTURE                          REF R0
      107 GETGLOBAL                        R6 K5 ["reactPriorityToSchedulerPriority"]
      109 MOVE                             R7 R4
      110 CALL                             R6 1 1
      111 GETUPVAL                         R7 8
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
      123 GETUPVAL                         R3 9
      124 GETTABLEKS                       R3 R3 K6 ["slice"]
      126 GETUPVAL                         R4 1
      127 ADDK                             R5 R0 K7 [1]
      128 CALL                             R3 2 1
      129 SETUPVAL                         R3 1
      130 GETUPVAL                         R3 10
      131 GETUPVAL                         R4 11
      132 GETUPVAL                         R5 12
      133 CALL                             R3 2 0
      134 GETIMPORT                        R3 K9 [error]
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
       46 GETIMPORT                        R9 K1 [script]
       48 GETTABLEKS                       R9 R9 K2 ["Parent"]
       50 GETTABLEKS                       R9 R9 K13 ["ReactFiberLane"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K14 ["SyncLanePriority"]
       55 GETTABLEKS                       R10 R8 K15 ["getCurrentUpdateLanePriority"]
       57 GETTABLEKS                       R11 R8 K16 ["setCurrentUpdateLanePriority"]
       59 GETTABLEKS                       R12 R4 K17 ["unstable_runWithPriority"]
       61 GETTABLEKS                       R13 R4 K18 ["unstable_scheduleCallback"]
       63 GETTABLEKS                       R14 R4 K19 ["unstable_cancelCallback"]
       65 GETTABLEKS                       R15 R4 K20 ["unstable_shouldYield"]
       67 GETTABLEKS                       R16 R4 K21 ["unstable_requestPaint"]
       69 GETTABLEKS                       R17 R4 K22 ["unstable_now"]
       71 GETTABLEKS                       R18 R4 K23 ["unstable_getCurrentPriorityLevel"]
       73 GETTABLEKS                       R19 R4 K24 ["unstable_ImmediatePriority"]
       75 GETTABLEKS                       R20 R4 K25 ["unstable_UserBlockingPriority"]
       77 GETTABLEKS                       R21 R4 K26 ["unstable_NormalPriority"]
       79 GETTABLEKS                       R22 R4 K27 ["unstable_LowPriority"]
       81 GETTABLEKS                       R23 R4 K28 ["unstable_IdlePriority"]
       83 GETIMPORT                        R24 K4 [require]
       85 GETIMPORT                        R26 K1 [script]
       87 GETTABLEKS                       R26 R26 K2 ["Parent"]
       89 GETTABLEKS                       R25 R26 K29 ["ReactFiberSchedulerPriorities.roblox"]
       91 CALL                             R24 1 1
       92 GETTABLEKS                       R25 R24 K30 ["ImmediatePriority"]
       94 GETTABLEKS                       R26 R24 K31 ["UserBlockingPriority"]
       96 GETTABLEKS                       R27 R24 K32 ["NormalPriority"]
       98 GETTABLEKS                       R28 R24 K33 ["LowPriority"]
      100 GETTABLEKS                       R29 R24 K34 ["IdlePriority"]
      102 GETTABLEKS                       R30 R24 K35 ["NoPriority"]
      104 LOADNIL                          R31
      105 NEWTABLE                         R32 0 0
      107 LOADNIL                          R33
      108 JUMPIFEQKNIL                     R16 ; [+3]
      110 MOVE                             R33 R16
      111 JUMP                             ; [+1]
      112 DUPCLOSURE                       R33 K36 [PROTO_0]
      113 LOADNIL                          R34
      114 LOADNIL                          R35
      115 LOADB                            R36 0
      116 MOVE                             R37 R17
      117 CALL                             R37 0 1
      118 DUPCLOSURE                       R38 K37 [PROTO_1]
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R37
      121 DUPCLOSURE                       R39 K38 [PROTO_2]
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R25
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R26
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R27
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R28
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R29
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R30
      135 DUPCLOSURE                       R40 K39 [PROTO_3]
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R26
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R27
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R28
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R29
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R7
      147 SETGLOBAL                        R40 K40 ["reactPriorityToSchedulerPriority"]
      149 DUPCLOSURE                       R40 K41 [PROTO_4]
      150 CAPTURE                          VAL R12
      151 DUPCLOSURE                       R41 K42 [PROTO_5]
      152 CAPTURE                          VAL R13
      153 NEWCLOSURE                       R42 P6
      154 CAPTURE                          REF R34
      155 CAPTURE                          REF R35
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R19
      158 CAPTURE                          REF R31
      159 CAPTURE                          VAL R32
      160 DUPCLOSURE                       R43 K43 [PROTO_7]
      161 CAPTURE                          VAL R32
      162 CAPTURE                          VAL R14
      163 NEWCLOSURE                       R44 P8
      164 CAPTURE                          REF R35
      165 CAPTURE                          VAL R14
      166 CAPTURE                          REF R31
      167 NEWCLOSURE                       R31 P9
      168 CAPTURE                          REF R36
      169 CAPTURE                          REF R34
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R40
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R44
      181 DUPTABLE                         R45 K53 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority", "getCurrentPriorityLevel", "flushSyncCallbackQueue", "runWithPriority", "scheduleCallback", "scheduleSyncCallback", "cancelCallback", "now", "requestPaint", "shouldYield"}]
      182 SETTABLEKS                       R25 R45 K30 ["ImmediatePriority"]
      184 SETTABLEKS                       R26 R45 K31 ["UserBlockingPriority"]
      186 SETTABLEKS                       R27 R45 K32 ["NormalPriority"]
      188 SETTABLEKS                       R28 R45 K33 ["LowPriority"]
      190 SETTABLEKS                       R29 R45 K34 ["IdlePriority"]
      192 SETTABLEKS                       R30 R45 K35 ["NoPriority"]
      194 SETTABLEKS                       R39 R45 K44 ["getCurrentPriorityLevel"]
      196 SETTABLEKS                       R44 R45 K45 ["flushSyncCallbackQueue"]
      198 SETTABLEKS                       R40 R45 K46 ["runWithPriority"]
      200 SETTABLEKS                       R41 R45 K47 ["scheduleCallback"]
      202 SETTABLEKS                       R42 R45 K48 ["scheduleSyncCallback"]
      204 SETTABLEKS                       R43 R45 K49 ["cancelCallback"]
      206 SETTABLEKS                       R38 R45 K50 ["now"]
      208 SETTABLEKS                       R33 R45 K51 ["requestPaint"]
      210 SETTABLEKS                       R15 R45 K52 ["shouldYield"]
      212 CLOSEUPVALS                      R31
      213 RETURN                           R45 1
