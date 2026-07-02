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
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["x%.2f"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assignProperties"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["SetData"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["current"]
        5 CALL                             R1 1 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 SETTABLE                         R6 R1 R5
       11 FORGLOOP                         R2 2 ; [-2]
       13 GETUPVAL                         R2 0
       14 SETTABLEKS                       R1 R2 K3 ["current"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["assignProperties"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K5 ["SetData"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K1 [{"AssetId"}]
        4 SETTABLEKS                       R0 R1 K0 ["AssetId"]
        6 GETIMPORT                        R2 K4 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLE                         R7 R2 R6
       17 FORGLOOP                         R3 2 ; [-2]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K5 ["current"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["assignProperties"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["SetData"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K1 [{"Volume"}]
        4 SETTABLEKS                       R0 R1 K0 ["Volume"]
        6 GETIMPORT                        R2 K4 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLE                         R7 R2 R6
       17 FORGLOOP                         R3 2 ; [-2]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K5 ["current"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["assignProperties"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["SetData"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K1 [{"PlaybackSpeed"}]
        4 SETTABLEKS                       R0 R1 K0 ["PlaybackSpeed"]
        6 GETIMPORT                        R2 K4 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLE                         R7 R2 R6
       17 FORGLOOP                         R3 2 ; [-2]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K5 ["current"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["assignProperties"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["SetData"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K1 [{"Looping"}]
        4 SETTABLEKS                       R0 R1 K0 ["Looping"]
        6 GETIMPORT                        R2 K4 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLE                         R7 R2 R6
       17 FORGLOOP                         R3 2 ; [-2]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K5 ["current"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["assignProperties"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["SetData"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K1 [{"TimePosition"}]
        4 SETTABLEKS                       R0 R1 K0 ["TimePosition"]
        6 GETIMPORT                        R2 K4 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLE                         R7 R2 R6
       17 FORGLOOP                         R3 2 ; [-2]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K5 ["current"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["assignProperties"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["SetData"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["seek"]
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
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [string.match]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K3 ["^%d+$"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 LOADK                            R1 K4 ["rbxassetid://"]
        8 MOVE                             R2 R0
        9 CONCAT                           R0 R1 R2
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
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
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K0 ["stopPlayback"]
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
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["beginPlayback"]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["seek"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["beginPlayback"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Min"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["Max"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustPlaybackRegionMin"]
        3 MOVE                             R2 R1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 GETUPVAL                         R7 4
        9 CALL                             R2 5 3
       10 GETUPVAL                         R5 5
       11 MOVE                             R6 R2
       12 CALL                             R5 1 0
       13 GETUPVAL                         R5 6
       14 MOVE                             R6 R3
       15 CALL                             R5 1 0
       16 GETUPVAL                         R5 7
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 DUPTABLE                         R5 K4 [{"PlaybackRegion", "LoopRegion", "TimePosition"}]
       20 SETTABLEKS                       R2 R5 K1 ["PlaybackRegion"]
       22 SETTABLEKS                       R3 R5 K2 ["LoopRegion"]
       24 SETTABLEKS                       R4 R5 K3 ["TimePosition"]
       26 GETIMPORT                        R6 K7 [table.clone]
       28 GETUPVAL                         R7 8
       29 GETTABLEKS                       R7 R7 K8 ["current"]
       31 CALL                             R6 1 1
       32 MOVE                             R7 R5
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 SETTABLE                         R11 R6 R10
       37 FORGLOOP                         R7 2 ; [-2]
       39 GETUPVAL                         R7 8
       40 SETTABLEKS                       R6 R7 K8 ["current"]
       42 GETUPVAL                         R7 9
       43 GETTABLEKS                       R7 R7 K9 ["assignProperties"]
       45 MOVE                             R8 R6
       46 CALL                             R7 1 0
       47 GETUPVAL                         R7 10
       48 GETTABLEKS                       R7 R7 K10 ["SetData"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustPlaybackRegionMax"]
        3 MOVE                             R2 R1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 GETUPVAL                         R7 4
        9 CALL                             R2 5 3
       10 GETUPVAL                         R5 5
       11 MOVE                             R6 R2
       12 CALL                             R5 1 0
       13 GETUPVAL                         R5 6
       14 MOVE                             R6 R3
       15 CALL                             R5 1 0
       16 GETUPVAL                         R5 7
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 DUPTABLE                         R5 K4 [{"PlaybackRegion", "LoopRegion", "TimePosition"}]
       20 SETTABLEKS                       R2 R5 K1 ["PlaybackRegion"]
       22 SETTABLEKS                       R3 R5 K2 ["LoopRegion"]
       24 SETTABLEKS                       R4 R5 K3 ["TimePosition"]
       26 GETIMPORT                        R6 K7 [table.clone]
       28 GETUPVAL                         R7 8
       29 GETTABLEKS                       R7 R7 K8 ["current"]
       31 CALL                             R6 1 1
       32 MOVE                             R7 R5
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 SETTABLE                         R11 R6 R10
       37 FORGLOOP                         R7 2 ; [-2]
       39 GETUPVAL                         R7 8
       40 SETTABLEKS                       R6 R7 K8 ["current"]
       42 GETUPVAL                         R7 9
       43 GETTABLEKS                       R7 R7 K9 ["assignProperties"]
       45 MOVE                             R8 R6
       46 CALL                             R7 1 0
       47 GETUPVAL                         R7 10
       48 GETTABLEKS                       R7 R7 K10 ["SetData"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustLoopRegionMin"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 1
        8 GETUPVAL                         R2 4
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 DUPTABLE                         R2 K2 [{"LoopRegion"}]
       12 SETTABLEKS                       R1 R2 K1 ["LoopRegion"]
       14 GETIMPORT                        R3 K5 [table.clone]
       16 GETUPVAL                         R4 5
       17 GETTABLEKS                       R4 R4 K6 ["current"]
       19 CALL                             R3 1 1
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 SETTABLE                         R8 R3 R7
       25 FORGLOOP                         R4 2 ; [-2]
       27 GETUPVAL                         R4 5
       28 SETTABLEKS                       R3 R4 K6 ["current"]
       30 GETUPVAL                         R4 6
       31 GETTABLEKS                       R4 R4 K7 ["assignProperties"]
       33 MOVE                             R5 R3
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 7
       36 GETTABLEKS                       R4 R4 K8 ["SetData"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustLoopRegionMax"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 1
        8 GETUPVAL                         R2 4
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 DUPTABLE                         R2 K2 [{"LoopRegion"}]
       12 SETTABLEKS                       R1 R2 K1 ["LoopRegion"]
       14 GETIMPORT                        R3 K5 [table.clone]
       16 GETUPVAL                         R4 5
       17 GETTABLEKS                       R4 R4 K6 ["current"]
       19 CALL                             R3 1 1
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 SETTABLE                         R8 R3 R7
       25 FORGLOOP                         R4 2 ; [-2]
       27 GETUPVAL                         R4 5
       28 SETTABLEKS                       R3 R4 K6 ["current"]
       30 GETUPVAL                         R4 6
       31 GETTABLEKS                       R4 R4 K7 ["assignProperties"]
       33 MOVE                             R5 R3
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 7
       36 GETTABLEKS                       R4 R4 K8 ["SetData"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePreviewInWorld"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Data"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["Data"]
       10 GETTABLEKS                       R1 R1 K2 ["AssetId"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K0 ["Data"]
       17 GETTABLEKS                       R1 R1 K3 ["Volume"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K0 ["Data"]
       24 GETTABLEKS                       R1 R1 K4 ["PlaybackSpeed"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 5
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K0 ["Data"]
       31 GETTABLEKS                       R1 R1 K5 ["Looping"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K0 ["Data"]
       38 GETTABLEKS                       R1 R1 K6 ["PlaybackRegion"]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 7
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K0 ["Data"]
       45 GETTABLEKS                       R1 R1 K7 ["LoopRegion"]
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 8
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K0 ["Data"]
       52 GETTABLEKS                       R1 R1 K8 ["TimePosition"]
       54 CALL                             R0 1 0
       55 GETUPVAL                         R0 9
       56 GETTABLEKS                       R0 R0 K9 ["assignProperties"]
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K0 ["Data"]
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 -1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["loadAndFetchTimeLength"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 4
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 5
       13 LOADK                            R1 K1 [""]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K2 ["getAssetName"]
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 5
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_38:
        0 DUPCLOSURE                       R0 K0 [PROTO_37]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 GETTABLEKS                       R2 R2 K2 ["AssetId"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["useState"]
       11 GETTABLEKS                       R4 R0 K1 ["Data"]
       13 GETTABLEKS                       R4 R4 K3 ["Volume"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["useState"]
       19 GETTABLEKS                       R6 R0 K1 ["Data"]
       21 GETTABLEKS                       R6 R6 K4 ["PlaybackSpeed"]
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K0 ["useState"]
       27 GETTABLEKS                       R8 R0 K1 ["Data"]
       29 GETTABLEKS                       R8 R8 K5 ["Looping"]
       31 CALL                             R7 1 2
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K0 ["useState"]
       35 GETTABLEKS                       R10 R0 K1 ["Data"]
       37 GETTABLEKS                       R10 R10 K6 ["PlaybackRegion"]
       39 CALL                             R9 1 2
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K0 ["useState"]
       43 GETTABLEKS                       R12 R0 K1 ["Data"]
       45 GETTABLEKS                       R12 R12 K7 ["LoopRegion"]
       47 CALL                             R11 1 2
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K0 ["useState"]
       51 GETTABLEKS                       R14 R0 K1 ["Data"]
       53 GETTABLEKS                       R14 R14 K8 ["TimePosition"]
       55 CALL                             R13 1 2
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K0 ["useState"]
       59 LOADK                            R16 K9 [""]
       60 CALL                             R15 1 2
       61 GETUPVAL                         R17 0
       62 GETTABLEKS                       R17 R17 K0 ["useState"]
       64 LOADB                            R18 0
       65 CALL                             R17 1 2
       66 GETUPVAL                         R19 0
       67 GETTABLEKS                       R19 R19 K0 ["useState"]
       69 MOVE                             R20 R1
       70 CALL                             R19 1 2
       71 GETUPVAL                         R21 0
       72 GETTABLEKS                       R21 R21 K0 ["useState"]
       74 LOADB                            R22 0
       75 CALL                             R21 1 2
       76 GETUPVAL                         R23 0
       77 GETTABLEKS                       R23 R23 K0 ["useState"]
       79 LOADN                            R24 -1
       80 CALL                             R23 1 2
       81 GETUPVAL                         R25 0
       82 GETTABLEKS                       R25 R25 K0 ["useState"]
       84 GETTABLEKS                       R26 R0 K1 ["Data"]
       86 GETTABLEKS                       R26 R26 K8 ["TimePosition"]
       88 CALL                             R25 1 2
       89 GETUPVAL                         R27 0
       90 GETTABLEKS                       R27 R27 K0 ["useState"]
       92 LOADN                            R28 0
       93 CALL                             R27 1 2
       94 GETUPVAL                         R29 0
       95 GETTABLEKS                       R29 R29 K0 ["useState"]
       97 LOADB                            R30 0
       98 CALL                             R29 1 2
       99 GETUPVAL                         R31 0
      100 GETTABLEKS                       R31 R31 K0 ["useState"]
      102 LOADB                            R32 0
      103 CALL                             R31 1 2
      104 GETUPVAL                         R33 0
      105 GETTABLEKS                       R33 R33 K0 ["useState"]
      107 LOADB                            R34 0
      108 CALL                             R33 1 2
      109 GETUPVAL                         R35 0
      110 GETTABLEKS                       R35 R35 K0 ["useState"]
      112 LOADB                            R36 0
      113 CALL                             R35 1 2
      114 GETUPVAL                         R37 0
      115 GETTABLEKS                       R37 R37 K0 ["useState"]
      117 LOADN                            R38 500
      118 CALL                             R37 1 2
      119 GETUPVAL                         R39 0
      120 GETTABLEKS                       R39 R39 K10 ["useRef"]
      122 GETTABLEKS                       R40 R0 K1 ["Data"]
      124 CALL                             R39 1 1
      125 GETUPVAL                         R40 1
      126 CALL                             R40 0 1
      127 GETTABLEKS                       R41 R40 K11 ["Color"]
      129 GETTABLEKS                       R41 R41 K12 ["System"]
      131 GETTABLEKS                       R41 R41 K13 ["Contrast"]
      133 GETTABLEKS                       R42 R40 K11 ["Color"]
      135 GETTABLEKS                       R42 R42 K12 ["System"]
      137 GETTABLEKS                       R42 R42 K14 ["Warning"]
      139 GETTABLEKS                       R43 R40 K11 ["Color"]
      141 GETTABLEKS                       R43 R43 K12 ["System"]
      143 GETTABLEKS                       R43 R43 K15 ["Success"]
      145 GETUPVAL                         R44 2
      146 NAMECALL                         R44 R44 K16 ["use"]
      148 CALL                             R44 1 1
      149 LOADK                            R47 K17 ["Label"]
      150 LOADK                            R48 K18 ["AudioContent"]
      151 NAMECALL                         R45 R44 K19 ["getText"]
      153 CALL                             R45 3 1
      154 LOADK                            R48 K17 ["Label"]
      155 LOADK                            R49 K4 ["PlaybackSpeed"]
      156 NAMECALL                         R46 R44 K19 ["getText"]
      158 CALL                             R46 3 1
      159 LOADK                            R49 K17 ["Label"]
      160 LOADK                            R50 K20 ["PreviewInWorld"]
      161 NAMECALL                         R47 R44 K19 ["getText"]
      163 CALL                             R47 3 1
      164 LOADK                            R50 K17 ["Label"]
      165 LOADK                            R51 K3 ["Volume"]
      166 NAMECALL                         R48 R44 K19 ["getText"]
      168 CALL                             R48 3 1
      169 NEWCLOSURE                       R49 P0
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R0
      172 NEWCLOSURE                       R50 P1
      173 CAPTURE                          VAL R39
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          VAL R0
      176 GETUPVAL                         R51 0
      177 GETTABLEKS                       R51 R51 K21 ["useCallback"]
      179 NEWCLOSURE                       R52 P2
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R39
      182 CAPTURE                          UPVAL U3
      183 CAPTURE                          VAL R0
      184 NEWTABLE                         R53 0 1
      186 GETTABLEKS                       R54 R0 K22 ["SetData"]
      188 SETLIST                          R53 R54 1 [1]
      190 CALL                             R51 2 1
      191 GETUPVAL                         R52 0
      192 GETTABLEKS                       R52 R52 K21 ["useCallback"]
      194 NEWCLOSURE                       R53 P3
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R39
      197 CAPTURE                          UPVAL U3
      198 CAPTURE                          VAL R0
      199 NEWTABLE                         R54 0 1
      201 GETTABLEKS                       R55 R0 K22 ["SetData"]
      203 SETLIST                          R54 R55 1 [1]
      205 CALL                             R52 2 1
      206 GETUPVAL                         R53 0
      207 GETTABLEKS                       R53 R53 K21 ["useCallback"]
      209 NEWCLOSURE                       R54 P4
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R39
      212 CAPTURE                          UPVAL U3
      213 CAPTURE                          VAL R0
      214 NEWTABLE                         R55 0 1
      216 GETTABLEKS                       R56 R0 K22 ["SetData"]
      218 SETLIST                          R55 R56 1 [1]
      220 CALL                             R53 2 1
      221 GETUPVAL                         R54 0
      222 GETTABLEKS                       R54 R54 K21 ["useCallback"]
      224 NEWCLOSURE                       R55 P5
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R39
      227 CAPTURE                          UPVAL U3
      228 CAPTURE                          VAL R0
      229 NEWTABLE                         R56 0 1
      231 GETTABLEKS                       R57 R0 K22 ["SetData"]
      233 SETLIST                          R56 R57 1 [1]
      235 CALL                             R54 2 1
      236 GETUPVAL                         R55 0
      237 GETTABLEKS                       R55 R55 K21 ["useCallback"]
      239 NEWCLOSURE                       R56 P6
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R39
      242 CAPTURE                          UPVAL U3
      243 CAPTURE                          VAL R0
      244 NEWTABLE                         R57 0 1
      246 GETTABLEKS                       R58 R0 K22 ["SetData"]
      248 SETLIST                          R57 R58 1 [1]
      250 CALL                             R55 2 1
      251 GETUPVAL                         R56 0
      252 GETTABLEKS                       R56 R56 K21 ["useCallback"]
      254 NEWCLOSURE                       R57 P7
      255 CAPTURE                          VAL R23
      256 CAPTURE                          VAL R26
      257 CAPTURE                          UPVAL U3
      258 NEWTABLE                         R58 0 2
      260 MOVE                             R59 R23
      261 MOVE                             R60 R26
      262 SETLIST                          R58 R59 2 [1]
      264 CALL                             R56 2 1
      265 GETUPVAL                         R57 0
      266 GETTABLEKS                       R57 R57 K21 ["useCallback"]
      268 NEWCLOSURE                       R58 P8
      269 CAPTURE                          VAL R18
      270 NEWTABLE                         R59 0 1
      272 MOVE                             R60 R18
      273 SETLIST                          R59 R60 1 [1]
      275 CALL                             R57 2 1
      276 GETUPVAL                         R58 0
      277 GETTABLEKS                       R58 R58 K21 ["useCallback"]
      279 NEWCLOSURE                       R59 P9
      280 CAPTURE                          VAL R18
      281 NEWTABLE                         R60 0 1
      283 MOVE                             R61 R18
      284 SETLIST                          R60 R61 1 [1]
      286 CALL                             R58 2 1
      287 GETUPVAL                         R59 0
      288 GETTABLEKS                       R59 R59 K21 ["useCallback"]
      290 NEWCLOSURE                       R60 P10
      291 CAPTURE                          VAL R20
      292 NEWTABLE                         R61 0 1
      294 MOVE                             R62 R20
      295 SETLIST                          R61 R62 1 [1]
      297 CALL                             R59 2 1
      298 GETUPVAL                         R60 0
      299 GETTABLEKS                       R60 R60 K21 ["useCallback"]
      301 NEWCLOSURE                       R61 P11
      302 CAPTURE                          VAL R19
      303 CAPTURE                          VAL R20
      304 CAPTURE                          VAL R51
      305 NEWTABLE                         R62 0 3
      307 MOVE                             R63 R19
      308 MOVE                             R64 R20
      309 MOVE                             R65 R51
      310 SETLIST                          R62 R63 3 [1]
      312 CALL                             R60 2 1
      313 GETUPVAL                         R61 0
      314 GETTABLEKS                       R61 R61 K21 ["useCallback"]
      316 NEWCLOSURE                       R62 P12
      317 CAPTURE                          VAL R23
      318 CAPTURE                          VAL R28
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R56
      321 NEWTABLE                         R63 0 4
      323 MOVE                             R64 R28
      324 MOVE                             R65 R23
      325 MOVE                             R66 R31
      326 MOVE                             R67 R56
      327 SETLIST                          R63 R64 4 [1]
      329 CALL                             R61 2 1
      330 GETUPVAL                         R62 0
      331 GETTABLEKS                       R62 R62 K21 ["useCallback"]
      333 NEWCLOSURE                       R63 P13
      334 CAPTURE                          VAL R32
      335 CAPTURE                          VAL R30
      336 CAPTURE                          VAL R21
      337 CAPTURE                          UPVAL U3
      338 CAPTURE                          VAL R56
      339 NEWTABLE                         R64 0 4
      341 MOVE                             R65 R21
      342 MOVE                             R66 R32
      343 MOVE                             R67 R30
      344 MOVE                             R68 R56
      345 SETLIST                          R64 R65 4 [1]
      347 CALL                             R62 2 1
      348 GETUPVAL                         R63 0
      349 GETTABLEKS                       R63 R63 K21 ["useCallback"]
      351 NEWCLOSURE                       R64 P14
      352 CAPTURE                          VAL R32
      353 CAPTURE                          VAL R29
      354 CAPTURE                          UPVAL U3
      355 CAPTURE                          VAL R22
      356 CAPTURE                          VAL R26
      357 NEWTABLE                         R65 0 4
      359 MOVE                             R66 R29
      360 MOVE                             R67 R32
      361 MOVE                             R68 R22
      362 MOVE                             R69 R26
      363 SETLIST                          R65 R66 4 [1]
      365 CALL                             R63 2 1
      366 GETUPVAL                         R64 0
      367 GETTABLEKS                       R64 R64 K21 ["useCallback"]
      369 NEWCLOSURE                       R65 P15
      370 CAPTURE                          VAL R21
      371 CAPTURE                          UPVAL U3
      372 CAPTURE                          VAL R25
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R26
      375 NEWTABLE                         R66 0 4
      377 MOVE                             R67 R21
      378 MOVE                             R68 R22
      379 MOVE                             R69 R25
      380 MOVE                             R70 R26
      381 SETLIST                          R66 R67 4 [1]
      383 CALL                             R64 2 1
      384 GETUPVAL                         R65 0
      385 GETTABLEKS                       R65 R65 K21 ["useCallback"]
      387 NEWCLOSURE                       R66 P16
      388 CAPTURE                          VAL R56
      389 CAPTURE                          VAL R13
      390 NEWTABLE                         R67 0 2
      392 MOVE                             R68 R56
      393 MOVE                             R69 R13
      394 SETLIST                          R67 R68 2 [1]
      396 CALL                             R65 2 1
      397 GETUPVAL                         R66 0
      398 GETTABLEKS                       R66 R66 K21 ["useCallback"]
      400 NEWCLOSURE                       R67 P17
      401 CAPTURE                          VAL R54
      402 CAPTURE                          VAL R7
      403 NEWTABLE                         R68 0 2
      405 MOVE                             R69 R7
      406 MOVE                             R70 R54
      407 SETLIST                          R68 R69 2 [1]
      409 CALL                             R66 2 1
      410 GETUPVAL                         R67 0
      411 GETTABLEKS                       R67 R67 K21 ["useCallback"]
      413 NEWCLOSURE                       R68 P18
      414 CAPTURE                          VAL R9
      415 CAPTURE                          VAL R55
      416 NEWTABLE                         R69 0 2
      418 MOVE                             R70 R9
      419 MOVE                             R71 R55
      420 SETLIST                          R69 R70 2 [1]
      422 CALL                             R67 2 1
      423 GETUPVAL                         R68 0
      424 GETTABLEKS                       R68 R68 K21 ["useCallback"]
      426 NEWCLOSURE                       R69 P19
      427 CAPTURE                          UPVAL U4
      428 CAPTURE                          VAL R9
      429 CAPTURE                          VAL R11
      430 CAPTURE                          VAL R13
      431 CAPTURE                          VAL R23
      432 CAPTURE                          VAL R10
      433 CAPTURE                          VAL R12
      434 CAPTURE                          VAL R14
      435 CAPTURE                          VAL R39
      436 CAPTURE                          UPVAL U3
      437 CAPTURE                          VAL R0
      438 NEWTABLE                         R70 0 5
      440 MOVE                             R71 R9
      441 MOVE                             R72 R11
      442 MOVE                             R73 R13
      443 MOVE                             R74 R23
      444 GETTABLEKS                       R75 R0 K22 ["SetData"]
      446 SETLIST                          R70 R71 5 [1]
      448 CALL                             R68 2 1
      449 GETUPVAL                         R69 0
      450 GETTABLEKS                       R69 R69 K21 ["useCallback"]
      452 NEWCLOSURE                       R70 P20
      453 CAPTURE                          UPVAL U4
      454 CAPTURE                          VAL R9
      455 CAPTURE                          VAL R11
      456 CAPTURE                          VAL R13
      457 CAPTURE                          VAL R23
      458 CAPTURE                          VAL R10
      459 CAPTURE                          VAL R12
      460 CAPTURE                          VAL R14
      461 CAPTURE                          VAL R39
      462 CAPTURE                          UPVAL U3
      463 CAPTURE                          VAL R0
      464 NEWTABLE                         R71 0 5
      466 MOVE                             R72 R9
      467 MOVE                             R73 R11
      468 MOVE                             R74 R13
      469 MOVE                             R75 R23
      470 GETTABLEKS                       R76 R0 K22 ["SetData"]
      472 SETLIST                          R71 R72 5 [1]
      474 CALL                             R69 2 1
      475 GETUPVAL                         R70 0
      476 GETTABLEKS                       R70 R70 K21 ["useCallback"]
      478 NEWCLOSURE                       R71 P21
      479 CAPTURE                          UPVAL U4
      480 CAPTURE                          VAL R9
      481 CAPTURE                          VAL R11
      482 CAPTURE                          VAL R23
      483 CAPTURE                          VAL R12
      484 CAPTURE                          VAL R39
      485 CAPTURE                          UPVAL U3
      486 CAPTURE                          VAL R0
      487 NEWTABLE                         R72 0 4
      489 MOVE                             R73 R9
      490 MOVE                             R74 R11
      491 MOVE                             R75 R23
      492 GETTABLEKS                       R76 R0 K22 ["SetData"]
      494 SETLIST                          R72 R73 4 [1]
      496 CALL                             R70 2 1
      497 GETUPVAL                         R71 0
      498 GETTABLEKS                       R71 R71 K21 ["useCallback"]
      500 NEWCLOSURE                       R72 P22
      501 CAPTURE                          UPVAL U4
      502 CAPTURE                          VAL R9
      503 CAPTURE                          VAL R11
      504 CAPTURE                          VAL R23
      505 CAPTURE                          VAL R12
      506 CAPTURE                          VAL R39
      507 CAPTURE                          UPVAL U3
      508 CAPTURE                          VAL R0
      509 NEWTABLE                         R73 0 4
      511 MOVE                             R74 R9
      512 MOVE                             R75 R11
      513 MOVE                             R76 R23
      514 GETTABLEKS                       R77 R0 K22 ["SetData"]
      516 SETLIST                          R73 R74 4 [1]
      518 CALL                             R71 2 1
      519 GETUPVAL                         R72 0
      520 GETTABLEKS                       R72 R72 K21 ["useCallback"]
      522 NEWCLOSURE                       R73 P23
      523 CAPTURE                          VAL R34
      524 NEWTABLE                         R74 0 1
      526 MOVE                             R75 R34
      527 SETLIST                          R74 R75 1 [1]
      529 CALL                             R72 2 1
      530 GETUPVAL                         R73 0
      531 GETTABLEKS                       R73 R73 K21 ["useCallback"]
      533 NEWCLOSURE                       R74 P24
      534 CAPTURE                          VAL R34
      535 NEWTABLE                         R75 0 1
      537 MOVE                             R76 R34
      538 SETLIST                          R75 R76 1 [1]
      540 CALL                             R73 2 1
      541 GETUPVAL                         R74 0
      542 GETTABLEKS                       R74 R74 K21 ["useCallback"]
      544 NEWCLOSURE                       R75 P25
      545 CAPTURE                          VAL R52
      546 NEWTABLE                         R76 0 1
      548 MOVE                             R77 R52
      549 SETLIST                          R76 R77 1 [1]
      551 CALL                             R74 2 1
      552 GETUPVAL                         R75 0
      553 GETTABLEKS                       R75 R75 K21 ["useCallback"]
      555 NEWCLOSURE                       R76 P26
      556 CAPTURE                          VAL R52
      557 NEWTABLE                         R77 0 1
      559 MOVE                             R78 R52
      560 SETLIST                          R77 R78 1 [1]
      562 CALL                             R75 2 1
      563 GETUPVAL                         R76 0
      564 GETTABLEKS                       R76 R76 K21 ["useCallback"]
      566 NEWCLOSURE                       R77 P27
      567 CAPTURE                          VAL R53
      568 NEWTABLE                         R78 0 1
      570 MOVE                             R79 R53
      571 SETLIST                          R78 R79 1 [1]
      573 CALL                             R76 2 1
      574 GETUPVAL                         R77 0
      575 GETTABLEKS                       R77 R77 K21 ["useCallback"]
      577 NEWCLOSURE                       R78 P28
      578 CAPTURE                          VAL R53
      579 NEWTABLE                         R79 0 1
      581 MOVE                             R80 R53
      582 SETLIST                          R79 R80 1 [1]
      584 CALL                             R77 2 1
      585 GETUPVAL                         R78 0
      586 GETTABLEKS                       R78 R78 K21 ["useCallback"]
      588 NEWCLOSURE                       R79 P29
      589 CAPTURE                          UPVAL U3
      590 CAPTURE                          VAL R35
      591 CAPTURE                          VAL R36
      592 NEWTABLE                         R80 0 2
      594 MOVE                             R81 R35
      595 MOVE                             R82 R36
      596 SETLIST                          R80 R81 2 [1]
      598 CALL                             R78 2 1
      599 GETUPVAL                         R79 0
      600 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      602 NEWCLOSURE                       R80 P30
      603 CAPTURE                          VAL R39
      604 CAPTURE                          VAL R0
      605 CAPTURE                          VAL R2
      606 CAPTURE                          VAL R4
      607 CAPTURE                          VAL R6
      608 CAPTURE                          VAL R8
      609 CAPTURE                          VAL R10
      610 CAPTURE                          VAL R12
      611 CAPTURE                          VAL R14
      612 CAPTURE                          UPVAL U3
      613 NEWTABLE                         R81 0 1
      615 GETTABLEKS                       R82 R0 K1 ["Data"]
      617 SETLIST                          R81 R82 1 [1]
      619 CALL                             R79 2 0
      620 GETUPVAL                         R79 0
      621 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      623 NEWCLOSURE                       R80 P31
      624 CAPTURE                          VAL R21
      625 CAPTURE                          VAL R56
      626 CAPTURE                          VAL R13
      627 NEWTABLE                         R81 0 2
      629 MOVE                             R82 R13
      630 MOVE                             R83 R56
      631 SETLIST                          R81 R82 2 [1]
      633 CALL                             R79 2 0
      634 GETUPVAL                         R79 0
      635 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      637 NEWCLOSURE                       R80 P32
      638 CAPTURE                          VAL R24
      639 CAPTURE                          UPVAL U3
      640 CAPTURE                          VAL R1
      641 CAPTURE                          VAL R56
      642 CAPTURE                          VAL R13
      643 CAPTURE                          VAL R16
      644 NEWTABLE                         R81 0 1
      646 MOVE                             R82 R1
      647 SETLIST                          R81 R82 1 [1]
      649 CALL                             R79 2 0
      650 GETUPVAL                         R79 0
      651 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      653 DUPCLOSURE                       R80 K24 [PROTO_38]
      654 CAPTURE                          UPVAL U3
      655 NEWTABLE                         R81 0 0
      657 CALL                             R79 2 0
      658 MOVE                             R79 R21
      659 JUMPIF                           R79 ; [+1]
      660 AND                              R79 R31 R29
      661 LOADB                            R80 1
      662 GETTABLEKS                       R81 R0 K1 ["Data"]
      664 GETTABLEKS                       R81 R81 K25 ["Type"]
      666 JUMPIFEQKS                       R81 K26 ["AudioPlayer"] ; [+11]
      668 GETUPVAL                         R80 5
      669 JUMPIFNOT                        R80 ; [+8]
      670 GETTABLEKS                       R81 R0 K1 ["Data"]
      672 GETTABLEKS                       R81 R81 K25 ["Type"]
      674 JUMPIFEQKS                       R81 K27 ["Sound"] ; [+2]
      676 LOADB                            R80 0 +1
      677 LOADB                            R80 1
      678 NOT                              R81 R17
      679 JUMPIFNOT                        R81 ; [+4]
      680 JUMPIFNOTEQKS                    R15 K9 [""] ; [+2]
      682 LOADB                            R81 0 +1
      683 LOADB                            R81 1
      684 LOADN                            R83 0
      685 JUMPIFLT                         R83 R23 ; [+2]
      687 LOADB                            R82 0 +1
      688 LOADB                            R82 1
      689 AND                              R83 R82 R7
      690 GETUPVAL                         R84 0
      691 GETTABLEKS                       R84 R84 K28 ["createElement"]
      693 GETUPVAL                         R85 6
      694 DUPTABLE                         R86 K31 [{["tag"] = "col gap-none size-full-0 auto-y"}]
      695 DUPTABLE                         R87 K37 [{"AssetRow", "WaveformRow", "VolumeRow", "PlaybackSpeedRow", "PreviewInWorldRow"}]
      696 GETUPVAL                         R88 0
      697 GETTABLEKS                       R88 R88 K28 ["createElement"]
      699 GETUPVAL                         R89 6
      700 DUPTABLE                         R90 K41 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium"}]
      701 DUPTABLE                         R91 K44 [{"AssetText", "AssetInput"}]
      702 GETUPVAL                         R92 0
      703 GETTABLEKS                       R92 R92 K28 ["createElement"]
      705 GETUPVAL                         R93 7
      706 DUPTABLE                         R94 K47 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x"}]
      707 SETTABLEKS                       R45 R94 K45 ["Text"]
      709 CALL                             R92 2 1
      710 SETTABLEKS                       R92 R91 K42 ["AssetText"]
      712 GETUPVAL                         R92 0
      713 GETTABLEKS                       R92 R92 K28 ["createElement"]
      715 GETUPVAL                         R93 8
      716 DUPTABLE                         R94 K58 [{["LayoutOrder"] = 2, ["text"], ["label"] = "", ["range"], ["size"], ["width"], ["onFocusGained"], ["onFocusLost"], ["onChanged"], ["onReturnPressed"]}]
      717 JUMPIFNOT                        R81 ; [+2]
      718 MOVE                             R95 R15
      719 JUMP                             ; [+1]
      720 MOVE                             R95 R1
      721 SETTABLEKS                       R95 R94 K49 ["text"]
      723 GETIMPORT                        R95 K61 [NumberRange.new]
      725 LOADN                            R96 0
      726 LOADN                            R97 1
      727 CALL                             R95 2 1
      728 SETTABLEKS                       R95 R94 K51 ["range"]
      730 GETUPVAL                         R95 9
      731 GETTABLEKS                       R95 R95 K62 ["Enums"]
      733 GETTABLEKS                       R95 R95 K63 ["IconSize"]
      735 GETTABLEKS                       R95 R95 K64 ["Small"]
      737 SETTABLEKS                       R95 R94 K52 ["size"]
      739 GETIMPORT                        R95 K66 [UDim.new]
      741 LOADK                            R96 K67 [0.5]
      742 LOADN                            R97 0
      743 CALL                             R95 2 1
      744 SETTABLEKS                       R95 R94 K53 ["width"]
      746 SETTABLEKS                       R57 R94 K54 ["onFocusGained"]
      748 SETTABLEKS                       R58 R94 K55 ["onFocusLost"]
      750 SETTABLEKS                       R59 R94 K56 ["onChanged"]
      752 SETTABLEKS                       R60 R94 K57 ["onReturnPressed"]
      754 CALL                             R92 2 1
      755 SETTABLEKS                       R92 R91 K43 ["AssetInput"]
      757 CALL                             R88 3 1
      758 SETTABLEKS                       R88 R87 K32 ["AssetRow"]
      760 GETUPVAL                         R88 0
      761 GETTABLEKS                       R88 R88 K28 ["createElement"]
      763 GETUPVAL                         R89 6
      764 DUPTABLE                         R90 K69 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-3000 padding-medium"}]
      765 DUPTABLE                         R91 K73 [{"LeftButtons", "WaveformContent", "LoopButton"}]
      766 GETUPVAL                         R92 0
      767 GETTABLEKS                       R92 R92 K28 ["createElement"]
      769 GETUPVAL                         R93 6
      770 DUPTABLE                         R94 K75 [{["LayoutOrder"] = 1, ["tag"] = "col flex-y-evenly align-x-center gap-none size-0-full auto-x"}]
      771 DUPTABLE                         R95 K78 [{"PlayButton", "ResetTimeButton"}]
      772 GETUPVAL                         R96 0
      773 GETTABLEKS                       R96 R96 K28 ["createElement"]
      775 GETUPVAL                         R97 10
      776 DUPTABLE                         R98 K84 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["variant"], ["size"], ["onActivated"]}]
      777 JUMPIFNOT                        R79 ; [+8]
      778 GETUPVAL                         R99 9
      779 GETTABLEKS                       R99 R99 K62 ["Enums"]
      781 GETTABLEKS                       R99 R99 K85 ["IconName"]
      783 GETTABLEKS                       R99 R99 K86 ["PauseLarge"]
      785 JUMP                             ; [+7]
      786 GETUPVAL                         R99 9
      787 GETTABLEKS                       R99 R99 K62 ["Enums"]
      789 GETTABLEKS                       R99 R99 K85 ["IconName"]
      791 GETTABLEKS                       R99 R99 K87 ["PlayLarge"]
      793 SETTABLEKS                       R99 R98 K79 ["icon"]
      795 GETUPVAL                         R99 9
      796 GETTABLEKS                       R99 R99 K62 ["Enums"]
      798 GETTABLEKS                       R99 R99 K88 ["ButtonVariant"]
      800 GETTABLEKS                       R99 R99 K89 ["Emphasis"]
      802 SETTABLEKS                       R99 R98 K82 ["variant"]
      804 GETUPVAL                         R99 9
      805 GETTABLEKS                       R99 R99 K62 ["Enums"]
      807 GETTABLEKS                       R99 R99 K63 ["IconSize"]
      809 GETTABLEKS                       R99 R99 K64 ["Small"]
      811 SETTABLEKS                       R99 R98 K52 ["size"]
      813 SETTABLEKS                       R64 R98 K83 ["onActivated"]
      815 CALL                             R96 2 1
      816 SETTABLEKS                       R96 R95 K76 ["PlayButton"]
      818 GETUPVAL                         R96 0
      819 GETTABLEKS                       R96 R96 K28 ["createElement"]
      821 GETUPVAL                         R97 10
      822 DUPTABLE                         R98 K90 [{["LayoutOrder"] = 2, ["icon"], ["isCircular"] = True, ["variant"], ["size"], ["onActivated"]}]
      823 GETUPVAL                         R99 9
      824 GETTABLEKS                       R99 R99 K62 ["Enums"]
      826 GETTABLEKS                       R99 R99 K85 ["IconName"]
      828 GETTABLEKS                       R99 R99 K91 ["SkipStartSmall"]
      830 SETTABLEKS                       R99 R98 K79 ["icon"]
      832 GETUPVAL                         R99 9
      833 GETTABLEKS                       R99 R99 K62 ["Enums"]
      835 GETTABLEKS                       R99 R99 K88 ["ButtonVariant"]
      837 GETTABLEKS                       R99 R99 K92 ["Utility"]
      839 SETTABLEKS                       R99 R98 K82 ["variant"]
      841 GETUPVAL                         R99 9
      842 GETTABLEKS                       R99 R99 K62 ["Enums"]
      844 GETTABLEKS                       R99 R99 K63 ["IconSize"]
      846 GETTABLEKS                       R99 R99 K93 ["XSmall"]
      848 SETTABLEKS                       R99 R98 K52 ["size"]
      850 SETTABLEKS                       R65 R98 K83 ["onActivated"]
      852 CALL                             R96 2 1
      853 SETTABLEKS                       R96 R95 K77 ["ResetTimeButton"]
      855 CALL                             R92 3 1
      856 SETTABLEKS                       R92 R91 K70 ["LeftButtons"]
      858 GETUPVAL                         R92 0
      859 GETTABLEKS                       R92 R92 K28 ["createElement"]
      861 GETUPVAL                         R93 6
      862 DUPTABLE                         R94 K95 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-left fill gap-none size-0-full"}]
      863 DUPTABLE                         R95 K98 [{"WaveformView", "TimePositionText"}]
      864 GETUPVAL                         R96 0
      865 GETTABLEKS                       R96 R96 K28 ["createElement"]
      867 GETUPVAL                         R97 6
      868 DUPTABLE                         R98 K100 [{["LayoutOrder"] = 1, ["tag"] = "fill size-full-0"}]
      869 DUPTABLE                         R99 K102 [{"GraphCanvas"}]
      870 GETUPVAL                         R100 0
      871 GETTABLEKS                       R100 R100 K28 ["createElement"]
      873 GETUPVAL                         R101 11
      874 DUPTABLE                         R102 K111 [{["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["CullingEpsilon"] = 1, ["children"], ["childrenUnclipped"]}]
      875 GETIMPORT                        R103 K113 [Rect.new]
      877 LOADN                            R104 0
      878 LOADN                            R105 -1
      879 LOADN                            R107 0
      880 JUMPIFNOTLT                      R107 R23 ; [+3]
      882 MOVE                             R106 R23
      883 JUMP                             ; [+1]
      884 LOADN                            R106 1
      885 LOADN                            R107 1
      886 CALL                             R103 4 1
      887 SETTABLEKS                       R103 R102 K103 ["GraphRect"]
      889 GETIMPORT                        R103 K66 [UDim.new]
      891 LOADN                            R104 0
      892 LOADN                            R105 0
      893 CALL                             R103 2 1
      894 SETTABLEKS                       R103 R102 K104 ["ViewportPaddingLeft"]
      896 GETIMPORT                        R103 K66 [UDim.new]
      898 LOADN                            R104 0
      899 LOADN                            R105 0
      900 CALL                             R103 2 1
      901 SETTABLEKS                       R103 R102 K105 ["ViewportPaddingRight"]
      903 GETIMPORT                        R103 K66 [UDim.new]
      905 LOADN                            R104 0
      906 LOADN                            R105 16
      907 CALL                             R103 2 1
      908 SETTABLEKS                       R103 R102 K106 ["ViewportPaddingTop"]
      910 GETIMPORT                        R103 K66 [UDim.new]
      912 LOADN                            R104 0
      913 LOADN                            R105 0
      914 CALL                             R103 2 1
      915 SETTABLEKS                       R103 R102 K107 ["ViewportPaddingBottom"]
      917 DUPTABLE                         R103 K119 [{"VolumeBox", "PlaybackRegionMinBox", "PlaybackRegionMaxBox", "Waveform", "Touch"}]
      918 MOVE                             R104 R33
      919 JUMPIFNOT                        R104 ; [+23]
      920 GETUPVAL                         R104 0
      921 GETTABLEKS                       R104 R104 K28 ["createElement"]
      923 GETUPVAL                         R105 12
      924 DUPTABLE                         R106 K125 [{["Rect"], ["ZIndex"] = -2, ["BackgroundColor3"], ["BackgroundTransparency"] = 0.8}]
      925 GETIMPORT                        R107 K113 [Rect.new]
      927 LOADN                            R108 0
      928 MINUS                            R109 R3
      929 MOVE                             R110 R23
      930 MOVE                             R111 R3
      931 CALL                             R107 4 1
      932 SETTABLEKS                       R107 R106 K112 ["Rect"]
      934 GETIMPORT                        R107 K127 [Color3.new]
      936 LOADN                            R108 1
      937 LOADN                            R109 1
      938 LOADN                            R110 1
      939 CALL                             R107 3 1
      940 SETTABLEKS                       R107 R106 K122 ["BackgroundColor3"]
      942 CALL                             R104 2 1
      943 SETTABLEKS                       R104 R103 K114 ["VolumeBox"]
      945 LOADB                            R104 0
      946 LOADN                            R105 0
      947 JUMPIFNOTLT                      R105 R23 ; [+17]
      949 GETUPVAL                         R104 0
      950 GETTABLEKS                       R104 R104 K28 ["createElement"]
      952 GETUPVAL                         R105 12
      953 DUPTABLE                         R106 K129 [{["Rect"], ["ZIndex"] = -1, ["BackgroundTransparency"] = 0.5}]
      954 GETIMPORT                        R107 K113 [Rect.new]
      956 LOADN                            R108 0
      957 LOADN                            R109 -1
      958 GETTABLEKS                       R110 R9 K130 ["Min"]
      960 LOADN                            R111 1
      961 CALL                             R107 4 1
      962 SETTABLEKS                       R107 R106 K112 ["Rect"]
      964 CALL                             R104 2 1
      965 SETTABLEKS                       R104 R103 K115 ["PlaybackRegionMinBox"]
      967 LOADB                            R104 0
      968 LOADN                            R105 0
      969 JUMPIFNOTLT                      R105 R23 ; [+23]
      971 GETUPVAL                         R104 0
      972 GETTABLEKS                       R104 R104 K28 ["createElement"]
      974 GETUPVAL                         R105 12
      975 DUPTABLE                         R106 K129 [{["Rect"], ["ZIndex"] = -1, ["BackgroundTransparency"] = 0.5}]
      976 GETIMPORT                        R107 K113 [Rect.new]
      978 GETTABLEKS                       R109 R9 K131 ["Max"]
      980 FASTCALL2                        MATH_MIN R109 R23 ; [+4]
      982 MOVE                             R110 R23
      983 GETIMPORT                        R108 K134 [math.min]
      985 CALL                             R108 2 1
      986 LOADN                            R109 -1
      987 MOVE                             R110 R23
      988 LOADN                            R111 1
      989 CALL                             R107 4 1
      990 SETTABLEKS                       R107 R106 K112 ["Rect"]
      992 CALL                             R104 2 1
      993 SETTABLEKS                       R104 R103 K116 ["PlaybackRegionMaxBox"]
      995 GETUPVAL                         R104 0
      996 GETTABLEKS                       R104 R104 K28 ["createElement"]
      998 GETUPVAL                         R105 13
      999 DUPTABLE                         R106 K138 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
     1000 SETTABLEKS                       R1 R106 K2 ["AssetId"]
     1002 SETTABLEKS                       R27 R106 K135 ["HoveredPosition"]
     1004 SETTABLEKS                       R23 R106 K136 ["TimeLength"]
     1006 SETTABLEKS                       R25 R106 K8 ["TimePosition"]
     1008 SETTABLEKS                       R3 R106 K3 ["Volume"]
     1010 SETTABLEKS                       R37 R106 K137 ["Resolution"]
     1012 CALL                             R104 2 1
     1013 SETTABLEKS                       R104 R103 K117 ["Waveform"]
     1015 GETUPVAL                         R104 0
     1016 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1018 GETUPVAL                         R105 14
     1019 DUPTABLE                         R106 K145 [{["ZIndex"] = 10, ["TreatMouseAsAnchor"] = True, ["OnHoverMoved"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
     1020 SETTABLEKS                       R61 R106 K141 ["OnHoverMoved"]
     1022 SETTABLEKS                       R62 R106 K142 ["OnDragStart"]
     1024 SETTABLEKS                       R61 R106 K143 ["OnDragMoved"]
     1026 SETTABLEKS                       R63 R106 K144 ["OnDragEnded"]
     1028 CALL                             R104 2 1
     1029 SETTABLEKS                       R104 R103 K118 ["Touch"]
     1031 SETTABLEKS                       R103 R102 K109 ["children"]
     1033 DUPTABLE                         R103 K151 [{"PlaybackRegionMinBar", "PlaybackRegionMaxBar", "LoopRegionMinBar", "LoopRegionMaxBar", "TimePositionBar"}]
     1034 MOVE                             R104 R82
     1035 JUMPIFNOT                        R104 ; [+21]
     1036 GETUPVAL                         R104 0
     1037 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1039 GETUPVAL                         R105 15
     1040 DUPTABLE                         R106 K156 [{["Position"], ["SetPosition"], ["HeightAboveGraph"], ["ColorStyle"], ["ZIndex"] = 1}]
     1041 GETTABLEKS                       R107 R9 K130 ["Min"]
     1043 SETTABLEKS                       R107 R106 K152 ["Position"]
     1045 SETTABLEKS                       R68 R106 K153 ["SetPosition"]
     1047 JUMPIFNOT                        R83 ; [+2]
     1048 LOADN                            R108 2
     1049 JUMP                             ; [+1]
     1050 LOADN                            R108 1
     1051 MULK                             R107 R108 K157 [12]
     1052 SETTABLEKS                       R107 R106 K154 ["HeightAboveGraph"]
     1054 SETTABLEKS                       R41 R106 K155 ["ColorStyle"]
     1056 CALL                             R104 2 1
     1057 SETTABLEKS                       R104 R103 K146 ["PlaybackRegionMinBar"]
     1059 MOVE                             R104 R82
     1060 JUMPIFNOT                        R104 ; [+27]
     1061 GETUPVAL                         R104 0
     1062 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1064 GETUPVAL                         R105 15
     1065 DUPTABLE                         R106 K156 [{["Position"], ["SetPosition"], ["HeightAboveGraph"], ["ColorStyle"], ["ZIndex"] = 1}]
     1066 GETTABLEKS                       R108 R9 K131 ["Max"]
     1068 FASTCALL2                        MATH_MIN R108 R23 ; [+4]
     1070 MOVE                             R109 R23
     1071 GETIMPORT                        R107 K134 [math.min]
     1073 CALL                             R107 2 1
     1074 SETTABLEKS                       R107 R106 K152 ["Position"]
     1076 SETTABLEKS                       R69 R106 K153 ["SetPosition"]
     1078 JUMPIFNOT                        R83 ; [+2]
     1079 LOADN                            R108 2
     1080 JUMP                             ; [+1]
     1081 LOADN                            R108 1
     1082 MULK                             R107 R108 K157 [12]
     1083 SETTABLEKS                       R107 R106 K154 ["HeightAboveGraph"]
     1085 SETTABLEKS                       R41 R106 K155 ["ColorStyle"]
     1087 CALL                             R104 2 1
     1088 SETTABLEKS                       R104 R103 K147 ["PlaybackRegionMaxBar"]
     1090 MOVE                             R104 R83
     1091 JUMPIFNOT                        R104 ; [+14]
     1092 GETUPVAL                         R104 0
     1093 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1095 GETUPVAL                         R105 15
     1096 DUPTABLE                         R106 K159 [{["Position"], ["SetPosition"], ["HeightAboveGraph"] = 12, ["Thickness"] = 1, ["ColorStyle"], ["ZIndex"] = 2}]
     1097 GETTABLEKS                       R107 R11 K130 ["Min"]
     1099 SETTABLEKS                       R107 R106 K152 ["Position"]
     1101 SETTABLEKS                       R70 R106 K153 ["SetPosition"]
     1103 SETTABLEKS                       R42 R106 K155 ["ColorStyle"]
     1105 CALL                             R104 2 1
     1106 SETTABLEKS                       R104 R103 K148 ["LoopRegionMinBar"]
     1108 MOVE                             R104 R83
     1109 JUMPIFNOT                        R104 ; [+20]
     1110 GETUPVAL                         R104 0
     1111 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1113 GETUPVAL                         R105 15
     1114 DUPTABLE                         R106 K159 [{["Position"], ["SetPosition"], ["HeightAboveGraph"] = 12, ["Thickness"] = 1, ["ColorStyle"], ["ZIndex"] = 2}]
     1115 GETTABLEKS                       R108 R11 K131 ["Max"]
     1117 FASTCALL2                        MATH_MIN R108 R23 ; [+4]
     1119 MOVE                             R109 R23
     1120 GETIMPORT                        R107 K134 [math.min]
     1122 CALL                             R107 2 1
     1123 SETTABLEKS                       R107 R106 K152 ["Position"]
     1125 SETTABLEKS                       R71 R106 K153 ["SetPosition"]
     1127 SETTABLEKS                       R42 R106 K155 ["ColorStyle"]
     1129 CALL                             R104 2 1
     1130 SETTABLEKS                       R104 R103 K149 ["LoopRegionMaxBar"]
     1132 MOVE                             R104 R82
     1133 JUMPIFNOT                        R104 ; [+28]
     1134 GETUPVAL                         R104 0
     1135 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1137 GETUPVAL                         R105 15
     1138 DUPTABLE                         R106 K162 [{["Position"], ["SetPosition"], ["HeightAboveGraph"] = 0, ["Thickness"] = 1, ["ColorStyle"], ["ZIndex"] = 3}]
     1139 GETTABLEKS                       R109 R9 K130 ["Min"]
     1141 GETTABLEKS                       R111 R9 K131 ["Max"]
     1143 FASTCALL2                        MATH_MIN R111 R23 ; [+4]
     1145 MOVE                             R112 R23
     1146 GETIMPORT                        R110 K134 [math.min]
     1148 CALL                             R110 2 1
     1149 FASTCALL3                        MATH_CLAMP R13 R109 R110
     1151 MOVE                             R108 R13
     1152 GETIMPORT                        R107 K164 [math.clamp]
     1154 CALL                             R107 3 1
     1155 SETTABLEKS                       R107 R106 K152 ["Position"]
     1157 SETTABLEKS                       R67 R106 K153 ["SetPosition"]
     1159 SETTABLEKS                       R43 R106 K155 ["ColorStyle"]
     1161 CALL                             R104 2 1
     1162 SETTABLEKS                       R104 R103 K150 ["TimePositionBar"]
     1164 SETTABLEKS                       R103 R102 K110 ["childrenUnclipped"]
     1166 CALL                             R100 2 1
     1167 SETTABLEKS                       R100 R99 K101 ["GraphCanvas"]
     1169 CALL                             R96 3 1
     1170 SETTABLEKS                       R96 R95 K96 ["WaveformView"]
     1172 GETUPVAL                         R96 0
     1173 GETTABLEKS                       R96 R96 K28 ["createElement"]
     1175 GETUPVAL                         R97 7
     1176 DUPTABLE                         R98 K166 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left"}]
     1177 MOVE                             R103 R25
     1178 FASTCALL2K                       MATH_MAX R103 K160 ; [+5]
     1180 MOVE                             R105 R103
     1181 LOADK                            R106 K160 [0]
     1182 GETIMPORT                        R104 K168 [math.max]
     1184 CALL                             R104 2 1
     1185 MOVE                             R103 R104
     1186 GETIMPORT                        R104 K171 [string.format]
     1188 LOADK                            R105 K172 ["%d:%05.2f"]
     1189 DIVK                             R106 R103 K173 [60]
     1190 MODK                             R107 R103 K173 [60]
     1191 CALL                             R104 3 1
     1192 MOVE                             R100 R104
     1193 LOADK                            R101 K174 [" / "]
     1194 MOVE                             R103 R23
     1195 FASTCALL2K                       MATH_MAX R103 K160 ; [+5]
     1197 MOVE                             R105 R103
     1198 LOADK                            R106 K160 [0]
     1199 GETIMPORT                        R104 K168 [math.max]
     1201 CALL                             R104 2 1
     1202 MOVE                             R103 R104
     1203 GETIMPORT                        R104 K171 [string.format]
     1205 LOADK                            R105 K172 ["%d:%05.2f"]
     1206 DIVK                             R106 R103 K173 [60]
     1207 MODK                             R107 R103 K173 [60]
     1208 CALL                             R104 3 1
     1209 MOVE                             R102 R104
     1210 CONCAT                           R99 R100 R102
     1211 SETTABLEKS                       R99 R98 K45 ["Text"]
     1213 CALL                             R96 2 1
     1214 SETTABLEKS                       R96 R95 K97 ["TimePositionText"]
     1216 CALL                             R92 3 1
     1217 SETTABLEKS                       R92 R91 K71 ["WaveformContent"]
     1219 GETUPVAL                         R92 0
     1220 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1222 GETUPVAL                         R93 10
     1223 DUPTABLE                         R94 K175 [{["LayoutOrder"] = 3, ["icon"], ["isCircular"] = True, ["variant"], ["size"], ["onActivated"]}]
     1224 GETUPVAL                         R95 9
     1225 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1227 GETTABLEKS                       R95 R95 K85 ["IconName"]
     1229 GETTABLEKS                       R95 R95 K176 ["TwoArrowsLoopClockwise"]
     1231 SETTABLEKS                       R95 R94 K79 ["icon"]
     1233 JUMPIFNOT                        R7 ; [+8]
     1234 GETUPVAL                         R95 9
     1235 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1237 GETTABLEKS                       R95 R95 K88 ["ButtonVariant"]
     1239 GETTABLEKS                       R95 R95 K89 ["Emphasis"]
     1241 JUMP                             ; [+7]
     1242 GETUPVAL                         R95 9
     1243 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1245 GETTABLEKS                       R95 R95 K88 ["ButtonVariant"]
     1247 GETTABLEKS                       R95 R95 K177 ["Standard"]
     1249 SETTABLEKS                       R95 R94 K82 ["variant"]
     1251 GETUPVAL                         R95 9
     1252 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1254 GETTABLEKS                       R95 R95 K63 ["IconSize"]
     1256 GETTABLEKS                       R95 R95 K64 ["Small"]
     1258 SETTABLEKS                       R95 R94 K52 ["size"]
     1260 SETTABLEKS                       R66 R94 K83 ["onActivated"]
     1262 CALL                             R92 2 1
     1263 SETTABLEKS                       R92 R91 K72 ["LoopButton"]
     1265 CALL                             R88 3 1
     1266 SETTABLEKS                       R88 R87 K33 ["WaveformRow"]
     1268 GETUPVAL                         R88 0
     1269 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1271 GETUPVAL                         R89 6
     1272 DUPTABLE                         R90 K178 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium"}]
     1273 DUPTABLE                         R91 K183 [{"VolumeLabel", "VolumeSlider", "VolumeText", "VolumeReset"}]
     1274 GETUPVAL                         R92 0
     1275 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1277 GETUPVAL                         R93 7
     1278 DUPTABLE                         R94 K185 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x text-body-medium"}]
     1279 SETTABLEKS                       R48 R94 K45 ["Text"]
     1281 CALL                             R92 2 1
     1282 SETTABLEKS                       R92 R91 K179 ["VolumeLabel"]
     1284 GETUPVAL                         R92 0
     1285 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1287 GETUPVAL                         R93 16
     1288 DUPTABLE                         R94 K190 [{["LayoutOrder"] = 2, ["value"], ["range"], ["width"], ["onDragStarted"], ["onDragEnded"], ["onValueChanged"]}]
     1289 ADDK                             R97 R3 K39 [1]
     1290 FASTCALL1                        MATH_LOG R97 ; [+2]
     1291 GETIMPORT                        R96 K193 [math.log]
     1293 CALL                             R96 1 1
     1294 DIVK                             R95 R96 K191 [0.693147180559945]
     1295 SETTABLEKS                       R95 R94 K186 ["value"]
     1297 GETIMPORT                        R95 K61 [NumberRange.new]
     1299 LOADN                            R96 0
     1300 LOADK                            R97 K194 [3.4594316186373]
     1301 CALL                             R95 2 1
     1302 SETTABLEKS                       R95 R94 K51 ["range"]
     1304 GETIMPORT                        R95 K66 [UDim.new]
     1306 LOADK                            R96 K67 [0.5]
     1307 LOADN                            R97 0
     1308 CALL                             R95 2 1
     1309 SETTABLEKS                       R95 R94 K53 ["width"]
     1311 SETTABLEKS                       R72 R94 K187 ["onDragStarted"]
     1313 SETTABLEKS                       R73 R94 K188 ["onDragEnded"]
     1315 SETTABLEKS                       R74 R94 K189 ["onValueChanged"]
     1317 CALL                             R92 2 1
     1318 SETTABLEKS                       R92 R91 K180 ["VolumeSlider"]
     1320 GETUPVAL                         R92 0
     1321 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1323 GETUPVAL                         R93 7
     1324 DUPTABLE                         R94 K195 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "auto-x text-body-medium"}]
     1325 GETIMPORT                        R95 K171 [string.format]
     1327 LOADK                            R96 K196 ["x%.2f"]
     1328 MOVE                             R97 R3
     1329 CALL                             R95 2 1
     1330 SETTABLEKS                       R95 R94 K45 ["Text"]
     1332 CALL                             R92 2 1
     1333 SETTABLEKS                       R92 R91 K181 ["VolumeText"]
     1335 LOADB                            R92 0
     1336 JUMPIFEQKN                       R3 K39 [1] ; [+27]
     1338 GETUPVAL                         R92 0
     1339 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1341 GETUPVAL                         R93 10
     1342 DUPTABLE                         R94 K198 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["size"], ["onActivated"]}]
     1343 GETUPVAL                         R95 9
     1344 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1346 GETTABLEKS                       R95 R95 K85 ["IconName"]
     1348 GETTABLEKS                       R95 R95 K199 ["ArrowCurlToLeft"]
     1350 SETTABLEKS                       R95 R94 K79 ["icon"]
     1352 GETUPVAL                         R95 9
     1353 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1355 GETTABLEKS                       R95 R95 K63 ["IconSize"]
     1357 GETTABLEKS                       R95 R95 K93 ["XSmall"]
     1359 SETTABLEKS                       R95 R94 K52 ["size"]
     1361 SETTABLEKS                       R75 R94 K83 ["onActivated"]
     1363 CALL                             R92 2 1
     1364 SETTABLEKS                       R92 R91 K182 ["VolumeReset"]
     1366 CALL                             R88 3 1
     1367 SETTABLEKS                       R88 R87 K34 ["VolumeRow"]
     1369 GETUPVAL                         R88 0
     1370 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1372 GETUPVAL                         R89 6
     1373 DUPTABLE                         R90 K200 [{["LayoutOrder"] = 4, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium"}]
     1374 DUPTABLE                         R91 K205 [{"PlaybackSpeedLabel", "PlaybackSpeedSlider", "PlaybackSpeedText", "PlaybackSpeedReset"}]
     1375 GETUPVAL                         R92 0
     1376 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1378 GETUPVAL                         R93 7
     1379 DUPTABLE                         R94 K185 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x text-body-medium"}]
     1380 SETTABLEKS                       R46 R94 K45 ["Text"]
     1382 CALL                             R92 2 1
     1383 SETTABLEKS                       R92 R91 K201 ["PlaybackSpeedLabel"]
     1385 GETUPVAL                         R92 0
     1386 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1388 GETUPVAL                         R93 16
     1389 DUPTABLE                         R94 K206 [{["LayoutOrder"] = 2, ["value"], ["range"], ["width"], ["onValueChanged"]}]
     1390 ADDK                             R97 R5 K39 [1]
     1391 FASTCALL1                        MATH_LOG R97 ; [+2]
     1392 GETIMPORT                        R96 K193 [math.log]
     1394 CALL                             R96 1 1
     1395 DIVK                             R95 R96 K191 [0.693147180559945]
     1396 SETTABLEKS                       R95 R94 K186 ["value"]
     1398 GETIMPORT                        R95 K61 [NumberRange.new]
     1400 LOADN                            R96 0
     1401 LOADK                            R97 K207 [4.39231742277876]
     1402 CALL                             R95 2 1
     1403 SETTABLEKS                       R95 R94 K51 ["range"]
     1405 GETIMPORT                        R95 K66 [UDim.new]
     1407 LOADK                            R96 K67 [0.5]
     1408 LOADN                            R97 0
     1409 CALL                             R95 2 1
     1410 SETTABLEKS                       R95 R94 K53 ["width"]
     1412 SETTABLEKS                       R76 R94 K189 ["onValueChanged"]
     1414 CALL                             R92 2 1
     1415 SETTABLEKS                       R92 R91 K202 ["PlaybackSpeedSlider"]
     1417 GETUPVAL                         R92 0
     1418 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1420 GETUPVAL                         R93 7
     1421 DUPTABLE                         R94 K195 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "auto-x text-body-medium"}]
     1422 GETIMPORT                        R95 K171 [string.format]
     1424 LOADK                            R96 K196 ["x%.2f"]
     1425 MOVE                             R97 R5
     1426 CALL                             R95 2 1
     1427 SETTABLEKS                       R95 R94 K45 ["Text"]
     1429 CALL                             R92 2 1
     1430 SETTABLEKS                       R92 R91 K203 ["PlaybackSpeedText"]
     1432 LOADB                            R92 0
     1433 JUMPIFEQKN                       R5 K39 [1] ; [+27]
     1435 GETUPVAL                         R92 0
     1436 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1438 GETUPVAL                         R93 10
     1439 DUPTABLE                         R94 K198 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["size"], ["onActivated"]}]
     1440 GETUPVAL                         R95 9
     1441 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1443 GETTABLEKS                       R95 R95 K85 ["IconName"]
     1445 GETTABLEKS                       R95 R95 K199 ["ArrowCurlToLeft"]
     1447 SETTABLEKS                       R95 R94 K79 ["icon"]
     1449 GETUPVAL                         R95 9
     1450 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1452 GETTABLEKS                       R95 R95 K63 ["IconSize"]
     1454 GETTABLEKS                       R95 R95 K93 ["XSmall"]
     1456 SETTABLEKS                       R95 R94 K52 ["size"]
     1458 SETTABLEKS                       R77 R94 K83 ["onActivated"]
     1460 CALL                             R92 2 1
     1461 SETTABLEKS                       R92 R91 K204 ["PlaybackSpeedReset"]
     1463 CALL                             R88 3 1
     1464 SETTABLEKS                       R88 R87 K35 ["PlaybackSpeedRow"]
     1466 MOVE                             R88 R80
     1467 JUMPIFNOT                        R88 ; [+30]
     1468 GETUPVAL                         R88 0
     1469 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1471 GETUPVAL                         R89 6
     1472 DUPTABLE                         R90 K208 [{["LayoutOrder"] = 0, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium"}]
     1473 DUPTABLE                         R91 K210 [{"PreviewInWorldCheckbox"}]
     1474 GETUPVAL                         R92 0
     1475 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1477 GETUPVAL                         R93 17
     1478 DUPTABLE                         R94 K212 [{"isChecked", "label", "size", "onActivated"}]
     1479 SETTABLEKS                       R35 R94 K211 ["isChecked"]
     1481 SETTABLEKS                       R47 R94 K50 ["label"]
     1483 GETUPVAL                         R95 9
     1484 GETTABLEKS                       R95 R95 K62 ["Enums"]
     1486 GETTABLEKS                       R95 R95 K213 ["InputSize"]
     1488 GETTABLEKS                       R95 R95 K93 ["XSmall"]
     1490 SETTABLEKS                       R95 R94 K52 ["size"]
     1492 SETTABLEKS                       R78 R94 K83 ["onActivated"]
     1494 CALL                             R92 2 1
     1495 SETTABLEKS                       R92 R91 K209 ["PreviewInWorldCheckbox"]
     1497 CALL                             R88 3 1
     1498 SETTABLEKS                       R88 R87 K36 ["PreviewInWorldRow"]
     1500 CALL                             R84 3 -1
     1501 RETURN                           R84 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Checkbox"]
       23 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       25 GETTABLEKS                       R5 R2 K11 ["Slider"]
       27 GETTABLEKS                       R6 R2 K12 ["Text"]
       29 GETTABLEKS                       R7 R2 K13 ["TextInput"]
       31 GETTABLEKS                       R8 R2 K14 ["View"]
       33 GETTABLEKS                       R9 R2 K15 ["Hooks"]
       35 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R11 R0 K6 ["Packages"]
       41 GETTABLEKS                       R11 R11 K17 ["Graphing"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R10 K18 ["Canvas"]
       46 GETTABLEKS                       R12 R10 K19 ["InputDetector"]
       48 GETTABLEKS                       R13 R10 K20 ["Panel"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R15 R0 K6 ["Packages"]
       54 GETTABLEKS                       R15 R15 K21 ["Framework"]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R15 R14 K22 ["ContextServices"]
       59 GETTABLEKS                       R16 R15 K23 ["Localization"]
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R18 R0 K24 ["Src"]
       65 GETTABLEKS                       R18 R18 K25 ["Components"]
       67 GETTABLEKS                       R18 R18 K26 ["FlaggedLine"]
       69 CALL                             R17 1 1
       70 GETIMPORT                        R18 K5 [require]
       72 GETTABLEKS                       R19 R0 K24 ["Src"]
       74 GETTABLEKS                       R19 R19 K25 ["Components"]
       76 GETTABLEKS                       R19 R19 K27 ["Waveform"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K5 [require]
       81 GETTABLEKS                       R20 R0 K24 ["Src"]
       83 GETTABLEKS                       R20 R20 K28 ["Util"]
       85 GETTABLEKS                       R20 R20 K29 ["PlayerUtil"]
       87 CALL                             R19 1 1
       88 GETIMPORT                        R20 K5 [require]
       90 GETTABLEKS                       R21 R0 K24 ["Src"]
       92 GETTABLEKS                       R21 R21 K28 ["Util"]
       94 GETTABLEKS                       R21 R21 K30 ["PlaybackRegionUtil"]
       96 CALL                             R20 1 1
       97 GETIMPORT                        R21 K5 [require]
       99 GETTABLEKS                       R22 R0 K31 ["Bin"]
      101 GETTABLEKS                       R22 R22 K32 ["Common"]
      103 GETTABLEKS                       R22 R22 K33 ["defineLuaFlags"]
      105 CALL                             R21 1 1
      106 GETTABLEKS                       R22 R21 K34 ["getFFlagSoundShimEnabled"]
      108 CALL                             R22 0 1
      109 GETIMPORT                        R23 K5 [require]
      111 GETTABLEKS                       R24 R0 K24 ["Src"]
      113 GETTABLEKS                       R24 R24 K35 ["Types"]
      115 CALL                             R23 1 1
      116 DUPCLOSURE                       R24 K36 [PROTO_0]
      117 DUPCLOSURE                       R25 K37 [PROTO_1]
      118 DUPCLOSURE                       R26 K38 [PROTO_2]
      119 DUPCLOSURE                       R27 K39 [PROTO_3]
      120 DUPCLOSURE                       R28 K40 [PROTO_39]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R22
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R3
      139 RETURN                           R28 1
