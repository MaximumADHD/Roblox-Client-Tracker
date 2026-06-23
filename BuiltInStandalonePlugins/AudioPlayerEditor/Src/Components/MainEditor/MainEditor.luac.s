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
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 3
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R1
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 5
       12 MOVE                             R5 R2
       13 CALL                             R4 1 0
       14 GETUPVAL                         R4 6
       15 MOVE                             R5 R3
       16 CALL                             R4 1 0
       17 DUPTABLE                         R4 K4 [{"PlaybackRegion", "LoopRegion", "TimePosition"}]
       18 SETTABLEKS                       R1 R4 K1 ["PlaybackRegion"]
       20 SETTABLEKS                       R2 R4 K2 ["LoopRegion"]
       22 SETTABLEKS                       R3 R4 K3 ["TimePosition"]
       24 GETIMPORT                        R5 K7 [table.clone]
       26 GETUPVAL                         R6 7
       27 GETTABLEKS                       R6 R6 K8 ["current"]
       29 CALL                             R5 1 1
       30 MOVE                             R6 R4
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 SETTABLE                         R10 R5 R9
       35 FORGLOOP                         R6 2 ; [-2]
       37 GETUPVAL                         R6 7
       38 SETTABLEKS                       R5 R6 K8 ["current"]
       40 GETUPVAL                         R6 8
       41 GETTABLEKS                       R6 R6 K9 ["assignProperties"]
       43 MOVE                             R7 R5
       44 CALL                             R6 1 0
       45 GETUPVAL                         R6 9
       46 GETTABLEKS                       R6 R6 K10 ["SetData"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustLoopRegionMin"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 DUPTABLE                         R2 K2 [{"LoopRegion"}]
       11 SETTABLEKS                       R1 R2 K1 ["LoopRegion"]
       13 GETIMPORT                        R3 K5 [table.clone]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K6 ["current"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R2
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 SETTABLE                         R8 R3 R7
       24 FORGLOOP                         R4 2 ; [-2]
       26 GETUPVAL                         R4 4
       27 SETTABLEKS                       R3 R4 K6 ["current"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K7 ["assignProperties"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 6
       35 GETTABLEKS                       R4 R4 K8 ["SetData"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustLoopRegionMax"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 DUPTABLE                         R2 K2 [{"LoopRegion"}]
       11 SETTABLEKS                       R1 R2 K1 ["LoopRegion"]
       13 GETIMPORT                        R3 K5 [table.clone]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K6 ["current"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R2
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 SETTABLE                         R8 R3 R7
       24 FORGLOOP                         R4 2 ; [-2]
       26 GETUPVAL                         R4 4
       27 SETTABLEKS                       R3 R4 K6 ["current"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K7 ["assignProperties"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 6
       35 GETTABLEKS                       R4 R4 K8 ["SetData"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

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
        1 LOADN                            R1 255
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
       79 LOADN                            R24 255
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
      117 LOADN                            R38 244
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
      442 MOVE                             R73 R23
      443 MOVE                             R74 R13
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
      457 CAPTURE                          VAL R10
      458 CAPTURE                          VAL R12
      459 CAPTURE                          VAL R14
      460 CAPTURE                          VAL R39
      461 CAPTURE                          UPVAL U3
      462 CAPTURE                          VAL R0
      463 NEWTABLE                         R71 0 4
      465 MOVE                             R72 R9
      466 MOVE                             R73 R11
      467 MOVE                             R74 R13
      468 GETTABLEKS                       R75 R0 K22 ["SetData"]
      470 SETLIST                          R71 R72 4 [1]
      472 CALL                             R69 2 1
      473 GETUPVAL                         R70 0
      474 GETTABLEKS                       R70 R70 K21 ["useCallback"]
      476 NEWCLOSURE                       R71 P21
      477 CAPTURE                          UPVAL U4
      478 CAPTURE                          VAL R9
      479 CAPTURE                          VAL R11
      480 CAPTURE                          VAL R12
      481 CAPTURE                          VAL R39
      482 CAPTURE                          UPVAL U3
      483 CAPTURE                          VAL R0
      484 NEWTABLE                         R72 0 3
      486 MOVE                             R73 R9
      487 MOVE                             R74 R11
      488 GETTABLEKS                       R75 R0 K22 ["SetData"]
      490 SETLIST                          R72 R73 3 [1]
      492 CALL                             R70 2 1
      493 GETUPVAL                         R71 0
      494 GETTABLEKS                       R71 R71 K21 ["useCallback"]
      496 NEWCLOSURE                       R72 P22
      497 CAPTURE                          UPVAL U4
      498 CAPTURE                          VAL R9
      499 CAPTURE                          VAL R11
      500 CAPTURE                          VAL R12
      501 CAPTURE                          VAL R39
      502 CAPTURE                          UPVAL U3
      503 CAPTURE                          VAL R0
      504 NEWTABLE                         R73 0 3
      506 MOVE                             R74 R9
      507 MOVE                             R75 R11
      508 GETTABLEKS                       R76 R0 K22 ["SetData"]
      510 SETLIST                          R73 R74 3 [1]
      512 CALL                             R71 2 1
      513 GETUPVAL                         R72 0
      514 GETTABLEKS                       R72 R72 K21 ["useCallback"]
      516 NEWCLOSURE                       R73 P23
      517 CAPTURE                          VAL R34
      518 NEWTABLE                         R74 0 1
      520 MOVE                             R75 R34
      521 SETLIST                          R74 R75 1 [1]
      523 CALL                             R72 2 1
      524 GETUPVAL                         R73 0
      525 GETTABLEKS                       R73 R73 K21 ["useCallback"]
      527 NEWCLOSURE                       R74 P24
      528 CAPTURE                          VAL R34
      529 NEWTABLE                         R75 0 1
      531 MOVE                             R76 R34
      532 SETLIST                          R75 R76 1 [1]
      534 CALL                             R73 2 1
      535 GETUPVAL                         R74 0
      536 GETTABLEKS                       R74 R74 K21 ["useCallback"]
      538 NEWCLOSURE                       R75 P25
      539 CAPTURE                          VAL R52
      540 NEWTABLE                         R76 0 1
      542 MOVE                             R77 R52
      543 SETLIST                          R76 R77 1 [1]
      545 CALL                             R74 2 1
      546 GETUPVAL                         R75 0
      547 GETTABLEKS                       R75 R75 K21 ["useCallback"]
      549 NEWCLOSURE                       R76 P26
      550 CAPTURE                          VAL R52
      551 NEWTABLE                         R77 0 1
      553 MOVE                             R78 R52
      554 SETLIST                          R77 R78 1 [1]
      556 CALL                             R75 2 1
      557 GETUPVAL                         R76 0
      558 GETTABLEKS                       R76 R76 K21 ["useCallback"]
      560 NEWCLOSURE                       R77 P27
      561 CAPTURE                          VAL R53
      562 NEWTABLE                         R78 0 1
      564 MOVE                             R79 R53
      565 SETLIST                          R78 R79 1 [1]
      567 CALL                             R76 2 1
      568 GETUPVAL                         R77 0
      569 GETTABLEKS                       R77 R77 K21 ["useCallback"]
      571 NEWCLOSURE                       R78 P28
      572 CAPTURE                          VAL R53
      573 NEWTABLE                         R79 0 1
      575 MOVE                             R80 R53
      576 SETLIST                          R79 R80 1 [1]
      578 CALL                             R77 2 1
      579 GETUPVAL                         R78 0
      580 GETTABLEKS                       R78 R78 K21 ["useCallback"]
      582 NEWCLOSURE                       R79 P29
      583 CAPTURE                          UPVAL U3
      584 CAPTURE                          VAL R35
      585 CAPTURE                          VAL R36
      586 NEWTABLE                         R80 0 2
      588 MOVE                             R81 R35
      589 MOVE                             R82 R36
      590 SETLIST                          R80 R81 2 [1]
      592 CALL                             R78 2 1
      593 GETUPVAL                         R79 0
      594 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      596 NEWCLOSURE                       R80 P30
      597 CAPTURE                          VAL R39
      598 CAPTURE                          VAL R0
      599 CAPTURE                          VAL R2
      600 CAPTURE                          VAL R4
      601 CAPTURE                          VAL R6
      602 CAPTURE                          VAL R8
      603 CAPTURE                          VAL R10
      604 CAPTURE                          VAL R12
      605 CAPTURE                          VAL R14
      606 CAPTURE                          UPVAL U3
      607 NEWTABLE                         R81 0 1
      609 GETTABLEKS                       R82 R0 K1 ["Data"]
      611 SETLIST                          R81 R82 1 [1]
      613 CALL                             R79 2 0
      614 GETUPVAL                         R79 0
      615 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      617 NEWCLOSURE                       R80 P31
      618 CAPTURE                          VAL R21
      619 CAPTURE                          VAL R56
      620 CAPTURE                          VAL R13
      621 NEWTABLE                         R81 0 2
      623 MOVE                             R82 R13
      624 MOVE                             R83 R56
      625 SETLIST                          R81 R82 2 [1]
      627 CALL                             R79 2 0
      628 GETUPVAL                         R79 0
      629 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      631 NEWCLOSURE                       R80 P32
      632 CAPTURE                          VAL R24
      633 CAPTURE                          UPVAL U3
      634 CAPTURE                          VAL R1
      635 CAPTURE                          VAL R56
      636 CAPTURE                          VAL R13
      637 CAPTURE                          VAL R16
      638 NEWTABLE                         R81 0 1
      640 MOVE                             R82 R1
      641 SETLIST                          R81 R82 1 [1]
      643 CALL                             R79 2 0
      644 GETUPVAL                         R79 0
      645 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      647 DUPCLOSURE                       R80 K24 [PROTO_38]
      648 CAPTURE                          UPVAL U3
      649 NEWTABLE                         R81 0 0
      651 CALL                             R79 2 0
      652 MOVE                             R79 R21
      653 JUMPIF                           R79 ; [+1]
      654 AND                              R79 R31 R29
      655 LOADB                            R80 1
      656 GETTABLEKS                       R81 R0 K1 ["Data"]
      658 GETTABLEKS                       R81 R81 K25 ["Type"]
      660 JUMPIFEQKS                       R81 K26 ["AudioPlayer"] ; [+11]
      662 GETUPVAL                         R80 5
      663 JUMPIFNOT                        R80 ; [+8]
      664 GETTABLEKS                       R81 R0 K1 ["Data"]
      666 GETTABLEKS                       R81 R81 K25 ["Type"]
      668 JUMPIFEQKS                       R81 K27 ["Sound"] ; [+2]
      670 LOADB                            R80 0 +1
      671 LOADB                            R80 1
      672 NOT                              R81 R17
      673 JUMPIFNOT                        R81 ; [+4]
      674 JUMPIFNOTEQKS                    R15 K9 [""] ; [+2]
      676 LOADB                            R81 0 +1
      677 LOADB                            R81 1
      678 LOADN                            R83 0
      679 JUMPIFLT                         R83 R23 ; [+2]
      681 LOADB                            R82 0 +1
      682 LOADB                            R82 1
      683 AND                              R83 R82 R7
      684 GETUPVAL                         R84 0
      685 GETTABLEKS                       R84 R84 K28 ["createElement"]
      687 GETUPVAL                         R85 6
      688 DUPTABLE                         R86 K30 [{"tag"}]
      689 LOADK                            R87 K31 ["col size-full-0 auto-y gap-none"]
      690 SETTABLEKS                       R87 R86 K29 ["tag"]
      692 DUPTABLE                         R87 K37 [{"AssetRow", "WaveformRow", "VolumeRow", "PlaybackSpeedRow", "PreviewInWorldRow"}]
      693 GETUPVAL                         R88 0
      694 GETTABLEKS                       R88 R88 K28 ["createElement"]
      696 GETUPVAL                         R89 6
      697 DUPTABLE                         R90 K39 [{"LayoutOrder", "tag"}]
      698 LOADN                            R91 1
      699 SETTABLEKS                       R91 R90 K38 ["LayoutOrder"]
      701 LOADK                            R91 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
      702 SETTABLEKS                       R91 R90 K29 ["tag"]
      704 DUPTABLE                         R91 K43 [{"AssetText", "AssetInput"}]
      705 GETUPVAL                         R92 0
      706 GETTABLEKS                       R92 R92 K28 ["createElement"]
      708 GETUPVAL                         R93 7
      709 DUPTABLE                         R94 K45 [{"LayoutOrder", "Text", "tag"}]
      710 LOADN                            R95 1
      711 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
      713 SETTABLEKS                       R45 R94 K44 ["Text"]
      715 LOADK                            R95 K46 ["auto-x"]
      716 SETTABLEKS                       R95 R94 K29 ["tag"]
      718 CALL                             R92 2 1
      719 SETTABLEKS                       R92 R91 K41 ["AssetText"]
      721 GETUPVAL                         R92 0
      722 GETTABLEKS                       R92 R92 K28 ["createElement"]
      724 GETUPVAL                         R93 8
      725 DUPTABLE                         R94 K56 [{"LayoutOrder", "text", "label", "range", "size", "width", "onFocusGained", "onFocusLost", "onChanged", "onReturnPressed"}]
      726 LOADN                            R95 2
      727 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
      729 JUMPIFNOT                        R81 ; [+2]
      730 MOVE                             R95 R15
      731 JUMP                             ; [+1]
      732 MOVE                             R95 R1
      733 SETTABLEKS                       R95 R94 K47 ["text"]
      735 LOADK                            R95 K9 [""]
      736 SETTABLEKS                       R95 R94 K48 ["label"]
      738 GETIMPORT                        R95 K59 [NumberRange.new]
      740 LOADN                            R96 0
      741 LOADN                            R97 1
      742 CALL                             R95 2 1
      743 SETTABLEKS                       R95 R94 K49 ["range"]
      745 GETUPVAL                         R95 9
      746 GETTABLEKS                       R95 R95 K60 ["Enums"]
      748 GETTABLEKS                       R95 R95 K61 ["IconSize"]
      750 GETTABLEKS                       R95 R95 K62 ["Small"]
      752 SETTABLEKS                       R95 R94 K50 ["size"]
      754 GETIMPORT                        R95 K64 [UDim.new]
      756 LOADK                            R96 K65 [0.5]
      757 LOADN                            R97 0
      758 CALL                             R95 2 1
      759 SETTABLEKS                       R95 R94 K51 ["width"]
      761 SETTABLEKS                       R57 R94 K52 ["onFocusGained"]
      763 SETTABLEKS                       R58 R94 K53 ["onFocusLost"]
      765 SETTABLEKS                       R59 R94 K54 ["onChanged"]
      767 SETTABLEKS                       R60 R94 K55 ["onReturnPressed"]
      769 CALL                             R92 2 1
      770 SETTABLEKS                       R92 R91 K42 ["AssetInput"]
      772 CALL                             R88 3 1
      773 SETTABLEKS                       R88 R87 K32 ["AssetRow"]
      775 GETUPVAL                         R88 0
      776 GETTABLEKS                       R88 R88 K28 ["createElement"]
      778 GETUPVAL                         R89 6
      779 DUPTABLE                         R90 K39 [{"LayoutOrder", "tag"}]
      780 LOADN                            R91 2
      781 SETTABLEKS                       R91 R90 K38 ["LayoutOrder"]
      783 LOADK                            R91 K66 ["row align-y-center gap-medium size-full-3000 padding-medium"]
      784 SETTABLEKS                       R91 R90 K29 ["tag"]
      786 DUPTABLE                         R91 K70 [{"LeftButtons", "WaveformContent", "LoopButton"}]
      787 GETUPVAL                         R92 0
      788 GETTABLEKS                       R92 R92 K28 ["createElement"]
      790 GETUPVAL                         R93 6
      791 DUPTABLE                         R94 K39 [{"LayoutOrder", "tag"}]
      792 LOADN                            R95 1
      793 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
      795 LOADK                            R95 K71 ["col size-0-full auto-x flex-y-evenly align-x-center gap-none"]
      796 SETTABLEKS                       R95 R94 K29 ["tag"]
      798 DUPTABLE                         R95 K74 [{"PlayButton", "ResetTimeButton"}]
      799 GETUPVAL                         R96 0
      800 GETTABLEKS                       R96 R96 K28 ["createElement"]
      802 GETUPVAL                         R97 10
      803 DUPTABLE                         R98 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      804 LOADN                            R99 1
      805 SETTABLEKS                       R99 R98 K38 ["LayoutOrder"]
      807 JUMPIFNOT                        R79 ; [+8]
      808 GETUPVAL                         R99 9
      809 GETTABLEKS                       R99 R99 K60 ["Enums"]
      811 GETTABLEKS                       R99 R99 K80 ["IconName"]
      813 GETTABLEKS                       R99 R99 K81 ["PauseLarge"]
      815 JUMP                             ; [+7]
      816 GETUPVAL                         R99 9
      817 GETTABLEKS                       R99 R99 K60 ["Enums"]
      819 GETTABLEKS                       R99 R99 K80 ["IconName"]
      821 GETTABLEKS                       R99 R99 K82 ["PlayLarge"]
      823 SETTABLEKS                       R99 R98 K75 ["icon"]
      825 LOADB                            R99 1
      826 SETTABLEKS                       R99 R98 K76 ["isCircular"]
      828 GETUPVAL                         R99 9
      829 GETTABLEKS                       R99 R99 K60 ["Enums"]
      831 GETTABLEKS                       R99 R99 K83 ["ButtonVariant"]
      833 GETTABLEKS                       R99 R99 K84 ["Emphasis"]
      835 SETTABLEKS                       R99 R98 K77 ["variant"]
      837 GETUPVAL                         R99 9
      838 GETTABLEKS                       R99 R99 K60 ["Enums"]
      840 GETTABLEKS                       R99 R99 K61 ["IconSize"]
      842 GETTABLEKS                       R99 R99 K62 ["Small"]
      844 SETTABLEKS                       R99 R98 K50 ["size"]
      846 SETTABLEKS                       R64 R98 K78 ["onActivated"]
      848 CALL                             R96 2 1
      849 SETTABLEKS                       R96 R95 K72 ["PlayButton"]
      851 GETUPVAL                         R96 0
      852 GETTABLEKS                       R96 R96 K28 ["createElement"]
      854 GETUPVAL                         R97 10
      855 DUPTABLE                         R98 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      856 LOADN                            R99 2
      857 SETTABLEKS                       R99 R98 K38 ["LayoutOrder"]
      859 GETUPVAL                         R99 9
      860 GETTABLEKS                       R99 R99 K60 ["Enums"]
      862 GETTABLEKS                       R99 R99 K80 ["IconName"]
      864 GETTABLEKS                       R99 R99 K85 ["SkipStartSmall"]
      866 SETTABLEKS                       R99 R98 K75 ["icon"]
      868 LOADB                            R99 1
      869 SETTABLEKS                       R99 R98 K76 ["isCircular"]
      871 GETUPVAL                         R99 9
      872 GETTABLEKS                       R99 R99 K60 ["Enums"]
      874 GETTABLEKS                       R99 R99 K83 ["ButtonVariant"]
      876 GETTABLEKS                       R99 R99 K86 ["Utility"]
      878 SETTABLEKS                       R99 R98 K77 ["variant"]
      880 GETUPVAL                         R99 9
      881 GETTABLEKS                       R99 R99 K60 ["Enums"]
      883 GETTABLEKS                       R99 R99 K61 ["IconSize"]
      885 GETTABLEKS                       R99 R99 K87 ["XSmall"]
      887 SETTABLEKS                       R99 R98 K50 ["size"]
      889 SETTABLEKS                       R65 R98 K78 ["onActivated"]
      891 CALL                             R96 2 1
      892 SETTABLEKS                       R96 R95 K73 ["ResetTimeButton"]
      894 CALL                             R92 3 1
      895 SETTABLEKS                       R92 R91 K67 ["LeftButtons"]
      897 GETUPVAL                         R92 0
      898 GETTABLEKS                       R92 R92 K28 ["createElement"]
      900 GETUPVAL                         R93 6
      901 DUPTABLE                         R94 K39 [{"LayoutOrder", "tag"}]
      902 LOADN                            R95 2
      903 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
      905 LOADK                            R95 K88 ["col size-0-full fill align-x-left gap-none"]
      906 SETTABLEKS                       R95 R94 K29 ["tag"]
      908 DUPTABLE                         R95 K91 [{"WaveformView", "TimePositionText"}]
      909 GETUPVAL                         R96 0
      910 GETTABLEKS                       R96 R96 K28 ["createElement"]
      912 GETUPVAL                         R97 6
      913 DUPTABLE                         R98 K39 [{"LayoutOrder", "tag"}]
      914 LOADN                            R99 1
      915 SETTABLEKS                       R99 R98 K38 ["LayoutOrder"]
      917 LOADK                            R99 K92 ["size-full-0 fill"]
      918 SETTABLEKS                       R99 R98 K29 ["tag"]
      920 DUPTABLE                         R99 K94 [{"GraphCanvas"}]
      921 GETUPVAL                         R100 0
      922 GETTABLEKS                       R100 R100 K28 ["createElement"]
      924 GETUPVAL                         R101 11
      925 DUPTABLE                         R102 K103 [{"GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingTop", "ViewportPaddingBottom", "CullingEpsilon", "children", "childrenUnclipped"}]
      926 GETIMPORT                        R103 K105 [Rect.new]
      928 LOADN                            R104 0
      929 LOADN                            R105 255
      930 LOADN                            R107 0
      931 JUMPIFNOTLT                      R107 R23 ; [+3]
      933 MOVE                             R106 R23
      934 JUMP                             ; [+1]
      935 LOADN                            R106 1
      936 LOADN                            R107 1
      937 CALL                             R103 4 1
      938 SETTABLEKS                       R103 R102 K95 ["GraphRect"]
      940 GETIMPORT                        R103 K64 [UDim.new]
      942 LOADN                            R104 0
      943 LOADN                            R105 0
      944 CALL                             R103 2 1
      945 SETTABLEKS                       R103 R102 K96 ["ViewportPaddingLeft"]
      947 GETIMPORT                        R103 K64 [UDim.new]
      949 LOADN                            R104 0
      950 LOADN                            R105 0
      951 CALL                             R103 2 1
      952 SETTABLEKS                       R103 R102 K97 ["ViewportPaddingRight"]
      954 GETIMPORT                        R103 K64 [UDim.new]
      956 LOADN                            R104 0
      957 LOADN                            R105 16
      958 CALL                             R103 2 1
      959 SETTABLEKS                       R103 R102 K98 ["ViewportPaddingTop"]
      961 GETIMPORT                        R103 K64 [UDim.new]
      963 LOADN                            R104 0
      964 LOADN                            R105 0
      965 CALL                             R103 2 1
      966 SETTABLEKS                       R103 R102 K99 ["ViewportPaddingBottom"]
      968 LOADN                            R103 1
      969 SETTABLEKS                       R103 R102 K100 ["CullingEpsilon"]
      971 DUPTABLE                         R103 K111 [{"VolumeBox", "PlaybackRegionMinBox", "PlaybackRegionMaxBox", "Waveform", "Touch"}]
      972 MOVE                             R104 R33
      973 JUMPIFNOT                        R104 ; [+29]
      974 GETUPVAL                         R104 0
      975 GETTABLEKS                       R104 R104 K28 ["createElement"]
      977 GETUPVAL                         R105 12
      978 DUPTABLE                         R106 K115 [{"Rect", "ZIndex", "BackgroundColor3", "BackgroundTransparency"}]
      979 GETIMPORT                        R107 K105 [Rect.new]
      981 LOADN                            R108 0
      982 MINUS                            R109 R3
      983 MOVE                             R110 R23
      984 MOVE                             R111 R3
      985 CALL                             R107 4 1
      986 SETTABLEKS                       R107 R106 K104 ["Rect"]
      988 LOADN                            R107 254
      989 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
      991 GETIMPORT                        R107 K117 [Color3.new]
      993 LOADN                            R108 1
      994 LOADN                            R109 1
      995 LOADN                            R110 1
      996 CALL                             R107 3 1
      997 SETTABLEKS                       R107 R106 K113 ["BackgroundColor3"]
      999 LOADK                            R107 K118 [0.8]
     1000 SETTABLEKS                       R107 R106 K114 ["BackgroundTransparency"]
     1002 CALL                             R104 2 1
     1003 SETTABLEKS                       R104 R103 K106 ["VolumeBox"]
     1005 LOADB                            R104 0
     1006 LOADN                            R105 0
     1007 JUMPIFNOTLT                      R105 R23 ; [+23]
     1009 GETUPVAL                         R104 0
     1010 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1012 GETUPVAL                         R105 12
     1013 DUPTABLE                         R106 K119 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1014 GETIMPORT                        R107 K105 [Rect.new]
     1016 LOADN                            R108 0
     1017 LOADN                            R109 255
     1018 GETTABLEKS                       R110 R9 K120 ["Min"]
     1020 LOADN                            R111 1
     1021 CALL                             R107 4 1
     1022 SETTABLEKS                       R107 R106 K104 ["Rect"]
     1024 LOADN                            R107 255
     1025 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1027 LOADK                            R107 K65 [0.5]
     1028 SETTABLEKS                       R107 R106 K114 ["BackgroundTransparency"]
     1030 CALL                             R104 2 1
     1031 SETTABLEKS                       R104 R103 K107 ["PlaybackRegionMinBox"]
     1033 LOADB                            R104 0
     1034 LOADN                            R105 0
     1035 JUMPIFNOTLT                      R105 R23 ; [+29]
     1037 GETUPVAL                         R104 0
     1038 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1040 GETUPVAL                         R105 12
     1041 DUPTABLE                         R106 K119 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1042 GETIMPORT                        R107 K105 [Rect.new]
     1044 GETTABLEKS                       R109 R9 K121 ["Max"]
     1046 FASTCALL2                        MATH_MIN R109 R23 ; [+4]
     1048 MOVE                             R110 R23
     1049 GETIMPORT                        R108 K124 [math.min]
     1051 CALL                             R108 2 1
     1052 LOADN                            R109 255
     1053 MOVE                             R110 R23
     1054 LOADN                            R111 1
     1055 CALL                             R107 4 1
     1056 SETTABLEKS                       R107 R106 K104 ["Rect"]
     1058 LOADN                            R107 255
     1059 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1061 LOADK                            R107 K65 [0.5]
     1062 SETTABLEKS                       R107 R106 K114 ["BackgroundTransparency"]
     1064 CALL                             R104 2 1
     1065 SETTABLEKS                       R104 R103 K108 ["PlaybackRegionMaxBox"]
     1067 GETUPVAL                         R104 0
     1068 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1070 GETUPVAL                         R105 13
     1071 DUPTABLE                         R106 K128 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
     1072 SETTABLEKS                       R1 R106 K2 ["AssetId"]
     1074 SETTABLEKS                       R27 R106 K125 ["HoveredPosition"]
     1076 SETTABLEKS                       R23 R106 K126 ["TimeLength"]
     1078 SETTABLEKS                       R25 R106 K8 ["TimePosition"]
     1080 SETTABLEKS                       R3 R106 K3 ["Volume"]
     1082 SETTABLEKS                       R37 R106 K127 ["Resolution"]
     1084 CALL                             R104 2 1
     1085 SETTABLEKS                       R104 R103 K109 ["Waveform"]
     1087 GETUPVAL                         R104 0
     1088 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1090 GETUPVAL                         R105 14
     1091 DUPTABLE                         R106 K134 [{"ZIndex", "TreatMouseAsAnchor", "OnHoverMoved", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
     1092 LOADN                            R107 10
     1093 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1095 LOADB                            R107 1
     1096 SETTABLEKS                       R107 R106 K129 ["TreatMouseAsAnchor"]
     1098 SETTABLEKS                       R61 R106 K130 ["OnHoverMoved"]
     1100 SETTABLEKS                       R62 R106 K131 ["OnDragStart"]
     1102 SETTABLEKS                       R61 R106 K132 ["OnDragMoved"]
     1104 SETTABLEKS                       R63 R106 K133 ["OnDragEnded"]
     1106 CALL                             R104 2 1
     1107 SETTABLEKS                       R104 R103 K110 ["Touch"]
     1109 SETTABLEKS                       R103 R102 K101 ["children"]
     1111 DUPTABLE                         R103 K140 [{"PlaybackRegionMinBar", "PlaybackRegionMaxBar", "LoopRegionMinBar", "LoopRegionMaxBar", "TimePositionBar"}]
     1112 MOVE                             R104 R82
     1113 JUMPIFNOT                        R104 ; [+24]
     1114 GETUPVAL                         R104 0
     1115 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1117 GETUPVAL                         R105 15
     1118 DUPTABLE                         R106 K145 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1119 GETTABLEKS                       R107 R9 K120 ["Min"]
     1121 SETTABLEKS                       R107 R106 K141 ["Position"]
     1123 SETTABLEKS                       R68 R106 K142 ["SetPosition"]
     1125 JUMPIFNOT                        R83 ; [+2]
     1126 LOADN                            R108 2
     1127 JUMP                             ; [+1]
     1128 LOADN                            R108 1
     1129 MULK                             R107 R108 K146 [12]
     1130 SETTABLEKS                       R107 R106 K143 ["HeightAboveGraph"]
     1132 SETTABLEKS                       R41 R106 K144 ["ColorStyle"]
     1134 LOADN                            R107 1
     1135 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1137 CALL                             R104 2 1
     1138 SETTABLEKS                       R104 R103 K135 ["PlaybackRegionMinBar"]
     1140 MOVE                             R104 R82
     1141 JUMPIFNOT                        R104 ; [+30]
     1142 GETUPVAL                         R104 0
     1143 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1145 GETUPVAL                         R105 15
     1146 DUPTABLE                         R106 K145 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1147 GETTABLEKS                       R108 R9 K121 ["Max"]
     1149 FASTCALL2                        MATH_MIN R108 R23 ; [+4]
     1151 MOVE                             R109 R23
     1152 GETIMPORT                        R107 K124 [math.min]
     1154 CALL                             R107 2 1
     1155 SETTABLEKS                       R107 R106 K141 ["Position"]
     1157 SETTABLEKS                       R69 R106 K142 ["SetPosition"]
     1159 JUMPIFNOT                        R83 ; [+2]
     1160 LOADN                            R108 2
     1161 JUMP                             ; [+1]
     1162 LOADN                            R108 1
     1163 MULK                             R107 R108 K146 [12]
     1164 SETTABLEKS                       R107 R106 K143 ["HeightAboveGraph"]
     1166 SETTABLEKS                       R41 R106 K144 ["ColorStyle"]
     1168 LOADN                            R107 1
     1169 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1171 CALL                             R104 2 1
     1172 SETTABLEKS                       R104 R103 K136 ["PlaybackRegionMaxBar"]
     1174 MOVE                             R104 R83
     1175 JUMPIFNOT                        R104 ; [+23]
     1176 GETUPVAL                         R104 0
     1177 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1179 GETUPVAL                         R105 15
     1180 DUPTABLE                         R106 K148 [{"Position", "SetPosition", "HeightAboveGraph", "Thickness", "ColorStyle", "ZIndex"}]
     1181 GETTABLEKS                       R107 R11 K120 ["Min"]
     1183 SETTABLEKS                       R107 R106 K141 ["Position"]
     1185 SETTABLEKS                       R70 R106 K142 ["SetPosition"]
     1187 LOADN                            R107 12
     1188 SETTABLEKS                       R107 R106 K143 ["HeightAboveGraph"]
     1190 LOADN                            R107 1
     1191 SETTABLEKS                       R107 R106 K147 ["Thickness"]
     1193 SETTABLEKS                       R42 R106 K144 ["ColorStyle"]
     1195 LOADN                            R107 2
     1196 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1198 CALL                             R104 2 1
     1199 SETTABLEKS                       R104 R103 K137 ["LoopRegionMinBar"]
     1201 MOVE                             R104 R83
     1202 JUMPIFNOT                        R104 ; [+29]
     1203 GETUPVAL                         R104 0
     1204 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1206 GETUPVAL                         R105 15
     1207 DUPTABLE                         R106 K148 [{"Position", "SetPosition", "HeightAboveGraph", "Thickness", "ColorStyle", "ZIndex"}]
     1208 GETTABLEKS                       R108 R11 K121 ["Max"]
     1210 FASTCALL2                        MATH_MIN R108 R23 ; [+4]
     1212 MOVE                             R109 R23
     1213 GETIMPORT                        R107 K124 [math.min]
     1215 CALL                             R107 2 1
     1216 SETTABLEKS                       R107 R106 K141 ["Position"]
     1218 SETTABLEKS                       R71 R106 K142 ["SetPosition"]
     1220 LOADN                            R107 12
     1221 SETTABLEKS                       R107 R106 K143 ["HeightAboveGraph"]
     1223 LOADN                            R107 1
     1224 SETTABLEKS                       R107 R106 K147 ["Thickness"]
     1226 SETTABLEKS                       R42 R106 K144 ["ColorStyle"]
     1228 LOADN                            R107 2
     1229 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1231 CALL                             R104 2 1
     1232 SETTABLEKS                       R104 R103 K138 ["LoopRegionMaxBar"]
     1234 MOVE                             R104 R82
     1235 JUMPIFNOT                        R104 ; [+31]
     1236 GETUPVAL                         R104 0
     1237 GETTABLEKS                       R104 R104 K28 ["createElement"]
     1239 GETUPVAL                         R105 15
     1240 DUPTABLE                         R106 K148 [{"Position", "SetPosition", "HeightAboveGraph", "Thickness", "ColorStyle", "ZIndex"}]
     1241 GETTABLEKS                       R109 R9 K120 ["Min"]
     1243 GETTABLEKS                       R110 R9 K121 ["Max"]
     1245 FASTCALL3                        MATH_CLAMP R13 R109 R110
     1247 MOVE                             R108 R13
     1248 GETIMPORT                        R107 K150 [math.clamp]
     1250 CALL                             R107 3 1
     1251 SETTABLEKS                       R107 R106 K141 ["Position"]
     1253 SETTABLEKS                       R67 R106 K142 ["SetPosition"]
     1255 LOADN                            R107 0
     1256 SETTABLEKS                       R107 R106 K143 ["HeightAboveGraph"]
     1258 LOADN                            R107 1
     1259 SETTABLEKS                       R107 R106 K147 ["Thickness"]
     1261 SETTABLEKS                       R43 R106 K144 ["ColorStyle"]
     1263 LOADN                            R107 3
     1264 SETTABLEKS                       R107 R106 K112 ["ZIndex"]
     1266 CALL                             R104 2 1
     1267 SETTABLEKS                       R104 R103 K139 ["TimePositionBar"]
     1269 SETTABLEKS                       R103 R102 K102 ["childrenUnclipped"]
     1271 CALL                             R100 2 1
     1272 SETTABLEKS                       R100 R99 K93 ["GraphCanvas"]
     1274 CALL                             R96 3 1
     1275 SETTABLEKS                       R96 R95 K89 ["WaveformView"]
     1277 GETUPVAL                         R96 0
     1278 GETTABLEKS                       R96 R96 K28 ["createElement"]
     1280 GETUPVAL                         R97 7
     1281 DUPTABLE                         R98 K45 [{"LayoutOrder", "Text", "tag"}]
     1282 LOADN                            R99 2
     1283 SETTABLEKS                       R99 R98 K38 ["LayoutOrder"]
     1285 MOVE                             R103 R25
     1286 FASTCALL2K                       MATH_MAX R103 K151 ; [+5]
     1288 MOVE                             R105 R103
     1289 LOADK                            R106 K151 [0]
     1290 GETIMPORT                        R104 K153 [math.max]
     1292 CALL                             R104 2 1
     1293 MOVE                             R103 R104
     1294 GETIMPORT                        R104 K156 [string.format]
     1296 LOADK                            R105 K157 ["%d:%05.2f"]
     1297 DIVK                             R106 R103 K158 [60]
     1298 MODK                             R107 R103 K158 [60]
     1299 CALL                             R104 3 1
     1300 MOVE                             R100 R104
     1301 LOADK                            R101 K159 [" / "]
     1302 MOVE                             R103 R23
     1303 FASTCALL2K                       MATH_MAX R103 K151 ; [+5]
     1305 MOVE                             R105 R103
     1306 LOADK                            R106 K151 [0]
     1307 GETIMPORT                        R104 K153 [math.max]
     1309 CALL                             R104 2 1
     1310 MOVE                             R103 R104
     1311 GETIMPORT                        R104 K156 [string.format]
     1313 LOADK                            R105 K157 ["%d:%05.2f"]
     1314 DIVK                             R106 R103 K158 [60]
     1315 MODK                             R107 R103 K158 [60]
     1316 CALL                             R104 3 1
     1317 MOVE                             R102 R104
     1318 CONCAT                           R99 R100 R102
     1319 SETTABLEKS                       R99 R98 K44 ["Text"]
     1321 LOADK                            R99 K160 ["size-full-0 auto-y text-align-x-left text-body-small"]
     1322 SETTABLEKS                       R99 R98 K29 ["tag"]
     1324 CALL                             R96 2 1
     1325 SETTABLEKS                       R96 R95 K90 ["TimePositionText"]
     1327 CALL                             R92 3 1
     1328 SETTABLEKS                       R92 R91 K68 ["WaveformContent"]
     1330 GETUPVAL                         R92 0
     1331 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1333 GETUPVAL                         R93 10
     1334 DUPTABLE                         R94 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
     1335 LOADN                            R95 3
     1336 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1338 GETUPVAL                         R95 9
     1339 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1341 GETTABLEKS                       R95 R95 K80 ["IconName"]
     1343 GETTABLEKS                       R95 R95 K161 ["TwoArrowsLoopClockwise"]
     1345 SETTABLEKS                       R95 R94 K75 ["icon"]
     1347 LOADB                            R95 1
     1348 SETTABLEKS                       R95 R94 K76 ["isCircular"]
     1350 JUMPIFNOT                        R7 ; [+8]
     1351 GETUPVAL                         R95 9
     1352 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1354 GETTABLEKS                       R95 R95 K83 ["ButtonVariant"]
     1356 GETTABLEKS                       R95 R95 K84 ["Emphasis"]
     1358 JUMP                             ; [+7]
     1359 GETUPVAL                         R95 9
     1360 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1362 GETTABLEKS                       R95 R95 K83 ["ButtonVariant"]
     1364 GETTABLEKS                       R95 R95 K162 ["Standard"]
     1366 SETTABLEKS                       R95 R94 K77 ["variant"]
     1368 GETUPVAL                         R95 9
     1369 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1371 GETTABLEKS                       R95 R95 K61 ["IconSize"]
     1373 GETTABLEKS                       R95 R95 K62 ["Small"]
     1375 SETTABLEKS                       R95 R94 K50 ["size"]
     1377 SETTABLEKS                       R66 R94 K78 ["onActivated"]
     1379 CALL                             R92 2 1
     1380 SETTABLEKS                       R92 R91 K69 ["LoopButton"]
     1382 CALL                             R88 3 1
     1383 SETTABLEKS                       R88 R87 K33 ["WaveformRow"]
     1385 GETUPVAL                         R88 0
     1386 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1388 GETUPVAL                         R89 6
     1389 DUPTABLE                         R90 K39 [{"LayoutOrder", "tag"}]
     1390 LOADN                            R91 3
     1391 SETTABLEKS                       R91 R90 K38 ["LayoutOrder"]
     1393 LOADK                            R91 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1394 SETTABLEKS                       R91 R90 K29 ["tag"]
     1396 DUPTABLE                         R91 K167 [{"VolumeLabel", "VolumeSlider", "VolumeText", "VolumeReset"}]
     1397 GETUPVAL                         R92 0
     1398 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1400 GETUPVAL                         R93 7
     1401 DUPTABLE                         R94 K45 [{"LayoutOrder", "Text", "tag"}]
     1402 LOADN                            R95 1
     1403 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1405 SETTABLEKS                       R48 R94 K44 ["Text"]
     1407 LOADK                            R95 K168 ["auto-x text-body-medium"]
     1408 SETTABLEKS                       R95 R94 K29 ["tag"]
     1410 CALL                             R92 2 1
     1411 SETTABLEKS                       R92 R91 K163 ["VolumeLabel"]
     1413 GETUPVAL                         R92 0
     1414 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1416 GETUPVAL                         R93 16
     1417 DUPTABLE                         R94 K173 [{"LayoutOrder", "value", "range", "width", "onDragStarted", "onDragEnded", "onValueChanged"}]
     1418 LOADN                            R95 2
     1419 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1421 ADDK                             R97 R3 K175 [1]
     1422 FASTCALL1                        MATH_LOG R97 ; [+2]
     1423 GETIMPORT                        R96 K177 [math.log]
     1425 CALL                             R96 1 1
     1426 DIVK                             R95 R96 K174 [0.693147180559945]
     1427 SETTABLEKS                       R95 R94 K169 ["value"]
     1429 GETIMPORT                        R95 K59 [NumberRange.new]
     1431 LOADN                            R96 0
     1432 LOADK                            R97 K178 [3.4594316186373]
     1433 CALL                             R95 2 1
     1434 SETTABLEKS                       R95 R94 K49 ["range"]
     1436 GETIMPORT                        R95 K64 [UDim.new]
     1438 LOADK                            R96 K65 [0.5]
     1439 LOADN                            R97 0
     1440 CALL                             R95 2 1
     1441 SETTABLEKS                       R95 R94 K51 ["width"]
     1443 SETTABLEKS                       R72 R94 K170 ["onDragStarted"]
     1445 SETTABLEKS                       R73 R94 K171 ["onDragEnded"]
     1447 SETTABLEKS                       R74 R94 K172 ["onValueChanged"]
     1449 CALL                             R92 2 1
     1450 SETTABLEKS                       R92 R91 K164 ["VolumeSlider"]
     1452 GETUPVAL                         R92 0
     1453 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1455 GETUPVAL                         R93 7
     1456 DUPTABLE                         R94 K45 [{"LayoutOrder", "Text", "tag"}]
     1457 LOADN                            R95 3
     1458 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1460 GETIMPORT                        R95 K156 [string.format]
     1462 LOADK                            R96 K179 ["x%.2f"]
     1463 MOVE                             R97 R3
     1464 CALL                             R95 2 1
     1465 SETTABLEKS                       R95 R94 K44 ["Text"]
     1467 LOADK                            R95 K168 ["auto-x text-body-medium"]
     1468 SETTABLEKS                       R95 R94 K29 ["tag"]
     1470 CALL                             R92 2 1
     1471 SETTABLEKS                       R92 R91 K165 ["VolumeText"]
     1473 LOADB                            R92 0
     1474 JUMPIFEQKN                       R3 K175 [1] ; [+33]
     1476 GETUPVAL                         R92 0
     1477 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1479 GETUPVAL                         R93 10
     1480 DUPTABLE                         R94 K180 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1481 LOADN                            R95 4
     1482 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1484 GETUPVAL                         R95 9
     1485 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1487 GETTABLEKS                       R95 R95 K80 ["IconName"]
     1489 GETTABLEKS                       R95 R95 K181 ["ArrowCurlToLeft"]
     1491 SETTABLEKS                       R95 R94 K75 ["icon"]
     1493 LOADB                            R95 1
     1494 SETTABLEKS                       R95 R94 K76 ["isCircular"]
     1496 GETUPVAL                         R95 9
     1497 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1499 GETTABLEKS                       R95 R95 K61 ["IconSize"]
     1501 GETTABLEKS                       R95 R95 K87 ["XSmall"]
     1503 SETTABLEKS                       R95 R94 K50 ["size"]
     1505 SETTABLEKS                       R75 R94 K78 ["onActivated"]
     1507 CALL                             R92 2 1
     1508 SETTABLEKS                       R92 R91 K166 ["VolumeReset"]
     1510 CALL                             R88 3 1
     1511 SETTABLEKS                       R88 R87 K34 ["VolumeRow"]
     1513 GETUPVAL                         R88 0
     1514 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1516 GETUPVAL                         R89 6
     1517 DUPTABLE                         R90 K39 [{"LayoutOrder", "tag"}]
     1518 LOADN                            R91 4
     1519 SETTABLEKS                       R91 R90 K38 ["LayoutOrder"]
     1521 LOADK                            R91 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1522 SETTABLEKS                       R91 R90 K29 ["tag"]
     1524 DUPTABLE                         R91 K186 [{"PlaybackSpeedLabel", "PlaybackSpeedSlider", "PlaybackSpeedText", "PlaybackSpeedReset"}]
     1525 GETUPVAL                         R92 0
     1526 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1528 GETUPVAL                         R93 7
     1529 DUPTABLE                         R94 K45 [{"LayoutOrder", "Text", "tag"}]
     1530 LOADN                            R95 1
     1531 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1533 SETTABLEKS                       R46 R94 K44 ["Text"]
     1535 LOADK                            R95 K168 ["auto-x text-body-medium"]
     1536 SETTABLEKS                       R95 R94 K29 ["tag"]
     1538 CALL                             R92 2 1
     1539 SETTABLEKS                       R92 R91 K182 ["PlaybackSpeedLabel"]
     1541 GETUPVAL                         R92 0
     1542 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1544 GETUPVAL                         R93 16
     1545 DUPTABLE                         R94 K187 [{"LayoutOrder", "value", "range", "width", "onValueChanged"}]
     1546 LOADN                            R95 2
     1547 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1549 ADDK                             R97 R5 K175 [1]
     1550 FASTCALL1                        MATH_LOG R97 ; [+2]
     1551 GETIMPORT                        R96 K177 [math.log]
     1553 CALL                             R96 1 1
     1554 DIVK                             R95 R96 K174 [0.693147180559945]
     1555 SETTABLEKS                       R95 R94 K169 ["value"]
     1557 GETIMPORT                        R95 K59 [NumberRange.new]
     1559 LOADN                            R96 0
     1560 LOADK                            R97 K188 [4.39231742277876]
     1561 CALL                             R95 2 1
     1562 SETTABLEKS                       R95 R94 K49 ["range"]
     1564 GETIMPORT                        R95 K64 [UDim.new]
     1566 LOADK                            R96 K65 [0.5]
     1567 LOADN                            R97 0
     1568 CALL                             R95 2 1
     1569 SETTABLEKS                       R95 R94 K51 ["width"]
     1571 SETTABLEKS                       R76 R94 K172 ["onValueChanged"]
     1573 CALL                             R92 2 1
     1574 SETTABLEKS                       R92 R91 K183 ["PlaybackSpeedSlider"]
     1576 GETUPVAL                         R92 0
     1577 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1579 GETUPVAL                         R93 7
     1580 DUPTABLE                         R94 K45 [{"LayoutOrder", "Text", "tag"}]
     1581 LOADN                            R95 3
     1582 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1584 GETIMPORT                        R95 K156 [string.format]
     1586 LOADK                            R96 K179 ["x%.2f"]
     1587 MOVE                             R97 R5
     1588 CALL                             R95 2 1
     1589 SETTABLEKS                       R95 R94 K44 ["Text"]
     1591 LOADK                            R95 K168 ["auto-x text-body-medium"]
     1592 SETTABLEKS                       R95 R94 K29 ["tag"]
     1594 CALL                             R92 2 1
     1595 SETTABLEKS                       R92 R91 K184 ["PlaybackSpeedText"]
     1597 LOADB                            R92 0
     1598 JUMPIFEQKN                       R5 K175 [1] ; [+33]
     1600 GETUPVAL                         R92 0
     1601 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1603 GETUPVAL                         R93 10
     1604 DUPTABLE                         R94 K180 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1605 LOADN                            R95 4
     1606 SETTABLEKS                       R95 R94 K38 ["LayoutOrder"]
     1608 GETUPVAL                         R95 9
     1609 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1611 GETTABLEKS                       R95 R95 K80 ["IconName"]
     1613 GETTABLEKS                       R95 R95 K181 ["ArrowCurlToLeft"]
     1615 SETTABLEKS                       R95 R94 K75 ["icon"]
     1617 LOADB                            R95 1
     1618 SETTABLEKS                       R95 R94 K76 ["isCircular"]
     1620 GETUPVAL                         R95 9
     1621 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1623 GETTABLEKS                       R95 R95 K61 ["IconSize"]
     1625 GETTABLEKS                       R95 R95 K87 ["XSmall"]
     1627 SETTABLEKS                       R95 R94 K50 ["size"]
     1629 SETTABLEKS                       R77 R94 K78 ["onActivated"]
     1631 CALL                             R92 2 1
     1632 SETTABLEKS                       R92 R91 K185 ["PlaybackSpeedReset"]
     1634 CALL                             R88 3 1
     1635 SETTABLEKS                       R88 R87 K35 ["PlaybackSpeedRow"]
     1637 MOVE                             R88 R80
     1638 JUMPIFNOT                        R88 ; [+36]
     1639 GETUPVAL                         R88 0
     1640 GETTABLEKS                       R88 R88 K28 ["createElement"]
     1642 GETUPVAL                         R89 6
     1643 DUPTABLE                         R90 K39 [{"LayoutOrder", "tag"}]
     1644 LOADN                            R91 0
     1645 SETTABLEKS                       R91 R90 K38 ["LayoutOrder"]
     1647 LOADK                            R91 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1648 SETTABLEKS                       R91 R90 K29 ["tag"]
     1650 DUPTABLE                         R91 K190 [{"PreviewInWorldCheckbox"}]
     1651 GETUPVAL                         R92 0
     1652 GETTABLEKS                       R92 R92 K28 ["createElement"]
     1654 GETUPVAL                         R93 17
     1655 DUPTABLE                         R94 K192 [{"isChecked", "label", "size", "onActivated"}]
     1656 SETTABLEKS                       R35 R94 K191 ["isChecked"]
     1658 SETTABLEKS                       R47 R94 K48 ["label"]
     1660 GETUPVAL                         R95 9
     1661 GETTABLEKS                       R95 R95 K60 ["Enums"]
     1663 GETTABLEKS                       R95 R95 K193 ["InputSize"]
     1665 GETTABLEKS                       R95 R95 K87 ["XSmall"]
     1667 SETTABLEKS                       R95 R94 K50 ["size"]
     1669 SETTABLEKS                       R78 R94 K78 ["onActivated"]
     1671 CALL                             R92 2 1
     1672 SETTABLEKS                       R92 R91 K189 ["PreviewInWorldCheckbox"]
     1674 CALL                             R88 3 1
     1675 SETTABLEKS                       R88 R87 K36 ["PreviewInWorldRow"]
     1677 CALL                             R84 3 -1
     1678 RETURN                           R84 -1

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
