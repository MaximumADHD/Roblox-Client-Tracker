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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assignProperties"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["SetData"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustPlaybackRegionMin"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 2
        8 GETUPVAL                         R3 4
        9 MOVE                             R4 R1
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 5
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 DUPTABLE                         R3 K3 [{"PlaybackRegion", "LoopRegion"}]
       15 SETTABLEKS                       R1 R3 K1 ["PlaybackRegion"]
       17 SETTABLEKS                       R2 R3 K2 ["LoopRegion"]
       19 GETIMPORT                        R4 K6 [table.clone]
       21 GETUPVAL                         R5 6
       22 GETTABLEKS                       R5 R5 K7 ["current"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R3
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 SETTABLE                         R9 R4 R8
       30 FORGLOOP                         R5 2 ; [-2]
       32 GETUPVAL                         R5 6
       33 SETTABLEKS                       R4 R5 K7 ["current"]
       35 GETUPVAL                         R5 7
       36 GETTABLEKS                       R5 R5 K8 ["assignProperties"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 0
       40 GETUPVAL                         R5 8
       41 GETTABLEKS                       R5 R5 K9 ["SetData"]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adjustPlaybackRegionMax"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 2
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 DUPTABLE                         R3 K3 [{"PlaybackRegion", "LoopRegion"}]
       14 SETTABLEKS                       R1 R3 K1 ["PlaybackRegion"]
       16 SETTABLEKS                       R2 R3 K2 ["LoopRegion"]
       18 GETIMPORT                        R4 K6 [table.clone]
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R5 R5 K7 ["current"]
       23 CALL                             R4 1 1
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 SETTABLE                         R9 R4 R8
       29 FORGLOOP                         R5 2 ; [-2]
       31 GETUPVAL                         R5 5
       32 SETTABLEKS                       R4 R5 K7 ["current"]
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K8 ["assignProperties"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 GETUPVAL                         R5 7
       40 GETTABLEKS                       R5 R5 K9 ["SetData"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_37:
        0 DUPCLOSURE                       R0 K0 [PROTO_36]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_38:
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
      414 CAPTURE                          VAL R55
      415 NEWTABLE                         R69 0 1
      417 MOVE                             R70 R55
      418 SETLIST                          R69 R70 1 [1]
      420 CALL                             R67 2 1
      421 GETUPVAL                         R68 0
      422 GETTABLEKS                       R68 R68 K21 ["useCallback"]
      424 NEWCLOSURE                       R69 P19
      425 CAPTURE                          UPVAL U4
      426 CAPTURE                          VAL R9
      427 CAPTURE                          VAL R11
      428 CAPTURE                          VAL R23
      429 CAPTURE                          VAL R10
      430 CAPTURE                          VAL R12
      431 CAPTURE                          VAL R39
      432 CAPTURE                          UPVAL U3
      433 CAPTURE                          VAL R0
      434 NEWTABLE                         R70 0 4
      436 MOVE                             R71 R9
      437 MOVE                             R72 R11
      438 MOVE                             R73 R23
      439 GETTABLEKS                       R74 R0 K22 ["SetData"]
      441 SETLIST                          R70 R71 4 [1]
      443 CALL                             R68 2 1
      444 GETUPVAL                         R69 0
      445 GETTABLEKS                       R69 R69 K21 ["useCallback"]
      447 NEWCLOSURE                       R70 P20
      448 CAPTURE                          UPVAL U4
      449 CAPTURE                          VAL R9
      450 CAPTURE                          VAL R11
      451 CAPTURE                          VAL R10
      452 CAPTURE                          VAL R12
      453 CAPTURE                          VAL R39
      454 CAPTURE                          UPVAL U3
      455 CAPTURE                          VAL R0
      456 NEWTABLE                         R71 0 3
      458 MOVE                             R72 R9
      459 MOVE                             R73 R11
      460 GETTABLEKS                       R74 R0 K22 ["SetData"]
      462 SETLIST                          R71 R72 3 [1]
      464 CALL                             R69 2 1
      465 GETUPVAL                         R70 0
      466 GETTABLEKS                       R70 R70 K21 ["useCallback"]
      468 NEWCLOSURE                       R71 P21
      469 CAPTURE                          UPVAL U4
      470 CAPTURE                          VAL R9
      471 CAPTURE                          VAL R11
      472 CAPTURE                          VAL R12
      473 CAPTURE                          VAL R39
      474 CAPTURE                          UPVAL U3
      475 CAPTURE                          VAL R0
      476 NEWTABLE                         R72 0 3
      478 MOVE                             R73 R9
      479 MOVE                             R74 R11
      480 GETTABLEKS                       R75 R0 K22 ["SetData"]
      482 SETLIST                          R72 R73 3 [1]
      484 CALL                             R70 2 1
      485 GETUPVAL                         R71 0
      486 GETTABLEKS                       R71 R71 K21 ["useCallback"]
      488 NEWCLOSURE                       R72 P22
      489 CAPTURE                          UPVAL U4
      490 CAPTURE                          VAL R9
      491 CAPTURE                          VAL R11
      492 CAPTURE                          VAL R12
      493 CAPTURE                          VAL R39
      494 CAPTURE                          UPVAL U3
      495 CAPTURE                          VAL R0
      496 NEWTABLE                         R73 0 3
      498 MOVE                             R74 R9
      499 MOVE                             R75 R11
      500 GETTABLEKS                       R76 R0 K22 ["SetData"]
      502 SETLIST                          R73 R74 3 [1]
      504 CALL                             R71 2 1
      505 GETUPVAL                         R72 0
      506 GETTABLEKS                       R72 R72 K21 ["useCallback"]
      508 NEWCLOSURE                       R73 P23
      509 CAPTURE                          VAL R34
      510 NEWTABLE                         R74 0 1
      512 MOVE                             R75 R34
      513 SETLIST                          R74 R75 1 [1]
      515 CALL                             R72 2 1
      516 GETUPVAL                         R73 0
      517 GETTABLEKS                       R73 R73 K21 ["useCallback"]
      519 NEWCLOSURE                       R74 P24
      520 CAPTURE                          VAL R34
      521 NEWTABLE                         R75 0 1
      523 MOVE                             R76 R34
      524 SETLIST                          R75 R76 1 [1]
      526 CALL                             R73 2 1
      527 GETUPVAL                         R74 0
      528 GETTABLEKS                       R74 R74 K21 ["useCallback"]
      530 NEWCLOSURE                       R75 P25
      531 CAPTURE                          VAL R52
      532 NEWTABLE                         R76 0 1
      534 MOVE                             R77 R52
      535 SETLIST                          R76 R77 1 [1]
      537 CALL                             R74 2 1
      538 GETUPVAL                         R75 0
      539 GETTABLEKS                       R75 R75 K21 ["useCallback"]
      541 NEWCLOSURE                       R76 P26
      542 CAPTURE                          VAL R52
      543 NEWTABLE                         R77 0 1
      545 MOVE                             R78 R52
      546 SETLIST                          R77 R78 1 [1]
      548 CALL                             R75 2 1
      549 GETUPVAL                         R76 0
      550 GETTABLEKS                       R76 R76 K21 ["useCallback"]
      552 NEWCLOSURE                       R77 P27
      553 CAPTURE                          VAL R53
      554 NEWTABLE                         R78 0 1
      556 MOVE                             R79 R53
      557 SETLIST                          R78 R79 1 [1]
      559 CALL                             R76 2 1
      560 GETUPVAL                         R77 0
      561 GETTABLEKS                       R77 R77 K21 ["useCallback"]
      563 NEWCLOSURE                       R78 P28
      564 CAPTURE                          VAL R53
      565 NEWTABLE                         R79 0 1
      567 MOVE                             R80 R53
      568 SETLIST                          R79 R80 1 [1]
      570 CALL                             R77 2 1
      571 GETUPVAL                         R78 0
      572 GETTABLEKS                       R78 R78 K21 ["useCallback"]
      574 NEWCLOSURE                       R79 P29
      575 CAPTURE                          UPVAL U3
      576 CAPTURE                          VAL R35
      577 CAPTURE                          VAL R36
      578 NEWTABLE                         R80 0 2
      580 MOVE                             R81 R35
      581 MOVE                             R82 R36
      582 SETLIST                          R80 R81 2 [1]
      584 CALL                             R78 2 1
      585 GETUPVAL                         R79 0
      586 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      588 NEWCLOSURE                       R80 P30
      589 CAPTURE                          VAL R39
      590 CAPTURE                          VAL R0
      591 CAPTURE                          VAL R2
      592 CAPTURE                          VAL R4
      593 CAPTURE                          VAL R6
      594 CAPTURE                          VAL R8
      595 CAPTURE                          VAL R10
      596 CAPTURE                          VAL R12
      597 CAPTURE                          VAL R14
      598 CAPTURE                          UPVAL U3
      599 NEWTABLE                         R81 0 1
      601 GETTABLEKS                       R82 R0 K1 ["Data"]
      603 SETLIST                          R81 R82 1 [1]
      605 CALL                             R79 2 0
      606 GETUPVAL                         R79 0
      607 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      609 NEWCLOSURE                       R80 P31
      610 CAPTURE                          VAL R21
      611 CAPTURE                          VAL R56
      612 CAPTURE                          VAL R13
      613 NEWTABLE                         R81 0 3
      615 MOVE                             R82 R13
      616 MOVE                             R83 R21
      617 MOVE                             R84 R56
      618 SETLIST                          R81 R82 3 [1]
      620 CALL                             R79 2 0
      621 GETUPVAL                         R79 0
      622 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      624 NEWCLOSURE                       R80 P32
      625 CAPTURE                          VAL R24
      626 CAPTURE                          UPVAL U3
      627 CAPTURE                          VAL R1
      628 CAPTURE                          VAL R56
      629 CAPTURE                          VAL R13
      630 CAPTURE                          VAL R16
      631 NEWTABLE                         R81 0 1
      633 MOVE                             R82 R1
      634 SETLIST                          R81 R82 1 [1]
      636 CALL                             R79 2 0
      637 GETUPVAL                         R79 0
      638 GETTABLEKS                       R79 R79 K23 ["useEffect"]
      640 DUPCLOSURE                       R80 K24 [PROTO_37]
      641 CAPTURE                          UPVAL U3
      642 NEWTABLE                         R81 0 0
      644 CALL                             R79 2 0
      645 MOVE                             R79 R21
      646 JUMPIF                           R79 ; [+1]
      647 AND                              R79 R31 R29
      648 LOADB                            R80 1
      649 GETTABLEKS                       R81 R0 K1 ["Data"]
      651 GETTABLEKS                       R81 R81 K25 ["Type"]
      653 JUMPIFEQKS                       R81 K26 ["AudioPlayer"] ; [+11]
      655 GETUPVAL                         R80 5
      656 JUMPIFNOT                        R80 ; [+8]
      657 GETTABLEKS                       R81 R0 K1 ["Data"]
      659 GETTABLEKS                       R81 R81 K25 ["Type"]
      661 JUMPIFEQKS                       R81 K27 ["Sound"] ; [+2]
      663 LOADB                            R80 0 +1
      664 LOADB                            R80 1
      665 NOT                              R81 R17
      666 JUMPIFNOT                        R81 ; [+4]
      667 JUMPIFNOTEQKS                    R15 K9 [""] ; [+2]
      669 LOADB                            R81 0 +1
      670 LOADB                            R81 1
      671 GETUPVAL                         R82 0
      672 GETTABLEKS                       R82 R82 K28 ["createElement"]
      674 GETUPVAL                         R83 6
      675 DUPTABLE                         R84 K30 [{"tag"}]
      676 LOADK                            R85 K31 ["col size-full-0 auto-y gap-none"]
      677 SETTABLEKS                       R85 R84 K29 ["tag"]
      679 DUPTABLE                         R85 K37 [{"AssetRow", "WaveformRow", "VolumeRow", "PlaybackSpeedRow", "PreviewInWorldRow"}]
      680 GETUPVAL                         R86 0
      681 GETTABLEKS                       R86 R86 K28 ["createElement"]
      683 GETUPVAL                         R87 6
      684 DUPTABLE                         R88 K39 [{"LayoutOrder", "tag"}]
      685 LOADN                            R89 1
      686 SETTABLEKS                       R89 R88 K38 ["LayoutOrder"]
      688 LOADK                            R89 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
      689 SETTABLEKS                       R89 R88 K29 ["tag"]
      691 DUPTABLE                         R89 K43 [{"AssetText", "AssetInput"}]
      692 GETUPVAL                         R90 0
      693 GETTABLEKS                       R90 R90 K28 ["createElement"]
      695 GETUPVAL                         R91 7
      696 DUPTABLE                         R92 K45 [{"LayoutOrder", "Text", "tag"}]
      697 LOADN                            R93 1
      698 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
      700 SETTABLEKS                       R45 R92 K44 ["Text"]
      702 LOADK                            R93 K46 ["auto-x"]
      703 SETTABLEKS                       R93 R92 K29 ["tag"]
      705 CALL                             R90 2 1
      706 SETTABLEKS                       R90 R89 K41 ["AssetText"]
      708 GETUPVAL                         R90 0
      709 GETTABLEKS                       R90 R90 K28 ["createElement"]
      711 GETUPVAL                         R91 8
      712 DUPTABLE                         R92 K56 [{"LayoutOrder", "text", "label", "range", "size", "width", "onFocusGained", "onFocusLost", "onChanged", "onReturnPressed"}]
      713 LOADN                            R93 2
      714 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
      716 JUMPIFNOT                        R81 ; [+2]
      717 MOVE                             R93 R15
      718 JUMP                             ; [+1]
      719 MOVE                             R93 R1
      720 SETTABLEKS                       R93 R92 K47 ["text"]
      722 LOADK                            R93 K9 [""]
      723 SETTABLEKS                       R93 R92 K48 ["label"]
      725 GETIMPORT                        R93 K59 [NumberRange.new]
      727 LOADN                            R94 0
      728 LOADN                            R95 1
      729 CALL                             R93 2 1
      730 SETTABLEKS                       R93 R92 K49 ["range"]
      732 GETUPVAL                         R93 9
      733 GETTABLEKS                       R93 R93 K60 ["Enums"]
      735 GETTABLEKS                       R93 R93 K61 ["IconSize"]
      737 GETTABLEKS                       R93 R93 K62 ["Small"]
      739 SETTABLEKS                       R93 R92 K50 ["size"]
      741 GETIMPORT                        R93 K64 [UDim.new]
      743 LOADK                            R94 K65 [0.5]
      744 LOADN                            R95 0
      745 CALL                             R93 2 1
      746 SETTABLEKS                       R93 R92 K51 ["width"]
      748 SETTABLEKS                       R57 R92 K52 ["onFocusGained"]
      750 SETTABLEKS                       R58 R92 K53 ["onFocusLost"]
      752 SETTABLEKS                       R59 R92 K54 ["onChanged"]
      754 SETTABLEKS                       R60 R92 K55 ["onReturnPressed"]
      756 CALL                             R90 2 1
      757 SETTABLEKS                       R90 R89 K42 ["AssetInput"]
      759 CALL                             R86 3 1
      760 SETTABLEKS                       R86 R85 K32 ["AssetRow"]
      762 GETUPVAL                         R86 0
      763 GETTABLEKS                       R86 R86 K28 ["createElement"]
      765 GETUPVAL                         R87 6
      766 DUPTABLE                         R88 K39 [{"LayoutOrder", "tag"}]
      767 LOADN                            R89 2
      768 SETTABLEKS                       R89 R88 K38 ["LayoutOrder"]
      770 LOADK                            R89 K66 ["row align-y-center gap-medium size-full-3000 padding-medium"]
      771 SETTABLEKS                       R89 R88 K29 ["tag"]
      773 DUPTABLE                         R89 K70 [{"LeftButtons", "WaveformContent", "LoopButton"}]
      774 GETUPVAL                         R90 0
      775 GETTABLEKS                       R90 R90 K28 ["createElement"]
      777 GETUPVAL                         R91 6
      778 DUPTABLE                         R92 K39 [{"LayoutOrder", "tag"}]
      779 LOADN                            R93 1
      780 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
      782 LOADK                            R93 K71 ["col size-0-full auto-x flex-y-evenly align-x-center gap-none"]
      783 SETTABLEKS                       R93 R92 K29 ["tag"]
      785 DUPTABLE                         R93 K74 [{"PlayButton", "ResetTimeButton"}]
      786 GETUPVAL                         R94 0
      787 GETTABLEKS                       R94 R94 K28 ["createElement"]
      789 GETUPVAL                         R95 10
      790 DUPTABLE                         R96 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      791 LOADN                            R97 1
      792 SETTABLEKS                       R97 R96 K38 ["LayoutOrder"]
      794 JUMPIFNOT                        R79 ; [+8]
      795 GETUPVAL                         R97 9
      796 GETTABLEKS                       R97 R97 K60 ["Enums"]
      798 GETTABLEKS                       R97 R97 K80 ["IconName"]
      800 GETTABLEKS                       R97 R97 K81 ["PauseLarge"]
      802 JUMP                             ; [+7]
      803 GETUPVAL                         R97 9
      804 GETTABLEKS                       R97 R97 K60 ["Enums"]
      806 GETTABLEKS                       R97 R97 K80 ["IconName"]
      808 GETTABLEKS                       R97 R97 K82 ["PlayLarge"]
      810 SETTABLEKS                       R97 R96 K75 ["icon"]
      812 LOADB                            R97 1
      813 SETTABLEKS                       R97 R96 K76 ["isCircular"]
      815 GETUPVAL                         R97 9
      816 GETTABLEKS                       R97 R97 K60 ["Enums"]
      818 GETTABLEKS                       R97 R97 K83 ["ButtonVariant"]
      820 GETTABLEKS                       R97 R97 K84 ["Emphasis"]
      822 SETTABLEKS                       R97 R96 K77 ["variant"]
      824 GETUPVAL                         R97 9
      825 GETTABLEKS                       R97 R97 K60 ["Enums"]
      827 GETTABLEKS                       R97 R97 K61 ["IconSize"]
      829 GETTABLEKS                       R97 R97 K62 ["Small"]
      831 SETTABLEKS                       R97 R96 K50 ["size"]
      833 SETTABLEKS                       R64 R96 K78 ["onActivated"]
      835 CALL                             R94 2 1
      836 SETTABLEKS                       R94 R93 K72 ["PlayButton"]
      838 GETUPVAL                         R94 0
      839 GETTABLEKS                       R94 R94 K28 ["createElement"]
      841 GETUPVAL                         R95 10
      842 DUPTABLE                         R96 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      843 LOADN                            R97 2
      844 SETTABLEKS                       R97 R96 K38 ["LayoutOrder"]
      846 GETUPVAL                         R97 9
      847 GETTABLEKS                       R97 R97 K60 ["Enums"]
      849 GETTABLEKS                       R97 R97 K80 ["IconName"]
      851 GETTABLEKS                       R97 R97 K85 ["SkipStartSmall"]
      853 SETTABLEKS                       R97 R96 K75 ["icon"]
      855 LOADB                            R97 1
      856 SETTABLEKS                       R97 R96 K76 ["isCircular"]
      858 GETUPVAL                         R97 9
      859 GETTABLEKS                       R97 R97 K60 ["Enums"]
      861 GETTABLEKS                       R97 R97 K83 ["ButtonVariant"]
      863 GETTABLEKS                       R97 R97 K86 ["Utility"]
      865 SETTABLEKS                       R97 R96 K77 ["variant"]
      867 GETUPVAL                         R97 9
      868 GETTABLEKS                       R97 R97 K60 ["Enums"]
      870 GETTABLEKS                       R97 R97 K61 ["IconSize"]
      872 GETTABLEKS                       R97 R97 K87 ["XSmall"]
      874 SETTABLEKS                       R97 R96 K50 ["size"]
      876 SETTABLEKS                       R65 R96 K78 ["onActivated"]
      878 CALL                             R94 2 1
      879 SETTABLEKS                       R94 R93 K73 ["ResetTimeButton"]
      881 CALL                             R90 3 1
      882 SETTABLEKS                       R90 R89 K67 ["LeftButtons"]
      884 GETUPVAL                         R90 0
      885 GETTABLEKS                       R90 R90 K28 ["createElement"]
      887 GETUPVAL                         R91 6
      888 DUPTABLE                         R92 K39 [{"LayoutOrder", "tag"}]
      889 LOADN                            R93 2
      890 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
      892 LOADK                            R93 K88 ["col size-0-full fill align-x-left gap-none"]
      893 SETTABLEKS                       R93 R92 K29 ["tag"]
      895 DUPTABLE                         R93 K91 [{"WaveformView", "TimePositionText"}]
      896 GETUPVAL                         R94 0
      897 GETTABLEKS                       R94 R94 K28 ["createElement"]
      899 GETUPVAL                         R95 6
      900 DUPTABLE                         R96 K39 [{"LayoutOrder", "tag"}]
      901 LOADN                            R97 1
      902 SETTABLEKS                       R97 R96 K38 ["LayoutOrder"]
      904 LOADK                            R97 K92 ["size-full-0 fill"]
      905 SETTABLEKS                       R97 R96 K29 ["tag"]
      907 DUPTABLE                         R97 K94 [{"GraphCanvas"}]
      908 GETUPVAL                         R98 0
      909 GETTABLEKS                       R98 R98 K28 ["createElement"]
      911 GETUPVAL                         R99 11
      912 DUPTABLE                         R100 K103 [{"GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingTop", "ViewportPaddingBottom", "CullingEpsilon", "children", "childrenUnclipped"}]
      913 GETIMPORT                        R101 K105 [Rect.new]
      915 LOADN                            R102 0
      916 LOADN                            R103 255
      917 LOADN                            R105 0
      918 JUMPIFNOTLT                      R105 R23 ; [+3]
      920 MOVE                             R104 R23
      921 JUMP                             ; [+1]
      922 LOADN                            R104 1
      923 LOADN                            R105 1
      924 CALL                             R101 4 1
      925 SETTABLEKS                       R101 R100 K95 ["GraphRect"]
      927 GETIMPORT                        R101 K64 [UDim.new]
      929 LOADN                            R102 0
      930 LOADN                            R103 0
      931 CALL                             R101 2 1
      932 SETTABLEKS                       R101 R100 K96 ["ViewportPaddingLeft"]
      934 GETIMPORT                        R101 K64 [UDim.new]
      936 LOADN                            R102 0
      937 LOADN                            R103 0
      938 CALL                             R101 2 1
      939 SETTABLEKS                       R101 R100 K97 ["ViewportPaddingRight"]
      941 GETIMPORT                        R101 K64 [UDim.new]
      943 LOADN                            R102 0
      944 LOADN                            R103 8
      945 CALL                             R101 2 1
      946 SETTABLEKS                       R101 R100 K98 ["ViewportPaddingTop"]
      948 GETIMPORT                        R101 K64 [UDim.new]
      950 LOADN                            R102 0
      951 LOADN                            R103 0
      952 CALL                             R101 2 1
      953 SETTABLEKS                       R101 R100 K99 ["ViewportPaddingBottom"]
      955 LOADN                            R101 1
      956 SETTABLEKS                       R101 R100 K100 ["CullingEpsilon"]
      958 DUPTABLE                         R101 K111 [{"VolumeBox", "PlaybackRegionMinBox", "PlaybackRegionMaxBox", "Waveform", "Touch"}]
      959 MOVE                             R102 R33
      960 JUMPIFNOT                        R102 ; [+29]
      961 GETUPVAL                         R102 0
      962 GETTABLEKS                       R102 R102 K28 ["createElement"]
      964 GETUPVAL                         R103 12
      965 DUPTABLE                         R104 K115 [{"Rect", "ZIndex", "BackgroundColor3", "BackgroundTransparency"}]
      966 GETIMPORT                        R105 K105 [Rect.new]
      968 LOADN                            R106 0
      969 MINUS                            R107 R3
      970 MOVE                             R108 R23
      971 MOVE                             R109 R3
      972 CALL                             R105 4 1
      973 SETTABLEKS                       R105 R104 K104 ["Rect"]
      975 LOADN                            R105 254
      976 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
      978 GETIMPORT                        R105 K117 [Color3.new]
      980 LOADN                            R106 1
      981 LOADN                            R107 1
      982 LOADN                            R108 1
      983 CALL                             R105 3 1
      984 SETTABLEKS                       R105 R104 K113 ["BackgroundColor3"]
      986 LOADK                            R105 K118 [0.8]
      987 SETTABLEKS                       R105 R104 K114 ["BackgroundTransparency"]
      989 CALL                             R102 2 1
      990 SETTABLEKS                       R102 R101 K106 ["VolumeBox"]
      992 LOADB                            R102 0
      993 LOADN                            R103 0
      994 JUMPIFNOTLT                      R103 R23 ; [+23]
      996 GETUPVAL                         R102 0
      997 GETTABLEKS                       R102 R102 K28 ["createElement"]
      999 GETUPVAL                         R103 12
     1000 DUPTABLE                         R104 K119 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1001 GETIMPORT                        R105 K105 [Rect.new]
     1003 LOADN                            R106 0
     1004 LOADN                            R107 255
     1005 GETTABLEKS                       R108 R9 K120 ["Min"]
     1007 LOADN                            R109 1
     1008 CALL                             R105 4 1
     1009 SETTABLEKS                       R105 R104 K104 ["Rect"]
     1011 LOADN                            R105 255
     1012 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1014 LOADK                            R105 K65 [0.5]
     1015 SETTABLEKS                       R105 R104 K114 ["BackgroundTransparency"]
     1017 CALL                             R102 2 1
     1018 SETTABLEKS                       R102 R101 K107 ["PlaybackRegionMinBox"]
     1020 LOADB                            R102 0
     1021 LOADN                            R103 0
     1022 JUMPIFNOTLT                      R103 R23 ; [+29]
     1024 GETUPVAL                         R102 0
     1025 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1027 GETUPVAL                         R103 12
     1028 DUPTABLE                         R104 K119 [{"Rect", "ZIndex", "BackgroundTransparency"}]
     1029 GETIMPORT                        R105 K105 [Rect.new]
     1031 GETTABLEKS                       R107 R9 K121 ["Max"]
     1033 FASTCALL2                        MATH_MIN R107 R23 ; [+4]
     1035 MOVE                             R108 R23
     1036 GETIMPORT                        R106 K124 [math.min]
     1038 CALL                             R106 2 1
     1039 LOADN                            R107 255
     1040 MOVE                             R108 R23
     1041 LOADN                            R109 1
     1042 CALL                             R105 4 1
     1043 SETTABLEKS                       R105 R104 K104 ["Rect"]
     1045 LOADN                            R105 255
     1046 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1048 LOADK                            R105 K65 [0.5]
     1049 SETTABLEKS                       R105 R104 K114 ["BackgroundTransparency"]
     1051 CALL                             R102 2 1
     1052 SETTABLEKS                       R102 R101 K108 ["PlaybackRegionMaxBox"]
     1054 GETUPVAL                         R102 0
     1055 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1057 GETUPVAL                         R103 13
     1058 DUPTABLE                         R104 K128 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
     1059 SETTABLEKS                       R1 R104 K2 ["AssetId"]
     1061 SETTABLEKS                       R27 R104 K125 ["HoveredPosition"]
     1063 SETTABLEKS                       R23 R104 K126 ["TimeLength"]
     1065 SETTABLEKS                       R25 R104 K8 ["TimePosition"]
     1067 SETTABLEKS                       R3 R104 K3 ["Volume"]
     1069 SETTABLEKS                       R37 R104 K127 ["Resolution"]
     1071 CALL                             R102 2 1
     1072 SETTABLEKS                       R102 R101 K109 ["Waveform"]
     1074 GETUPVAL                         R102 0
     1075 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1077 GETUPVAL                         R103 14
     1078 DUPTABLE                         R104 K134 [{"ZIndex", "TreatMouseAsAnchor", "OnHoverMoved", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
     1079 LOADN                            R105 10
     1080 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1082 LOADB                            R105 1
     1083 SETTABLEKS                       R105 R104 K129 ["TreatMouseAsAnchor"]
     1085 SETTABLEKS                       R61 R104 K130 ["OnHoverMoved"]
     1087 SETTABLEKS                       R62 R104 K131 ["OnDragStart"]
     1089 SETTABLEKS                       R61 R104 K132 ["OnDragMoved"]
     1091 SETTABLEKS                       R63 R104 K133 ["OnDragEnded"]
     1093 CALL                             R102 2 1
     1094 SETTABLEKS                       R102 R101 K110 ["Touch"]
     1096 SETTABLEKS                       R101 R100 K101 ["children"]
     1098 DUPTABLE                         R101 K140 [{"PlaybackRegionMinBar", "PlaybackRegionMaxBar", "LoopRegionMinBar", "LoopRegionMaxBar", "TimePositionBar"}]
     1099 LOADB                            R102 0
     1100 LOADN                            R103 0
     1101 JUMPIFNOTLT                      R103 R23 ; [+21]
     1103 GETUPVAL                         R102 0
     1104 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1106 GETUPVAL                         R103 15
     1107 DUPTABLE                         R104 K145 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1108 GETTABLEKS                       R105 R9 K120 ["Min"]
     1110 SETTABLEKS                       R105 R104 K141 ["Position"]
     1112 SETTABLEKS                       R68 R104 K142 ["SetPosition"]
     1114 LOADN                            R105 12
     1115 SETTABLEKS                       R105 R104 K143 ["HeightAboveGraph"]
     1117 SETTABLEKS                       R41 R104 K144 ["ColorStyle"]
     1119 LOADN                            R105 1
     1120 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1122 CALL                             R102 2 1
     1123 SETTABLEKS                       R102 R101 K135 ["PlaybackRegionMinBar"]
     1125 LOADB                            R102 0
     1126 LOADN                            R103 0
     1127 JUMPIFNOTLT                      R103 R23 ; [+27]
     1129 GETUPVAL                         R102 0
     1130 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1132 GETUPVAL                         R103 15
     1133 DUPTABLE                         R104 K145 [{"Position", "SetPosition", "HeightAboveGraph", "ColorStyle", "ZIndex"}]
     1134 GETTABLEKS                       R106 R9 K121 ["Max"]
     1136 FASTCALL2                        MATH_MIN R106 R23 ; [+4]
     1138 MOVE                             R107 R23
     1139 GETIMPORT                        R105 K124 [math.min]
     1141 CALL                             R105 2 1
     1142 SETTABLEKS                       R105 R104 K141 ["Position"]
     1144 SETTABLEKS                       R69 R104 K142 ["SetPosition"]
     1146 LOADN                            R105 12
     1147 SETTABLEKS                       R105 R104 K143 ["HeightAboveGraph"]
     1149 SETTABLEKS                       R41 R104 K144 ["ColorStyle"]
     1151 LOADN                            R105 1
     1152 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1154 CALL                             R102 2 1
     1155 SETTABLEKS                       R102 R101 K136 ["PlaybackRegionMaxBar"]
     1157 LOADB                            R102 0
     1158 LOADN                            R103 0
     1159 JUMPIFNOTLT                      R103 R23 ; [+23]
     1161 MOVE                             R102 R7
     1162 JUMPIFNOT                        R102 ; [+20]
     1163 GETUPVAL                         R102 0
     1164 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1166 GETUPVAL                         R103 15
     1167 DUPTABLE                         R104 K147 [{"Position", "SetPosition", "Thickness", "ColorStyle", "ZIndex"}]
     1168 GETTABLEKS                       R105 R11 K120 ["Min"]
     1170 SETTABLEKS                       R105 R104 K141 ["Position"]
     1172 SETTABLEKS                       R70 R104 K142 ["SetPosition"]
     1174 LOADN                            R105 1
     1175 SETTABLEKS                       R105 R104 K146 ["Thickness"]
     1177 SETTABLEKS                       R42 R104 K144 ["ColorStyle"]
     1179 LOADN                            R105 2
     1180 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1182 CALL                             R102 2 1
     1183 SETTABLEKS                       R102 R101 K137 ["LoopRegionMinBar"]
     1185 LOADB                            R102 0
     1186 LOADN                            R103 0
     1187 JUMPIFNOTLT                      R103 R23 ; [+29]
     1189 MOVE                             R102 R7
     1190 JUMPIFNOT                        R102 ; [+26]
     1191 GETUPVAL                         R102 0
     1192 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1194 GETUPVAL                         R103 15
     1195 DUPTABLE                         R104 K147 [{"Position", "SetPosition", "Thickness", "ColorStyle", "ZIndex"}]
     1196 GETTABLEKS                       R106 R11 K121 ["Max"]
     1198 FASTCALL2                        MATH_MIN R106 R23 ; [+4]
     1200 MOVE                             R107 R23
     1201 GETIMPORT                        R105 K124 [math.min]
     1203 CALL                             R105 2 1
     1204 SETTABLEKS                       R105 R104 K141 ["Position"]
     1206 SETTABLEKS                       R71 R104 K142 ["SetPosition"]
     1208 LOADN                            R105 1
     1209 SETTABLEKS                       R105 R104 K146 ["Thickness"]
     1211 SETTABLEKS                       R42 R104 K144 ["ColorStyle"]
     1213 LOADN                            R105 2
     1214 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1216 CALL                             R102 2 1
     1217 SETTABLEKS                       R102 R101 K138 ["LoopRegionMaxBar"]
     1219 LOADB                            R102 0
     1220 LOADN                            R103 0
     1221 JUMPIFNOTLT                      R103 R23 ; [+30]
     1223 GETUPVAL                         R102 0
     1224 GETTABLEKS                       R102 R102 K28 ["createElement"]
     1226 GETUPVAL                         R103 15
     1227 DUPTABLE                         R104 K149 [{"Position", "SetPosition", "FlagEnabled", "Thickness", "ColorStyle", "ZIndex"}]
     1228 LOADN                            R107 0
     1229 FASTCALL3                        MATH_CLAMP R13 R107 R23
     1231 MOVE                             R106 R13
     1232 MOVE                             R108 R23
     1233 GETIMPORT                        R105 K151 [math.clamp]
     1235 CALL                             R105 3 1
     1236 SETTABLEKS                       R105 R104 K141 ["Position"]
     1238 SETTABLEKS                       R67 R104 K142 ["SetPosition"]
     1240 LOADB                            R105 0
     1241 SETTABLEKS                       R105 R104 K148 ["FlagEnabled"]
     1243 LOADN                            R105 1
     1244 SETTABLEKS                       R105 R104 K146 ["Thickness"]
     1246 SETTABLEKS                       R43 R104 K144 ["ColorStyle"]
     1248 LOADN                            R105 3
     1249 SETTABLEKS                       R105 R104 K112 ["ZIndex"]
     1251 CALL                             R102 2 1
     1252 SETTABLEKS                       R102 R101 K139 ["TimePositionBar"]
     1254 SETTABLEKS                       R101 R100 K102 ["childrenUnclipped"]
     1256 CALL                             R98 2 1
     1257 SETTABLEKS                       R98 R97 K93 ["GraphCanvas"]
     1259 CALL                             R94 3 1
     1260 SETTABLEKS                       R94 R93 K89 ["WaveformView"]
     1262 GETUPVAL                         R94 0
     1263 GETTABLEKS                       R94 R94 K28 ["createElement"]
     1265 GETUPVAL                         R95 7
     1266 DUPTABLE                         R96 K45 [{"LayoutOrder", "Text", "tag"}]
     1267 LOADN                            R97 2
     1268 SETTABLEKS                       R97 R96 K38 ["LayoutOrder"]
     1270 MOVE                             R101 R25
     1271 FASTCALL2K                       MATH_MAX R101 K152 ; [+5]
     1273 MOVE                             R103 R101
     1274 LOADK                            R104 K152 [0]
     1275 GETIMPORT                        R102 K154 [math.max]
     1277 CALL                             R102 2 1
     1278 MOVE                             R101 R102
     1279 GETIMPORT                        R102 K157 [string.format]
     1281 LOADK                            R103 K158 ["%d:%05.2f"]
     1282 DIVK                             R104 R101 K159 [60]
     1283 MODK                             R105 R101 K159 [60]
     1284 CALL                             R102 3 1
     1285 MOVE                             R98 R102
     1286 LOADK                            R99 K160 [" / "]
     1287 MOVE                             R101 R23
     1288 FASTCALL2K                       MATH_MAX R101 K152 ; [+5]
     1290 MOVE                             R103 R101
     1291 LOADK                            R104 K152 [0]
     1292 GETIMPORT                        R102 K154 [math.max]
     1294 CALL                             R102 2 1
     1295 MOVE                             R101 R102
     1296 GETIMPORT                        R102 K157 [string.format]
     1298 LOADK                            R103 K158 ["%d:%05.2f"]
     1299 DIVK                             R104 R101 K159 [60]
     1300 MODK                             R105 R101 K159 [60]
     1301 CALL                             R102 3 1
     1302 MOVE                             R100 R102
     1303 CONCAT                           R97 R98 R100
     1304 SETTABLEKS                       R97 R96 K44 ["Text"]
     1306 LOADK                            R97 K161 ["size-full-0 auto-y text-align-x-left text-body-small"]
     1307 SETTABLEKS                       R97 R96 K29 ["tag"]
     1309 CALL                             R94 2 1
     1310 SETTABLEKS                       R94 R93 K90 ["TimePositionText"]
     1312 CALL                             R90 3 1
     1313 SETTABLEKS                       R90 R89 K68 ["WaveformContent"]
     1315 GETUPVAL                         R90 0
     1316 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1318 GETUPVAL                         R91 10
     1319 DUPTABLE                         R92 K79 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
     1320 LOADN                            R93 3
     1321 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1323 GETUPVAL                         R93 9
     1324 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1326 GETTABLEKS                       R93 R93 K80 ["IconName"]
     1328 GETTABLEKS                       R93 R93 K162 ["TwoArrowsLoopClockwise"]
     1330 SETTABLEKS                       R93 R92 K75 ["icon"]
     1332 LOADB                            R93 1
     1333 SETTABLEKS                       R93 R92 K76 ["isCircular"]
     1335 JUMPIFNOT                        R7 ; [+8]
     1336 GETUPVAL                         R93 9
     1337 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1339 GETTABLEKS                       R93 R93 K83 ["ButtonVariant"]
     1341 GETTABLEKS                       R93 R93 K84 ["Emphasis"]
     1343 JUMP                             ; [+7]
     1344 GETUPVAL                         R93 9
     1345 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1347 GETTABLEKS                       R93 R93 K83 ["ButtonVariant"]
     1349 GETTABLEKS                       R93 R93 K163 ["Standard"]
     1351 SETTABLEKS                       R93 R92 K77 ["variant"]
     1353 GETUPVAL                         R93 9
     1354 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1356 GETTABLEKS                       R93 R93 K61 ["IconSize"]
     1358 GETTABLEKS                       R93 R93 K62 ["Small"]
     1360 SETTABLEKS                       R93 R92 K50 ["size"]
     1362 SETTABLEKS                       R66 R92 K78 ["onActivated"]
     1364 CALL                             R90 2 1
     1365 SETTABLEKS                       R90 R89 K69 ["LoopButton"]
     1367 CALL                             R86 3 1
     1368 SETTABLEKS                       R86 R85 K33 ["WaveformRow"]
     1370 GETUPVAL                         R86 0
     1371 GETTABLEKS                       R86 R86 K28 ["createElement"]
     1373 GETUPVAL                         R87 6
     1374 DUPTABLE                         R88 K39 [{"LayoutOrder", "tag"}]
     1375 LOADN                            R89 3
     1376 SETTABLEKS                       R89 R88 K38 ["LayoutOrder"]
     1378 LOADK                            R89 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1379 SETTABLEKS                       R89 R88 K29 ["tag"]
     1381 DUPTABLE                         R89 K168 [{"VolumeLabel", "VolumeSlider", "VolumeText", "VolumeReset"}]
     1382 GETUPVAL                         R90 0
     1383 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1385 GETUPVAL                         R91 7
     1386 DUPTABLE                         R92 K45 [{"LayoutOrder", "Text", "tag"}]
     1387 LOADN                            R93 1
     1388 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1390 SETTABLEKS                       R48 R92 K44 ["Text"]
     1392 LOADK                            R93 K46 ["auto-x"]
     1393 SETTABLEKS                       R93 R92 K29 ["tag"]
     1395 CALL                             R90 2 1
     1396 SETTABLEKS                       R90 R89 K164 ["VolumeLabel"]
     1398 GETUPVAL                         R90 0
     1399 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1401 GETUPVAL                         R91 16
     1402 DUPTABLE                         R92 K173 [{"LayoutOrder", "value", "range", "width", "onDragStarted", "onDragEnded", "onValueChanged"}]
     1403 LOADN                            R93 2
     1404 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1406 ADDK                             R95 R3 K175 [1]
     1407 FASTCALL1                        MATH_LOG R95 ; [+2]
     1408 GETIMPORT                        R94 K177 [math.log]
     1410 CALL                             R94 1 1
     1411 DIVK                             R93 R94 K174 [0.693147180559945]
     1412 SETTABLEKS                       R93 R92 K169 ["value"]
     1414 GETIMPORT                        R93 K59 [NumberRange.new]
     1416 LOADN                            R94 0
     1417 LOADK                            R95 K178 [3.4594316186373]
     1418 CALL                             R93 2 1
     1419 SETTABLEKS                       R93 R92 K49 ["range"]
     1421 GETIMPORT                        R93 K64 [UDim.new]
     1423 LOADK                            R94 K65 [0.5]
     1424 LOADN                            R95 0
     1425 CALL                             R93 2 1
     1426 SETTABLEKS                       R93 R92 K51 ["width"]
     1428 SETTABLEKS                       R72 R92 K170 ["onDragStarted"]
     1430 SETTABLEKS                       R73 R92 K171 ["onDragEnded"]
     1432 SETTABLEKS                       R74 R92 K172 ["onValueChanged"]
     1434 CALL                             R90 2 1
     1435 SETTABLEKS                       R90 R89 K165 ["VolumeSlider"]
     1437 GETUPVAL                         R90 0
     1438 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1440 GETUPVAL                         R91 7
     1441 DUPTABLE                         R92 K45 [{"LayoutOrder", "Text", "tag"}]
     1442 LOADN                            R93 3
     1443 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1445 GETIMPORT                        R93 K157 [string.format]
     1447 LOADK                            R94 K179 ["x%.2f"]
     1448 MOVE                             R95 R3
     1449 CALL                             R93 2 1
     1450 SETTABLEKS                       R93 R92 K44 ["Text"]
     1452 LOADK                            R93 K180 ["auto-x text-body-medium"]
     1453 SETTABLEKS                       R93 R92 K29 ["tag"]
     1455 CALL                             R90 2 1
     1456 SETTABLEKS                       R90 R89 K166 ["VolumeText"]
     1458 LOADB                            R90 0
     1459 JUMPIFEQKN                       R3 K175 [1] ; [+33]
     1461 GETUPVAL                         R90 0
     1462 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1464 GETUPVAL                         R91 10
     1465 DUPTABLE                         R92 K181 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1466 LOADN                            R93 4
     1467 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1469 GETUPVAL                         R93 9
     1470 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1472 GETTABLEKS                       R93 R93 K80 ["IconName"]
     1474 GETTABLEKS                       R93 R93 K182 ["ArrowCurlToLeft"]
     1476 SETTABLEKS                       R93 R92 K75 ["icon"]
     1478 LOADB                            R93 1
     1479 SETTABLEKS                       R93 R92 K76 ["isCircular"]
     1481 GETUPVAL                         R93 9
     1482 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1484 GETTABLEKS                       R93 R93 K61 ["IconSize"]
     1486 GETTABLEKS                       R93 R93 K87 ["XSmall"]
     1488 SETTABLEKS                       R93 R92 K50 ["size"]
     1490 SETTABLEKS                       R75 R92 K78 ["onActivated"]
     1492 CALL                             R90 2 1
     1493 SETTABLEKS                       R90 R89 K167 ["VolumeReset"]
     1495 CALL                             R86 3 1
     1496 SETTABLEKS                       R86 R85 K34 ["VolumeRow"]
     1498 GETUPVAL                         R86 0
     1499 GETTABLEKS                       R86 R86 K28 ["createElement"]
     1501 GETUPVAL                         R87 6
     1502 DUPTABLE                         R88 K39 [{"LayoutOrder", "tag"}]
     1503 LOADN                            R89 4
     1504 SETTABLEKS                       R89 R88 K38 ["LayoutOrder"]
     1506 LOADK                            R89 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1507 SETTABLEKS                       R89 R88 K29 ["tag"]
     1509 DUPTABLE                         R89 K187 [{"PlaybackSpeedLabel", "PlaybackSpeedSlider", "PlaybackSpeedText", "PlaybackSpeedReset"}]
     1510 GETUPVAL                         R90 0
     1511 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1513 GETUPVAL                         R91 7
     1514 DUPTABLE                         R92 K45 [{"LayoutOrder", "Text", "tag"}]
     1515 LOADN                            R93 1
     1516 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1518 SETTABLEKS                       R46 R92 K44 ["Text"]
     1520 LOADK                            R93 K46 ["auto-x"]
     1521 SETTABLEKS                       R93 R92 K29 ["tag"]
     1523 CALL                             R90 2 1
     1524 SETTABLEKS                       R90 R89 K183 ["PlaybackSpeedLabel"]
     1526 GETUPVAL                         R90 0
     1527 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1529 GETUPVAL                         R91 16
     1530 DUPTABLE                         R92 K188 [{"LayoutOrder", "value", "range", "width", "onValueChanged"}]
     1531 LOADN                            R93 2
     1532 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1534 ADDK                             R95 R5 K175 [1]
     1535 FASTCALL1                        MATH_LOG R95 ; [+2]
     1536 GETIMPORT                        R94 K177 [math.log]
     1538 CALL                             R94 1 1
     1539 DIVK                             R93 R94 K174 [0.693147180559945]
     1540 SETTABLEKS                       R93 R92 K169 ["value"]
     1542 GETIMPORT                        R93 K59 [NumberRange.new]
     1544 LOADN                            R94 0
     1545 LOADK                            R95 K189 [4.39231742277876]
     1546 CALL                             R93 2 1
     1547 SETTABLEKS                       R93 R92 K49 ["range"]
     1549 GETIMPORT                        R93 K64 [UDim.new]
     1551 LOADK                            R94 K65 [0.5]
     1552 LOADN                            R95 0
     1553 CALL                             R93 2 1
     1554 SETTABLEKS                       R93 R92 K51 ["width"]
     1556 SETTABLEKS                       R76 R92 K172 ["onValueChanged"]
     1558 CALL                             R90 2 1
     1559 SETTABLEKS                       R90 R89 K184 ["PlaybackSpeedSlider"]
     1561 GETUPVAL                         R90 0
     1562 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1564 GETUPVAL                         R91 7
     1565 DUPTABLE                         R92 K45 [{"LayoutOrder", "Text", "tag"}]
     1566 LOADN                            R93 3
     1567 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1569 GETIMPORT                        R93 K157 [string.format]
     1571 LOADK                            R94 K179 ["x%.2f"]
     1572 MOVE                             R95 R5
     1573 CALL                             R93 2 1
     1574 SETTABLEKS                       R93 R92 K44 ["Text"]
     1576 LOADK                            R93 K180 ["auto-x text-body-medium"]
     1577 SETTABLEKS                       R93 R92 K29 ["tag"]
     1579 CALL                             R90 2 1
     1580 SETTABLEKS                       R90 R89 K185 ["PlaybackSpeedText"]
     1582 LOADB                            R90 0
     1583 JUMPIFEQKN                       R5 K175 [1] ; [+33]
     1585 GETUPVAL                         R90 0
     1586 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1588 GETUPVAL                         R91 10
     1589 DUPTABLE                         R92 K181 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
     1590 LOADN                            R93 4
     1591 SETTABLEKS                       R93 R92 K38 ["LayoutOrder"]
     1593 GETUPVAL                         R93 9
     1594 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1596 GETTABLEKS                       R93 R93 K80 ["IconName"]
     1598 GETTABLEKS                       R93 R93 K182 ["ArrowCurlToLeft"]
     1600 SETTABLEKS                       R93 R92 K75 ["icon"]
     1602 LOADB                            R93 1
     1603 SETTABLEKS                       R93 R92 K76 ["isCircular"]
     1605 GETUPVAL                         R93 9
     1606 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1608 GETTABLEKS                       R93 R93 K61 ["IconSize"]
     1610 GETTABLEKS                       R93 R93 K87 ["XSmall"]
     1612 SETTABLEKS                       R93 R92 K50 ["size"]
     1614 SETTABLEKS                       R77 R92 K78 ["onActivated"]
     1616 CALL                             R90 2 1
     1617 SETTABLEKS                       R90 R89 K186 ["PlaybackSpeedReset"]
     1619 CALL                             R86 3 1
     1620 SETTABLEKS                       R86 R85 K35 ["PlaybackSpeedRow"]
     1622 MOVE                             R86 R80
     1623 JUMPIFNOT                        R86 ; [+36]
     1624 GETUPVAL                         R86 0
     1625 GETTABLEKS                       R86 R86 K28 ["createElement"]
     1627 GETUPVAL                         R87 6
     1628 DUPTABLE                         R88 K39 [{"LayoutOrder", "tag"}]
     1629 LOADN                            R89 0
     1630 SETTABLEKS                       R89 R88 K38 ["LayoutOrder"]
     1632 LOADK                            R89 K40 ["row size-full-0 auto-y align-y-center gap-medium padding-medium"]
     1633 SETTABLEKS                       R89 R88 K29 ["tag"]
     1635 DUPTABLE                         R89 K191 [{"PreviewInWorldCheckbox"}]
     1636 GETUPVAL                         R90 0
     1637 GETTABLEKS                       R90 R90 K28 ["createElement"]
     1639 GETUPVAL                         R91 17
     1640 DUPTABLE                         R92 K193 [{"isChecked", "label", "size", "onActivated"}]
     1641 SETTABLEKS                       R35 R92 K192 ["isChecked"]
     1643 SETTABLEKS                       R47 R92 K48 ["label"]
     1645 GETUPVAL                         R93 9
     1646 GETTABLEKS                       R93 R93 K60 ["Enums"]
     1648 GETTABLEKS                       R93 R93 K194 ["InputSize"]
     1650 GETTABLEKS                       R93 R93 K87 ["XSmall"]
     1652 SETTABLEKS                       R93 R92 K50 ["size"]
     1654 SETTABLEKS                       R78 R92 K78 ["onActivated"]
     1656 CALL                             R90 2 1
     1657 SETTABLEKS                       R90 R89 K190 ["PreviewInWorldCheckbox"]
     1659 CALL                             R86 3 1
     1660 SETTABLEKS                       R86 R85 K36 ["PreviewInWorldRow"]
     1662 CALL                             R82 3 -1
     1663 RETURN                           R82 -1

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
      119 DUPCLOSURE                       R27 K39 [PROTO_38]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R22
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R3
      138 RETURN                           R27 1
