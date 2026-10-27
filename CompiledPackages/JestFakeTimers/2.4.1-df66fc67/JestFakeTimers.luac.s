PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R1 R0 K1 ["fn"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 2
        9 NAMECALL                         R2 R0 K1 ["fn"]
       11 CALL                             R2 2 1
       12 DUPTABLE                         R3 K8 [{"now", "fromUnixTimestamp", "fromUnixTimestampMillis", "fromUniversalTime", "fromLocalTime", "fromIsoDate"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["now"]
       16 NAMECALL                         R4 R0 K1 ["fn"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K2 ["now"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K3 ["fromUnixTimestamp"]
       24 SETTABLEKS                       R4 R3 K3 ["fromUnixTimestamp"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K4 ["fromUnixTimestampMillis"]
       29 SETTABLEKS                       R4 R3 K4 ["fromUnixTimestampMillis"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K5 ["fromUniversalTime"]
       34 SETTABLEKS                       R4 R3 K5 ["fromUniversalTime"]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K6 ["fromLocalTime"]
       39 SETTABLEKS                       R4 R3 K6 ["fromLocalTime"]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K7 ["fromIsoDate"]
       44 SETTABLEKS                       R4 R3 K7 ["fromIsoDate"]
       46 DUPTABLE                         R4 K11 [{"time", "clock"}]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K9 ["time"]
       50 NAMECALL                         R5 R0 K1 ["fn"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K9 ["time"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K10 ["clock"]
       58 NAMECALL                         R5 R0 K1 ["fn"]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K10 ["clock"]
       63 DUPTABLE                         R7 K13 [{"__index"}]
       64 GETUPVAL                         R8 4
       65 SETTABLEKS                       R8 R7 K12 ["__index"]
       67 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       69 MOVE                             R6 R4
       70 GETIMPORT                        R5 K15 [setmetatable]
       72 CALL                             R5 2 0
       73 DUPTABLE                         R5 K27 [{["_fakingTime"] = False, ["_timeouts"], ["_mock"], ["_mockTime"] = 0, ["_mockSystemTime"], ["delayOverride"], ["tickOverride"], ["dateTimeOverride"], ["osOverride"]}]
       74 NEWTABLE                         R6 0 0
       76 SETTABLEKS                       R6 R5 K18 ["_timeouts"]
       78 SETTABLEKS                       R0 R5 K19 ["_mock"]
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K2 ["now"]
       83 CALL                             R6 0 1
       84 GETTABLEKS                       R6 R6 K28 ["UnixTimestamp"]
       86 SETTABLEKS                       R6 R5 K22 ["_mockSystemTime"]
       88 SETTABLEKS                       R1 R5 K23 ["delayOverride"]
       90 SETTABLEKS                       R2 R5 K24 ["tickOverride"]
       92 SETTABLEKS                       R3 R5 K25 ["dateTimeOverride"]
       94 SETTABLEKS                       R4 R5 K26 ["osOverride"]
       96 GETUPVAL                         R8 5
       97 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       99 MOVE                             R7 R5
      100 GETIMPORT                        R6 K15 [setmetatable]
      102 CALL                             R6 2 0
      103 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_mockTime"]
        2 JUMPIFNOTLT                      R2 R1 ; [+11]
        4 GETTABLEKS                       R3 R0 K0 ["_mockTime"]
        6 SUB                              R2 R1 R3
        7 SETTABLEKS                       R1 R0 K0 ["_mockTime"]
        9 GETTABLEKS                       R4 R0 K1 ["_mockSystemTime"]
       11 ADD                              R3 R4 R2
       12 SETTABLEKS                       R3 R0 K1 ["_mockSystemTime"]
       14 RETURN                           R0 0

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
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETIMPORT                        R1 K2 [ipairs]
        6 GETTABLEKS                       R2 R0 K3 ["_timeouts"]
        8 CALL                             R1 1 3
        9 FORGPREP_INEXT                   R1
       10 GETTABLEKS                       R8 R5 K4 ["time"]
       12 NAMECALL                         R6 R0 K5 ["_advanceToTime"]
       14 CALL                             R6 2 0
       15 GETTABLEKS                       R6 R5 K6 ["callback"]
       17 CALL                             R6 0 0
       18 FORGLOOP                         R1 2 [inext] ; [-9]
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K3 ["_timeouts"]
       24 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+36]
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K2 [ipairs]
        8 GETTABLEKS                       R3 R0 K3 ["_timeouts"]
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K6 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 [inext] ; [-8]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R0 K3 ["_timeouts"]
       25 GETIMPORT                        R2 K2 [ipairs]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 3
       29 FORGPREP_INEXT                   R2
       30 GETTABLEKS                       R9 R6 K7 ["time"]
       32 NAMECALL                         R7 R0 K8 ["_advanceToTime"]
       34 CALL                             R7 2 0
       35 GETTABLEKS                       R7 R6 K9 ["callback"]
       37 CALL                             R7 0 0
       38 FORGLOOP                         R2 2 [inext] ; [-9]
       40 RETURN                           R0 0

PROTO_6:
        0 ORK                              R2 R1 K0 [1]
        1 NAMECALL                         R3 R0 K1 ["_checkFakeTimers"]
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+44]
        5 NEWTABLE                         R3 0 0
        7 LOADN                            R4 -1
        8 GETIMPORT                        R5 K3 [ipairs]
       10 GETTABLEKS                       R6 R0 K4 ["_timeouts"]
       12 CALL                             R5 1 3
       13 FORGPREP_INEXT                   R5
       14 GETTABLEKS                       R10 R9 K5 ["time"]
       16 JUMPIFNOTLT                      R4 R10 ; [+11]
       18 LOADN                            R10 0
       19 JUMPIFNOTLT                      R10 R2 ; [+8]
       21 GETTABLEKS                       R4 R9 K5 ["time"]
       23 MOVE                             R12 R4
       24 NAMECALL                         R10 R0 K6 ["_advanceToTime"]
       26 CALL                             R10 2 0
       27 SUBK                             R2 R2 K0 [1]
       28 GETTABLEKS                       R10 R0 K7 ["_mockTime"]
       30 GETTABLEKS                       R11 R9 K5 ["time"]
       32 JUMPIFNOTLE                      R11 R10 ; [+5]
       34 GETTABLEKS                       R10 R9 K8 ["callback"]
       36 CALL                             R10 0 0
       37 JUMP                             ; [+7]
       38 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       40 MOVE                             R11 R3
       41 MOVE                             R12 R9
       42 GETIMPORT                        R10 K11 [table.insert]
       44 CALL                             R10 2 0
       45 FORGLOOP                         R5 2 [inext] ; [-32]
       47 SETTABLEKS                       R3 R0 K4 ["_timeouts"]
       49 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+39]
        4 GETTABLEKS                       R3 R0 K1 ["_mockTime"]
        6 ADD                              R2 R3 R1
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K3 [ipairs]
       11 GETTABLEKS                       R5 R0 K4 ["_timeouts"]
       13 CALL                             R4 1 3
       14 FORGPREP_INEXT                   R4
       15 GETTABLEKS                       R9 R8 K5 ["time"]
       17 JUMPIFNOTLE                      R9 R2 ; [+10]
       19 GETTABLEKS                       R11 R8 K5 ["time"]
       21 NAMECALL                         R9 R0 K6 ["_advanceToTime"]
       23 CALL                             R9 2 0
       24 GETTABLEKS                       R9 R8 K7 ["callback"]
       26 CALL                             R9 0 0
       27 JUMP                             ; [+7]
       28 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       30 MOVE                             R10 R3
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K10 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 [inext] ; [-21]
       37 MOVE                             R6 R2
       38 NAMECALL                         R4 R0 K6 ["_advanceToTime"]
       40 CALL                             R4 2 0
       41 SETTABLEKS                       R3 R0 K4 ["_timeouts"]
       43 RETURN                           R0 0

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
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETTABLEKS                       R1 R0 K1 ["delayOverride"]
        5 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["tickOverride"]
       11 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       13 GETUPVAL                         R2 1
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K4 ["dateTimeOverride"]
       17 GETTABLEKS                       R1 R1 K5 ["now"]
       19 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K5 ["now"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K6 ["osOverride"]
       27 GETTABLEKS                       R1 R1 K7 ["time"]
       29 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K7 ["time"]
       34 CALL                             R1 1 0
       35 GETTABLEKS                       R1 R0 K6 ["osOverride"]
       37 GETTABLEKS                       R1 R1 K8 ["clock"]
       39 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K8 ["clock"]
       44 CALL                             R1 1 0
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K0 ["_fakingTime"]
       48 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_mockTime"]
        3 ADD                              R2 R3 R0
        4 DUPTABLE                         R3 K3 [{"time", "callback"}]
        5 SETTABLEKS                       R2 R3 K1 ["time"]
        7 SETTABLEKS                       R1 R3 K2 ["callback"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K5 ["_timeouts"]
       12 LENGTH                           R5 R6
       13 ADDK                             R4 R5 K4 [1]
       14 GETIMPORT                        R5 K7 [ipairs]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K5 ["_timeouts"]
       19 CALL                             R5 1 3
       20 FORGPREP_INEXT                   R5
       21 GETTABLEKS                       R10 R9 K1 ["time"]
       23 JUMPIFNOTLT                      R2 R10 ; [+3]
       25 MOVE                             R4 R8
       26 JUMP                             ; [+2]
       27 FORGLOOP                         R5 2 [inext] ; [-7]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K5 ["_timeouts"]
       32 FASTCALL3                        TABLE_INSERT R6 R4 R3
       34 MOVE                             R7 R4
       35 MOVE                             R8 R3
       36 GETIMPORT                        R5 K10 [table.insert]
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mockSystemTime"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnixTimestamp"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_mockSystemTime"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+30]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["fromUniversalTime"]
       10 GETTABLEKS                       R3 R0 K5 ["year"]
       12 ORK                              R2 R3 K4 [1970]
       13 GETTABLEKS                       R4 R0 K7 ["month"]
       15 ORK                              R3 R4 K6 [1]
       16 GETTABLEKS                       R5 R0 K8 ["day"]
       18 ORK                              R4 R5 K6 [1]
       19 GETTABLEKS                       R6 R0 K10 ["hour"]
       21 ORK                              R5 R6 K9 [0]
       22 GETTABLEKS                       R7 R0 K11 ["min"]
       24 ORK                              R6 R7 K9 [0]
       25 GETTABLEKS                       R8 R0 K12 ["sec"]
       27 ORK                              R7 R8 K9 [0]
       28 CALL                             R1 6 1
       29 GETTABLEKS                       R1 R1 K13 ["UnixTimestamp"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K14 ["_mockSystemTime"]
       34 SUB                              R2 R3 R1
       35 RETURN                           R2 1
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K14 ["_mockSystemTime"]
       39 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mockTime"]
        3 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_fakingTime"]
        2 JUMPIF                           R1 ; [+49]
        3 GETTABLEKS                       R1 R0 K1 ["delayOverride"]
        5 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["tickOverride"]
       12 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K4 ["dateTimeOverride"]
       19 GETTABLEKS                       R1 R1 K5 ["now"]
       21 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K6 ["osOverride"]
       29 GETTABLEKS                       R1 R1 K7 ["time"]
       31 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       33 NEWCLOSURE                       R2 P3
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K6 ["osOverride"]
       39 GETTABLEKS                       R1 R1 K8 ["clock"]
       41 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       43 NEWCLOSURE                       R2 P4
       44 CAPTURE                          VAL R0
       45 CALL                             R1 1 0
       46 LOADB                            R1 1
       47 SETTABLEKS                       R1 R0 K0 ["_fakingTime"]
       49 NAMECALL                         R1 R0 K9 ["reset"]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_16:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETTABLEKS                       R1 R0 K1 ["_mock"]
        6 NAMECALL                         R1 R1 K2 ["clearAllMocks"]
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K3 ["_timeouts"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["_mockTime"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["now"]
       19 CALL                             R1 0 1
       20 GETTABLEKS                       R1 R1 K6 ["UnixTimestamp"]
       22 SETTABLEKS                       R1 R0 K7 ["_mockSystemTime"]
       24 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R2 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+15]
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["now"]
        8 CALL                             R2 0 1
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K2 ["DateTime"] ; [+3]
       15 GETTABLEKS                       R1 R1 K3 ["UnixTimestamp"]
       17 SETTABLEKS                       R1 R0 K4 ["_mockSystemTime"]
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["now"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["_checkFakeTimers"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETTABLEKS                       R2 R0 K1 ["_timeouts"]
        6 LENGTH                           R1 R2
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 RETURN                           R1 1

PROTO_20:
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
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K6 ["getType"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K7 ["JestMock"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K8 ["ModuleMocker"]
       19 GETIMPORT                        R4 K10 [delay]
       21 GETIMPORT                        R5 K12 [tick]
       23 GETIMPORT                        R6 K14 [DateTime]
       25 GETIMPORT                        R7 K16 [os]
       27 NEWTABLE                         R8 32 0
       29 SETTABLEKS                       R8 R8 K17 ["__index"]
       31 DUPCLOSURE                       R9 K18 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R8
       38 SETTABLEKS                       R9 R8 K19 ["new"]
       40 DUPCLOSURE                       R9 K20 [PROTO_1]
       41 SETTABLEKS                       R9 R8 K21 ["_advanceToTime"]
       43 DUPCLOSURE                       R9 K22 [PROTO_2]
       44 SETTABLEKS                       R9 R8 K23 ["clearAllTimers"]
       46 DUPCLOSURE                       R9 K24 [PROTO_3]
       47 SETTABLEKS                       R9 R8 K25 ["dispose"]
       49 DUPCLOSURE                       R9 K26 [PROTO_4]
       50 SETTABLEKS                       R9 R8 K27 ["runAllTimers"]
       52 DUPCLOSURE                       R9 K28 [PROTO_5]
       53 SETTABLEKS                       R9 R8 K29 ["runOnlyPendingTimers"]
       55 DUPCLOSURE                       R9 K30 [PROTO_6]
       56 SETTABLEKS                       R9 R8 K31 ["advanceTimersToNextTimer"]
       58 DUPCLOSURE                       R9 K32 [PROTO_7]
       59 SETTABLEKS                       R9 R8 K33 ["advanceTimersByTime"]
       61 DUPCLOSURE                       R9 K34 [PROTO_8]
       62 SETTABLEKS                       R9 R8 K35 ["runAllTicks"]
       64 DUPCLOSURE                       R9 K36 [PROTO_9]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R9 R8 K37 ["useRealTimers"]
       71 DUPCLOSURE                       R9 K38 [PROTO_15]
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R9 R8 K39 ["useFakeTimers"]
       75 DUPCLOSURE                       R9 K40 [PROTO_16]
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R9 R8 K41 ["reset"]
       79 DUPCLOSURE                       R9 K42 [PROTO_17]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R9 R8 K43 ["setSystemTime"]
       84 DUPCLOSURE                       R9 K44 [PROTO_18]
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R9 R8 K45 ["getRealSystemTime"]
       88 DUPCLOSURE                       R9 K46 [PROTO_19]
       89 SETTABLEKS                       R9 R8 K47 ["getTimerCount"]
       91 DUPCLOSURE                       R9 K48 [PROTO_20]
       92 SETTABLEKS                       R9 R8 K49 ["_checkFakeTimers"]
       94 RETURN                           R8 1
