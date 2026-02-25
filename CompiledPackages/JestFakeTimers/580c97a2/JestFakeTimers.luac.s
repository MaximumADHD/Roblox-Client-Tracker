PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R1 R0 K1 ["fn"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 2
        9 NAMECALL                         R2 R0 K1 ["fn"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R3 R0 K1 ["fn"]
       15 CALL                             R3 2 1
       16 DUPTABLE                         R4 K8 [{"now", "fromUnixTimestamp", "fromUnixTimestampMillis", "fromUniversalTime", "fromLocalTime", "fromIsoDate"}]
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R7 R8 K2 ["now"]
       20 NAMECALL                         R5 R0 K1 ["fn"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K2 ["now"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K3 ["fromUnixTimestamp"]
       28 SETTABLEKS                       R5 R4 K3 ["fromUnixTimestamp"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R5 R6 K4 ["fromUnixTimestampMillis"]
       33 SETTABLEKS                       R5 R4 K4 ["fromUnixTimestampMillis"]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K5 ["fromUniversalTime"]
       38 SETTABLEKS                       R5 R4 K5 ["fromUniversalTime"]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R5 R6 K6 ["fromLocalTime"]
       43 SETTABLEKS                       R5 R4 K6 ["fromLocalTime"]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R5 R6 K7 ["fromIsoDate"]
       48 SETTABLEKS                       R5 R4 K7 ["fromIsoDate"]
       50 DUPTABLE                         R5 K11 [{"time", "clock"}]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R8 R9 K9 ["time"]
       54 NAMECALL                         R6 R0 K1 ["fn"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K9 ["time"]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R8 R9 K10 ["clock"]
       62 NAMECALL                         R6 R0 K1 ["fn"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K10 ["clock"]
       67 DUPTABLE                         R8 K13 [{"__index"}]
       68 GETUPVAL                         R9 5
       69 SETTABLEKS                       R9 R8 K12 ["__index"]
       71 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       73 MOVE                             R7 R5
       74 GETIMPORT                        R6 K15 [setmetatable]
       76 CALL                             R6 2 0
       77 DUPTABLE                         R6 K19 [{"delay", "cancel", "wait"}]
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R9 R10 K16 ["delay"]
       81 NAMECALL                         R7 R0 K1 ["fn"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K16 ["delay"]
       86 GETUPVAL                         R10 6
       87 GETTABLEKS                       R9 R10 K17 ["cancel"]
       89 NAMECALL                         R7 R0 K1 ["fn"]
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K17 ["cancel"]
       94 GETUPVAL                         R10 6
       95 GETTABLEKS                       R9 R10 K18 ["wait"]
       97 NAMECALL                         R7 R0 K1 ["fn"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K18 ["wait"]
      102 DUPTABLE                         R9 K13 [{"__index"}]
      103 GETUPVAL                         R10 6
      104 SETTABLEKS                       R10 R9 K12 ["__index"]
      106 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
      108 MOVE                             R8 R6
      109 GETIMPORT                        R7 K15 [setmetatable]
      111 CALL                             R7 2 0
      112 DUPTABLE                         R7 K32 [{"_fakingTime", "_timeouts", "_mock", "_mockTimeMs", "_mockSystemTime", "_engineFrameTime", "delayOverride", "tickOverride", "timeOverride", "dateTimeOverride", "osOverride", "taskOverride"}]
      113 LOADB                            R8 0
      114 SETTABLEKS                       R8 R7 K20 ["_fakingTime"]
      116 NEWTABLE                         R8 0 0
      118 SETTABLEKS                       R8 R7 K21 ["_timeouts"]
      120 SETTABLEKS                       R0 R7 K22 ["_mock"]
      122 LOADN                            R8 0
      123 SETTABLEKS                       R8 R7 K23 ["_mockTimeMs"]
      125 GETUPVAL                         R10 4
      126 GETTABLEKS                       R9 R10 K2 ["now"]
      128 CALL                             R9 0 1
      129 GETTABLEKS                       R8 R9 K33 ["UnixTimestamp"]
      131 SETTABLEKS                       R8 R7 K24 ["_mockSystemTime"]
      133 LOADN                            R8 0
      134 SETTABLEKS                       R8 R7 K25 ["_engineFrameTime"]
      136 SETTABLEKS                       R1 R7 K26 ["delayOverride"]
      138 SETTABLEKS                       R2 R7 K27 ["tickOverride"]
      140 SETTABLEKS                       R3 R7 K28 ["timeOverride"]
      142 SETTABLEKS                       R4 R7 K29 ["dateTimeOverride"]
      144 SETTABLEKS                       R5 R7 K30 ["osOverride"]
      146 SETTABLEKS                       R6 R7 K31 ["taskOverride"]
      148 GETUPVAL                         R10 7
      149 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
      151 MOVE                             R9 R7
      152 GETIMPORT                        R8 K15 [setmetatable]
      154 CALL                             R8 2 0
      155 RETURN                           R7 1

PROTO_1:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R0 K0 ["_mockTimeMs"]
        3 JUMPIFNOTLT                      R3 R1 ; [+27]
        5 GETTABLEKS                       R3 R0 K1 ["_engineFrameTime"]
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+11]
       10 GETTABLEKS                       R5 R0 K1 ["_engineFrameTime"]
       12 DIV                              R4 R1 R5
       13 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       14 GETIMPORT                        R3 K4 [math.floor]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R0 K1 ["_engineFrameTime"]
       19 MUL                              R2 R3 R4
       20 GETTABLEKS                       R4 R0 K0 ["_mockTimeMs"]
       22 SUB                              R3 R2 R4
       23 SETTABLEKS                       R2 R0 K0 ["_mockTimeMs"]
       25 GETTABLEKS                       R5 R0 K5 ["_mockSystemTime"]
       27 DIVK                             R6 R3 K6 [1000]
       28 ADD                              R4 R5 R6
       29 SETTABLEKS                       R4 R0 K5 ["_mockSystemTime"]
       31 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_timeouts"]
        7 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["useRealTimers"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETTABLEKS                       R1 R0 K1 ["_timeouts"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R9 R5 K2 ["time"]
       11 GETTABLEKS                       R10 R0 K3 ["_engineFrameTime"]
       13 ADD                              R8 R9 R10
       14 NAMECALL                         R6 R0 K4 ["_advanceToTime"]
       16 CALL                             R6 2 0
       17 GETTABLEKS                       R6 R5 K5 ["callback"]
       19 GETTABLEKS                       R8 R5 K6 ["args"]
       21 FASTCALL1                        TABLE_UNPACK R8 ; [+2]
       22 GETIMPORT                        R7 K8 [unpack]
       24 CALL                             R7 1 -1
       25 CALL                             R6 -1 0
       26 FORGLOOP                         R1 2 ; [-18]
       28 NEWTABLE                         R1 0 0
       30 SETTABLEKS                       R1 R0 K1 ["_timeouts"]
       32 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+43]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R0 K1 ["_timeouts"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K4 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-8]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R0 K1 ["_timeouts"]
       24 MOVE                             R2 R1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLEKS                       R10 R6 K5 ["time"]
       30 GETTABLEKS                       R11 R0 K6 ["_engineFrameTime"]
       32 ADD                              R9 R10 R11
       33 NAMECALL                         R7 R0 K7 ["_advanceToTime"]
       35 CALL                             R7 2 0
       36 GETTABLEKS                       R7 R6 K8 ["callback"]
       38 GETTABLEKS                       R9 R6 K9 ["args"]
       40 FASTCALL1                        TABLE_UNPACK R9 ; [+2]
       41 GETIMPORT                        R8 K11 [unpack]
       43 CALL                             R8 1 -1
       44 CALL                             R7 -1 0
       45 FORGLOOP                         R2 2 ; [-18]
       47 RETURN                           R0 0

PROTO_6:
        0 ORK                              R2 R1 K0 [1]
        1 NAMECALL                         R3 R0 K1 ["_checkFakeTimers"]
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+68]
        5 NEWTABLE                         R3 0 0
        7 LOADN                            R4 255
        8 GETTABLEKS                       R5 R0 K2 ["_timeouts"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K3 ["time"]
       15 JUMPIFNOTLT                      R4 R10 ; [+30]
       17 LOADN                            R10 0
       18 JUMPIFNOTLT                      R10 R2 ; [+27]
       20 GETTABLEKS                       R10 R0 K4 ["_engineFrameTime"]
       22 LOADN                            R11 0
       23 JUMPIFNOTLT                      R11 R10 ; [+15]
       25 GETTABLEKS                       R13 R9 K3 ["time"]
       27 GETTABLEKS                       R14 R0 K4 ["_engineFrameTime"]
       29 DIV                              R12 R13 R14
       30 ADDK                             R11 R12 K0 [1]
       31 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       32 GETIMPORT                        R10 K7 [math.floor]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R11 R0 K4 ["_engineFrameTime"]
       37 MUL                              R4 R10 R11
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R4 R9 K3 ["time"]
       41 MOVE                             R12 R4
       42 NAMECALL                         R10 R0 K8 ["_advanceToTime"]
       44 CALL                             R10 2 0
       45 SUBK                             R2 R2 K0 [1]
       46 GETTABLEKS                       R10 R0 K9 ["_mockTimeMs"]
       48 GETTABLEKS                       R11 R9 K3 ["time"]
       50 JUMPIFNOTLE                      R11 R10 ; [+11]
       52 GETTABLEKS                       R10 R9 K10 ["callback"]
       54 GETTABLEKS                       R12 R9 K11 ["args"]
       56 FASTCALL1                        TABLE_UNPACK R12 ; [+2]
       57 GETIMPORT                        R11 K13 [unpack]
       59 CALL                             R11 1 -1
       60 CALL                             R10 -1 0
       61 JUMP                             ; [+7]
       62 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       64 MOVE                             R11 R3
       65 MOVE                             R12 R9
       66 GETIMPORT                        R10 K16 [table.insert]
       68 CALL                             R10 2 0
       69 FORGLOOP                         R5 2 ; [-57]
       71 SETTABLEKS                       R3 R0 K2 ["_timeouts"]
       73 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+63]
        4 GETTABLEKS                       R3 R0 K1 ["_mockTimeMs"]
        6 ADD                              R2 R3 R1
        7 GETTABLEKS                       R3 R0 K2 ["_engineFrameTime"]
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+12]
       12 GETTABLEKS                       R6 R0 K2 ["_engineFrameTime"]
       14 DIV                              R5 R2 R6
       15 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       16 GETIMPORT                        R4 K6 [math.floor]
       18 CALL                             R4 1 1
       19 ADDK                             R3 R4 K3 [1]
       20 GETTABLEKS                       R4 R0 K2 ["_engineFrameTime"]
       22 MUL                              R2 R3 R4
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R0 K7 ["_timeouts"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 GETTABLEKS                       R9 R8 K8 ["time"]
       32 JUMPIFNOTLE                      R9 R2 ; [+19]
       34 GETTABLEKS                       R12 R8 K8 ["time"]
       36 GETTABLEKS                       R13 R0 K2 ["_engineFrameTime"]
       38 ADD                              R11 R12 R13
       39 NAMECALL                         R9 R0 K9 ["_advanceToTime"]
       41 CALL                             R9 2 0
       42 GETTABLEKS                       R9 R8 K10 ["callback"]
       44 GETTABLEKS                       R11 R8 K11 ["args"]
       46 FASTCALL1                        TABLE_UNPACK R11 ; [+2]
       47 GETIMPORT                        R10 K13 [unpack]
       49 CALL                             R10 1 -1
       50 CALL                             R9 -1 0
       51 JUMP                             ; [+7]
       52 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       54 MOVE                             R10 R3
       55 MOVE                             R11 R8
       56 GETIMPORT                        R9 K16 [table.insert]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R4 2 ; [-30]
       61 MOVE                             R6 R2
       62 NAMECALL                         R4 R0 K9 ["_advanceToTime"]
       64 CALL                             R4 2 0
       65 SETTABLEKS                       R3 R0 K7 ["_timeouts"]
       67 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETIMPORT                        R1 K2 [error]
        6 LOADK                            R2 K3 ["not implemented"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        2 JUMPIFNOT                        R1 ; [+81]
        3 GETTABLEKS                       R2 R0 K1 ["delayOverride"]
        5 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R2 R0 K3 ["tickOverride"]
       11 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       13 GETUPVAL                         R2 1
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R2 R0 K4 ["timeOverride"]
       17 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       19 GETUPVAL                         R2 2
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R3 R0 K5 ["dateTimeOverride"]
       23 GETTABLEKS                       R2 R3 K6 ["now"]
       25 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K6 ["now"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R3 R0 K7 ["osOverride"]
       33 GETTABLEKS                       R2 R3 K8 ["time"]
       35 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R2 R3 K8 ["time"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R3 R0 K7 ["osOverride"]
       43 GETTABLEKS                       R2 R3 K9 ["clock"]
       45 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R2 R3 K9 ["clock"]
       50 CALL                             R1 1 0
       51 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       53 GETTABLEKS                       R2 R3 K11 ["delay"]
       55 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       57 GETUPVAL                         R3 5
       58 GETTABLEKS                       R2 R3 K11 ["delay"]
       60 CALL                             R1 1 0
       61 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       63 GETTABLEKS                       R2 R3 K12 ["cancel"]
       65 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       67 GETUPVAL                         R3 5
       68 GETTABLEKS                       R2 R3 K12 ["cancel"]
       70 CALL                             R1 1 0
       71 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       73 GETTABLEKS                       R2 R3 K13 ["wait"]
       75 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       77 GETUPVAL                         R3 5
       78 GETTABLEKS                       R2 R3 K13 ["wait"]
       80 CALL                             R1 1 0
       81 LOADB                            R1 0
       82 SETTABLEKS                       R1 R0 K0 ["_fakingTime"]
       84 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K1 ["_mockTimeMs"]
        2 DIVK                             R1 R2 K0 [1000]
        3 RETURN                           R1 1

PROTO_11:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R5 R0 K1 ["_engineFrameTime"]
        3 DIVK                             R4 R5 K0 [1000]
        4 MULK                             R5 R1 K0 [1000]
        5 ADD                              R3 R4 R5
        6 GETTABLEKS                       R5 R0 K2 ["_mockTimeMs"]
        8 ADD                              R4 R5 R3
        9 DUPTABLE                         R5 K6 [{"time", "callback", "args"}]
       10 SETTABLEKS                       R4 R5 K3 ["time"]
       12 SETTABLEKS                       R2 R5 K4 ["callback"]
       14 NEWTABLE                         R6 0 0
       16 GETVARARGS                       R7 -1
       17 SETLIST                          R6 R7 -1 [1]
       19 SETTABLEKS                       R6 R5 K5 ["args"]
       21 GETTABLEKS                       R8 R0 K8 ["_timeouts"]
       23 LENGTH                           R7 R8
       24 ADDK                             R6 R7 K7 [1]
       25 GETTABLEKS                       R7 R0 K8 ["_timeouts"]
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 FORGPREP                         R7
       30 GETTABLEKS                       R12 R11 K3 ["time"]
       32 JUMPIFNOTLT                      R4 R12 ; [+3]
       34 MOVE                             R6 R10
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R7 2 ; [-7]
       38 GETTABLEKS                       R8 R0 K8 ["_timeouts"]
       40 FASTCALL3                        TABLE_INSERT R8 R6 R5
       42 MOVE                             R9 R6
       43 MOVE                             R10 R5
       44 GETIMPORT                        R7 K11 [table.insert]
       46 CALL                             R7 3 0
       47 RETURN                           R5 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_timeouts"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+8]
        7 GETIMPORT                        R7 K3 [table.remove]
        9 GETTABLEKS                       R8 R0 K0 ["_timeouts"]
       11 MOVE                             R9 R5
       12 CALL                             R7 2 0
       13 RETURN                           R0 0
       14 FORGLOOP                         R2 2 ; [-10]
       16 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R5 R4 K4 ["_mockTimeMs"]
        6 DIVK                             R3 R5 K3 [1000]
        7 GETUPVAL                         R4 2
        8 SUB                              R2 R3 R4
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K2 [coroutine.running]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R4 R0 K4 ["_mockTimeMs"]
        5 DIVK                             R3 R4 K3 [1000]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 ORK                              R6 R1 K5 [0]
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CALL                             R4 3 0
       14 GETIMPORT                        R4 K7 [coroutine.yield]
       16 CALL                             R4 0 -1
       17 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_mockSystemTime"]
        3 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K1 ["_mockTimeMs"]
        3 DIVK                             R0 R2 K0 [1000]
        4 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fromUnixTimestamp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["_mockSystemTime"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_19:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+30]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["fromUniversalTime"]
       10 GETTABLEKS                       R4 R0 K5 ["year"]
       12 ORK                              R3 R4 K4 [1970]
       13 GETTABLEKS                       R5 R0 K7 ["month"]
       15 ORK                              R4 R5 K6 [1]
       16 GETTABLEKS                       R6 R0 K8 ["day"]
       18 ORK                              R5 R6 K6 [1]
       19 GETTABLEKS                       R7 R0 K10 ["hour"]
       21 ORK                              R6 R7 K9 [0]
       22 GETTABLEKS                       R8 R0 K11 ["min"]
       24 ORK                              R7 R8 K9 [0]
       25 GETTABLEKS                       R9 R0 K12 ["sec"]
       27 ORK                              R8 R9 K9 [0]
       28 CALL                             R2 6 1
       29 GETTABLEKS                       R1 R2 K13 ["UnixTimestamp"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K14 ["_mockSystemTime"]
       34 SUB                              R2 R3 R1
       35 RETURN                           R2 1
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K14 ["_mockSystemTime"]
       39 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K1 ["_mockTimeMs"]
        3 DIVK                             R0 R2 K0 [1000]
        4 RETURN                           R0 1

PROTO_21:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 GETVARARGS                       R6 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        2 JUMPIF                           R1 ; [+87]
        3 GETTABLEKS                       R2 R0 K1 ["delayOverride"]
        5 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R2 R0 K3 ["tickOverride"]
       13 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R2 R0 K4 ["timeOverride"]
       20 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R3 R0 K5 ["dateTimeOverride"]
       27 GETTABLEKS                       R2 R3 K6 ["now"]
       29 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       31 NEWCLOSURE                       R2 P3
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CALL                             R1 1 0
       35 GETTABLEKS                       R3 R0 K7 ["osOverride"]
       37 GETTABLEKS                       R2 R3 K8 ["time"]
       39 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       41 NEWCLOSURE                       R2 P4
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CALL                             R1 1 0
       45 GETTABLEKS                       R3 R0 K7 ["osOverride"]
       47 GETTABLEKS                       R2 R3 K9 ["clock"]
       49 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       51 NEWCLOSURE                       R2 P5
       52 CAPTURE                          VAL R0
       53 CALL                             R1 1 0
       54 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       56 GETTABLEKS                       R2 R3 K11 ["delay"]
       58 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       60 NEWCLOSURE                       R2 P6
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          VAL R0
       63 CALL                             R1 1 0
       64 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       66 GETTABLEKS                       R2 R3 K12 ["cancel"]
       68 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       70 NEWCLOSURE                       R2 P7
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R0
       73 CALL                             R1 1 0
       74 GETTABLEKS                       R3 R0 K10 ["taskOverride"]
       76 GETTABLEKS                       R2 R3 K13 ["wait"]
       78 GETTABLEKS                       R1 R2 K2 ["mockImplementation"]
       80 NEWCLOSURE                       R2 P8
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R0
       83 CALL                             R1 1 0
       84 LOADB                            R1 1
       85 SETTABLEKS                       R1 R0 K0 ["_fakingTime"]
       87 NAMECALL                         R1 R0 K14 ["reset"]
       89 CALL                             R1 1 0
       90 RETURN                           R0 0

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R1 R0 K1 ["_mock"]
        6 NAMECALL                         R1 R1 K2 ["clearAllMocks"]
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K3 ["_timeouts"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["_mockTimeMs"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K5 ["now"]
       19 CALL                             R2 0 1
       20 GETTABLEKS                       R1 R2 K6 ["UnixTimestamp"]
       22 SETTABLEKS                       R1 R0 K7 ["_mockSystemTime"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K8 ["_engineFrameTime"]
       27 RETURN                           R0 0

PROTO_26:
        0 NAMECALL                         R2 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+15]
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["now"]
        8 CALL                             R2 0 1
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K2 ["DateTime"] ; [+3]
       15 GETTABLEKS                       R1 R1 K3 ["UnixTimestamp"]
       17 SETTABLEKS                       R1 R0 K4 ["_mockSystemTime"]
       19 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R1 R2 ; [+5]
        7 GETIMPORT                        R2 K2 [error]
        9 LOADK                            R3 K3 ["Frame Time should be greater than 0"]
       10 CALL                             R2 1 0
       11 SETTABLEKS                       R1 R0 K4 ["_engineFrameTime"]
       13 RETURN                           R0 0

PROTO_28:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["_engineFrameTime"]
        6 RETURN                           R1 1
        7 LOADN                            R1 0
        8 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["now"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_30:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETTABLEKS                       R2 R0 K1 ["_timeouts"]
        6 LENGTH                           R1 R2
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        2 JUMPIF                           R1 ; [+4]
        3 GETIMPORT                        R1 K2 [error]
        5 LOADK                            R2 K3 ["A function to advance timers was called but the timers API is not mocked with fake timers. Call `jest.useFakeTimers()` in this test."]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R3 K4 [require]
        7 GETTABLEKS                       R4 R1 K5 ["JestGetType"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K6 ["getType"]
       12 GETIMPORT                        R4 K4 [require]
       14 GETTABLEKS                       R5 R1 K7 ["JestMock"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R3 R4 K8 ["ModuleMocker"]
       19 GETIMPORT                        R4 K10 [delay]
       21 GETIMPORT                        R5 K12 [tick]
       23 GETIMPORT                        R6 K14 [time]
       25 GETIMPORT                        R7 K16 [DateTime]
       27 GETIMPORT                        R8 K18 [os]
       29 GETIMPORT                        R9 K20 [task]
       31 NEWTABLE                         R10 32 0
       33 SETTABLEKS                       R10 R10 K21 ["__index"]
       35 DUPCLOSURE                       R11 K22 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R10
       44 SETTABLEKS                       R11 R10 K23 ["new"]
       46 DUPCLOSURE                       R11 K24 [PROTO_1]
       47 SETTABLEKS                       R11 R10 K25 ["_advanceToTime"]
       49 DUPCLOSURE                       R11 K26 [PROTO_2]
       50 SETTABLEKS                       R11 R10 K27 ["clearAllTimers"]
       52 DUPCLOSURE                       R11 K28 [PROTO_3]
       53 SETTABLEKS                       R11 R10 K29 ["dispose"]
       55 DUPCLOSURE                       R11 K30 [PROTO_4]
       56 SETTABLEKS                       R11 R10 K31 ["runAllTimers"]
       58 DUPCLOSURE                       R11 K32 [PROTO_5]
       59 SETTABLEKS                       R11 R10 K33 ["runOnlyPendingTimers"]
       61 DUPCLOSURE                       R11 K34 [PROTO_6]
       62 SETTABLEKS                       R11 R10 K35 ["advanceTimersToNextTimer"]
       64 DUPCLOSURE                       R11 K36 [PROTO_7]
       65 SETTABLEKS                       R11 R10 K37 ["advanceTimersByTime"]
       67 DUPCLOSURE                       R11 K38 [PROTO_8]
       68 SETTABLEKS                       R11 R10 K39 ["runAllTicks"]
       70 DUPCLOSURE                       R11 K40 [PROTO_9]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R11 R10 K41 ["useRealTimers"]
       79 DUPCLOSURE                       R11 K42 [PROTO_10]
       80 DUPCLOSURE                       R12 K43 [PROTO_11]
       81 DUPCLOSURE                       R13 K44 [PROTO_12]
       82 DUPCLOSURE                       R14 K45 [PROTO_14]
       83 CAPTURE                          VAL R12
       84 DUPCLOSURE                       R15 K46 [PROTO_24]
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R14
       89 SETTABLEKS                       R15 R10 K47 ["useFakeTimers"]
       91 DUPCLOSURE                       R15 K48 [PROTO_25]
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R15 R10 K49 ["reset"]
       95 DUPCLOSURE                       R15 K50 [PROTO_26]
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R15 R10 K51 ["setSystemTime"]
      100 DUPCLOSURE                       R15 K52 [PROTO_27]
      101 SETTABLEKS                       R15 R10 K53 ["setEngineFrameTime"]
      103 DUPCLOSURE                       R15 K54 [PROTO_28]
      104 SETTABLEKS                       R15 R10 K55 ["getEngineFrameTime"]
      106 DUPCLOSURE                       R15 K56 [PROTO_29]
      107 CAPTURE                          VAL R7
      108 SETTABLEKS                       R15 R10 K57 ["getRealSystemTime"]
      110 DUPCLOSURE                       R15 K58 [PROTO_30]
      111 SETTABLEKS                       R15 R10 K59 ["getTimerCount"]
      113 DUPCLOSURE                       R15 K60 [PROTO_31]
      114 SETTABLEKS                       R15 R10 K61 ["_checkFakeTimers"]
      116 RETURN                           R10 1
