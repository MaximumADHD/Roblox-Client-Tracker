PROTO_0:
        0 DUPTABLE                         R0 K9 [{[1] = 0, ["output_tokens"] = 0, ["cache_read_input_tokens"] = 0, ["cache_creation_input_tokens"] = 0, ["reasoning_tokens"] = 0, ["timestamp"] = 0, ["model"] = }]
        1 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K9 [{[1] = 0, ["output_tokens"] = 0, ["cache_read_input_tokens"] = 0, ["cache_creation_input_tokens"] = 0, ["reasoning_tokens"] = 0, ["timestamp"] = 0, ["model"] = }]
        1 SETTABLEKS                       R1 R0 K10 ["totalUsage"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["totalUsage"]
        2 GETIMPORT                        R2 K3 [os.time]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K4 ["timestamp"]
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETTABLEKS                       R2 R0 K0 ["totalUsage"]
        3 GETTABLEKS                       R2 R2 K1 ["model"]
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
        1 DUPTABLE                         R2 K11 [{["input_tokens"] = 0, ["output_tokens"] = 0, ["cache_read_input_tokens"] = 0, ["cache_creation_input_tokens"] = 0, ["reasoning_tokens"] = 0, ["timestamp"] = 0, ["model"] = }]
        2 SETTABLEKS                       R2 R1 K0 ["totalUsage"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K13 [setmetatable]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R4 R5 R0
       13 NOT                              R3 R4
       14 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       16 LOADK                            R4 K14 ["TokenUsageTracker with this name already exists"]
       17 GETIMPORT                        R2 K16 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 SETTABLE                         R1 R2 R0
       22 RETURN                           R1 1

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
