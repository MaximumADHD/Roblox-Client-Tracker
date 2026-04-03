PROTO_0:
        0 ADDK                             R3 R0 K1 [1]
        1 FASTCALL1                        MATH_LOG R3 ; [+2]
        2 GETIMPORT                        R2 K4 [math.log]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [0.693147180559945]
        6 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R3 2
        1 FASTCALL2                        MATH_POW R3 R0 ; [+4]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R2 K3 [math.pow]
        6 CALL                             R2 2 1
        7 SUBK                             R1 R2 K0 [1]
        8 RETURN                           R1 1

PROTO_2:
        0 FASTCALL2K                       MATH_MAX R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [0]
        4 GETIMPORT                        R1 K3 [math.max]
        6 CALL                             R1 2 1
        7 MOVE                             R0 R1
        8 GETIMPORT                        R1 K6 [string.format]
       10 LOADK                            R2 K7 ["%d:%05.2f"]
       11 DIVK                             R3 R0 K8 [60]
       12 MODK                             R4 R0 K8 [60]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["Data"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K4 ["AssetId"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K5 ["Volume"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K6 ["PlaybackSpeed"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K7 ["Looping"]
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K8 ["PlaybackRegion"]
       21 GETUPVAL                         R1 6
       22 SETTABLEKS                       R1 R0 K9 ["LoopRegion"]
       24 GETUPVAL                         R1 7
       25 SETTABLEKS                       R1 R0 K10 ["TimePosition"]
       27 GETUPVAL                         R2 8
       28 GETTABLEKS                       R1 R2 K11 ["assignProperties"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K12 ["SetData"]
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 4
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 5
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 6
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 4
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 5
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 6
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 5
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 6
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 6
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 7
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 1
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Data"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K4 ["AssetId"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K5 ["Volume"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K6 ["PlaybackSpeed"]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K7 ["Looping"]
       22 GETUPVAL                         R2 7
       23 SETTABLEKS                       R2 R1 K8 ["PlaybackRegion"]
       25 GETUPVAL                         R2 8
       26 SETTABLEKS                       R2 R1 K9 ["LoopRegion"]
       28 GETUPVAL                         R2 1
       29 SETTABLEKS                       R2 R1 K10 ["TimePosition"]
       31 GETUPVAL                         R3 9
       32 GETTABLEKS                       R2 R3 K11 ["assignProperties"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K12 ["SetData"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["seek"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [string.match]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K3 ["^%d+$"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 LOADK                            R1 K4 ["rbxassetid://"]
        7 GETUPVAL                         R2 0
        8 CONCAT                           R0 R1 R2
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R1 0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K0 ["X"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R2 R0 K0 ["X"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R1 R2 K0 ["stopPlayback"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R2 R0 K1 ["X"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["beginPlayback"]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["seek"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K2 ["beginPlayback"]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Min"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Max"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["Min"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["Max"]
       12 JUMPIFNOTEQ                      R3 R1 ; [+2]
       14 MOVE                             R3 R0
       15 MOVE                             R1 R0
       16 FASTCALL2                        MATH_MAX R3 R1 ; [+5]
       18 MOVE                             R6 R3
       19 MOVE                             R7 R1
       20 GETIMPORT                        R5 K4 [math.max]
       22 CALL                             R5 2 1
       23 MOVE                             R3 R5
       24 ADDK                             R7 R1 K5 [0.001]
       25 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K4 [math.max]
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 ADDK                             R7 R1 K5 [0.001]
       33 FASTCALL2                        MATH_MAX R2 R7 ; [+4]
       35 MOVE                             R6 R2
       36 GETIMPORT                        R5 K4 [math.max]
       38 CALL                             R5 2 1
       39 MOVE                             R2 R5
       40 GETUPVAL                         R5 2
       41 JUMPIFNOTLT                      R5 R2 ; [+29]
       43 JUMPIFNOTEQ                      R4 R2 ; [+2]
       45 GETUPVAL                         R4 2
       46 GETUPVAL                         R2 2
       47 FASTCALL2                        MATH_MIN R4 R2 ; [+5]
       49 MOVE                             R6 R4
       50 MOVE                             R7 R2
       51 GETIMPORT                        R5 K7 [math.min]
       53 CALL                             R5 2 1
       54 MOVE                             R4 R5
       55 SUBK                             R7 R2 K5 [0.001]
       56 FASTCALL2                        MATH_MIN R3 R7 ; [+4]
       58 MOVE                             R6 R3
       59 GETIMPORT                        R5 K7 [math.min]
       61 CALL                             R5 2 1
       62 MOVE                             R3 R5
       63 SUBK                             R7 R2 K5 [0.001]
       64 FASTCALL2                        MATH_MIN R1 R7 ; [+4]
       66 MOVE                             R6 R1
       67 GETIMPORT                        R5 K7 [math.min]
       69 CALL                             R5 2 1
       70 MOVE                             R1 R5
       71 GETUPVAL                         R5 3
       72 GETIMPORT                        R6 K10 [NumberRange.new]
       74 MOVE                             R7 R1
       75 MOVE                             R8 R2
       76 CALL                             R6 2 -1
       77 CALL                             R5 -1 0
       78 GETUPVAL                         R5 4
       79 GETIMPORT                        R6 K10 [NumberRange.new]
       81 MOVE                             R7 R3
       82 MOVE                             R8 R4
       83 CALL                             R6 2 -1
       84 CALL                             R5 -1 0
       85 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Min"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Max"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["Min"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["Max"]
       12 JUMPIFNOTEQ                      R4 R2 ; [+2]
       14 MOVE                             R4 R0
       15 MOVE                             R2 R0
       16 FASTCALL2                        MATH_MIN R4 R2 ; [+5]
       18 MOVE                             R6 R4
       19 MOVE                             R7 R2
       20 GETIMPORT                        R5 K4 [math.min]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 SUBK                             R7 R2 K5 [0.001]
       25 FASTCALL2                        MATH_MIN R3 R7 ; [+4]
       27 MOVE                             R6 R3
       28 GETIMPORT                        R5 K4 [math.min]
       30 CALL                             R5 2 1
       31 MOVE                             R3 R5
       32 SUBK                             R7 R2 K5 [0.001]
       33 FASTCALL2                        MATH_MIN R1 R7 ; [+4]
       35 MOVE                             R6 R1
       36 GETIMPORT                        R5 K4 [math.min]
       38 CALL                             R5 2 1
       39 MOVE                             R1 R5
       40 LOADN                            R5 0
       41 JUMPIFNOTLT                      R1 R5 ; [+29]
       43 JUMPIFNOTEQ                      R3 R1 ; [+2]
       45 LOADN                            R3 0
       46 LOADN                            R1 0
       47 FASTCALL2                        MATH_MAX R3 R1 ; [+5]
       49 MOVE                             R6 R3
       50 MOVE                             R7 R1
       51 GETIMPORT                        R5 K7 [math.max]
       53 CALL                             R5 2 1
       54 MOVE                             R3 R5
       55 ADDK                             R7 R1 K5 [0.001]
       56 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       58 MOVE                             R6 R4
       59 GETIMPORT                        R5 K7 [math.max]
       61 CALL                             R5 2 1
       62 MOVE                             R4 R5
       63 ADDK                             R7 R1 K5 [0.001]
       64 FASTCALL2                        MATH_MAX R2 R7 ; [+4]
       66 MOVE                             R6 R2
       67 GETIMPORT                        R5 K7 [math.max]
       69 CALL                             R5 2 1
       70 MOVE                             R2 R5
       71 GETUPVAL                         R5 2
       72 GETIMPORT                        R6 K10 [NumberRange.new]
       74 MOVE                             R7 R1
       75 MOVE                             R8 R2
       76 CALL                             R6 2 -1
       77 CALL                             R5 -1 0
       78 GETUPVAL                         R5 3
       79 GETIMPORT                        R6 K10 [NumberRange.new]
       81 MOVE                             R7 R3
       82 MOVE                             R8 R4
       83 CALL                             R6 2 -1
       84 CALL                             R5 -1 0
       85 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Min"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Max"]
        6 MOVE                             R1 R0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K0 ["Min"]
       10 FASTCALL2                        MATH_MAX R1 R5 ; [+4]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K4 [math.max]
       15 CALL                             R3 2 1
       16 MOVE                             R1 R3
       17 ADDK                             R5 R1 K5 [0.001]
       18 FASTCALL2                        MATH_MAX R2 R5 ; [+4]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K4 [math.max]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K1 ["Max"]
       28 JUMPIFNOTLT                      R3 R2 ; [+12]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K1 ["Max"]
       33 SUBK                             R5 R2 K5 [0.001]
       34 FASTCALL2                        MATH_MIN R1 R5 ; [+4]
       36 MOVE                             R4 R1
       37 GETIMPORT                        R3 K7 [math.min]
       39 CALL                             R3 2 1
       40 MOVE                             R1 R3
       41 GETUPVAL                         R3 2
       42 GETIMPORT                        R4 K10 [NumberRange.new]
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 CALL                             R4 2 -1
       47 CALL                             R3 -1 0
       48 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Min"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Max"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["Max"]
       10 FASTCALL2                        MATH_MIN R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K4 [math.min]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 SUBK                             R5 R2 K5 [0.001]
       18 FASTCALL2                        MATH_MIN R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K4 [math.min]
       23 CALL                             R3 2 1
       24 MOVE                             R1 R3
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K0 ["Min"]
       28 JUMPIFNOTLT                      R1 R3 ; [+12]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R1 R3 K0 ["Min"]
       33 ADDK                             R5 R1 K5 [0.001]
       34 FASTCALL2                        MATH_MAX R2 R5 ; [+4]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K7 [math.max]
       39 CALL                             R3 2 1
       40 MOVE                             R2 R3
       41 GETUPVAL                         R3 2
       42 GETIMPORT                        R4 K10 [NumberRange.new]
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 CALL                             R4 2 -1
       47 CALL                             R3 -1 0
       48 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 MOVE                             R1 R0
        1 LOADN                            R3 2
        2 FASTCALL2                        MATH_POW R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [math.pow]
        7 CALL                             R2 2 1
        8 SUBK                             R0 R2 K0 [1]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_31:
        0 MOVE                             R1 R0
        1 LOADN                            R3 2
        2 FASTCALL2                        MATH_POW R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [math.pow]
        7 CALL                             R2 2 1
        8 SUBK                             R0 R2 K0 [1]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["togglePreviewInWorld"]
        3 GETUPVAL                         R2 1
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 1
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Data"]
        4 GETTABLEKS                       R1 R2 K1 ["AssetId"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["Data"]
       11 GETTABLEKS                       R1 R2 K2 ["Volume"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K0 ["Data"]
       18 GETTABLEKS                       R1 R2 K3 ["PlaybackSpeed"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K0 ["Data"]
       25 GETTABLEKS                       R1 R2 K4 ["Looping"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 5
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K0 ["Data"]
       32 GETTABLEKS                       R1 R2 K5 ["PlaybackRegion"]
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 6
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R2 R3 K0 ["Data"]
       39 GETTABLEKS                       R1 R2 K6 ["LoopRegion"]
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 7
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R2 R3 K0 ["Data"]
       46 GETTABLEKS                       R1 R2 K7 ["TimePosition"]
       48 CALL                             R0 1 0
       49 GETUPVAL                         R1 8
       50 GETTABLEKS                       R0 R1 K8 ["assignProperties"]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R1 R2 K0 ["Data"]
       55 CALL                             R0 1 0
       56 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 255
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["loadAndFetchTimeLength"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 4
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 5
       13 LOADK                            R1 K1 [""]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K2 ["getAssetName"]
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 5
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_38:
        0 DUPCLOSURE                       R0 K0 [PROTO_37]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K1 ["Data"]
        5 GETTABLEKS                       R2 R3 K2 ["AssetId"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["useState"]
       11 GETTABLEKS                       R5 R0 K1 ["Data"]
       13 GETTABLEKS                       R4 R5 K3 ["Volume"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["useState"]
       19 GETTABLEKS                       R7 R0 K1 ["Data"]
       21 GETTABLEKS                       R6 R7 K4 ["PlaybackSpeed"]
       23 CALL                             R5 1 2
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K0 ["useState"]
       27 GETTABLEKS                       R9 R0 K1 ["Data"]
       29 GETTABLEKS                       R8 R9 K5 ["Looping"]
       31 CALL                             R7 1 2
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K0 ["useState"]
       35 GETTABLEKS                       R11 R0 K1 ["Data"]
       37 GETTABLEKS                       R10 R11 K6 ["PlaybackRegion"]
       39 CALL                             R9 1 2
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K0 ["useState"]
       43 GETTABLEKS                       R13 R0 K1 ["Data"]
       45 GETTABLEKS                       R12 R13 K7 ["LoopRegion"]
       47 CALL                             R11 1 2
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R13 R14 K0 ["useState"]
       51 GETTABLEKS                       R15 R0 K1 ["Data"]
       53 GETTABLEKS                       R14 R15 K8 ["TimePosition"]
       55 CALL                             R13 1 2
       56 GETUPVAL                         R16 0
       57 GETTABLEKS                       R15 R16 K0 ["useState"]
       59 LOADK                            R16 K9 [""]
       60 CALL                             R15 1 2
       61 GETUPVAL                         R18 0
       62 GETTABLEKS                       R17 R18 K0 ["useState"]
       64 LOADB                            R18 0
       65 CALL                             R17 1 2
       66 GETUPVAL                         R20 0
       67 GETTABLEKS                       R19 R20 K0 ["useState"]
       69 MOVE                             R20 R1
       70 CALL                             R19 1 2
       71 GETUPVAL                         R22 0
       72 GETTABLEKS                       R21 R22 K0 ["useState"]
       74 LOADB                            R22 0
       75 CALL                             R21 1 2
       76 GETUPVAL                         R24 0
       77 GETTABLEKS                       R23 R24 K0 ["useState"]
       79 LOADN                            R24 255
       80 CALL                             R23 1 2
       81 GETUPVAL                         R26 0
       82 GETTABLEKS                       R25 R26 K0 ["useState"]
       84 GETTABLEKS                       R27 R0 K1 ["Data"]
       86 GETTABLEKS                       R26 R27 K8 ["TimePosition"]
       88 CALL                             R25 1 2
       89 GETUPVAL                         R28 0
       90 GETTABLEKS                       R27 R28 K0 ["useState"]
       92 LOADN                            R28 0
       93 CALL                             R27 1 2
       94 GETUPVAL                         R30 0
       95 GETTABLEKS                       R29 R30 K0 ["useState"]
       97 LOADB                            R30 0
       98 CALL                             R29 1 2
       99 GETUPVAL                         R32 0
      100 GETTABLEKS                       R31 R32 K0 ["useState"]
      102 LOADB                            R32 0
      103 CALL                             R31 1 2
      104 GETUPVAL                         R34 0
      105 GETTABLEKS                       R33 R34 K0 ["useState"]
      107 LOADB                            R34 0
      108 CALL                             R33 1 2
      109 GETUPVAL                         R36 0
      110 GETTABLEKS                       R35 R36 K0 ["useState"]
      112 LOADB                            R36 0
      113 CALL                             R35 1 2
      114 GETUPVAL                         R38 0
      115 GETTABLEKS                       R37 R38 K0 ["useState"]
      117 LOADN                            R38 244
      118 CALL                             R37 1 2
      119 GETUPVAL                         R39 1
      120 CALL                             R39 0 1
      121 GETTABLEKS                       R42 R39 K10 ["Color"]
      123 GETTABLEKS                       R41 R42 K11 ["System"]
      125 GETTABLEKS                       R40 R41 K12 ["Contrast"]
      127 GETTABLEKS                       R43 R39 K10 ["Color"]
      129 GETTABLEKS                       R42 R43 K11 ["System"]
      131 GETTABLEKS                       R41 R42 K13 ["Warning"]
      133 GETTABLEKS                       R44 R39 K10 ["Color"]
      135 GETTABLEKS                       R43 R44 K11 ["System"]
      137 GETTABLEKS                       R42 R43 K14 ["Success"]
      139 GETUPVAL                         R43 2
      140 NAMECALL                         R43 R43 K15 ["use"]
      142 CALL                             R43 1 1
      143 LOADK                            R46 K16 ["Label"]
      144 LOADK                            R47 K17 ["AudioContent"]
      145 NAMECALL                         R44 R43 K18 ["getText"]
      147 CALL                             R44 3 1
      148 LOADK                            R47 K16 ["Label"]
      149 LOADK                            R48 K4 ["PlaybackSpeed"]
      150 NAMECALL                         R45 R43 K18 ["getText"]
      152 CALL                             R45 3 1
      153 LOADK                            R48 K16 ["Label"]
      154 LOADK                            R49 K19 ["PreviewInWorld"]
      155 NAMECALL                         R46 R43 K18 ["getText"]
      157 CALL                             R46 3 1
      158 LOADK                            R49 K16 ["Label"]
      159 LOADK                            R50 K3 ["Volume"]
      160 NAMECALL                         R47 R43 K18 ["getText"]
      162 CALL                             R47 3 1
      163 NEWCLOSURE                       R48 P0
      164 CAPTURE                          VAL R0
      165 CAPTURE                          REF R1
      166 CAPTURE                          REF R3
      167 CAPTURE                          REF R5
      168 CAPTURE                          REF R7
      169 CAPTURE                          REF R9
      170 CAPTURE                          REF R11
      171 CAPTURE                          REF R13
      172 CAPTURE                          UPVAL U3
      173 GETUPVAL                         R50 0
      174 GETTABLEKS                       R49 R50 K20 ["useCallback"]
      176 NEWCLOSURE                       R50 P1
      177 CAPTURE                          VAL R2
      178 CAPTURE                          REF R1
      179 CAPTURE                          VAL R0
      180 CAPTURE                          REF R3
      181 CAPTURE                          REF R5
      182 CAPTURE                          REF R7
      183 CAPTURE                          REF R9
      184 CAPTURE                          REF R11
      185 CAPTURE                          REF R13
      186 CAPTURE                          UPVAL U3
      187 NEWTABLE                         R51 0 1
      189 MOVE                             R52 R2
      190 SETLIST                          R51 R52 1 [1]
      192 CALL                             R49 2 1
      193 GETUPVAL                         R51 0
      194 GETTABLEKS                       R50 R51 K20 ["useCallback"]
      196 NEWCLOSURE                       R51 P2
      197 CAPTURE                          VAL R4
      198 CAPTURE                          REF R3
      199 CAPTURE                          VAL R0
      200 CAPTURE                          REF R1
      201 CAPTURE                          REF R5
      202 CAPTURE                          REF R7
      203 CAPTURE                          REF R9
      204 CAPTURE                          REF R11
      205 CAPTURE                          REF R13
      206 CAPTURE                          UPVAL U3
      207 NEWTABLE                         R52 0 1
      209 MOVE                             R53 R4
      210 SETLIST                          R52 R53 1 [1]
      212 CALL                             R50 2 1
      213 GETUPVAL                         R52 0
      214 GETTABLEKS                       R51 R52 K20 ["useCallback"]
      216 NEWCLOSURE                       R52 P3
      217 CAPTURE                          VAL R6
      218 CAPTURE                          REF R5
      219 CAPTURE                          VAL R0
      220 CAPTURE                          REF R1
      221 CAPTURE                          REF R3
      222 CAPTURE                          REF R7
      223 CAPTURE                          REF R9
      224 CAPTURE                          REF R11
      225 CAPTURE                          REF R13
      226 CAPTURE                          UPVAL U3
      227 NEWTABLE                         R53 0 1
      229 MOVE                             R54 R6
      230 SETLIST                          R53 R54 1 [1]
      232 CALL                             R51 2 1
      233 GETUPVAL                         R53 0
      234 GETTABLEKS                       R52 R53 K20 ["useCallback"]
      236 NEWCLOSURE                       R53 P4
      237 CAPTURE                          VAL R8
      238 CAPTURE                          REF R7
      239 CAPTURE                          VAL R0
      240 CAPTURE                          REF R1
      241 CAPTURE                          REF R3
      242 CAPTURE                          REF R5
      243 CAPTURE                          REF R9
      244 CAPTURE                          REF R11
      245 CAPTURE                          REF R13
      246 CAPTURE                          UPVAL U3
      247 NEWTABLE                         R54 0 1
      249 MOVE                             R55 R8
      250 SETLIST                          R54 R55 1 [1]
      252 CALL                             R52 2 1
      253 GETUPVAL                         R54 0
      254 GETTABLEKS                       R53 R54 K20 ["useCallback"]
      256 NEWCLOSURE                       R54 P5
      257 CAPTURE                          VAL R10
      258 CAPTURE                          REF R9
      259 CAPTURE                          VAL R0
      260 CAPTURE                          REF R1
      261 CAPTURE                          REF R3
      262 CAPTURE                          REF R5
      263 CAPTURE                          REF R7
      264 CAPTURE                          REF R11
      265 CAPTURE                          REF R13
      266 CAPTURE                          UPVAL U3
      267 NEWTABLE                         R55 0 1
      269 MOVE                             R56 R10
      270 SETLIST                          R55 R56 1 [1]
      272 CALL                             R53 2 1
      273 GETUPVAL                         R55 0
      274 GETTABLEKS                       R54 R55 K20 ["useCallback"]
      276 NEWCLOSURE                       R55 P6
      277 CAPTURE                          VAL R12
      278 CAPTURE                          REF R11
      279 CAPTURE                          VAL R0
      280 CAPTURE                          REF R1
      281 CAPTURE                          REF R3
      282 CAPTURE                          REF R5
      283 CAPTURE                          REF R7
      284 CAPTURE                          REF R9
      285 CAPTURE                          REF R13
      286 CAPTURE                          UPVAL U3
      287 NEWTABLE                         R56 0 1
      289 MOVE                             R57 R12
      290 SETLIST                          R56 R57 1 [1]
      292 CALL                             R54 2 1
      293 GETUPVAL                         R56 0
      294 GETTABLEKS                       R55 R56 K20 ["useCallback"]
      296 NEWCLOSURE                       R56 P7
      297 CAPTURE                          VAL R14
      298 CAPTURE                          REF R13
      299 CAPTURE                          VAL R0
      300 CAPTURE                          REF R1
      301 CAPTURE                          REF R3
      302 CAPTURE                          REF R5
      303 CAPTURE                          REF R7
      304 CAPTURE                          REF R9
      305 CAPTURE                          REF R11
      306 CAPTURE                          UPVAL U3
      307 NEWTABLE                         R57 0 1
      309 MOVE                             R58 R14
      310 SETLIST                          R57 R58 1 [1]
      312 CALL                             R55 2 1
      313 GETUPVAL                         R57 0
      314 GETTABLEKS                       R56 R57 K20 ["useCallback"]
      316 NEWCLOSURE                       R57 P8
      317 CAPTURE                          VAL R23
      318 CAPTURE                          VAL R26
      319 CAPTURE                          UPVAL U3
      320 NEWTABLE                         R58 0 2
      322 MOVE                             R59 R23
      323 MOVE                             R60 R26
      324 SETLIST                          R58 R59 2 [1]
      326 CALL                             R56 2 1
      327 GETUPVAL                         R58 0
      328 GETTABLEKS                       R57 R58 K20 ["useCallback"]
      330 NEWCLOSURE                       R58 P9
      331 CAPTURE                          VAL R18
      332 NEWTABLE                         R59 0 1
      334 MOVE                             R60 R18
      335 SETLIST                          R59 R60 1 [1]
      337 CALL                             R57 2 1
      338 GETUPVAL                         R59 0
      339 GETTABLEKS                       R58 R59 K20 ["useCallback"]
      341 NEWCLOSURE                       R59 P10
      342 CAPTURE                          VAL R18
      343 NEWTABLE                         R60 0 1
      345 MOVE                             R61 R18
      346 SETLIST                          R60 R61 1 [1]
      348 CALL                             R58 2 1
      349 GETUPVAL                         R60 0
      350 GETTABLEKS                       R59 R60 K20 ["useCallback"]
      352 NEWCLOSURE                       R60 P11
      353 CAPTURE                          VAL R20
      354 NEWTABLE                         R61 0 1
      356 MOVE                             R62 R20
      357 SETLIST                          R61 R62 1 [1]
      359 CALL                             R59 2 1
      360 GETUPVAL                         R61 0
      361 GETTABLEKS                       R60 R61 K20 ["useCallback"]
      363 NEWCLOSURE                       R61 P12
      364 CAPTURE                          REF R19
      365 CAPTURE                          VAL R20
      366 CAPTURE                          VAL R49
      367 NEWTABLE                         R62 0 3
      369 MOVE                             R63 R19
      370 MOVE                             R64 R20
      371 MOVE                             R65 R49
      372 SETLIST                          R62 R63 3 [1]
      374 CALL                             R60 2 1
      375 GETUPVAL                         R62 0
      376 GETTABLEKS                       R61 R62 K20 ["useCallback"]
      378 NEWCLOSURE                       R62 P13
      379 CAPTURE                          VAL R23
      380 CAPTURE                          VAL R28
      381 CAPTURE                          VAL R31
      382 CAPTURE                          VAL R56
      383 NEWTABLE                         R63 0 4
      385 MOVE                             R64 R28
      386 MOVE                             R65 R23
      387 MOVE                             R66 R31
      388 MOVE                             R67 R56
      389 SETLIST                          R63 R64 4 [1]
      391 CALL                             R61 2 1
      392 GETUPVAL                         R63 0
      393 GETTABLEKS                       R62 R63 K20 ["useCallback"]
      395 NEWCLOSURE                       R63 P14
      396 CAPTURE                          VAL R32
      397 CAPTURE                          VAL R30
      398 CAPTURE                          VAL R21
      399 CAPTURE                          UPVAL U3
      400 CAPTURE                          VAL R56
      401 NEWTABLE                         R64 0 4
      403 MOVE                             R65 R21
      404 MOVE                             R66 R32
      405 MOVE                             R67 R30
      406 MOVE                             R68 R56
      407 SETLIST                          R64 R65 4 [1]
      409 CALL                             R62 2 1
      410 GETUPVAL                         R64 0
      411 GETTABLEKS                       R63 R64 K20 ["useCallback"]
      413 NEWCLOSURE                       R64 P15
      414 CAPTURE                          VAL R32
      415 CAPTURE                          VAL R29
      416 CAPTURE                          UPVAL U3
      417 CAPTURE                          VAL R22
      418 CAPTURE                          VAL R26
      419 NEWTABLE                         R65 0 4
      421 MOVE                             R66 R29
      422 MOVE                             R67 R32
      423 MOVE                             R68 R22
      424 MOVE                             R69 R26
      425 SETLIST                          R65 R66 4 [1]
      427 CALL                             R63 2 1
      428 GETUPVAL                         R65 0
      429 GETTABLEKS                       R64 R65 K20 ["useCallback"]
      431 NEWCLOSURE                       R65 P16
      432 CAPTURE                          VAL R21
      433 CAPTURE                          UPVAL U3
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R22
      436 CAPTURE                          VAL R26
      437 NEWTABLE                         R66 0 4
      439 MOVE                             R67 R21
      440 MOVE                             R68 R22
      441 MOVE                             R69 R25
      442 MOVE                             R70 R26
      443 SETLIST                          R66 R67 4 [1]
      445 CALL                             R64 2 1
      446 GETUPVAL                         R66 0
      447 GETTABLEKS                       R65 R66 K20 ["useCallback"]
      449 NEWCLOSURE                       R66 P17
      450 CAPTURE                          VAL R56
      451 CAPTURE                          REF R13
      452 NEWTABLE                         R67 0 2
      454 MOVE                             R68 R56
      455 MOVE                             R69 R13
      456 SETLIST                          R67 R68 2 [1]
      458 CALL                             R65 2 1
      459 GETUPVAL                         R67 0
      460 GETTABLEKS                       R66 R67 K20 ["useCallback"]
      462 NEWCLOSURE                       R67 P18
      463 CAPTURE                          VAL R52
      464 CAPTURE                          REF R7
      465 NEWTABLE                         R68 0 2
      467 MOVE                             R69 R7
      468 MOVE                             R70 R52
      469 SETLIST                          R68 R69 2 [1]
      471 CALL                             R66 2 1
      472 GETUPVAL                         R68 0
      473 GETTABLEKS                       R67 R68 K20 ["useCallback"]
      475 NEWCLOSURE                       R68 P19
      476 CAPTURE                          VAL R55
      477 NEWTABLE                         R69 0 1
      479 MOVE                             R70 R55
      480 SETLIST                          R69 R70 1 [1]
      482 CALL                             R67 2 1
      483 GETUPVAL                         R69 0
      484 GETTABLEKS                       R68 R69 K20 ["useCallback"]
      486 NEWCLOSURE                       R69 P20
      487 CAPTURE                          REF R9
      488 CAPTURE                          REF R11
      489 CAPTURE                          VAL R23
      490 CAPTURE                          VAL R53
      491 CAPTURE                          VAL R54
      492 NEWTABLE                         R70 0 5
      494 MOVE                             R71 R9
      495 MOVE                             R72 R11
      496 MOVE                             R73 R23
      497 MOVE                             R74 R53
      498 MOVE                             R75 R54
      499 SETLIST                          R70 R71 5 [1]
      501 CALL                             R68 2 1
      502 GETUPVAL                         R70 0
      503 GETTABLEKS                       R69 R70 K20 ["useCallback"]
      505 NEWCLOSURE                       R70 P21
      506 CAPTURE                          REF R9
      507 CAPTURE                          REF R11
      508 CAPTURE                          VAL R53
      509 CAPTURE                          VAL R54
      510 NEWTABLE                         R71 0 4
      512 MOVE                             R72 R9
      513 MOVE                             R73 R11
      514 MOVE                             R74 R53
      515 MOVE                             R75 R54
      516 SETLIST                          R71 R72 4 [1]
      518 CALL                             R69 2 1
      519 GETUPVAL                         R71 0
      520 GETTABLEKS                       R70 R71 K20 ["useCallback"]
      522 NEWCLOSURE                       R71 P22
      523 CAPTURE                          REF R11
      524 CAPTURE                          REF R9
      525 CAPTURE                          VAL R54
      526 NEWTABLE                         R72 0 3
      528 MOVE                             R73 R9
      529 MOVE                             R74 R11
      530 MOVE                             R75 R54
      531 SETLIST                          R72 R73 3 [1]
      533 CALL                             R70 2 1
      534 GETUPVAL                         R72 0
      535 GETTABLEKS                       R71 R72 K20 ["useCallback"]
      537 NEWCLOSURE                       R72 P23
      538 CAPTURE                          REF R11
      539 CAPTURE                          REF R9
      540 CAPTURE                          VAL R54
      541 NEWTABLE                         R73 0 3
      543 MOVE                             R74 R9
      544 MOVE                             R75 R11
      545 MOVE                             R76 R54
      546 SETLIST                          R73 R74 3 [1]
      548 CALL                             R71 2 1
      549 GETUPVAL                         R73 0
      550 GETTABLEKS                       R72 R73 K20 ["useCallback"]
      552 NEWCLOSURE                       R73 P24
      553 CAPTURE                          VAL R34
      554 NEWTABLE                         R74 0 1
      556 MOVE                             R75 R34
      557 SETLIST                          R74 R75 1 [1]
      559 CALL                             R72 2 1
      560 GETUPVAL                         R74 0
      561 GETTABLEKS                       R73 R74 K20 ["useCallback"]
      563 NEWCLOSURE                       R74 P25
      564 CAPTURE                          VAL R34
      565 NEWTABLE                         R75 0 1
      567 MOVE                             R76 R34
      568 SETLIST                          R75 R76 1 [1]
      570 CALL                             R73 2 1
      571 GETUPVAL                         R75 0
      572 GETTABLEKS                       R74 R75 K20 ["useCallback"]
      574 NEWCLOSURE                       R75 P26
      575 CAPTURE                          VAL R50
      576 NEWTABLE                         R76 0 1
      578 MOVE                             R77 R50
      579 SETLIST                          R76 R77 1 [1]
      581 CALL                             R74 2 1
      582 GETUPVAL                         R76 0
      583 GETTABLEKS                       R75 R76 K20 ["useCallback"]
      585 NEWCLOSURE                       R76 P27
      586 CAPTURE                          VAL R50
      587 NEWTABLE                         R77 0 1
      589 MOVE                             R78 R50
      590 SETLIST                          R77 R78 1 [1]
      592 CALL                             R75 2 1
      593 GETUPVAL                         R77 0
      594 GETTABLEKS                       R76 R77 K20 ["useCallback"]
      596 NEWCLOSURE                       R77 P28
      597 CAPTURE                          VAL R51
      598 NEWTABLE                         R78 0 1
      600 MOVE                             R79 R51
      601 SETLIST                          R78 R79 1 [1]
      603 CALL                             R76 2 1
      604 GETUPVAL                         R78 0
      605 GETTABLEKS                       R77 R78 K20 ["useCallback"]
      607 NEWCLOSURE                       R78 P29
      608 CAPTURE                          VAL R51
      609 NEWTABLE                         R79 0 1
      611 MOVE                             R80 R51
      612 SETLIST                          R79 R80 1 [1]
      614 CALL                             R77 2 1
      615 GETUPVAL                         R79 0
      616 GETTABLEKS                       R78 R79 K20 ["useCallback"]
      618 NEWCLOSURE                       R79 P30
      619 CAPTURE                          UPVAL U3
      620 CAPTURE                          VAL R35
      621 CAPTURE                          VAL R36
      622 NEWTABLE                         R80 0 2
      624 MOVE                             R81 R35
      625 MOVE                             R82 R36
      626 SETLIST                          R80 R81 2 [1]
      628 CALL                             R78 2 1
      629 GETUPVAL                         R80 0
      630 GETTABLEKS                       R79 R80 K21 ["useEffect"]
      632 NEWCLOSURE                       R80 P31
      633 CAPTURE                          VAL R2
      634 CAPTURE                          VAL R0
      635 CAPTURE                          VAL R4
      636 CAPTURE                          VAL R6
      637 CAPTURE                          VAL R8
      638 CAPTURE                          VAL R10
      639 CAPTURE                          VAL R12
      640 CAPTURE                          VAL R14
      641 CAPTURE                          UPVAL U3
      642 NEWTABLE                         R81 0 1
      644 GETTABLEKS                       R82 R0 K1 ["Data"]
      646 SETLIST                          R81 R82 1 [1]
      648 CALL                             R79 2 0
      649 GETUPVAL                         R80 0
      650 GETTABLEKS                       R79 R80 K21 ["useEffect"]
      652 NEWCLOSURE                       R80 P32
      653 CAPTURE                          VAL R21
      654 CAPTURE                          VAL R56
      655 CAPTURE                          REF R13
      656 NEWTABLE                         R81 0 1
      658 MOVE                             R82 R13
      659 SETLIST                          R81 R82 1 [1]
      661 CALL                             R79 2 0
      662 GETUPVAL                         R80 0
      663 GETTABLEKS                       R79 R80 K21 ["useEffect"]
      665 NEWCLOSURE                       R80 P33
      666 CAPTURE                          VAL R24
      667 CAPTURE                          UPVAL U3
      668 CAPTURE                          REF R1
      669 CAPTURE                          VAL R56
      670 CAPTURE                          REF R13
      671 CAPTURE                          VAL R16
      672 NEWTABLE                         R81 0 1
      674 MOVE                             R82 R1
      675 SETLIST                          R81 R82 1 [1]
      677 CALL                             R79 2 0
      678 GETUPVAL                         R80 0
      679 GETTABLEKS                       R79 R80 K21 ["useEffect"]
      681 DUPCLOSURE                       R80 K22 [PROTO_38]
      682 CAPTURE                          UPVAL U3
      683 NEWTABLE                         R81 0 0
      685 CALL                             R79 2 0
      686 MOVE                             R79 R21
      687 JUMPIF                           R79 ; [+1]
      688 AND                              R79 R31 R29
      689 LOADB                            R80 1
      690 GETTABLEKS                       R82 R0 K1 ["Data"]
      692 GETTABLEKS                       R81 R82 K23 ["Type"]
      694 JUMPIFEQKS                       R81 K24 ["AudioPlayer"] ; [+11]
      696 GETUPVAL                         R80 4
      697 JUMPIFNOT                        R80 ; [+8]
      698 GETTABLEKS                       R82 R0 K1 ["Data"]
      700 GETTABLEKS                       R81 R82 K23 ["Type"]
      702 JUMPIFEQKS                       R81 K25 ["Sound"] ; [+2]
      704 LOADB                            R80 0 +1
      705 LOADB                            R80 1
      706 NOT                              R81 R17
      707 JUMPIFNOT                        R81 ; [+4]
      708 JUMPIFNOTEQKS                    R15 K9 [""] ; [+2]
      710 LOADB                            R81 0 +1
      711 LOADB                            R81 1
      712 GETUPVAL                         R83 0
      713 GETTABLEKS                       R82 R83 K26 ["createElement"]
      715 GETUPVAL                         R83 5
      716 DUPTABLE                         R84 K28 [{"tag"}]
      717 LOADK                            R85 K29 ["col size-full-0 auto-y gap-none"]
      718 SETTABLEKS                       R85 R84 K27 ["tag"]
      720 DUPTABLE                         R85 K35 [{"AssetRow", "WaveformRow", "VolumeRow", "PlaybackSpeedRow", "PreviewInWorldRow"}]
      721 GETUPVAL                         R87 0
      722 GETTABLEKS                       R86 R87 K26 ["createElement"]
      724 GETUPVAL                         R87 5
      725 DUPTABLE                         R88 K37 [{"LayoutOrder", "tag"}]
      726 LOADN                            R89 1
      727 SETTABLEKS                       R89 R88 K36 ["LayoutOrder"]
      729 LOADK                            R89 K38 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
      730 SETTABLEKS                       R89 R88 K27 ["tag"]
      732 DUPTABLE                         R89 K41 [{"AssetText", "AssetInput"}]
      733 GETUPVAL                         R91 0
      734 GETTABLEKS                       R90 R91 K26 ["createElement"]
      736 GETUPVAL                         R91 6
      737 DUPTABLE                         R92 K43 [{"LayoutOrder", "Text", "tag"}]
      738 LOADN                            R93 1
      739 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
      741 SETTABLEKS                       R44 R92 K42 ["Text"]
      743 LOADK                            R93 K44 ["auto-x"]
      744 SETTABLEKS                       R93 R92 K27 ["tag"]
      746 CALL                             R90 2 1
      747 SETTABLEKS                       R90 R89 K39 ["AssetText"]
      749 GETUPVAL                         R91 0
      750 GETTABLEKS                       R90 R91 K26 ["createElement"]
      752 GETUPVAL                         R91 7
      753 DUPTABLE                         R92 K54 [{"LayoutOrder", "text", "label", "range", "size", "width", "onFocusGained", "onFocusLost", "onChanged", "onReturnPressed"}]
      754 LOADN                            R93 2
      755 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
      757 JUMPIFNOT                        R81 ; [+2]
      758 MOVE                             R93 R15
      759 JUMP                             ; [+1]
      760 MOVE                             R93 R1
      761 SETTABLEKS                       R93 R92 K45 ["text"]
      763 LOADK                            R93 K9 [""]
      764 SETTABLEKS                       R93 R92 K46 ["label"]
      766 GETIMPORT                        R93 K57 [NumberRange.new]
      768 LOADN                            R94 0
      769 LOADN                            R95 1
      770 CALL                             R93 2 1
      771 SETTABLEKS                       R93 R92 K47 ["range"]
      773 GETUPVAL                         R96 8
      774 GETTABLEKS                       R95 R96 K58 ["Enums"]
      776 GETTABLEKS                       R94 R95 K59 ["IconSize"]
      778 GETTABLEKS                       R93 R94 K60 ["Small"]
      780 SETTABLEKS                       R93 R92 K48 ["size"]
      782 GETIMPORT                        R93 K62 [UDim.new]
      784 LOADK                            R94 K63 [0.5]
      785 LOADN                            R95 0
      786 CALL                             R93 2 1
      787 SETTABLEKS                       R93 R92 K49 ["width"]
      789 SETTABLEKS                       R57 R92 K50 ["onFocusGained"]
      791 SETTABLEKS                       R58 R92 K51 ["onFocusLost"]
      793 SETTABLEKS                       R59 R92 K52 ["onChanged"]
      795 SETTABLEKS                       R60 R92 K53 ["onReturnPressed"]
      797 CALL                             R90 2 1
      798 SETTABLEKS                       R90 R89 K40 ["AssetInput"]
      800 CALL                             R86 3 1
      801 SETTABLEKS                       R86 R85 K30 ["AssetRow"]
      803 GETUPVAL                         R87 0
      804 GETTABLEKS                       R86 R87 K26 ["createElement"]
      806 GETUPVAL                         R87 5
      807 DUPTABLE                         R88 K37 [{"LayoutOrder", "tag"}]
      808 LOADN                            R89 2
      809 SETTABLEKS                       R89 R88 K36 ["LayoutOrder"]
      811 LOADK                            R89 K64 ["row align-y-center gap-medium size-full-3000 padding-medium"]
      812 SETTABLEKS                       R89 R88 K27 ["tag"]
      814 DUPTABLE                         R89 K68 [{"LeftButtons", "WaveformContent", "LoopButton"}]
      815 GETUPVAL                         R91 0
      816 GETTABLEKS                       R90 R91 K26 ["createElement"]
      818 GETUPVAL                         R91 5
      819 DUPTABLE                         R92 K37 [{"LayoutOrder", "tag"}]
      820 LOADN                            R93 1
      821 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
      823 LOADK                            R93 K69 ["col size-0-full auto-x flex-y-evenly align-x-center gap-none"]
      824 SETTABLEKS                       R93 R92 K27 ["tag"]
      826 DUPTABLE                         R93 K72 [{"PlayButton", "ResetTimeButton"}]
      827 GETUPVAL                         R95 0
      828 GETTABLEKS                       R94 R95 K26 ["createElement"]
      830 GETUPVAL                         R95 9
      831 DUPTABLE                         R96 K77 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      832 LOADN                            R97 1
      833 SETTABLEKS                       R97 R96 K36 ["LayoutOrder"]
      835 JUMPIFNOT                        R79 ; [+8]
      836 GETUPVAL                         R100 8
      837 GETTABLEKS                       R99 R100 K58 ["Enums"]
      839 GETTABLEKS                       R98 R99 K78 ["IconName"]
      841 GETTABLEKS                       R97 R98 K79 ["PauseLarge"]
      843 JUMP                             ; [+7]
      844 GETUPVAL                         R100 8
      845 GETTABLEKS                       R99 R100 K58 ["Enums"]
      847 GETTABLEKS                       R98 R99 K78 ["IconName"]
      849 GETTABLEKS                       R97 R98 K80 ["PlayLarge"]
      851 SETTABLEKS                       R97 R96 K73 ["icon"]
      853 LOADB                            R97 1
      854 SETTABLEKS                       R97 R96 K74 ["isCircular"]
      856 GETUPVAL                         R100 8
      857 GETTABLEKS                       R99 R100 K58 ["Enums"]
      859 GETTABLEKS                       R98 R99 K81 ["ButtonVariant"]
      861 GETTABLEKS                       R97 R98 K82 ["Emphasis"]
      863 SETTABLEKS                       R97 R96 K75 ["variant"]
      865 GETUPVAL                         R100 8
      866 GETTABLEKS                       R99 R100 K58 ["Enums"]
      868 GETTABLEKS                       R98 R99 K59 ["IconSize"]
      870 GETTABLEKS                       R97 R98 K60 ["Small"]
      872 SETTABLEKS                       R97 R96 K48 ["size"]
      874 SETTABLEKS                       R64 R96 K76 ["onActivated"]
      876 CALL                             R94 2 1
      877 SETTABLEKS                       R94 R93 K70 ["PlayButton"]
      879 GETUPVAL                         R95 0
      880 GETTABLEKS                       R94 R95 K26 ["createElement"]
      882 GETUPVAL                         R95 9
      883 DUPTABLE                         R96 K77 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      884 LOADN                            R97 2
      885 SETTABLEKS                       R97 R96 K36 ["LayoutOrder"]
      887 GETUPVAL                         R100 8
      888 GETTABLEKS                       R99 R100 K58 ["Enums"]
      890 GETTABLEKS                       R98 R99 K78 ["IconName"]
      892 GETTABLEKS                       R97 R98 K83 ["SkipStartSmall"]
      894 SETTABLEKS                       R97 R96 K73 ["icon"]
      896 LOADB                            R97 1
      897 SETTABLEKS                       R97 R96 K74 ["isCircular"]
      899 GETUPVAL                         R100 8
      900 GETTABLEKS                       R99 R100 K58 ["Enums"]
      902 GETTABLEKS                       R98 R99 K81 ["ButtonVariant"]
      904 GETTABLEKS                       R97 R98 K84 ["Utility"]
      906 SETTABLEKS                       R97 R96 K75 ["variant"]
      908 GETUPVAL                         R100 8
      909 GETTABLEKS                       R99 R100 K58 ["Enums"]
      911 GETTABLEKS                       R98 R99 K59 ["IconSize"]
      913 GETTABLEKS                       R97 R98 K85 ["XSmall"]
      915 SETTABLEKS                       R97 R96 K48 ["size"]
      917 SETTABLEKS                       R65 R96 K76 ["onActivated"]
      919 CALL                             R94 2 1
      920 SETTABLEKS                       R94 R93 K71 ["ResetTimeButton"]
      922 CALL                             R90 3 1
      923 SETTABLEKS                       R90 R89 K65 ["LeftButtons"]
      925 GETUPVAL                         R91 0
      926 GETTABLEKS                       R90 R91 K26 ["createElement"]
      928 GETUPVAL                         R91 5
      929 DUPTABLE                         R92 K37 [{"LayoutOrder", "tag"}]
      930 LOADN                            R93 2
      931 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
      933 LOADK                            R93 K86 ["col size-0-full fill align-x-left gap-none"]
      934 SETTABLEKS                       R93 R92 K27 ["tag"]
      936 DUPTABLE                         R93 K89 [{"WaveformView", "TimePositionText"}]
      937 GETUPVAL                         R95 0
      938 GETTABLEKS                       R94 R95 K26 ["createElement"]
      940 GETUPVAL                         R95 5
      941 DUPTABLE                         R96 K37 [{"LayoutOrder", "tag"}]
      942 LOADN                            R97 1
      943 SETTABLEKS                       R97 R96 K36 ["LayoutOrder"]
      945 LOADK                            R97 K90 ["size-full-0 fill"]
      946 SETTABLEKS                       R97 R96 K27 ["tag"]
      948 DUPTABLE                         R97 K92 [{"GraphCanvas"}]
      949 GETUPVAL                         R99 0
      950 GETTABLEKS                       R98 R99 K26 ["createElement"]
      952 GETUPVAL                         R99 10
      953 DUPTABLE                         R100 K101 [{"GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingTop", "ViewportPaddingBottom", "CullingEpsilon", "children", "childrenUnclipped"}]
      954 GETIMPORT                        R101 K103 [Rect.new]
      956 LOADN                            R102 0
      957 LOADN                            R103 255
      958 LOADN                            R105 0
      959 JUMPIFNOTLT                      R105 R23 ; [+3]
      961 MOVE                             R104 R23
      962 JUMP                             ; [+1]
      963 LOADN                            R104 1
      964 LOADN                            R105 1
      965 CALL                             R101 4 1
      966 SETTABLEKS                       R101 R100 K93 ["GraphRect"]
      968 GETIMPORT                        R101 K62 [UDim.new]
      970 LOADN                            R102 0
      971 LOADN                            R103 0
      972 CALL                             R101 2 1
      973 SETTABLEKS                       R101 R100 K94 ["ViewportPaddingLeft"]
      975 GETIMPORT                        R101 K62 [UDim.new]
      977 LOADN                            R102 0
      978 LOADN                            R103 0
      979 CALL                             R101 2 1
      980 SETTABLEKS                       R101 R100 K95 ["ViewportPaddingRight"]
      982 GETIMPORT                        R101 K62 [UDim.new]
      984 LOADN                            R102 0
      985 LOADN                            R103 8
      986 CALL                             R101 2 1
      987 SETTABLEKS                       R101 R100 K96 ["ViewportPaddingTop"]
      989 GETIMPORT                        R101 K62 [UDim.new]
      991 LOADN                            R102 0
      992 LOADN                            R103 0
      993 CALL                             R101 2 1
      994 SETTABLEKS                       R101 R100 K97 ["ViewportPaddingBottom"]
      996 LOADN                            R101 1
      997 SETTABLEKS                       R101 R100 K98 ["CullingEpsilon"]
      999 DUPTABLE                         R101 K109 [{"VolumeBox", "PlaybackRegionMinBox", "PlaybackRegionMaxBox", "Waveform", "Touch"}]
     1000 MOVE                             R102 R33
     1001 JUMPIFNOT                        R102 ; [+29]
     1002 GETUPVAL                         R103 0
     1003 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1005 GETUPVAL                         R103 11
     1006 DUPTABLE                         R104 K113 [{"Rect", "ZIndex", "BackgroundColor3", "BackgroundTransparency"}]
     1007 GETIMPORT                        R105 K103 [Rect.new]
     1009 LOADN                            R106 0
     1010 MINUS                            R107 R3
     1011 MOVE                             R108 R23
     1012 MOVE                             R109 R3
     1013 CALL                             R105 4 1
     1014 SETTABLEKS                       R105 R104 K102 ["Rect"]
     1016 LOADN                            R105 254
     1017 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1019 GETIMPORT                        R105 K115 [Color3.new]
     1021 LOADN                            R106 1
     1022 LOADN                            R107 1
     1023 LOADN                            R108 1
     1024 CALL                             R105 3 1
     1025 SETTABLEKS                       R105 R104 K111 ["BackgroundColor3"]
     1027 LOADK                            R105 K116 [0.8]
     1028 SETTABLEKS                       R105 R104 K112 ["BackgroundTransparency"]
     1030 CALL                             R102 2 1
     1031 SETTABLEKS                       R102 R101 K104 ["VolumeBox"]
     1033 LOADB                            R102 0
     1034 LOADN                            R103 0
     1035 JUMPIFNOTLT                      R103 R23 ; [+23]
     1037 GETUPVAL                         R103 0
     1038 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1040 GETUPVAL                         R103 11
     1041 DUPTABLE                         R104 K117 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1042 GETIMPORT                        R105 K103 [Rect.new]
     1044 LOADN                            R106 0
     1045 LOADN                            R107 255
     1046 GETTABLEKS                       R108 R9 K118 ["Min"]
     1048 LOADN                            R109 1
     1049 CALL                             R105 4 1
     1050 SETTABLEKS                       R105 R104 K102 ["Rect"]
     1052 LOADN                            R105 255
     1053 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1055 LOADK                            R105 K63 [0.5]
     1056 SETTABLEKS                       R105 R104 K112 ["BackgroundTransparency"]
     1058 CALL                             R102 2 1
     1059 SETTABLEKS                       R102 R101 K105 ["PlaybackRegionMinBox"]
     1061 LOADB                            R102 0
     1062 LOADN                            R103 0
     1063 JUMPIFNOTLT                      R103 R23 ; [+29]
     1065 GETUPVAL                         R103 0
     1066 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1068 GETUPVAL                         R103 11
     1069 DUPTABLE                         R104 K117 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1070 GETIMPORT                        R105 K103 [Rect.new]
     1072 GETTABLEKS                       R107 R9 K119 ["Max"]
     1074 FASTCALL2                        MATH_MIN R107 R23 ; [+4]
     1076 MOVE                             R108 R23
     1077 GETIMPORT                        R106 K122 [math.min]
     1079 CALL                             R106 2 1
     1080 LOADN                            R107 255
     1081 MOVE                             R108 R23
     1082 LOADN                            R109 1
     1083 CALL                             R105 4 1
     1084 SETTABLEKS                       R105 R104 K102 ["Rect"]
     1086 LOADN                            R105 255
     1087 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1089 LOADK                            R105 K63 [0.5]
     1090 SETTABLEKS                       R105 R104 K112 ["BackgroundTransparency"]
     1092 CALL                             R102 2 1
     1093 SETTABLEKS                       R102 R101 K106 ["PlaybackRegionMaxBox"]
     1095 GETUPVAL                         R103 0
     1096 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1098 GETUPVAL                         R103 12
     1099 DUPTABLE                         R104 K126 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
     1100 SETTABLEKS                       R1 R104 K2 ["AssetId"]
     1102 SETTABLEKS                       R27 R104 K123 ["HoveredPosition"]
     1104 SETTABLEKS                       R23 R104 K124 ["TimeLength"]
     1106 SETTABLEKS                       R25 R104 K8 ["TimePosition"]
     1108 SETTABLEKS                       R3 R104 K3 ["Volume"]
     1110 SETTABLEKS                       R37 R104 K125 ["Resolution"]
     1112 CALL                             R102 2 1
     1113 SETTABLEKS                       R102 R101 K107 ["Waveform"]
     1115 GETUPVAL                         R103 0
     1116 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1118 GETUPVAL                         R103 13
     1119 DUPTABLE                         R104 K132 [{"ZIndex", "TreatMouseAsAnchor", "OnHoverMoved", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
     1120 LOADN                            R105 10
     1121 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1123 LOADB                            R105 1
     1124 SETTABLEKS                       R105 R104 K127 ["TreatMouseAsAnchor"]
     1126 SETTABLEKS                       R61 R104 K128 ["OnHoverMoved"]
     1128 SETTABLEKS                       R62 R104 K129 ["OnDragStart"]
     1130 SETTABLEKS                       R61 R104 K130 ["OnDragMoved"]
     1132 SETTABLEKS                       R63 R104 K131 ["OnDragEnded"]
     1134 CALL                             R102 2 1
     1135 SETTABLEKS                       R102 R101 K108 ["Touch"]
     1137 SETTABLEKS                       R101 R100 K99 ["children"]
     1139 DUPTABLE                         R101 K138 [{"PlaybackRegionMinBar", "PlaybackRegionMaxBar", "LoopRegionMinBar", "LoopRegionMaxBar", "TimePositionBar"}]
     1140 LOADB                            R102 0
     1141 LOADN                            R103 0
     1142 JUMPIFNOTLT                      R103 R23 ; [+21]
     1144 GETUPVAL                         R103 0
     1145 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1147 GETUPVAL                         R103 14
     1148 DUPTABLE                         R104 K143 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1149 GETTABLEKS                       R105 R9 K118 ["Min"]
     1151 SETTABLEKS                       R105 R104 K139 ["Position"]
     1153 SETTABLEKS                       R68 R104 K140 ["SetPosition"]
     1155 LOADN                            R105 12
     1156 SETTABLEKS                       R105 R104 K141 ["HeightAboveGraph"]
     1158 SETTABLEKS                       R40 R104 K142 ["ColorStyle"]
     1160 LOADN                            R105 1
     1161 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1163 CALL                             R102 2 1
     1164 SETTABLEKS                       R102 R101 K133 ["PlaybackRegionMinBar"]
     1166 LOADB                            R102 0
     1167 LOADN                            R103 0
     1168 JUMPIFNOTLT                      R103 R23 ; [+27]
     1170 GETUPVAL                         R103 0
     1171 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1173 GETUPVAL                         R103 14
     1174 DUPTABLE                         R104 K143 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1175 GETTABLEKS                       R106 R9 K119 ["Max"]
     1177 FASTCALL2                        MATH_MIN R106 R23 ; [+4]
     1179 MOVE                             R107 R23
     1180 GETIMPORT                        R105 K122 [math.min]
     1182 CALL                             R105 2 1
     1183 SETTABLEKS                       R105 R104 K139 ["Position"]
     1185 SETTABLEKS                       R69 R104 K140 ["SetPosition"]
     1187 LOADN                            R105 12
     1188 SETTABLEKS                       R105 R104 K141 ["HeightAboveGraph"]
     1190 SETTABLEKS                       R40 R104 K142 ["ColorStyle"]
     1192 LOADN                            R105 1
     1193 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1195 CALL                             R102 2 1
     1196 SETTABLEKS                       R102 R101 K134 ["PlaybackRegionMaxBar"]
     1198 LOADB                            R102 0
     1199 LOADN                            R103 0
     1200 JUMPIFNOTLT                      R103 R23 ; [+23]
     1202 MOVE                             R102 R7
     1203 JUMPIFNOT                        R102 ; [+20]
     1204 GETUPVAL                         R103 0
     1205 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1207 GETUPVAL                         R103 14
     1208 DUPTABLE                         R104 K145 [{"Position", "SetPosition", "Thickness", "ColorStyle", "ZIndex"}]
     1209 GETTABLEKS                       R105 R11 K118 ["Min"]
     1211 SETTABLEKS                       R105 R104 K139 ["Position"]
     1213 SETTABLEKS                       R70 R104 K140 ["SetPosition"]
     1215 LOADN                            R105 1
     1216 SETTABLEKS                       R105 R104 K144 ["Thickness"]
     1218 SETTABLEKS                       R41 R104 K142 ["ColorStyle"]
     1220 LOADN                            R105 2
     1221 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1223 CALL                             R102 2 1
     1224 SETTABLEKS                       R102 R101 K135 ["LoopRegionMinBar"]
     1226 LOADB                            R102 0
     1227 LOADN                            R103 0
     1228 JUMPIFNOTLT                      R103 R23 ; [+29]
     1230 MOVE                             R102 R7
     1231 JUMPIFNOT                        R102 ; [+26]
     1232 GETUPVAL                         R103 0
     1233 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1235 GETUPVAL                         R103 14
     1236 DUPTABLE                         R104 K145 [{"Position", "SetPosition", "Thickness", "ColorStyle", "ZIndex"}]
     1237 GETTABLEKS                       R106 R11 K119 ["Max"]
     1239 FASTCALL2                        MATH_MIN R106 R23 ; [+4]
     1241 MOVE                             R107 R23
     1242 GETIMPORT                        R105 K122 [math.min]
     1244 CALL                             R105 2 1
     1245 SETTABLEKS                       R105 R104 K139 ["Position"]
     1247 SETTABLEKS                       R71 R104 K140 ["SetPosition"]
     1249 LOADN                            R105 1
     1250 SETTABLEKS                       R105 R104 K144 ["Thickness"]
     1252 SETTABLEKS                       R41 R104 K142 ["ColorStyle"]
     1254 LOADN                            R105 2
     1255 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1257 CALL                             R102 2 1
     1258 SETTABLEKS                       R102 R101 K136 ["LoopRegionMaxBar"]
     1260 LOADB                            R102 0
     1261 LOADN                            R103 0
     1262 JUMPIFNOTLT                      R103 R23 ; [+30]
     1264 GETUPVAL                         R103 0
     1265 GETTABLEKS                       R102 R103 K26 ["createElement"]
     1267 GETUPVAL                         R103 14
     1268 DUPTABLE                         R104 K147 [{"Position", "SetPosition", "FlagEnabled", "Thickness", "ColorStyle", "ZIndex"}]
     1269 LOADN                            R107 0
     1270 FASTCALL3                        MATH_CLAMP R13 R107 R23
     1272 MOVE                             R106 R13
     1273 MOVE                             R108 R23
     1274 GETIMPORT                        R105 K149 [math.clamp]
     1276 CALL                             R105 3 1
     1277 SETTABLEKS                       R105 R104 K139 ["Position"]
     1279 SETTABLEKS                       R67 R104 K140 ["SetPosition"]
     1281 LOADB                            R105 0
     1282 SETTABLEKS                       R105 R104 K146 ["FlagEnabled"]
     1284 LOADN                            R105 1
     1285 SETTABLEKS                       R105 R104 K144 ["Thickness"]
     1287 SETTABLEKS                       R42 R104 K142 ["ColorStyle"]
     1289 LOADN                            R105 3
     1290 SETTABLEKS                       R105 R104 K110 ["ZIndex"]
     1292 CALL                             R102 2 1
     1293 SETTABLEKS                       R102 R101 K137 ["TimePositionBar"]
     1295 SETTABLEKS                       R101 R100 K100 ["childrenUnclipped"]
     1297 CALL                             R98 2 1
     1298 SETTABLEKS                       R98 R97 K91 ["GraphCanvas"]
     1300 CALL                             R94 3 1
     1301 SETTABLEKS                       R94 R93 K87 ["WaveformView"]
     1303 GETUPVAL                         R95 0
     1304 GETTABLEKS                       R94 R95 K26 ["createElement"]
     1306 GETUPVAL                         R95 6
     1307 DUPTABLE                         R96 K43 [{"LayoutOrder", "Text", "tag"}]
     1308 LOADN                            R97 2
     1309 SETTABLEKS                       R97 R96 K36 ["LayoutOrder"]
     1311 MOVE                             R101 R25
     1312 FASTCALL2K                       MATH_MAX R101 K150 ; [+5]
     1314 MOVE                             R103 R101
     1315 LOADK                            R104 K150 [0]
     1316 GETIMPORT                        R102 K152 [math.max]
     1318 CALL                             R102 2 1
     1319 MOVE                             R101 R102
     1320 GETIMPORT                        R102 K155 [string.format]
     1322 LOADK                            R103 K156 ["%d:%05.2f"]
     1323 DIVK                             R104 R101 K157 [60]
     1324 MODK                             R105 R101 K157 [60]
     1325 CALL                             R102 3 1
     1326 MOVE                             R98 R102
     1327 LOADK                            R99 K158 [" / "]
     1328 MOVE                             R101 R23
     1329 FASTCALL2K                       MATH_MAX R101 K150 ; [+5]
     1331 MOVE                             R103 R101
     1332 LOADK                            R104 K150 [0]
     1333 GETIMPORT                        R102 K152 [math.max]
     1335 CALL                             R102 2 1
     1336 MOVE                             R101 R102
     1337 GETIMPORT                        R102 K155 [string.format]
     1339 LOADK                            R103 K156 ["%d:%05.2f"]
     1340 DIVK                             R104 R101 K157 [60]
     1341 MODK                             R105 R101 K157 [60]
     1342 CALL                             R102 3 1
     1343 MOVE                             R100 R102
     1344 CONCAT                           R97 R98 R100
     1345 SETTABLEKS                       R97 R96 K42 ["Text"]
     1347 LOADK                            R97 K159 ["size-full-0 auto-y text-align-x-left text-body-small"]
     1348 SETTABLEKS                       R97 R96 K27 ["tag"]
     1350 CALL                             R94 2 1
     1351 SETTABLEKS                       R94 R93 K88 ["TimePositionText"]
     1353 CALL                             R90 3 1
     1354 SETTABLEKS                       R90 R89 K66 ["WaveformContent"]
     1356 GETUPVAL                         R91 0
     1357 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1359 GETUPVAL                         R91 9
     1360 DUPTABLE                         R92 K77 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
     1361 LOADN                            R93 3
     1362 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1364 GETUPVAL                         R96 8
     1365 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1367 GETTABLEKS                       R94 R95 K78 ["IconName"]
     1369 GETTABLEKS                       R93 R94 K160 ["TwoArrowsLoopClockwise"]
     1371 SETTABLEKS                       R93 R92 K73 ["icon"]
     1373 LOADB                            R93 1
     1374 SETTABLEKS                       R93 R92 K74 ["isCircular"]
     1376 JUMPIFNOT                        R7 ; [+8]
     1377 GETUPVAL                         R96 8
     1378 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1380 GETTABLEKS                       R94 R95 K81 ["ButtonVariant"]
     1382 GETTABLEKS                       R93 R94 K82 ["Emphasis"]
     1384 JUMP                             ; [+7]
     1385 GETUPVAL                         R96 8
     1386 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1388 GETTABLEKS                       R94 R95 K81 ["ButtonVariant"]
     1390 GETTABLEKS                       R93 R94 K161 ["Standard"]
     1392 SETTABLEKS                       R93 R92 K75 ["variant"]
     1394 GETUPVAL                         R96 8
     1395 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1397 GETTABLEKS                       R94 R95 K59 ["IconSize"]
     1399 GETTABLEKS                       R93 R94 K60 ["Small"]
     1401 SETTABLEKS                       R93 R92 K48 ["size"]
     1403 SETTABLEKS                       R66 R92 K76 ["onActivated"]
     1405 CALL                             R90 2 1
     1406 SETTABLEKS                       R90 R89 K67 ["LoopButton"]
     1408 CALL                             R86 3 1
     1409 SETTABLEKS                       R86 R85 K31 ["WaveformRow"]
     1411 GETUPVAL                         R87 0
     1412 GETTABLEKS                       R86 R87 K26 ["createElement"]
     1414 GETUPVAL                         R87 5
     1415 DUPTABLE                         R88 K37 [{"LayoutOrder", "tag"}]
     1416 LOADN                            R89 3
     1417 SETTABLEKS                       R89 R88 K36 ["LayoutOrder"]
     1419 LOADK                            R89 K38 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1420 SETTABLEKS                       R89 R88 K27 ["tag"]
     1422 DUPTABLE                         R89 K166 [{"VolumeLabel", "VolumeSlider", "VolumeText", "VolumeReset"}]
     1423 GETUPVAL                         R91 0
     1424 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1426 GETUPVAL                         R91 6
     1427 DUPTABLE                         R92 K43 [{"LayoutOrder", "Text", "tag"}]
     1428 LOADN                            R93 1
     1429 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1431 SETTABLEKS                       R47 R92 K42 ["Text"]
     1433 LOADK                            R93 K44 ["auto-x"]
     1434 SETTABLEKS                       R93 R92 K27 ["tag"]
     1436 CALL                             R90 2 1
     1437 SETTABLEKS                       R90 R89 K162 ["VolumeLabel"]
     1439 GETUPVAL                         R91 0
     1440 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1442 GETUPVAL                         R91 15
     1443 DUPTABLE                         R92 K171 [{"LayoutOrder", "value", "range", "width", "onDragStarted", "onDragEnded", "onValueChanged"}]
     1444 LOADN                            R93 2
     1445 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1447 MOVE                             R94 R3
     1448 ADDK                             R96 R94 K173 [1]
     1449 FASTCALL1                        MATH_LOG R96 ; [+2]
     1450 GETIMPORT                        R95 K175 [math.log]
     1452 CALL                             R95 1 1
     1453 DIVK                             R93 R95 K172 [0.693147180559945]
     1454 SETTABLEKS                       R93 R92 K167 ["value"]
     1456 GETIMPORT                        R93 K57 [NumberRange.new]
     1458 LOADN                            R94 0
     1459 LOADK                            R95 K176 [3.4594316186373]
     1460 CALL                             R93 2 1
     1461 SETTABLEKS                       R93 R92 K47 ["range"]
     1463 GETIMPORT                        R93 K62 [UDim.new]
     1465 LOADK                            R94 K63 [0.5]
     1466 LOADN                            R95 0
     1467 CALL                             R93 2 1
     1468 SETTABLEKS                       R93 R92 K49 ["width"]
     1470 SETTABLEKS                       R72 R92 K168 ["onDragStarted"]
     1472 SETTABLEKS                       R73 R92 K169 ["onDragEnded"]
     1474 SETTABLEKS                       R74 R92 K170 ["onValueChanged"]
     1476 CALL                             R90 2 1
     1477 SETTABLEKS                       R90 R89 K163 ["VolumeSlider"]
     1479 GETUPVAL                         R91 0
     1480 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1482 GETUPVAL                         R91 6
     1483 DUPTABLE                         R92 K43 [{"LayoutOrder", "Text", "tag"}]
     1484 LOADN                            R93 3
     1485 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1487 GETIMPORT                        R93 K155 [string.format]
     1489 LOADK                            R94 K177 ["x%.2f"]
     1490 MOVE                             R95 R3
     1491 CALL                             R93 2 1
     1492 SETTABLEKS                       R93 R92 K42 ["Text"]
     1494 LOADK                            R93 K178 ["auto-x text-body-medium"]
     1495 SETTABLEKS                       R93 R92 K27 ["tag"]
     1497 CALL                             R90 2 1
     1498 SETTABLEKS                       R90 R89 K164 ["VolumeText"]
     1500 LOADB                            R90 0
     1501 JUMPIFEQKN                       R3 K173 [1] ; [+33]
     1503 GETUPVAL                         R91 0
     1504 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1506 GETUPVAL                         R91 9
     1507 DUPTABLE                         R92 K179 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1508 LOADN                            R93 4
     1509 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1511 GETUPVAL                         R96 8
     1512 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1514 GETTABLEKS                       R94 R95 K78 ["IconName"]
     1516 GETTABLEKS                       R93 R94 K180 ["ArrowCurlToLeft"]
     1518 SETTABLEKS                       R93 R92 K73 ["icon"]
     1520 LOADB                            R93 1
     1521 SETTABLEKS                       R93 R92 K74 ["isCircular"]
     1523 GETUPVAL                         R96 8
     1524 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1526 GETTABLEKS                       R94 R95 K59 ["IconSize"]
     1528 GETTABLEKS                       R93 R94 K85 ["XSmall"]
     1530 SETTABLEKS                       R93 R92 K48 ["size"]
     1532 SETTABLEKS                       R75 R92 K76 ["onActivated"]
     1534 CALL                             R90 2 1
     1535 SETTABLEKS                       R90 R89 K165 ["VolumeReset"]
     1537 CALL                             R86 3 1
     1538 SETTABLEKS                       R86 R85 K32 ["VolumeRow"]
     1540 GETUPVAL                         R87 0
     1541 GETTABLEKS                       R86 R87 K26 ["createElement"]
     1543 GETUPVAL                         R87 5
     1544 DUPTABLE                         R88 K37 [{"LayoutOrder", "tag"}]
     1545 LOADN                            R89 4
     1546 SETTABLEKS                       R89 R88 K36 ["LayoutOrder"]
     1548 LOADK                            R89 K38 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1549 SETTABLEKS                       R89 R88 K27 ["tag"]
     1551 DUPTABLE                         R89 K185 [{"PlaybackSpeedLabel", "PlaybackSpeedSlider", "PlaybackSpeedText", "PlaybackSpeedReset"}]
     1552 GETUPVAL                         R91 0
     1553 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1555 GETUPVAL                         R91 6
     1556 DUPTABLE                         R92 K43 [{"LayoutOrder", "Text", "tag"}]
     1557 LOADN                            R93 1
     1558 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1560 SETTABLEKS                       R45 R92 K42 ["Text"]
     1562 LOADK                            R93 K44 ["auto-x"]
     1563 SETTABLEKS                       R93 R92 K27 ["tag"]
     1565 CALL                             R90 2 1
     1566 SETTABLEKS                       R90 R89 K181 ["PlaybackSpeedLabel"]
     1568 GETUPVAL                         R91 0
     1569 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1571 GETUPVAL                         R91 15
     1572 DUPTABLE                         R92 K186 [{"LayoutOrder", "value", "range", "width", "onValueChanged"}]
     1573 LOADN                            R93 2
     1574 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1576 MOVE                             R94 R5
     1577 ADDK                             R96 R94 K173 [1]
     1578 FASTCALL1                        MATH_LOG R96 ; [+2]
     1579 GETIMPORT                        R95 K175 [math.log]
     1581 CALL                             R95 1 1
     1582 DIVK                             R93 R95 K172 [0.693147180559945]
     1583 SETTABLEKS                       R93 R92 K167 ["value"]
     1585 GETIMPORT                        R93 K57 [NumberRange.new]
     1587 LOADN                            R94 0
     1588 LOADK                            R95 K187 [4.39231742277876]
     1589 CALL                             R93 2 1
     1590 SETTABLEKS                       R93 R92 K47 ["range"]
     1592 GETIMPORT                        R93 K62 [UDim.new]
     1594 LOADK                            R94 K63 [0.5]
     1595 LOADN                            R95 0
     1596 CALL                             R93 2 1
     1597 SETTABLEKS                       R93 R92 K49 ["width"]
     1599 SETTABLEKS                       R76 R92 K170 ["onValueChanged"]
     1601 CALL                             R90 2 1
     1602 SETTABLEKS                       R90 R89 K182 ["PlaybackSpeedSlider"]
     1604 GETUPVAL                         R91 0
     1605 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1607 GETUPVAL                         R91 6
     1608 DUPTABLE                         R92 K43 [{"LayoutOrder", "Text", "tag"}]
     1609 LOADN                            R93 3
     1610 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1612 GETIMPORT                        R93 K155 [string.format]
     1614 LOADK                            R94 K177 ["x%.2f"]
     1615 MOVE                             R95 R5
     1616 CALL                             R93 2 1
     1617 SETTABLEKS                       R93 R92 K42 ["Text"]
     1619 LOADK                            R93 K178 ["auto-x text-body-medium"]
     1620 SETTABLEKS                       R93 R92 K27 ["tag"]
     1622 CALL                             R90 2 1
     1623 SETTABLEKS                       R90 R89 K183 ["PlaybackSpeedText"]
     1625 LOADB                            R90 0
     1626 JUMPIFEQKN                       R5 K173 [1] ; [+33]
     1628 GETUPVAL                         R91 0
     1629 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1631 GETUPVAL                         R91 9
     1632 DUPTABLE                         R92 K179 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1633 LOADN                            R93 4
     1634 SETTABLEKS                       R93 R92 K36 ["LayoutOrder"]
     1636 GETUPVAL                         R96 8
     1637 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1639 GETTABLEKS                       R94 R95 K78 ["IconName"]
     1641 GETTABLEKS                       R93 R94 K180 ["ArrowCurlToLeft"]
     1643 SETTABLEKS                       R93 R92 K73 ["icon"]
     1645 LOADB                            R93 1
     1646 SETTABLEKS                       R93 R92 K74 ["isCircular"]
     1648 GETUPVAL                         R96 8
     1649 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1651 GETTABLEKS                       R94 R95 K59 ["IconSize"]
     1653 GETTABLEKS                       R93 R94 K85 ["XSmall"]
     1655 SETTABLEKS                       R93 R92 K48 ["size"]
     1657 SETTABLEKS                       R77 R92 K76 ["onActivated"]
     1659 CALL                             R90 2 1
     1660 SETTABLEKS                       R90 R89 K184 ["PlaybackSpeedReset"]
     1662 CALL                             R86 3 1
     1663 SETTABLEKS                       R86 R85 K33 ["PlaybackSpeedRow"]
     1665 MOVE                             R86 R80
     1666 JUMPIFNOT                        R86 ; [+36]
     1667 GETUPVAL                         R87 0
     1668 GETTABLEKS                       R86 R87 K26 ["createElement"]
     1670 GETUPVAL                         R87 5
     1671 DUPTABLE                         R88 K37 [{"LayoutOrder", "tag"}]
     1672 LOADN                            R89 0
     1673 SETTABLEKS                       R89 R88 K36 ["LayoutOrder"]
     1675 LOADK                            R89 K38 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1676 SETTABLEKS                       R89 R88 K27 ["tag"]
     1678 DUPTABLE                         R89 K189 [{"PreviewInWorldCheckbox"}]
     1679 GETUPVAL                         R91 0
     1680 GETTABLEKS                       R90 R91 K26 ["createElement"]
     1682 GETUPVAL                         R91 16
     1683 DUPTABLE                         R92 K191 [{"isChecked", "label", "size", "onActivated"}]
     1684 SETTABLEKS                       R35 R92 K190 ["isChecked"]
     1686 SETTABLEKS                       R46 R92 K46 ["label"]
     1688 GETUPVAL                         R96 8
     1689 GETTABLEKS                       R95 R96 K58 ["Enums"]
     1691 GETTABLEKS                       R94 R95 K192 ["InputSize"]
     1693 GETTABLEKS                       R93 R94 K85 ["XSmall"]
     1695 SETTABLEKS                       R93 R92 K48 ["size"]
     1697 SETTABLEKS                       R78 R92 K76 ["onActivated"]
     1699 CALL                             R90 2 1
     1700 SETTABLEKS                       R90 R89 K188 ["PreviewInWorldCheckbox"]
     1702 CALL                             R86 3 1
     1703 SETTABLEKS                       R86 R85 K34 ["PreviewInWorldRow"]
     1705 CALL                             R82 3 -1
     1706 CLOSEUPVALS                      R1
     1707 RETURN                           R82 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Checkbox"]
       23 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       25 GETTABLEKS                       R5 R2 K11 ["Slider"]
       27 GETTABLEKS                       R6 R2 K12 ["Text"]
       29 GETTABLEKS                       R7 R2 K13 ["TextInput"]
       31 GETTABLEKS                       R8 R2 K14 ["View"]
       33 GETTABLEKS                       R10 R2 K15 ["Hooks"]
       35 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R12 R0 K6 ["Packages"]
       41 GETTABLEKS                       R11 R12 K17 ["Graphing"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R10 K18 ["Canvas"]
       46 GETTABLEKS                       R12 R10 K19 ["InputDetector"]
       48 GETTABLEKS                       R13 R10 K20 ["Panel"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R16 R0 K6 ["Packages"]
       54 GETTABLEKS                       R15 R16 K21 ["Framework"]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R15 R14 K22 ["ContextServices"]
       59 GETTABLEKS                       R16 R15 K23 ["Localization"]
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R20 R0 K24 ["Src"]
       65 GETTABLEKS                       R19 R20 K25 ["Components"]
       67 GETTABLEKS                       R18 R19 K26 ["FlaggedLine"]
       69 CALL                             R17 1 1
       70 GETIMPORT                        R18 K5 [require]
       72 GETTABLEKS                       R21 R0 K24 ["Src"]
       74 GETTABLEKS                       R20 R21 K25 ["Components"]
       76 GETTABLEKS                       R19 R20 K27 ["Waveform"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K5 [require]
       81 GETTABLEKS                       R22 R0 K24 ["Src"]
       83 GETTABLEKS                       R21 R22 K28 ["Util"]
       85 GETTABLEKS                       R20 R21 K29 ["PlayerUtil"]
       87 CALL                             R19 1 1
       88 GETIMPORT                        R20 K5 [require]
       90 GETTABLEKS                       R23 R0 K30 ["Bin"]
       92 GETTABLEKS                       R22 R23 K31 ["Common"]
       94 GETTABLEKS                       R21 R22 K32 ["defineLuaFlags"]
       96 CALL                             R20 1 1
       97 GETTABLEKS                       R21 R20 K33 ["getFFlagSoundShimEnabled"]
       99 CALL                             R21 0 1
      100 GETIMPORT                        R22 K5 [require]
      102 GETTABLEKS                       R24 R0 K24 ["Src"]
      104 GETTABLEKS                       R23 R24 K34 ["Types"]
      106 CALL                             R22 1 1
      107 DUPCLOSURE                       R23 K35 [PROTO_0]
      108 DUPCLOSURE                       R24 K36 [PROTO_1]
      109 DUPCLOSURE                       R25 K37 [PROTO_2]
      110 DUPCLOSURE                       R26 K38 [PROTO_39]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R3
      128 RETURN                           R26 1
