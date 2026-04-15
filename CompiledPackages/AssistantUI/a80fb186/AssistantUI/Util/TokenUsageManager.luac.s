PROTO_0:
        0 DUPTABLE                         R0 K7 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["input_tokens"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["output_tokens"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["cache_read_input_tokens"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["cache_creation_input_tokens"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["reasoning_tokens"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K5 ["timestamp"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K6 ["model"]
       22 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K7 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["input_tokens"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["output_tokens"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["cache_read_input_tokens"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["cache_creation_input_tokens"]
       13 LOADN                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["reasoning_tokens"]
       16 LOADN                            R2 0
       17 SETTABLEKS                       R2 R1 K5 ["timestamp"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K6 ["model"]
       22 SETTABLEKS                       R1 R0 K8 ["totalUsage"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["totalUsage"]
        2 GETIMPORT                        R2 K3 [os.time]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K4 ["timestamp"]
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETTABLEKS                       R3 R0 K0 ["totalUsage"]
        3 GETTABLEKS                       R2 R3 K1 ["model"]
        5 JUMPIF                           R2 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["totalUsage"]
        8 SETTABLEKS                       R1 R2 K1 ["model"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["input_tokens"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
        5 GETTABLEKS                       R3 R1 K0 ["input_tokens"]
        7 SETTABLEKS                       R3 R2 K0 ["input_tokens"]
        9 GETTABLEKS                       R2 R1 K2 ["output_tokens"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       14 GETTABLEKS                       R3 R1 K2 ["output_tokens"]
       16 SETTABLEKS                       R3 R2 K2 ["output_tokens"]
       18 GETTABLEKS                       R2 R1 K3 ["cache_read_input_tokens"]
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       23 GETTABLEKS                       R3 R1 K3 ["cache_read_input_tokens"]
       25 SETTABLEKS                       R3 R2 K3 ["cache_read_input_tokens"]
       27 GETTABLEKS                       R2 R1 K4 ["cache_creation_input_tokens"]
       29 JUMPIFNOT                        R2 ; [+6]
       30 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       32 GETTABLEKS                       R3 R1 K4 ["cache_creation_input_tokens"]
       34 SETTABLEKS                       R3 R2 K4 ["cache_creation_input_tokens"]
       36 GETTABLEKS                       R2 R1 K5 ["reasoning_tokens"]
       38 JUMPIFNOT                        R2 ; [+6]
       39 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       41 GETTABLEKS                       R3 R1 K5 ["reasoning_tokens"]
       43 SETTABLEKS                       R3 R2 K5 ["reasoning_tokens"]
       45 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["input_tokens"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
        5 GETTABLEKS                       R3 R2 K0 ["input_tokens"]
        7 GETTABLEKS                       R4 R1 K0 ["input_tokens"]
        9 ADD                              R3 R3 R4
       10 SETTABLEKS                       R3 R2 K0 ["input_tokens"]
       12 GETTABLEKS                       R2 R1 K2 ["output_tokens"]
       14 JUMPIFNOT                        R2 ; [+9]
       15 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       17 GETTABLEKS                       R3 R2 K2 ["output_tokens"]
       19 GETTABLEKS                       R4 R1 K2 ["output_tokens"]
       21 ADD                              R3 R3 R4
       22 SETTABLEKS                       R3 R2 K2 ["output_tokens"]
       24 GETTABLEKS                       R2 R1 K3 ["cache_read_input_tokens"]
       26 JUMPIFNOT                        R2 ; [+9]
       27 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       29 GETTABLEKS                       R3 R2 K3 ["cache_read_input_tokens"]
       31 GETTABLEKS                       R4 R1 K3 ["cache_read_input_tokens"]
       33 ADD                              R3 R3 R4
       34 SETTABLEKS                       R3 R2 K3 ["cache_read_input_tokens"]
       36 GETTABLEKS                       R2 R1 K4 ["cache_creation_input_tokens"]
       38 JUMPIFNOT                        R2 ; [+9]
       39 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       41 GETTABLEKS                       R3 R2 K4 ["cache_creation_input_tokens"]
       43 GETTABLEKS                       R4 R1 K4 ["cache_creation_input_tokens"]
       45 ADD                              R3 R3 R4
       46 SETTABLEKS                       R3 R2 K4 ["cache_creation_input_tokens"]
       48 GETTABLEKS                       R2 R1 K5 ["reasoning_tokens"]
       50 JUMPIFNOT                        R2 ; [+9]
       51 GETTABLEKS                       R2 R0 K1 ["totalUsage"]
       53 GETTABLEKS                       R3 R2 K5 ["reasoning_tokens"]
       55 GETTABLEKS                       R4 R1 K5 ["reasoning_tokens"]
       57 ADD                              R3 R3 R4
       58 SETTABLEKS                       R3 R2 K5 ["reasoning_tokens"]
       60 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"totalUsage"}]
        1 DUPTABLE                         R2 K9 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
        2 LOADN                            R3 0
        3 SETTABLEKS                       R3 R2 K2 ["input_tokens"]
        5 LOADN                            R3 0
        6 SETTABLEKS                       R3 R2 K3 ["output_tokens"]
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R2 K4 ["cache_read_input_tokens"]
       11 LOADN                            R3 0
       12 SETTABLEKS                       R3 R2 K5 ["cache_creation_input_tokens"]
       14 LOADN                            R3 0
       15 SETTABLEKS                       R3 R2 K6 ["reasoning_tokens"]
       17 LOADN                            R3 0
       18 SETTABLEKS                       R3 R2 K7 ["timestamp"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K8 ["model"]
       23 SETTABLEKS                       R2 R1 K0 ["totalUsage"]
       25 GETUPVAL                         R4 0
       26 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K11 [setmetatable]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R5 1
       33 GETTABLE                         R4 R5 R0
       34 NOT                              R3 R4
       35 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       37 LOADK                            R4 K12 ["TokenUsageTracker with this name already exists"]
       38 GETIMPORT                        R2 K14 [assert]
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 1
       42 SETTABLE                         R1 R2 R0
       43 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 NEWTABLE                         R1 8 0
        5 SETTABLEKS                       R1 R1 K0 ["__index"]
        7 NEWTABLE                         R2 0 0
        9 DUPCLOSURE                       R3 K1 [PROTO_0]
       10 DUPCLOSURE                       R4 K2 [PROTO_1]
       11 SETTABLEKS                       R4 R1 K3 ["resetTotalUsage"]
       13 DUPCLOSURE                       R4 K4 [PROTO_2]
       14 SETTABLEKS                       R4 R1 K5 ["logTime"]
       16 DUPCLOSURE                       R4 K6 [PROTO_3]
       17 SETTABLEKS                       R4 R1 K7 ["logModel"]
       19 DUPCLOSURE                       R4 K8 [PROTO_4]
       20 SETTABLEKS                       R4 R1 K9 ["setUsage"]
       22 DUPCLOSURE                       R4 K10 [PROTO_5]
       23 SETTABLEKS                       R4 R1 K11 ["addUsage"]
       25 DUPCLOSURE                       R4 K12 [PROTO_6]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R0 K13 ["createTracker"]
       30 DUPCLOSURE                       R4 K14 [PROTO_7]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R0 K15 ["getAllTrackers"]
       34 RETURN                           R0 1
