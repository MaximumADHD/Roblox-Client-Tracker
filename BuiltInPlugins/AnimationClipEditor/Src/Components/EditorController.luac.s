PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K4 [{[1], ["ikTargetPath"], ["showAddIkTargetPrompt"] = True}]
        2 SETTABLEKS                       R0 R4 K0 ["ikTargetInstanceName"]
        4 SETTABLEKS                       R1 R4 K1 ["ikTargetPath"]
        6 NAMECALL                         R2 R2 K5 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1], ["ikTargetPath"], ["showAddIkTargetPrompt"] = False}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K5 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["ikTargetInstanceName"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K5 ["None"]
       10 SETTABLEKS                       R3 R2 K1 ["ikTargetPath"]
       12 NAMECALL                         R0 R0 K6 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K4 [{[1], ["ikTargetInstanceName"], ["showSelectIkTargetPrompt"] = True}]
        2 SETTABLEKS                       R1 R4 K0 ["ikTargetPath"]
        4 SETTABLEKS                       R0 R4 K1 ["ikTargetInstanceName"]
        6 NAMECALL                         R2 R2 K5 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1], ["ikTargetInstanceName"], ["showSelectIkTargetPrompt"] = False}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K5 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["ikTargetPath"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K5 ["None"]
       10 SETTABLEKS                       R3 R2 K1 ["ikTargetInstanceName"]
       12 NAMECALL                         R0 R0 K6 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetReduceKeyframesDialogMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["Hidden"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetTopTrackIndex"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["TopTrackIndex"]
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R5 R0 ; [+3]
       13 LOADN                            R4 1
       14 JUMP                             ; [+1]
       15 LOADN                            R4 -1
       16 SUB                              R2 R3 R4
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKS                    R1 K0 ["forward"] ; [+14]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["SetTopTrackIndex"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["props"]
       10 GETTABLEKS                       R4 R4 K4 ["TopTrackIndex"]
       12 SUBK                             R3 R4 K3 [1]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["props"]
       18 GETTABLEKS                       R2 R2 K2 ["SetTopTrackIndex"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["props"]
       23 GETTABLEKS                       R4 R4 K4 ["TopTrackIndex"]
       25 SUBK                             R3 R4 K5 [-1]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["TrackListWidth"]
        5 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R4 R4 K3 ["X"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["TIMELINE_MIN_WIDTH"]
       12 SUB                              R3 R4 R5
       13 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       15 GETIMPORT                        R1 K7 [math.min]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K8 [{"AbsoluteSize", "TrackListWidth"}]
       20 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
       22 SETTABLEKS                       R5 R4 K2 ["AbsoluteSize"]
       24 SETTABLEKS                       R1 R4 K1 ["TrackListWidth"]
       26 NAMECALL                         R2 R2 K9 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["SetPlayState"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R5 R5 K3 ["Pause"]
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["SetRightClickContextInfo"]
       16 DUPTABLE                         R5 K9 [{"Path", "TrackType", "RotationType", "InstanceName"}]
       17 SETTABLEKS                       R1 R5 K5 ["Path"]
       19 SETTABLEKS                       R2 R5 K6 ["TrackType"]
       21 SETTABLEKS                       R3 R5 K7 ["RotationType"]
       23 SETTABLEKS                       R0 R5 K8 ["InstanceName"]
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 0
       27 DUPTABLE                         R6 K12 [{["showContextMenu"] = True}]
       28 NAMECALL                         R4 R4 K13 ["setState"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CancelAnimationFromVideoImport"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["TRACK_LIST_MIN_WIDTH"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K3 ["state"]
       10 GETTABLEKS                       R6 R6 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R6 R6 K1 ["X"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K5 ["TIMELINE_MIN_WIDTH"]
       17 SUB                              R5 R6 R7
       18 FASTCALL3                        MATH_CLAMP R1 R4 R5
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K8 [math.clamp]
       23 CALL                             R2 3 1
       24 GETUPVAL                         R3 1
       25 DUPTABLE                         R5 K10 [{"TrackListWidth"}]
       26 SETTABLEKS                       R2 R5 K9 ["TrackListWidth"]
       28 NAMECALL                         R3 R3 K11 ["setState"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["SelectedTracks"]
        5 GETTABLEKS                       R3 R1 K2 ["SetSelectedTracks"]
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["findPath"]
       11 MOVE                             R5 R2
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+9]
       15 MOVE                             R4 R3
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["removePath"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R0
       21 CALL                             R5 2 -1
       22 CALL                             R4 -1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R1 K5 ["SetLastSelectedPath"]
       26 MOVE                             R5 R0
       27 CALL                             R4 1 0
       28 MOVE                             R4 R3
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K6 ["List"]
       32 GETTABLEKS                       R5 R5 K7 ["join"]
       34 MOVE                             R6 R2
       35 JUMPIF                           R6 ; [+2]
       36 NEWTABLE                         R6 0 0
       38 NEWTABLE                         R7 0 1
       40 MOVE                             R8 R0
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 -1
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Tracks"]
        5 GETTABLEKS                       R3 R1 K2 ["SetSelectedTracks"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K3 ["LastSelectedPath"]
       14 GETIMPORT                        R7 K5 [ipairs]
       16 MOVE                             R8 R2
       17 CALL                             R7 1 3
       18 FORGPREP_INEXT                   R7
       19 JUMPIFNOT                        R6 ; [+7]
       20 GETTABLEKS                       R12 R11 K6 ["Name"]
       22 GETTABLEN                        R13 R6 1
       23 JUMPIFNOTEQ                      R12 R13 ; [+3]
       25 MOVE                             R5 R10
       26 JUMP                             ; [+6]
       27 GETTABLEKS                       R12 R11 K6 ["Name"]
       29 GETTABLEN                        R13 R0 1
       30 JUMPIFNOTEQ                      R12 R13 ; [+2]
       32 MOVE                             R4 R10
       33 FORGLOOP                         R7 2 [inext] ; [-15]
       35 JUMPIFEQKNIL                     R4 ; [+41]
       37 JUMPIFEQKNIL                     R5 ; [+39]
       39 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       41 MOVE                             R8 R4
       42 MOVE                             R9 R5
       43 GETIMPORT                        R7 K9 [math.min]
       45 CALL                             R7 2 1
       46 FASTCALL2                        MATH_MAX R4 R5 ; [+5]
       48 MOVE                             R9 R4
       49 MOVE                             R10 R5
       50 GETIMPORT                        R8 K11 [math.max]
       52 CALL                             R8 2 1
       53 NEWTABLE                         R9 0 0
       55 MOVE                             R12 R7
       56 MOVE                             R10 R8
       57 LOADN                            R11 1
       58 FORNPREP                         R10
       59 NEWTABLE                         R15 0 1
       61 GETTABLE                         R16 R2 R12
       62 GETTABLEKS                       R16 R16 K6 ["Name"]
       64 SETLIST                          R15 R16 1 [1]
       66 FASTCALL2                        TABLE_INSERT R9 R15 ; [+4]
       68 MOVE                             R14 R9
       69 GETIMPORT                        R13 K14 [table.insert]
       71 CALL                             R13 2 0
       72 FORNLOOP                         R10
       73 MOVE                             R10 R3
       74 MOVE                             R11 R9
       75 CALL                             R10 1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K0 ["props"]
       80 GETTABLEKS                       R7 R7 K15 ["SetLastSelectedPath"]
       82 MOVE                             R8 R0
       83 CALL                             R7 1 0
       84 MOVE                             R7 R3
       85 NEWTABLE                         R8 0 1
       87 MOVE                             R9 R0
       88 SETLIST                          R8 R9 1 [1]
       90 CALL                             R7 1 0
       91 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["SetSelectedTracks"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["AnimationData"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["EditorMode"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["controlDown"]
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["controlSelectTrack"]
       22 MOVE                             R6 R0
       23 CALL                             R5 1 0
       24 JUMP                             ; [+27]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["isChannelAnimation"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 JUMPIF                           R5 ; [+10]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K7 ["shiftDown"]
       34 JUMPIFNOT                        R5 ; [+6]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K8 ["shiftSelectTrack"]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 0
       40 JUMP                             ; [+11]
       41 GETTABLEKS                       R5 R1 K9 ["SetLastSelectedPath"]
       43 MOVE                             R6 R0
       44 CALL                             R5 1 0
       45 MOVE                             R5 R2
       46 NEWTABLE                         R6 0 1
       48 MOVE                             R7 R0
       49 SETLIST                          R6 R7 1 [1]
       51 CALL                             R5 1 0
       52 GETTABLEKS                       R5 R1 K10 ["Analytics"]
       54 LOADK                            R7 K11 ["onTrackSelected"]
       55 GETTABLEN                        R8 R0 1
       56 LOADK                            R9 K12 ["TrackList"]
       57 MOVE                             R10 R4
       58 JUMPIFNOT                        R3 ; [+8]
       59 GETTABLEKS                       R12 R3 K13 ["Metadata"]
       61 JUMPIFNOT                        R12 ; [+5]
       62 GETTABLEKS                       R11 R3 K13 ["Metadata"]
       64 GETTABLEKS                       R11 R11 K14 ["Guid"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R11
       68 NAMECALL                         R5 R5 K15 ["report"]
       70 CALL                             R5 6 0
       71 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["AddTrack"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K0 ["props"]
       13 GETTABLEKS                       R9 R9 K2 ["Analytics"]
       15 CALL                             R3 6 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AttachEditor"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+8]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TRACK_TYPES"]
        6 GETTABLEKS                       R5 R5 K1 ["Facs"]
        8 JUMPIFEQ                         R2 R5 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEN                        R5 R1 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K2 ["FacsCrossMappings"]
       15 GETTABLE                         R6 R7 R5
       16 JUMPIFEQKN                       R4 K3 [0] ; [+74]
       18 NEWTABLE                         R7 4 0
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K4 ["FacsNames"]
       23 GETTABLEKS                       R8 R8 K5 ["EyesLookLeft"]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K4 ["FacsNames"]
       28 GETTABLEKS                       R9 R9 K6 ["EyesLookRight"]
       30 SETTABLE                         R9 R7 R8
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K4 ["FacsNames"]
       34 GETTABLEKS                       R8 R8 K6 ["EyesLookRight"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K4 ["FacsNames"]
       39 GETTABLEKS                       R9 R9 K5 ["EyesLookLeft"]
       41 SETTABLE                         R9 R7 R8
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K4 ["FacsNames"]
       45 GETTABLEKS                       R8 R8 K7 ["EyesLookUp"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K4 ["FacsNames"]
       50 GETTABLEKS                       R9 R9 K7 ["EyesLookUp"]
       52 SETTABLE                         R9 R7 R8
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K4 ["FacsNames"]
       56 GETTABLEKS                       R8 R8 K8 ["EyesLookDown"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K4 ["FacsNames"]
       61 GETTABLEKS                       R9 R9 K8 ["EyesLookDown"]
       63 SETTABLE                         R9 R7 R8
       64 GETTABLE                         R8 R7 R5
       65 JUMPIFNOT                        R8 ; [+25]
       66 GETUPVAL                         R8 2
       67 GETTABLEKS                       R8 R8 K9 ["props"]
       69 GETTABLEKS                       R8 R8 K10 ["ValueChanged"]
       71 MOVE                             R9 R0
       72 NEWTABLE                         R10 0 1
       74 GETTABLE                         R11 R7 R5
       75 SETLIST                          R10 R11 1 [1]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K0 ["TRACK_TYPES"]
       80 GETTABLEKS                       R11 R11 K1 ["Facs"]
       82 LOADNIL                          R12
       83 MOVE                             R13 R3
       84 LOADN                            R14 0
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R15 R15 K9 ["props"]
       88 GETTABLEKS                       R15 R15 K11 ["Analytics"]
       90 CALL                             R8 7 0
       91 JUMPIFEQKNIL                     R6 ; [+58]
       93 GETTABLEKS                       R7 R6 K12 ["sliderGroup"]
       95 JUMPIFNOT                        R7 ; [+36]
       96 LOADN                            R8 0
       97 JUMPIFNOTLT                      R8 R4 ; [+34]
       99 LOADNIL                          R8
      100 GETTABLEKS                       R9 R6 K13 ["indexInGroup"]
      102 JUMPIFNOTEQKN                    R9 K14 [1] ; [+3]
      104 GETTABLEN                        R8 R7 2
      105 JUMP                             ; [+1]
      106 GETTABLEN                        R8 R7 1
      107 GETUPVAL                         R9 2
      108 GETTABLEKS                       R9 R9 K9 ["props"]
      110 GETTABLEKS                       R9 R9 K10 ["ValueChanged"]
      112 MOVE                             R10 R0
      113 NEWTABLE                         R11 0 1
      115 MOVE                             R12 R8
      116 SETLIST                          R11 R12 1 [1]
      118 GETUPVAL                         R12 1
      119 GETTABLEKS                       R12 R12 K0 ["TRACK_TYPES"]
      121 GETTABLEKS                       R12 R12 K1 ["Facs"]
      123 LOADNIL                          R13
      124 MOVE                             R14 R3
      125 LOADN                            R15 0
      126 GETUPVAL                         R16 2
      127 GETTABLEKS                       R16 R16 K9 ["props"]
      129 GETTABLEKS                       R16 R16 K11 ["Analytics"]
      131 CALL                             R9 7 0
      132 GETUPVAL                         R8 2
      133 GETTABLEKS                       R8 R8 K9 ["props"]
      135 GETTABLEKS                       R8 R8 K15 ["SymmetryEnabled"]
      137 JUMPIFNOT                        R8 ; [+12]
      138 GETTABLEKS                       R8 R6 K16 ["symmetryPartner"]
      140 JUMPIFNOT                        R8 ; [+9]
      141 GETUPVAL                         R9 2
      142 GETTABLEKS                       R9 R9 K17 ["applyValueToSymmetryPartner"]
      144 MOVE                             R10 R0
      145 MOVE                             R11 R8
      146 MOVE                             R12 R2
      147 MOVE                             R13 R3
      148 MOVE                             R14 R4
      149 CALL                             R9 5 0
      150 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R5 K1 ["ValueChanged"]
        5 MOVE                             R6 R0
        6 NEWTABLE                         R7 0 1
        8 MOVE                             R8 R1
        9 SETLIST                          R7 R8 1 [1]
       11 GETUPVAL                         R9 1
       12 CALL                             R9 0 1
       13 JUMPIFNOT                        R9 ; [+6]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K2 ["TRACK_TYPES"]
       17 GETTABLEKS                       R8 R8 K3 ["Facs"]
       19 JUMP                             ; [+1]
       20 MOVE                             R8 R2
       21 LOADNIL                          R9
       22 MOVE                             R10 R3
       23 MOVE                             R11 R4
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K0 ["props"]
       27 GETTABLEKS                       R12 R12 K4 ["Analytics"]
       29 CALL                             R5 7 0
       30 JUMPIFEQKNIL                     R4 ; [+4]
       32 LOADN                            R5 0
       33 JUMPIFNOTLE                      R4 R5 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K5 ["FacsCrossMappings"]
       39 GETTABLE                         R5 R6 R1
       40 GETTABLEKS                       R6 R5 K6 ["sliderGroup"]
       42 JUMPIF                           R6 ; [+1]
       43 RETURN                           R0 0
       44 LOADNIL                          R7
       45 GETTABLEKS                       R8 R5 K7 ["indexInGroup"]
       47 JUMPIFNOTEQKN                    R8 K8 [1] ; [+3]
       49 GETTABLEN                        R7 R6 2
       50 JUMP                             ; [+1]
       51 GETTABLEN                        R7 R6 1
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K0 ["props"]
       55 GETTABLEKS                       R8 R8 K1 ["ValueChanged"]
       57 MOVE                             R9 R0
       58 NEWTABLE                         R10 0 1
       60 MOVE                             R11 R7
       61 SETLIST                          R10 R11 1 [1]
       63 GETUPVAL                         R12 1
       64 CALL                             R12 0 1
       65 JUMPIFNOT                        R12 ; [+6]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K2 ["TRACK_TYPES"]
       69 GETTABLEKS                       R11 R11 K3 ["Facs"]
       71 JUMP                             ; [+1]
       72 MOVE                             R11 R2
       73 LOADNIL                          R12
       74 MOVE                             R13 R3
       75 LOADN                            R14 0
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K0 ["props"]
       79 GETTABLEKS                       R15 R15 K4 ["Analytics"]
       81 CALL                             R8 7 0
       82 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["ValueChanged"]
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K2 ["List"]
        9 GETTABLEKS                       R5 R5 K3 ["join"]
       11 GETUPVAL                         R6 3
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 MOVE                             R6 R0
       15 GETUPVAL                         R7 4
       16 GETUPVAL                         R8 5
       17 MOVE                             R9 R2
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K0 ["props"]
       21 GETTABLEKS                       R10 R10 K4 ["Analytics"]
       23 CALL                             R3 7 0
       24 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["props"]
        3 GETTABLEKS                       R6 R6 K1 ["AnimationData"]
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K2 ["isChannelAnimation"]
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 JUMPIF                           R7 ; [+18]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K0 ["props"]
       14 GETTABLEKS                       R7 R7 K3 ["ValueChanged"]
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 MOVE                             R10 R2
       19 MOVE                             R11 R3
       20 MOVE                             R12 R4
       21 MOVE                             R13 R5
       22 GETUPVAL                         R14 0
       23 GETTABLEKS                       R14 R14 K0 ["props"]
       25 GETTABLEKS                       R14 R14 K4 ["Analytics"]
       27 CALL                             R7 7 0
       28 JUMP                             ; [+64]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K0 ["props"]
       32 GETTABLEKS                       R7 R7 K5 ["DefaultEulerAnglesOrder"]
       34 GETTABLEN                        R8 R1 1
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K6 ["getTrack"]
       38 MOVE                             R10 R6
       39 MOVE                             R11 R0
       40 NEWTABLE                         R12 0 1
       42 MOVE                             R13 R8
       43 SETLIST                          R12 R13 1 [1]
       45 CALL                             R9 3 1
       46 JUMPIFNOT                        R9 ; [+31]
       47 GETTABLEKS                       R10 R9 K7 ["Components"]
       49 JUMPIFNOT                        R10 ; [+28]
       50 GETTABLEKS                       R11 R9 K7 ["Components"]
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R12 R12 K8 ["PROPERTY_KEYS"]
       55 GETTABLEKS                       R12 R12 K9 ["Rotation"]
       57 GETTABLE                         R10 R11 R12
       58 JUMPIFNOT                        R10 ; [+19]
       59 GETTABLEKS                       R11 R9 K7 ["Components"]
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K8 ["PROPERTY_KEYS"]
       64 GETTABLEKS                       R12 R12 K9 ["Rotation"]
       66 GETTABLE                         R10 R11 R12
       67 GETTABLEKS                       R3 R10 K10 ["Type"]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R10 R10 K11 ["TRACK_TYPES"]
       72 GETTABLEKS                       R10 R10 K12 ["EulerAngles"]
       74 JUMPIFNOTEQ                      R3 R10 ; [+3]
       76 GETTABLEKS                       R7 R9 K13 ["EulerAnglesOrder"]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K14 ["traverseValue"]
       81 MOVE                             R11 R2
       82 MOVE                             R12 R5
       83 NEWCLOSURE                       R13 P0
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R1
       88 CAPTURE                          REF R3
       89 CAPTURE                          VAL R4
       90 MOVE                             R14 R3
       91 MOVE                             R15 R7
       92 CALL                             R10 5 0
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K11 ["TRACK_TYPES"]
       96 GETTABLEKS                       R7 R7 K15 ["Facs"]
       98 JUMPIFNOTEQ                      R2 R7 ; [+10]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R7 R7 K16 ["applyValueToFacsSliderPartners"]
      103 MOVE                             R8 R0
      104 MOVE                             R9 R1
      105 MOVE                             R10 R2
      106 MOVE                             R11 R4
      107 MOVE                             R12 R5
      108 CALL                             R7 5 0
      109 CLOSEUPVALS                      R3
      110 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PromoteKeyframeSequence"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["props"]
       14 GETTABLEKS                       R0 R0 K3 ["SwitchEditorMode"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K4 ["EDITOR_MODE"]
       19 GETTABLEKS                       R1 R1 K5 ["CurveCanvas"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K2 ["Analytics"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K13 [{[1], ["TrackListWidth"], ["ikTargetInstanceName"] = , ["ikTargetPath"] = , ["showAddIkTargetPrompt"] = False, ["showSelectIkTargetPrompt"] = False, ["showContextMenu"] = False, ["showChangeFPSPrompt"] = False, ["showChangeGridSpeedPrompt"] = False, ["showChangePlaybackSpeedPrompt"] = False, ["showPromotePrompt"] = False}]
        1 GETIMPORT                        R2 K16 [Vector2.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K17 ["TRACK_LIST_START_WIDTH"]
        9 SETTABLEKS                       R2 R1 K1 ["TrackListWidth"]
       11 SETTABLEKS                       R1 R0 K18 ["state"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K19 ["nameToPart"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["showChangeFPSPrompt"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K20 ["hideChangeFPSPrompt"]
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["showChangeGridSpeedPrompt"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K21 ["hideChangeGridSpeedPrompt"]
       33 NEWCLOSURE                       R1 P4
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K11 ["showChangePlaybackSpeedPrompt"]
       37 NEWCLOSURE                       R1 P5
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K22 ["hideChangePlaybackSpeedPrompt"]
       41 NEWCLOSURE                       R1 P6
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K5 ["showAddIkTargetPrompt"]
       45 NEWCLOSURE                       R1 P7
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U1
       48 SETTABLEKS                       R1 R0 K23 ["hideAddIkTargetPrompt"]
       50 NEWCLOSURE                       R1 P8
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K7 ["showSelectIkTargetPrompt"]
       54 NEWCLOSURE                       R1 P9
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R1 R0 K24 ["hideSelectIkTargetPrompt"]
       59 NEWCLOSURE                       R1 P10
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U0
       62 SETTABLEKS                       R1 R0 K25 ["hideReduceKeyframesDialog"]
       64 NEWCLOSURE                       R1 P11
       65 CAPTURE                          VAL R0
       66 NEWCLOSURE                       R2 P12
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R2 R0 K26 ["onWheelTick"]
       70 NEWCLOSURE                       R2 P13
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U0
       73 SETTABLEKS                       R2 R0 K27 ["onSizeUpdate"]
       75 NEWCLOSURE                       R2 P14
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U0
       78 SETTABLEKS                       R2 R0 K28 ["showMenu"]
       80 NEWCLOSURE                       R2 P15
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R2 R0 K29 ["hideMenu"]
       84 NEWCLOSURE                       R2 P16
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R2 R0 K12 ["showPromotePrompt"]
       88 NEWCLOSURE                       R2 P17
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K30 ["hidePromotePrompt"]
       92 NEWCLOSURE                       R2 P18
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K31 ["cancelCreateFromVideo"]
       96 NEWCLOSURE                       R2 P19
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R2 R0 K32 ["updateTrackListWidth"]
      101 NEWCLOSURE                       R2 P20
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          UPVAL U3
      105 SETTABLEKS                       R2 R0 K33 ["controlSelectTrack"]
      107 NEWCLOSURE                       R2 P21
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R2 R0 K34 ["shiftSelectTrack"]
      111 NEWCLOSURE                       R2 P22
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U4
      114 SETTABLEKS                       R2 R0 K35 ["onTrackSelected"]
      116 NEWCLOSURE                       R2 P23
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R2 R0 K36 ["addTrackWrapper"]
      120 NEWCLOSURE                       R2 P24
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R2 R0 K37 ["attachEditorWrapper"]
      124 NEWCLOSURE                       R2 P25
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          UPVAL U0
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R2 R0 K38 ["applyValueToFacsSliderPartners"]
      130 NEWCLOSURE                       R2 P26
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          UPVAL U0
      134 SETTABLEKS                       R2 R0 K39 ["applyValueToSymmetryPartner"]
      136 NEWCLOSURE                       R2 P27
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          UPVAL U6
      141 CAPTURE                          UPVAL U3
      142 SETTABLEKS                       R2 R0 K40 ["onValueChanged"]
      144 NEWCLOSURE                       R2 P28
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U0
      147 SETTABLEKS                       R2 R0 K41 ["promoteKeyframeSequence"]
      149 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R1 K0 ["RootInstance"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["RootInstance"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETIMPORT                        R2 K3 [next]
       10 GETTABLEKS                       R3 R0 K4 ["nameToPart"]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+29]
       15 GETTABLEKS                       R2 R0 K1 ["props"]
       17 GETTABLEKS                       R2 R2 K0 ["RootInstance"]
       19 JUMPIFEQKNIL                     R2 ; [+23]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["getRigInfo"]
       24 GETTABLEKS                       R3 R0 K1 ["props"]
       26 GETTABLEKS                       R3 R3 K0 ["RootInstance"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R2 K6 ["Parts"]
       31 GETIMPORT                        R4 K8 [ipairs]
       33 MOVE                             R5 R3
       34 CALL                             R4 1 3
       35 FORGPREP_INEXT                   R4
       36 GETTABLEKS                       R9 R0 K4 ["nameToPart"]
       38 GETTABLEKS                       R10 R8 K9 ["Name"]
       40 SETTABLE                         R8 R9 R10
       41 FORGLOOP                         R4 2 [inext] ; [-6]
       43 GETTABLEKS                       R2 R1 K10 ["Playhead"]
       45 GETTABLEKS                       R3 R0 K1 ["props"]
       47 GETTABLEKS                       R3 R3 K10 ["Playhead"]
       49 JUMPIFEQ                         R2 R3 ; [+16]
       51 GETTABLEKS                       R2 R0 K1 ["props"]
       53 GETTABLEKS                       R2 R2 K11 ["Signals"]
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K12 ["SIGNAL_KEYS"]
       58 GETTABLEKS                       R4 R4 K13 ["ScrubberChanged"]
       60 NAMECALL                         R2 R2 K14 ["get"]
       62 CALL                             R2 2 1
       63 NAMECALL                         R2 R2 K15 ["Fire"]
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetLastSelectedPath"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["SetSelectedTracks"]
        8 NEWTABLE                         R1 0 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetEventEditingTick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isUp"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["MoveSelectedTrack"]
       10 LOADN                            R2 -1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["isDown"]
       16 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K2 ["MoveSelectedTrack"]
       23 LOADN                            R2 1
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K4 ["isLeft"]
       29 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       31 CALL                             R1 1 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K5 ["CloseSelectedTracks"]
       36 GETUPVAL                         R2 2
       37 CALL                             R1 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K6 ["isRight"]
       42 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       44 CALL                             R1 1 1
       45 JUMPIFNOT                        R1 ; [+6]
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K7 ["ExpandSelectedTracks"]
       49 GETUPVAL                         R2 2
       50 CALL                             R1 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K8 ["isControl"]
       55 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       57 CALL                             R1 1 1
       58 JUMPIFNOT                        R1 ; [+5]
       59 GETUPVAL                         R1 3
       60 LOADB                            R2 1
       61 SETTABLEKS                       R2 R1 K9 ["controlDown"]
       63 RETURN                           R0 0
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K10 ["isShift"]
       67 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       69 CALL                             R1 1 1
       70 JUMPIFNOT                        R1 ; [+4]
       71 GETUPVAL                         R1 3
       72 LOADB                            R2 1
       73 SETTABLEKS                       R2 R1 K11 ["shiftDown"]
       75 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isControl"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["controlDown"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["isShift"]
       15 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K4 ["shiftDown"]
       23 RETURN                           R0 0

PROTO_36:
        0 JUMPIFNOT                        R0 ; [+17]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["AddTargetToEndEffector"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["state"]
        9 GETTABLEKS                       R2 R2 K3 ["ikTargetInstanceName"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["state"]
       14 GETTABLEKS                       R3 R3 K4 ["ikTargetPath"]
       16 MOVE                             R4 R0
       17 CALL                             R1 3 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K5 ["hideAddIkTargetPrompt"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_37:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["SetIkTargetInstance"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["state"]
        9 GETTABLEKS                       R2 R2 K3 ["ikTargetPath"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["hideSelectIkTargetPrompt"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 LOADN                            R6 0
        9 GETTABLEKS                       R7 R1 K3 ["Active"]
       11 GETTABLEKS                       R8 R1 K4 ["Playhead"]
       13 GETTABLEKS                       R9 R1 K5 ["TimelineUnit"]
       15 GETTABLEKS                       R10 R1 K6 ["EditingLength"]
       17 GETTABLEKS                       R11 R1 K7 ["TopTrackIndex"]
       19 GETTABLEKS                       R12 R2 K8 ["TrackListWidth"]
       21 GETTABLEKS                       R13 R1 K9 ["Tracks"]
       23 GETTABLEKS                       R14 R1 K10 ["UnusedTracks"]
       25 GETTABLEKS                       R15 R1 K11 ["UnusedFacs"]
       27 GETTABLEKS                       R16 R1 K12 ["HorizontalScroll"]
       29 GETTABLEKS                       R17 R1 K13 ["HorizontalZoom"]
       31 GETTABLEKS                       R18 R1 K14 ["VerticalScroll"]
       33 GETTABLEKS                       R19 R1 K15 ["VerticalZoom"]
       35 GETTABLEKS                       R20 R1 K16 ["AnimationData"]
       37 GETTABLEKS                       R21 R1 K17 ["ShowEvents"]
       39 GETTABLEKS                       R22 R1 K18 ["SelectedTracks"]
       41 GETTABLEKS                       R23 R1 K19 ["RootInstance"]
       43 GETTABLEKS                       R24 R2 K20 ["AbsoluteSize"]
       45 GETTABLEKS                       R26 R1 K21 ["PlayState"]
       47 GETUPVAL                         R27 0
       48 GETTABLEKS                       R27 R27 K22 ["PLAY_STATE"]
       50 GETTABLEKS                       R27 R27 K23 ["Record"]
       52 JUMPIFEQ                         R26 R27 ; [+2]
       54 LOADB                            R25 0 +1
       55 LOADB                            R25 1
       56 GETTABLEKS                       R26 R1 K24 ["inReviewState"]
       58 GETTABLEKS                       R27 R2 K25 ["showAddIkTargetPrompt"]
       60 GETTABLEKS                       R28 R2 K26 ["showChangeFPSPrompt"]
       62 GETTABLEKS                       R29 R2 K27 ["showChangeGridSpeedPrompt"]
       64 GETTABLEKS                       R30 R2 K28 ["showChangePlaybackSpeedPrompt"]
       66 JUMPIFNOTEQKNIL                  R20 ; [+2]
       68 LOADB                            R31 0 +1
       69 LOADB                            R31 1
       70 GETTABLEKS                       R32 R1 K29 ["VisualizeGrid"]
       72 GETTABLEKS                       R33 R2 K30 ["showPromotePrompt"]
       74 GETTABLEKS                       R34 R2 K31 ["showSelectIkTargetPrompt"]
       76 GETUPVAL                         R35 1
       77 GETTABLEKS                       R35 R35 K32 ["isChannelAnimation"]
       79 MOVE                             R36 R20
       80 CALL                             R35 1 1
       81 GETTABLEKS                       R36 R1 K33 ["CreatingAnimationFromVideo"]
       83 GETTABLEKS                       R37 R1 K34 ["AnimationImportProgress"]
       85 GETTABLEKS                       R38 R1 K35 ["AnimationImportStatus"]
       87 JUMPIFNOT                        R20 ; [+17]
       88 GETUPVAL                         R39 2
       89 GETTABLEKS                       R39 R39 K36 ["getZoomRange"]
       91 GETTABLEKS                       R40 R1 K16 ["AnimationData"]
       93 MOVE                             R41 R16
       94 MOVE                             R42 R17
       95 MOVE                             R43 R10
       96 CALL                             R39 4 1
       97 GETTABLEKS                       R4 R39 K37 ["Start"]
       99 GETTABLEKS                       R5 R39 K38 ["End"]
      101 GETTABLEKS                       R40 R20 K39 ["Metadata"]
      103 GETTABLEKS                       R6 R40 K40 ["EndTick"]
      105 AND                              R21 R21 R31
      106 LOADNIL                          R39
      107 GETTABLEKS                       R40 R1 K19 ["RootInstance"]
      109 JUMPIFNOT                        R40 ; [+10]
      110 GETTABLEKS                       R40 R1 K19 ["RootInstance"]
      112 GETTABLEKS                       R40 R40 K41 ["Name"]
      114 JUMPIFNOT                        R40 ; [+5]
      115 GETTABLEKS                       R40 R1 K19 ["RootInstance"]
      117 GETTABLEKS                       R39 R40 K41 ["Name"]
      119 JUMP                             ; [+1]
      120 LOADK                            R39 K42 [""]
      121 GETTABLEKS                       R41 R1 K44 ["ZIndex"]
      123 ORK                              R40 R41 K43 [1]
      124 GETTABLEKS                       R41 R1 K45 ["Position"]
      126 GETTABLEKS                       R42 R1 K46 ["Size"]
      128 JUMPIFNOT                        R21 ; [+4]
      129 GETUPVAL                         R44 0
      130 GETTABLEKS                       R44 R44 K47 ["TRACK_HEIGHT"]
      132 JUMPIF                           R44 ; [+1]
      133 LOADN                            R44 0
      134 GETUPVAL                         R45 0
      135 GETTABLEKS                       R45 R45 K48 ["SUMMARY_TRACK_HEIGHT"]
      137 ADD                              R43 R44 R45
      138 GETTABLEKS                       R45 R1 K49 ["EditorMode"]
      140 GETUPVAL                         R46 0
      141 GETTABLEKS                       R46 R46 K50 ["EDITOR_MODE"]
      143 GETTABLEKS                       R46 R46 K51 ["DopeSheet"]
      145 JUMPIFEQ                         R45 R46 ; [+2]
      147 LOADB                            R44 0 +1
      148 LOADB                            R44 1
      149 GETTABLEKS                       R46 R1 K52 ["ReduceKeyframesDialogMode"]
      151 GETUPVAL                         R47 0
      152 GETTABLEKS                       R47 R47 K53 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
      154 GETTABLEKS                       R47 R47 K54 ["Hidden"]
      156 JUMPIFNOTEQ                      R46 R47 ; [+2]
      158 LOADB                            R45 0 +1
      159 LOADB                            R45 1
      160 GETTABLEKS                       R46 R1 K55 ["LegacyAnimationInstances"]
      162 JUMPIFNOT                        R46 ; [+8]
      163 GETTABLEKS                       R48 R1 K55 ["LegacyAnimationInstances"]
      165 LENGTH                           R47 R48
      166 LOADN                            R48 0
      167 JUMPIFLT                         R48 R47 ; [+2]
      169 LOADB                            R46 0 +1
      170 LOADB                            R46 1
      171 GETTABLEKS                       R47 R1 K56 ["GridSpeed"]
      173 GETUPVAL                         R48 0
      174 GETTABLEKS                       R48 R48 K57 ["GRIDSPEEDS"]
      176 GETTABLEKS                       R48 R48 K58 ["FromRig"]
      178 JUMPIFNOTEQ                      R47 R48 ; [+15]
      180 GETTABLEKS                       R48 R1 K19 ["RootInstance"]
      182 JUMPIFNOT                        R48 ; [+6]
      183 GETTABLEKS                       R48 R1 K19 ["RootInstance"]
      185 LOADK                            R50 K59 ["Humanoid"]
      186 NAMECALL                         R48 R48 K60 ["FindFirstChildOfClass"]
      188 CALL                             R48 2 1
      189 JUMPIFNOT                        R48 ; [+3]
      190 GETTABLEKS                       R47 R48 K61 ["WalkSpeed"]
      192 JUMP                             ; [+1]
      193 LOADN                            R47 0
      194 GETUPVAL                         R48 3
      195 GETTABLEKS                       R48 R48 K62 ["createElement"]
      197 LOADK                            R49 K63 ["Frame"]
      198 NEWTABLE                         R50 8 0
      200 LOADN                            R51 1
      201 SETTABLEKS                       R51 R50 K64 ["BackgroundTransparency"]
      203 SETTABLEKS                       R40 R50 K44 ["ZIndex"]
      205 SETTABLEKS                       R41 R50 K45 ["Position"]
      207 SETTABLEKS                       R42 R50 K46 ["Size"]
      209 GETUPVAL                         R51 3
      210 GETTABLEKS                       R51 R51 K65 ["Change"]
      212 GETTABLEKS                       R51 R51 K20 ["AbsoluteSize"]
      214 GETTABLEKS                       R52 R0 K66 ["onSizeUpdate"]
      216 SETTABLE                         R52 R50 R51
      217 DUPTABLE                         R51 K89 [{"Layout", "TrackListAndControlContainer", "TrackListBorder", "TrackEditor", "SettingsAndVerticalScrollBar", "StartScreen", "Playback", "FacialAnimationRecorder", "RecordingModeCover", "InstanceSelector", "FloorGrid", "TrackActions", "InactiveCover", "ProgressScreen", "ChangeFPSPrompt", "ChangeGridSpeedPrompt", "ChangePlaybackSpeedPrompt", "PromotePrompt", "ReduceKeyframesDialog", "MigrationDialog", "AddIkTargetPrompt", "SelectIkTargetPrompt"}]
      218 GETUPVAL                         R52 3
      219 GETTABLEKS                       R52 R52 K62 ["createElement"]
      221 LOADK                            R53 K90 ["UIListLayout"]
      222 DUPTABLE                         R54 K95 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
      223 GETIMPORT                        R55 K98 [Enum.FillDirection.Horizontal]
      225 SETTABLEKS                       R55 R54 K91 ["FillDirection"]
      227 GETIMPORT                        R55 K100 [Enum.HorizontalAlignment.Left]
      229 SETTABLEKS                       R55 R54 K92 ["HorizontalAlignment"]
      231 GETIMPORT                        R55 K102 [Enum.SortOrder.LayoutOrder]
      233 SETTABLEKS                       R55 R54 K93 ["SortOrder"]
      235 GETIMPORT                        R55 K104 [Enum.VerticalAlignment.Top]
      237 SETTABLEKS                       R55 R54 K94 ["VerticalAlignment"]
      239 CALL                             R52 2 1
      240 SETTABLEKS                       R52 R51 K67 ["Layout"]
      242 GETUPVAL                         R52 3
      243 GETTABLEKS                       R52 R52 K62 ["createElement"]
      245 LOADK                            R53 K63 ["Frame"]
      246 DUPTABLE                         R54 K109 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"], ["LayoutOrder"] = 0, ["ZIndex"] = 2}]
      247 GETTABLEKS                       R55 R3 K110 ["backgroundColor"]
      249 SETTABLEKS                       R55 R54 K106 ["BackgroundColor3"]
      251 GETIMPORT                        R55 K113 [UDim2.new]
      253 LOADN                            R56 0
      254 MOVE                             R57 R12
      255 LOADN                            R58 1
      256 LOADN                            R59 0
      257 CALL                             R55 4 1
      258 SETTABLEKS                       R55 R54 K46 ["Size"]
      260 DUPTABLE                         R55 K116 [{"Layout", "AnimationControlPanel", "EventsAndTracks"}]
      261 GETUPVAL                         R56 3
      262 GETTABLEKS                       R56 R56 K62 ["createElement"]
      264 LOADK                            R57 K90 ["UIListLayout"]
      265 DUPTABLE                         R58 K117 [{"FillDirection", "SortOrder"}]
      266 GETIMPORT                        R59 K119 [Enum.FillDirection.Vertical]
      268 SETTABLEKS                       R59 R58 K91 ["FillDirection"]
      270 GETIMPORT                        R59 K102 [Enum.SortOrder.LayoutOrder]
      272 SETTABLEKS                       R59 R58 K93 ["SortOrder"]
      274 CALL                             R56 2 1
      275 SETTABLEKS                       R56 R55 K67 ["Layout"]
      277 GETUPVAL                         R56 3
      278 GETTABLEKS                       R56 R56 K62 ["createElement"]
      280 GETUPVAL                         R57 4
      281 DUPTABLE                         R58 K123 [{["StartTick"], ["EndTick"], ["Playhead"], ["EditingLength"], ["AnimationData"], ["IsLegacyAnimSaves"], ["TimelineUnit"], ["IsChannelAnimation"], ["LayoutOrder"] = 0}]
      282 SETTABLEKS                       R4 R58 K120 ["StartTick"]
      284 SETTABLEKS                       R5 R58 K40 ["EndTick"]
      286 SETTABLEKS                       R8 R58 K4 ["Playhead"]
      288 SETTABLEKS                       R10 R58 K6 ["EditingLength"]
      290 GETTABLEKS                       R59 R1 K16 ["AnimationData"]
      292 SETTABLEKS                       R59 R58 K16 ["AnimationData"]
      294 GETTABLEKS                       R59 R1 K121 ["IsLegacyAnimSaves"]
      296 SETTABLEKS                       R59 R58 K121 ["IsLegacyAnimSaves"]
      298 SETTABLEKS                       R9 R58 K5 ["TimelineUnit"]
      300 SETTABLEKS                       R35 R58 K122 ["IsChannelAnimation"]
      302 CALL                             R56 2 1
      303 SETTABLEKS                       R56 R55 K114 ["AnimationControlPanel"]
      305 GETUPVAL                         R56 3
      306 GETTABLEKS                       R56 R56 K62 ["createElement"]
      308 LOADK                            R57 K124 ["ImageButton"]
      309 NEWTABLE                         R58 8 0
      311 GETIMPORT                        R59 K113 [UDim2.new]
      313 LOADN                            R60 0
      314 MOVE                             R61 R12
      315 LOADN                            R62 1
      316 GETUPVAL                         R64 0
      317 GETTABLEKS                       R64 R64 K125 ["TIMELINE_HEIGHT"]
      319 MINUS                            R63 R64
      320 CALL                             R59 4 1
      321 SETTABLEKS                       R59 R58 K46 ["Size"]
      323 LOADN                            R59 1
      324 SETTABLEKS                       R59 R58 K64 ["BackgroundTransparency"]
      326 LOADN                            R59 1
      327 SETTABLEKS                       R59 R58 K126 ["ImageTransparency"]
      329 LOADN                            R59 1
      330 SETTABLEKS                       R59 R58 K101 ["LayoutOrder"]
      332 GETUPVAL                         R59 3
      333 GETTABLEKS                       R59 R59 K127 ["Event"]
      335 GETTABLEKS                       R59 R59 K128 ["Activated"]
      337 NEWCLOSURE                       R60 P0
      338 CAPTURE                          VAL R1
      339 SETTABLE                         R60 R58 R59
      340 DUPTABLE                         R59 K133 [{"Layout", "EventsTitle", "TrackListAndScrollBar", "KeyboardListener", "IgnoreLayout"}]
      341 GETUPVAL                         R60 3
      342 GETTABLEKS                       R60 R60 K62 ["createElement"]
      344 LOADK                            R61 K90 ["UIListLayout"]
      345 DUPTABLE                         R62 K117 [{"FillDirection", "SortOrder"}]
      346 GETIMPORT                        R63 K119 [Enum.FillDirection.Vertical]
      348 SETTABLEKS                       R63 R62 K91 ["FillDirection"]
      350 GETIMPORT                        R63 K102 [Enum.SortOrder.LayoutOrder]
      352 SETTABLEKS                       R63 R62 K93 ["SortOrder"]
      354 CALL                             R60 2 1
      355 SETTABLEKS                       R60 R59 K67 ["Layout"]
      357 MOVE                             R60 R21
      358 JUMPIFNOT                        R60 ; [+11]
      359 GETUPVAL                         R60 3
      360 GETTABLEKS                       R60 R60 K62 ["createElement"]
      362 GETUPVAL                         R61 5
      363 DUPTABLE                         R62 K136 [{["LayoutOrder"] = 0, ["Indent"] = 1, ["OnButtonClick"]}]
      364 NEWCLOSURE                       R63 P1
      365 CAPTURE                          VAL R1
      366 CAPTURE                          VAL R8
      367 SETTABLEKS                       R63 R62 K135 ["OnButtonClick"]
      369 CALL                             R60 2 1
      370 SETTABLEKS                       R60 R59 K129 ["EventsTitle"]
      372 GETUPVAL                         R60 3
      373 GETTABLEKS                       R60 R60 K62 ["createElement"]
      375 LOADK                            R61 K63 ["Frame"]
      376 DUPTABLE                         R62 K137 [{["Size"], ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      377 GETIMPORT                        R63 K113 [UDim2.new]
      379 LOADN                            R64 1
      380 LOADN                            R65 0
      381 LOADN                            R66 1
      382 JUMPIFNOT                        R21 ; [+5]
      383 GETUPVAL                         R68 0
      384 GETTABLEKS                       R68 R68 K47 ["TRACK_HEIGHT"]
      386 MINUS                            R67 R68
      387 JUMPIF                           R67 ; [+1]
      388 LOADN                            R67 0
      389 CALL                             R63 4 1
      390 SETTABLEKS                       R63 R62 K46 ["Size"]
      392 DUPTABLE                         R63 K140 [{"TrackList", "TrackScrollbarFrame"}]
      393 GETUPVAL                         R64 3
      394 GETTABLEKS                       R64 R64 K62 ["createElement"]
      396 GETUPVAL                         R65 6
      397 DUPTABLE                         R66 K149 [{"Size", "TopTrackIndex", "Tracks", "SelectedTracks", "UnusedTracks", "UnusedFacs", "AnimationData", "Playhead", "RootName", "OnWheelTick", "OpenContextMenu", "ToggleTrackExpanded", "OnTrackAdded", "OnValueChanged", "OnChangeBegan", "OnTrackSelected"}]
      398 GETIMPORT                        R67 K113 [UDim2.new]
      400 LOADN                            R68 1
      401 GETUPVAL                         R71 0
      402 GETTABLEKS                       R71 R71 K150 ["SCROLL_BAR_SIZE"]
      404 MINUS                            R70 R71
      405 SUBK                             R69 R70 K43 [1]
      406 LOADN                            R70 1
      407 LOADN                            R71 0
      408 CALL                             R67 4 1
      409 SETTABLEKS                       R67 R66 K46 ["Size"]
      411 SETTABLEKS                       R11 R66 K7 ["TopTrackIndex"]
      413 SETTABLEKS                       R13 R66 K9 ["Tracks"]
      415 SETTABLEKS                       R22 R66 K18 ["SelectedTracks"]
      417 SETTABLEKS                       R14 R66 K10 ["UnusedTracks"]
      419 SETTABLEKS                       R15 R66 K11 ["UnusedFacs"]
      421 SETTABLEKS                       R20 R66 K16 ["AnimationData"]
      423 SETTABLEKS                       R8 R66 K4 ["Playhead"]
      425 SETTABLEKS                       R39 R66 K141 ["RootName"]
      427 GETTABLEKS                       R67 R0 K151 ["onWheelTick"]
      429 SETTABLEKS                       R67 R66 K142 ["OnWheelTick"]
      431 GETTABLEKS                       R67 R0 K152 ["showMenu"]
      433 SETTABLEKS                       R67 R66 K143 ["OpenContextMenu"]
      435 GETTABLEKS                       R67 R1 K153 ["SetTracksExpanded"]
      437 SETTABLEKS                       R67 R66 K144 ["ToggleTrackExpanded"]
      439 GETTABLEKS                       R67 R0 K154 ["addTrackWrapper"]
      441 SETTABLEKS                       R67 R66 K145 ["OnTrackAdded"]
      443 GETTABLEKS                       R67 R0 K155 ["onValueChanged"]
      445 SETTABLEKS                       R67 R66 K146 ["OnValueChanged"]
      447 GETTABLEKS                       R67 R1 K156 ["AddWaypoint"]
      449 SETTABLEKS                       R67 R66 K147 ["OnChangeBegan"]
      451 GETTABLEKS                       R67 R0 K157 ["onTrackSelected"]
      453 SETTABLEKS                       R67 R66 K148 ["OnTrackSelected"]
      455 CALL                             R64 2 1
      456 SETTABLEKS                       R64 R63 K138 ["TrackList"]
      458 GETUPVAL                         R64 3
      459 GETTABLEKS                       R64 R64 K62 ["createElement"]
      461 LOADK                            R65 K63 ["Frame"]
      462 DUPTABLE                         R66 K158 [{"Size", "Position", "BackgroundColor3"}]
      463 GETIMPORT                        R67 K113 [UDim2.new]
      465 LOADN                            R68 0
      466 GETUPVAL                         R69 0
      467 GETTABLEKS                       R69 R69 K150 ["SCROLL_BAR_SIZE"]
      469 LOADN                            R70 1
      470 LOADN                            R71 0
      471 CALL                             R67 4 1
      472 SETTABLEKS                       R67 R66 K46 ["Size"]
      474 GETIMPORT                        R67 K113 [UDim2.new]
      476 LOADN                            R68 1
      477 GETUPVAL                         R70 0
      478 GETTABLEKS                       R70 R70 K150 ["SCROLL_BAR_SIZE"]
      480 MINUS                            R69 R70
      481 LOADN                            R70 0
      482 LOADN                            R71 0
      483 CALL                             R67 4 1
      484 SETTABLEKS                       R67 R66 K45 ["Position"]
      486 GETTABLEKS                       R67 R3 K159 ["scrollBarTheme"]
      488 GETTABLEKS                       R67 R67 K110 ["backgroundColor"]
      490 SETTABLEKS                       R67 R66 K106 ["BackgroundColor3"]
      492 DUPTABLE                         R67 K161 [{"TrackScrollbar"}]
      493 GETUPVAL                         R68 3
      494 GETTABLEKS                       R68 R68 K62 ["createElement"]
      496 GETUPVAL                         R69 7
      497 DUPTABLE                         R70 K164 [{"Size", "TopTrackIndex", "NumTracks", "SetTopTrackIndex", "OnWheelTick"}]
      498 GETIMPORT                        R71 K113 [UDim2.new]
      500 LOADN                            R72 1
      501 LOADN                            R73 0
      502 LOADN                            R74 1
      503 GETUPVAL                         R77 0
      504 GETTABLEKS                       R77 R77 K150 ["SCROLL_BAR_SIZE"]
      506 MINUS                            R76 R77
      507 SUBK                             R75 R76 K43 [1]
      508 CALL                             R71 4 1
      509 SETTABLEKS                       R71 R70 K46 ["Size"]
      511 SETTABLEKS                       R11 R70 K7 ["TopTrackIndex"]
      513 JUMPIFNOT                        R13 ; [+2]
      514 LENGTH                           R71 R13
      515 JUMPIF                           R71 ; [+1]
      516 LOADN                            R71 0
      517 SETTABLEKS                       R71 R70 K162 ["NumTracks"]
      519 GETTABLEKS                       R71 R0 K0 ["props"]
      521 GETTABLEKS                       R71 R71 K163 ["SetTopTrackIndex"]
      523 SETTABLEKS                       R71 R70 K163 ["SetTopTrackIndex"]
      525 GETTABLEKS                       R71 R0 K151 ["onWheelTick"]
      527 SETTABLEKS                       R71 R70 K142 ["OnWheelTick"]
      529 CALL                             R68 2 1
      530 SETTABLEKS                       R68 R67 K160 ["TrackScrollbar"]
      532 CALL                             R64 3 1
      533 SETTABLEKS                       R64 R63 K139 ["TrackScrollbarFrame"]
      535 CALL                             R60 3 1
      536 SETTABLEKS                       R60 R59 K130 ["TrackListAndScrollBar"]
      538 GETUPVAL                         R60 3
      539 GETTABLEKS                       R60 R60 K62 ["createElement"]
      541 GETUPVAL                         R61 8
      542 DUPTABLE                         R62 K167 [{"OnKeyPressed", "OnKeyReleased"}]
      543 NEWCLOSURE                       R63 P2
      544 CAPTURE                          UPVAL U9
      545 CAPTURE                          VAL R1
      546 CAPTURE                          VAL R22
      547 CAPTURE                          VAL R0
      548 SETTABLEKS                       R63 R62 K165 ["OnKeyPressed"]
      550 NEWCLOSURE                       R63 P3
      551 CAPTURE                          UPVAL U9
      552 CAPTURE                          VAL R0
      553 SETTABLEKS                       R63 R62 K166 ["OnKeyReleased"]
      555 CALL                             R60 2 1
      556 SETTABLEKS                       R60 R59 K131 ["KeyboardListener"]
      558 JUMPIFNOT                        R31 ; [+35]
      559 GETUPVAL                         R60 3
      560 GETTABLEKS                       R60 R60 K62 ["createElement"]
      562 LOADK                            R61 K168 ["Folder"]
      563 NEWTABLE                         R62 0 0
      565 DUPTABLE                         R63 K170 [{"TrackColors"}]
      566 GETUPVAL                         R64 3
      567 GETTABLEKS                       R64 R64 K62 ["createElement"]
      569 GETUPVAL                         R65 10
      570 DUPTABLE                         R66 K172 [{"Tracks", "TopTrackIndex", "Position", "MaxHeight"}]
      571 SETTABLEKS                       R13 R66 K9 ["Tracks"]
      573 SETTABLEKS                       R11 R66 K7 ["TopTrackIndex"]
      575 GETIMPORT                        R67 K113 [UDim2.new]
      577 LOADN                            R68 0
      578 LOADN                            R69 0
      579 LOADN                            R70 0
      580 MOVE                             R71 R43
      581 CALL                             R67 4 1
      582 SETTABLEKS                       R67 R66 K45 ["Position"]
      584 GETTABLEKS                       R68 R24 K173 ["Y"]
      586 SUB                              R67 R68 R43
      587 SETTABLEKS                       R67 R66 K171 ["MaxHeight"]
      589 CALL                             R64 2 1
      590 SETTABLEKS                       R64 R63 K169 ["TrackColors"]
      592 CALL                             R60 3 1
      593 JUMPIF                           R60 ; [+1]
      594 LOADNIL                          R60
      595 SETTABLEKS                       R60 R59 K132 ["IgnoreLayout"]
      597 CALL                             R56 3 1
      598 SETTABLEKS                       R56 R55 K115 ["EventsAndTracks"]
      600 CALL                             R52 3 1
      601 SETTABLEKS                       R52 R51 K68 ["TrackListAndControlContainer"]
      603 GETUPVAL                         R52 3
      604 GETTABLEKS                       R52 R52 K62 ["createElement"]
      606 GETUPVAL                         R53 11
      607 DUPTABLE                         R54 K176 [{["OnDragMoved"], ["ZIndex"] = 3}]
      608 GETTABLEKS                       R55 R0 K177 ["updateTrackListWidth"]
      610 SETTABLEKS                       R55 R54 K174 ["OnDragMoved"]
      612 CALL                             R52 2 1
      613 SETTABLEKS                       R52 R51 K69 ["TrackListBorder"]
      615 MOVE                             R52 R31
      616 JUMPIFNOT                        R52 ; [+63]
      617 GETUPVAL                         R52 3
      618 GETTABLEKS                       R52 R52 K62 ["createElement"]
      620 GETUPVAL                         R53 12
      621 DUPTABLE                         R54 K182 [{["ZIndex"], ["TopTrackIndex"], ["LayoutOrder"] = 2, ["Size"], ["StartTick"], ["EndTick"], ["LastTick"], ["Playhead"], ["FrameRate"], ["TimelineUnit"], ["ShowEvents"], ["HorizontalScroll"], ["HorizontalZoom"], ["VerticalScroll"], ["VerticalZoom"], ["OnWheelTick"], ["IsChannelAnimation"], ["ColorsPosition"], ["OnPromoteRequested"]}]
      622 SETTABLEKS                       R40 R54 K44 ["ZIndex"]
      624 SETTABLEKS                       R11 R54 K7 ["TopTrackIndex"]
      626 GETIMPORT                        R55 K113 [UDim2.new]
      628 LOADN                            R56 1
      629 MINUS                            R59 R12
      630 GETUPVAL                         R60 0
      631 GETTABLEKS                       R60 R60 K150 ["SCROLL_BAR_SIZE"]
      633 SUB                              R58 R59 R60
      634 GETUPVAL                         R59 0
      635 GETTABLEKS                       R59 R59 K183 ["SCROLL_BAR_PADDING"]
      637 SUB                              R57 R58 R59
      638 LOADN                            R58 1
      639 LOADN                            R59 0
      640 CALL                             R55 4 1
      641 SETTABLEKS                       R55 R54 K46 ["Size"]
      643 SETTABLEKS                       R4 R54 K120 ["StartTick"]
      645 SETTABLEKS                       R5 R54 K40 ["EndTick"]
      647 SETTABLEKS                       R6 R54 K178 ["LastTick"]
      649 SETTABLEKS                       R8 R54 K4 ["Playhead"]
      651 GETTABLEKS                       R55 R1 K179 ["FrameRate"]
      653 SETTABLEKS                       R55 R54 K179 ["FrameRate"]
      655 SETTABLEKS                       R9 R54 K5 ["TimelineUnit"]
      657 SETTABLEKS                       R21 R54 K17 ["ShowEvents"]
      659 SETTABLEKS                       R16 R54 K12 ["HorizontalScroll"]
      661 SETTABLEKS                       R17 R54 K13 ["HorizontalZoom"]
      663 SETTABLEKS                       R18 R54 K14 ["VerticalScroll"]
      665 SETTABLEKS                       R19 R54 K15 ["VerticalZoom"]
      667 GETTABLEKS                       R55 R0 K151 ["onWheelTick"]
      669 SETTABLEKS                       R55 R54 K142 ["OnWheelTick"]
      671 SETTABLEKS                       R35 R54 K122 ["IsChannelAnimation"]
      673 SETTABLEKS                       R43 R54 K180 ["ColorsPosition"]
      675 GETTABLEKS                       R55 R0 K30 ["showPromotePrompt"]
      677 SETTABLEKS                       R55 R54 K181 ["OnPromoteRequested"]
      679 CALL                             R52 2 1
      680 SETTABLEKS                       R52 R51 K70 ["TrackEditor"]
      682 MOVE                             R52 R31
      683 JUMPIFNOT                        R52 ; [+95]
      684 GETUPVAL                         R52 3
      685 GETTABLEKS                       R52 R52 K62 ["createElement"]
      687 LOADK                            R53 K63 ["Frame"]
      688 DUPTABLE                         R54 K184 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 3}]
      689 GETIMPORT                        R55 K113 [UDim2.new]
      691 LOADN                            R56 0
      692 GETUPVAL                         R57 0
      693 GETTABLEKS                       R57 R57 K150 ["SCROLL_BAR_SIZE"]
      695 LOADN                            R58 1
      696 LOADN                            R59 0
      697 CALL                             R55 4 1
      698 SETTABLEKS                       R55 R54 K46 ["Size"]
      700 DUPTABLE                         R55 K186 [{"SettingsButton", "TrackScrollbar"}]
      701 GETUPVAL                         R56 3
      702 GETTABLEKS                       R56 R56 K62 ["createElement"]
      704 GETUPVAL                         R57 13
      705 DUPTABLE                         R58 K190 [{"OnChangeFPS", "OnChangeGridSpeed", "OnChangePlaybackSpeed"}]
      706 GETTABLEKS                       R59 R0 K26 ["showChangeFPSPrompt"]
      708 SETTABLEKS                       R59 R58 K187 ["OnChangeFPS"]
      710 GETTABLEKS                       R59 R0 K27 ["showChangeGridSpeedPrompt"]
      712 SETTABLEKS                       R59 R58 K188 ["OnChangeGridSpeed"]
      714 GETTABLEKS                       R59 R0 K28 ["showChangePlaybackSpeedPrompt"]
      716 SETTABLEKS                       R59 R58 K189 ["OnChangePlaybackSpeed"]
      718 CALL                             R56 2 1
      719 SETTABLEKS                       R56 R55 K185 ["SettingsButton"]
      721 JUMPIFNOT                        R44 ; [+53]
      722 GETUPVAL                         R56 3
      723 GETTABLEKS                       R56 R56 K62 ["createElement"]
      725 GETUPVAL                         R57 7
      726 DUPTABLE                         R58 K191 [{"Size", "Position", "TopTrackIndex", "NumTracks", "SetTopTrackIndex", "OnWheelTick"}]
      727 GETIMPORT                        R59 K113 [UDim2.new]
      729 LOADN                            R60 1
      730 LOADN                            R61 0
      731 LOADN                            R62 1
      732 GETUPVAL                         R66 0
      733 GETTABLEKS                       R66 R66 K150 ["SCROLL_BAR_SIZE"]
      735 MINUS                            R65 R66
      736 GETUPVAL                         R66 0
      737 GETTABLEKS                       R66 R66 K125 ["TIMELINE_HEIGHT"]
      739 SUB                              R64 R65 R66
      740 SUBK                             R63 R64 K43 [1]
      741 CALL                             R59 4 1
      742 SETTABLEKS                       R59 R58 K46 ["Size"]
      744 GETIMPORT                        R59 K113 [UDim2.new]
      746 LOADN                            R60 0
      747 LOADN                            R61 0
      748 LOADN                            R62 0
      749 GETUPVAL                         R63 0
      750 GETTABLEKS                       R63 R63 K125 ["TIMELINE_HEIGHT"]
      752 CALL                             R59 4 1
      753 SETTABLEKS                       R59 R58 K45 ["Position"]
      755 SETTABLEKS                       R11 R58 K7 ["TopTrackIndex"]
      757 JUMPIFNOT                        R13 ; [+2]
      758 LENGTH                           R59 R13
      759 JUMPIF                           R59 ; [+1]
      760 LOADN                            R59 0
      761 SETTABLEKS                       R59 R58 K162 ["NumTracks"]
      763 GETTABLEKS                       R59 R0 K0 ["props"]
      765 GETTABLEKS                       R59 R59 K163 ["SetTopTrackIndex"]
      767 SETTABLEKS                       R59 R58 K163 ["SetTopTrackIndex"]
      769 GETTABLEKS                       R59 R0 K151 ["onWheelTick"]
      771 SETTABLEKS                       R59 R58 K142 ["OnWheelTick"]
      773 CALL                             R56 2 1
      774 JUMPIF                           R56 ; [+1]
      775 LOADNIL                          R56
      776 SETTABLEKS                       R56 R55 K160 ["TrackScrollbar"]
      778 CALL                             R52 3 1
      779 SETTABLEKS                       R52 R51 K71 ["SettingsAndVerticalScrollBar"]
      781 NOT                              R52 R31
      782 JUMPIFNOT                        R52 ; [+27]
      783 NOT                              R52 R46
      784 JUMPIFNOT                        R52 ; [+25]
      785 GETUPVAL                         R52 3
      786 GETTABLEKS                       R52 R52 K62 ["createElement"]
      788 GETUPVAL                         R53 14
      789 DUPTABLE                         R54 K192 [{["RootInstance"], ["Size"], ["LayoutOrder"] = 2, ["PlayState"], ["inReviewState"]}]
      790 SETTABLEKS                       R23 R54 K19 ["RootInstance"]
      792 GETIMPORT                        R55 K113 [UDim2.new]
      794 LOADN                            R56 1
      795 MINUS                            R57 R12
      796 LOADN                            R58 1
      797 LOADN                            R59 0
      798 CALL                             R55 4 1
      799 SETTABLEKS                       R55 R54 K46 ["Size"]
      801 GETTABLEKS                       R55 R1 K21 ["PlayState"]
      803 SETTABLEKS                       R55 R54 K21 ["PlayState"]
      805 GETTABLEKS                       R55 R1 K24 ["inReviewState"]
      807 SETTABLEKS                       R55 R54 K24 ["inReviewState"]
      809 CALL                             R52 2 1
      810 SETTABLEKS                       R52 R51 K72 ["StartScreen"]
      812 MOVE                             R52 R7
      813 JUMPIFNOT                        R52 ; [+7]
      814 MOVE                             R52 R31
      815 JUMPIFNOT                        R52 ; [+5]
      816 GETUPVAL                         R52 3
      817 GETTABLEKS                       R52 R52 K62 ["createElement"]
      819 GETUPVAL                         R53 15
      820 CALL                             R52 1 1
      821 SETTABLEKS                       R52 R51 K73 ["Playback"]
      823 MOVE                             R52 R7
      824 JUMPIFNOT                        R52 ; [+11]
      825 GETUPVAL                         R52 16
      826 CALL                             R52 0 1
      827 JUMPIFNOT                        R52 ; [+8]
      828 JUMPIF                           R25 ; [+2]
      829 MOVE                             R52 R26
      830 JUMPIFNOT                        R52 ; [+5]
      831 GETUPVAL                         R52 3
      832 GETTABLEKS                       R52 R52 K62 ["createElement"]
      834 GETUPVAL                         R53 17
      835 CALL                             R52 1 1
      836 SETTABLEKS                       R52 R51 K74 ["FacialAnimationRecorder"]
      838 MOVE                             R52 R7
      839 JUMPIFNOT                        R52 ; [+10]
      840 GETUPVAL                         R52 16
      841 CALL                             R52 0 1
      842 JUMPIFNOT                        R52 ; [+7]
      843 MOVE                             R52 R25
      844 JUMPIFNOT                        R52 ; [+5]
      845 GETUPVAL                         R52 3
      846 GETTABLEKS                       R52 R52 K62 ["createElement"]
      848 GETUPVAL                         R53 18
      849 CALL                             R52 1 1
      850 SETTABLEKS                       R52 R51 K75 ["RecordingModeCover"]
      852 MOVE                             R52 R7
      853 JUMPIFNOT                        R52 ; [+5]
      854 GETUPVAL                         R52 3
      855 GETTABLEKS                       R52 R52 K62 ["createElement"]
      857 GETUPVAL                         R53 19
      858 CALL                             R52 1 1
      859 SETTABLEKS                       R52 R51 K76 ["InstanceSelector"]
      861 MOVE                             R52 R7
      862 JUMPIFNOT                        R52 ; [+20]
      863 MOVE                             R52 R31
      864 JUMPIFNOT                        R52 ; [+18]
      865 MOVE                             R52 R32
      866 JUMPIFNOT                        R52 ; [+16]
      867 GETUPVAL                         R52 3
      868 GETTABLEKS                       R52 R52 K62 ["createElement"]
      870 GETUPVAL                         R53 20
      871 DUPTABLE                         R54 K194 [{"Playhead", "RootInstance", "Speed"}]
      872 GETTABLEKS                       R55 R1 K4 ["Playhead"]
      874 SETTABLEKS                       R55 R54 K4 ["Playhead"]
      876 GETTABLEKS                       R55 R1 K19 ["RootInstance"]
      878 SETTABLEKS                       R55 R54 K19 ["RootInstance"]
      880 SETTABLEKS                       R47 R54 K193 ["Speed"]
      882 CALL                             R52 2 1
      883 SETTABLEKS                       R52 R51 K77 ["FloorGrid"]
      885 MOVE                             R52 R7
      886 JUMPIFNOT                        R52 ; [+26]
      887 MOVE                             R52 R31
      888 JUMPIFNOT                        R52 ; [+24]
      889 GETUPVAL                         R52 3
      890 GETTABLEKS                       R52 R52 K62 ["createElement"]
      892 GETUPVAL                         R53 21
      893 DUPTABLE                         R54 K199 [{"ShowMenu", "OnMenuOpened", "IsChannelAnimation", "ShowAddIkTargetPrompt", "ShowSelectIkTargetPrompt"}]
      894 GETTABLEKS                       R55 R2 K200 ["showContextMenu"]
      896 SETTABLEKS                       R55 R54 K195 ["ShowMenu"]
      898 GETTABLEKS                       R55 R0 K201 ["hideMenu"]
      900 SETTABLEKS                       R55 R54 K196 ["OnMenuOpened"]
      902 SETTABLEKS                       R35 R54 K122 ["IsChannelAnimation"]
      904 GETTABLEKS                       R55 R0 K25 ["showAddIkTargetPrompt"]
      906 SETTABLEKS                       R55 R54 K197 ["ShowAddIkTargetPrompt"]
      908 GETTABLEKS                       R55 R0 K31 ["showSelectIkTargetPrompt"]
      910 SETTABLEKS                       R55 R54 K198 ["ShowSelectIkTargetPrompt"]
      912 CALL                             R52 2 1
      913 SETTABLEKS                       R52 R51 K78 ["TrackActions"]
      915 NOT                              R52 R7
      916 JUMPIFNOT                        R52 ; [+10]
      917 GETUPVAL                         R52 3
      918 GETTABLEKS                       R52 R52 K62 ["createElement"]
      920 GETUPVAL                         R53 22
      921 DUPTABLE                         R54 K203 [{"OnFocused"}]
      922 GETTABLEKS                       R55 R0 K204 ["attachEditorWrapper"]
      924 SETTABLEKS                       R55 R54 K202 ["OnFocused"]
      926 CALL                             R52 2 1
      927 SETTABLEKS                       R52 R51 K79 ["InactiveCover"]
      929 MOVE                             R52 R36
      930 JUMPIFNOT                        R52 ; [+14]
      931 GETUPVAL                         R52 3
      932 GETTABLEKS                       R52 R52 K62 ["createElement"]
      934 GETUPVAL                         R53 23
      935 DUPTABLE                         R54 K208 [{"OnCancelled", "Progress", "Status"}]
      936 GETTABLEKS                       R55 R0 K209 ["cancelCreateFromVideo"]
      938 SETTABLEKS                       R55 R54 K205 ["OnCancelled"]
      940 SETTABLEKS                       R37 R54 K206 ["Progress"]
      942 SETTABLEKS                       R38 R54 K207 ["Status"]
      944 CALL                             R52 2 1
      945 SETTABLEKS                       R52 R51 K80 ["ProgressScreen"]
      947 MOVE                             R52 R28
      948 JUMPIFNOT                        R52 ; [+18]
      949 GETUPVAL                         R52 3
      950 GETTABLEKS                       R52 R52 K62 ["createElement"]
      952 GETUPVAL                         R53 24
      953 DUPTABLE                         R54 K212 [{"FrameRate", "SetFrameRate", "OnClose"}]
      954 GETTABLEKS                       R55 R1 K179 ["FrameRate"]
      956 SETTABLEKS                       R55 R54 K179 ["FrameRate"]
      958 GETTABLEKS                       R55 R1 K210 ["SetFrameRate"]
      960 SETTABLEKS                       R55 R54 K210 ["SetFrameRate"]
      962 GETTABLEKS                       R55 R0 K213 ["hideChangeFPSPrompt"]
      964 SETTABLEKS                       R55 R54 K211 ["OnClose"]
      966 CALL                             R52 2 1
      967 SETTABLEKS                       R52 R51 K81 ["ChangeFPSPrompt"]
      969 JUMPIFNOT                        R29 ; [+17]
      970 GETUPVAL                         R52 3
      971 GETTABLEKS                       R52 R52 K62 ["createElement"]
      973 GETUPVAL                         R53 25
      974 DUPTABLE                         R54 K215 [{"GridSpeed", "SetGridSpeed", "OnClose"}]
      975 SETTABLEKS                       R47 R54 K56 ["GridSpeed"]
      977 GETTABLEKS                       R55 R1 K214 ["SetGridSpeed"]
      979 SETTABLEKS                       R55 R54 K214 ["SetGridSpeed"]
      981 GETTABLEKS                       R55 R0 K216 ["hideChangeGridSpeedPrompt"]
      983 SETTABLEKS                       R55 R54 K211 ["OnClose"]
      985 CALL                             R52 2 1
      986 JUMP                             ; [+1]
      987 LOADNIL                          R52
      988 SETTABLEKS                       R52 R51 K82 ["ChangeGridSpeedPrompt"]
      990 MOVE                             R52 R30
      991 JUMPIFNOT                        R52 ; [+18]
      992 GETUPVAL                         R52 3
      993 GETTABLEKS                       R52 R52 K62 ["createElement"]
      995 GETUPVAL                         R53 26
      996 DUPTABLE                         R54 K219 [{"PlaybackSpeed", "SetPlaybackSpeed", "OnClose"}]
      997 GETTABLEKS                       R55 R1 K217 ["PlaybackSpeed"]
      999 SETTABLEKS                       R55 R54 K217 ["PlaybackSpeed"]
     1001 GETTABLEKS                       R55 R1 K218 ["SetPlaybackSpeed"]
     1003 SETTABLEKS                       R55 R54 K218 ["SetPlaybackSpeed"]
     1005 GETTABLEKS                       R55 R0 K220 ["hideChangePlaybackSpeedPrompt"]
     1007 SETTABLEKS                       R55 R54 K211 ["OnClose"]
     1009 CALL                             R52 2 1
     1010 SETTABLEKS                       R52 R51 K83 ["ChangePlaybackSpeedPrompt"]
     1012 JUMPIFNOT                        R33 ; [+15]
     1013 GETUPVAL                         R52 3
     1014 GETTABLEKS                       R52 R52 K62 ["createElement"]
     1016 GETUPVAL                         R53 27
     1017 DUPTABLE                         R54 K222 [{"OnPromote", "OnClose"}]
     1018 GETTABLEKS                       R55 R0 K223 ["promoteKeyframeSequence"]
     1020 SETTABLEKS                       R55 R54 K221 ["OnPromote"]
     1022 GETTABLEKS                       R55 R0 K224 ["hidePromotePrompt"]
     1024 SETTABLEKS                       R55 R54 K211 ["OnClose"]
     1026 CALL                             R52 2 1
     1027 JUMP                             ; [+1]
     1028 LOADNIL                          R52
     1029 SETTABLEKS                       R52 R51 K84 ["PromotePrompt"]
     1031 JUMPIFNOT                        R45 ; [+11]
     1032 GETUPVAL                         R52 3
     1033 GETTABLEKS                       R52 R52 K62 ["createElement"]
     1035 GETUPVAL                         R53 28
     1036 DUPTABLE                         R54 K225 [{"OnClose"}]
     1037 GETTABLEKS                       R55 R0 K226 ["hideReduceKeyframesDialog"]
     1039 SETTABLEKS                       R55 R54 K211 ["OnClose"]
     1041 CALL                             R52 2 1
     1042 JUMP                             ; [+1]
     1043 LOADNIL                          R52
     1044 SETTABLEKS                       R52 R51 K85 ["ReduceKeyframesDialog"]
     1046 JUMPIFNOT                        R46 ; [+6]
     1047 GETUPVAL                         R52 3
     1048 GETTABLEKS                       R52 R52 K62 ["createElement"]
     1050 GETUPVAL                         R53 29
     1051 CALL                             R52 1 1
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R52
     1054 SETTABLEKS                       R52 R51 K86 ["MigrationDialog"]
     1056 GETUPVAL                         R53 30
     1057 CALL                             R53 0 1
     1058 JUMPIFNOT                        R53 ; [+12]
     1059 JUMPIFNOT                        R27 ; [+11]
     1060 GETUPVAL                         R52 3
     1061 GETTABLEKS                       R52 R52 K62 ["createElement"]
     1063 GETUPVAL                         R53 31
     1064 DUPTABLE                         R54 K225 [{"OnClose"}]
     1065 NEWCLOSURE                       R55 P4
     1066 CAPTURE                          VAL R0
     1067 SETTABLEKS                       R55 R54 K211 ["OnClose"]
     1069 CALL                             R52 2 1
     1070 JUMP                             ; [+1]
     1071 LOADNIL                          R52
     1072 SETTABLEKS                       R52 R51 K87 ["AddIkTargetPrompt"]
     1074 GETUPVAL                         R53 30
     1075 CALL                             R53 0 1
     1076 JUMPIFNOT                        R53 ; [+12]
     1077 JUMPIFNOT                        R34 ; [+11]
     1078 GETUPVAL                         R52 3
     1079 GETTABLEKS                       R52 R52 K62 ["createElement"]
     1081 GETUPVAL                         R53 31
     1082 DUPTABLE                         R54 K225 [{"OnClose"}]
     1083 NEWCLOSURE                       R55 P5
     1084 CAPTURE                          VAL R0
     1085 SETTABLEKS                       R55 R54 K211 ["OnClose"]
     1087 CALL                             R52 2 1
     1088 JUMP                             ; [+1]
     1089 LOADNIL                          R52
     1090 SETTABLEKS                       R52 R51 K88 ["SelectIkTargetPrompt"]
     1092 CALL                             R48 3 -1
     1093 RETURN                           R48 -1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SnapMode"]
        4 GETTABLEKS                       R3 R1 K2 ["Analytics"]
        6 LOADK                            R5 K3 ["onEditorOpened"]
        7 GETTABLEKS                       R6 R1 K4 ["TimelineUnit"]
        9 LOADB                            R7 0
       10 MOVE                             R8 R2
       11 NAMECALL                         R3 R3 K5 ["report"]
       13 CALL                             R3 5 0
       14 GETTABLEKS                       R3 R1 K6 ["AttachEditor"]
       16 GETTABLEKS                       R4 R1 K2 ["Analytics"]
       18 CALL                             R3 1 0
       19 GETTABLEKS                       R3 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K7 ["SetEditorMode"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["EDITOR_MODE"]
       26 GETTABLEKS                       R4 R4 K9 ["DopeSheet"]
       28 CALL                             R3 1 0
       29 GETIMPORT                        R3 K12 [os.time]
       31 CALL                             R3 0 1
       32 SETTABLEKS                       R3 R0 K13 ["openedTimestamp"]
       34 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["resetAllFacsValuesInFaceControls"]
        5 GETTABLEKS                       R3 R1 K2 ["RootInstance"]
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R2 R1 K3 ["Analytics"]
       10 LOADK                            R4 K4 ["onEditorModeSwitch"]
       11 GETTABLEKS                       R5 R1 K5 ["EditorMode"]
       13 LOADNIL                          R6
       14 GETIMPORT                        R8 K8 [os.time]
       16 CALL                             R8 0 1
       17 GETTABLEKS                       R9 R1 K9 ["EditorModeSwitchTime"]
       19 SUB                              R7 R8 R9
       20 GETTABLEKS                       R9 R1 K10 ["AnimationData"]
       22 JUMPIFNOT                        R9 ; [+12]
       23 GETTABLEKS                       R9 R1 K10 ["AnimationData"]
       25 GETTABLEKS                       R9 R9 K11 ["Metadata"]
       27 JUMPIFNOT                        R9 ; [+7]
       28 GETTABLEKS                       R8 R1 K10 ["AnimationData"]
       30 GETTABLEKS                       R8 R8 K11 ["Metadata"]
       32 GETTABLEKS                       R8 R8 K12 ["Guid"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R8
       36 NAMECALL                         R2 R2 K13 ["report"]
       38 CALL                             R2 6 0
       39 GETTABLEKS                       R2 R1 K14 ["ReleaseEditor"]
       41 GETTABLEKS                       R3 R1 K3 ["Analytics"]
       43 GETTABLEKS                       R4 R1 K15 ["Localization"]
       45 CALL                             R2 2 0
       46 GETTABLEKS                       R2 R1 K3 ["Analytics"]
       48 LOADK                            R4 K16 ["onEditorClosed"]
       49 GETIMPORT                        R6 K8 [os.time]
       51 CALL                             R6 0 1
       52 GETTABLEKS                       R7 R0 K17 ["openedTimestamp"]
       54 SUB                              R5 R6 R7
       55 NAMECALL                         R2 R2 K13 ["report"]
       57 CALL                             R2 3 0
       58 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 NEWTABLE                         R2 64 0
        4 GETTABLEKS                       R3 R1 K1 ["Active"]
        6 SETTABLEKS                       R3 R2 K1 ["Active"]
        8 GETTABLEKS                       R3 R0 K2 ["Analytics"]
       10 SETTABLEKS                       R3 R2 K2 ["Analytics"]
       12 GETTABLEKS                       R3 R0 K3 ["AnimationData"]
       14 SETTABLEKS                       R3 R2 K3 ["AnimationData"]
       16 GETTABLEKS                       R3 R1 K4 ["AnimationImportProgress"]
       18 SETTABLEKS                       R3 R2 K4 ["AnimationImportProgress"]
       20 GETTABLEKS                       R3 R1 K5 ["AnimationImportStatus"]
       22 SETTABLEKS                       R3 R2 K5 ["AnimationImportStatus"]
       24 GETTABLEKS                       R3 R1 K6 ["CreatingAnimationFromVideo"]
       26 SETTABLEKS                       R3 R2 K6 ["CreatingAnimationFromVideo"]
       28 GETTABLEKS                       R3 R1 K7 ["DefaultEulerAnglesOrder"]
       30 SETTABLEKS                       R3 R2 K7 ["DefaultEulerAnglesOrder"]
       32 GETTABLEKS                       R3 R1 K8 ["DefaultRotationType"]
       34 SETTABLEKS                       R3 R2 K8 ["DefaultRotationType"]
       36 GETTABLEKS                       R3 R1 K9 ["EditingLength"]
       38 SETTABLEKS                       R3 R2 K9 ["EditingLength"]
       40 GETTABLEKS                       R3 R1 K10 ["EditorMode"]
       42 SETTABLEKS                       R3 R2 K10 ["EditorMode"]
       44 GETTABLEKS                       R3 R1 K11 ["EditorModeSwitchTime"]
       46 SETTABLEKS                       R3 R2 K11 ["EditorModeSwitchTime"]
       48 GETTABLEKS                       R3 R1 K12 ["FrameRate"]
       50 SETTABLEKS                       R3 R2 K12 ["FrameRate"]
       52 GETTABLEKS                       R3 R1 K13 ["GridSpeed"]
       54 SETTABLEKS                       R3 R2 K13 ["GridSpeed"]
       56 GETTABLEKS                       R3 R1 K14 ["HorizontalScroll"]
       58 SETTABLEKS                       R3 R2 K14 ["HorizontalScroll"]
       60 GETTABLEKS                       R3 R1 K15 ["HorizontalZoom"]
       62 SETTABLEKS                       R3 R2 K15 ["HorizontalZoom"]
       64 GETTABLEKS                       R3 R1 K16 ["IKEnabled"]
       66 SETTABLEKS                       R3 R2 K16 ["IKEnabled"]
       68 GETTABLEKS                       R3 R1 K17 ["IKMode"]
       70 SETTABLEKS                       R3 R2 K17 ["IKMode"]
       72 GETTABLEKS                       R3 R1 K18 ["inReviewState"]
       74 SETTABLEKS                       R3 R2 K18 ["inReviewState"]
       76 GETTABLEKS                       R3 R1 K19 ["IsLegacyAnimSaves"]
       78 SETTABLEKS                       R3 R2 K19 ["IsLegacyAnimSaves"]
       80 GETTABLEKS                       R3 R1 K20 ["LastSelectedPath"]
       82 SETTABLEKS                       R3 R2 K20 ["LastSelectedPath"]
       84 GETTABLEKS                       R3 R1 K21 ["LegacyAnimationInstances"]
       86 SETTABLEKS                       R3 R2 K21 ["LegacyAnimationInstances"]
       88 GETTABLEKS                       R3 R1 K22 ["MotorData"]
       90 SETTABLEKS                       R3 R2 K22 ["MotorData"]
       92 GETTABLEKS                       R3 R1 K23 ["PinnedParts"]
       94 SETTABLEKS                       R3 R2 K23 ["PinnedParts"]
       96 GETTABLEKS                       R3 R1 K24 ["PlaybackSpeed"]
       98 SETTABLEKS                       R3 R2 K24 ["PlaybackSpeed"]
      100 GETTABLEKS                       R3 R1 K25 ["Playhead"]
      102 SETTABLEKS                       R3 R2 K25 ["Playhead"]
      104 GETTABLEKS                       R3 R1 K26 ["PlayState"]
      106 SETTABLEKS                       R3 R2 K26 ["PlayState"]
      108 GETTABLEKS                       R3 R1 K27 ["ReduceKeyframesDialogMode"]
      110 SETTABLEKS                       R3 R2 K27 ["ReduceKeyframesDialogMode"]
      112 GETTABLEKS                       R3 R1 K28 ["RootInstance"]
      114 SETTABLEKS                       R3 R2 K28 ["RootInstance"]
      116 GETTABLEKS                       R3 R1 K29 ["SelectedTracks"]
      118 SETTABLEKS                       R3 R2 K29 ["SelectedTracks"]
      120 GETTABLEKS                       R3 R1 K30 ["ShowEvents"]
      122 SETTABLEKS                       R3 R2 K30 ["ShowEvents"]
      124 GETTABLEKS                       R3 R1 K31 ["SnapMode"]
      126 SETTABLEKS                       R3 R2 K31 ["SnapMode"]
      128 GETTABLEKS                       R3 R1 K32 ["SymmetryEnabled"]
      130 SETTABLEKS                       R3 R2 K32 ["SymmetryEnabled"]
      132 GETTABLEKS                       R3 R1 K33 ["TimelineUnit"]
      134 SETTABLEKS                       R3 R2 K33 ["TimelineUnit"]
      136 GETTABLEKS                       R3 R1 K34 ["TopTrackIndex"]
      138 SETTABLEKS                       R3 R2 K34 ["TopTrackIndex"]
      140 GETTABLEKS                       R3 R1 K35 ["Tracks"]
      142 SETTABLEKS                       R3 R2 K35 ["Tracks"]
      144 GETTABLEKS                       R3 R1 K36 ["UnusedFacs"]
      146 SETTABLEKS                       R3 R2 K36 ["UnusedFacs"]
      148 GETTABLEKS                       R3 R1 K37 ["UnusedTracks"]
      150 SETTABLEKS                       R3 R2 K37 ["UnusedTracks"]
      152 GETTABLEKS                       R3 R1 K38 ["VerticalScroll"]
      154 SETTABLEKS                       R3 R2 K38 ["VerticalScroll"]
      156 GETTABLEKS                       R3 R1 K39 ["VerticalZoom"]
      158 SETTABLEKS                       R3 R2 K39 ["VerticalZoom"]
      160 GETTABLEKS                       R3 R1 K40 ["VisualizeGrid"]
      162 SETTABLEKS                       R3 R2 K40 ["VisualizeGrid"]
      164 RETURN                           R2 1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 LOADB                            R6 0
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 1
        4 LOADB                            R5 1
        5 CALL                             R2 3 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 0
        4 LOADB                            R5 1
        5 CALL                             R2 3 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 CALL                             R7 0 -1
        3 CALL                             R6 -1 0
        4 GETUPVAL                         R6 0
        5 GETUPVAL                         R7 2
        6 MOVE                             R8 R0
        7 MOVE                             R9 R1
        8 MOVE                             R10 R2
        9 MOVE                             R11 R3
       10 MOVE                             R12 R4
       11 MOVE                             R13 R5
       12 CALL                             R7 6 -1
       13 CALL                             R6 -1 0
       14 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_69:
        0 DUPTABLE                         R1 K27 [{"AddTargetToEndEffector", "SetLastSelectedPath", "SetTracksExpanded", "ClearSelectedTrackInstances", "SetSelectedTracks", "MoveSelectedTrack", "ExpandSelectedTracks", "CloseSelectedTracks", "AddTrack", "SetRightClickContextInfo", "ValueChanged", "AddWaypoint", "AttachEditor", "ReleaseEditor", "SetEventEditingTick", "SetFrameRate", "SetGridSpeed", "SetPlaybackSpeed", "PromoteKeyframeSequence", "SetEditorMode", "SetIkTargetInstance", "SetPlayState", "SetReduceKeyframesDialogMode", "SwitchEditorMode", "SetCreatingAnimationFromVideo", "CancelAnimationFromVideoImport", "SetTopTrackIndex"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddTargetToEndEffector"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetLastSelectedPath"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetTracksExpanded"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["ClearSelectedTrackInstances"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R2 R1 K4 ["SetSelectedTracks"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R2 R1 K5 ["MoveSelectedTrack"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 SETTABLEKS                       R2 R1 K6 ["ExpandSelectedTracks"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R2 R1 K7 ["CloseSelectedTracks"]
       41 NEWCLOSURE                       R2 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 SETTABLEKS                       R2 R1 K8 ["AddTrack"]
       47 NEWCLOSURE                       R2 P9
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U7
       50 SETTABLEKS                       R2 R1 K9 ["SetRightClickContextInfo"]
       52 NEWCLOSURE                       R2 P10
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 SETTABLEKS                       R2 R1 K10 ["ValueChanged"]
       57 NEWCLOSURE                       R2 P11
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U5
       60 SETTABLEKS                       R2 R1 K11 ["AddWaypoint"]
       62 NEWCLOSURE                       R2 P12
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U9
       65 SETTABLEKS                       R2 R1 K12 ["AttachEditor"]
       67 NEWCLOSURE                       R2 P13
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U10
       70 SETTABLEKS                       R2 R1 K13 ["ReleaseEditor"]
       72 NEWCLOSURE                       R2 P14
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U11
       75 SETTABLEKS                       R2 R1 K14 ["SetEventEditingTick"]
       77 NEWCLOSURE                       R2 P15
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U12
       80 SETTABLEKS                       R2 R1 K15 ["SetFrameRate"]
       82 NEWCLOSURE                       R2 P16
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U13
       85 SETTABLEKS                       R2 R1 K16 ["SetGridSpeed"]
       87 NEWCLOSURE                       R2 P17
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U14
       90 SETTABLEKS                       R2 R1 K17 ["SetPlaybackSpeed"]
       92 NEWCLOSURE                       R2 P18
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U15
       95 SETTABLEKS                       R2 R1 K18 ["PromoteKeyframeSequence"]
       97 NEWCLOSURE                       R2 P19
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U16
      100 SETTABLEKS                       R2 R1 K19 ["SetEditorMode"]
      102 NEWCLOSURE                       R2 P20
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U17
      105 SETTABLEKS                       R2 R1 K20 ["SetIkTargetInstance"]
      107 NEWCLOSURE                       R2 P21
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U18
      110 SETTABLEKS                       R2 R1 K21 ["SetPlayState"]
      112 NEWCLOSURE                       R2 P22
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U19
      115 SETTABLEKS                       R2 R1 K22 ["SetReduceKeyframesDialogMode"]
      117 NEWCLOSURE                       R2 P23
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U20
      120 SETTABLEKS                       R2 R1 K23 ["SwitchEditorMode"]
      122 NEWCLOSURE                       R2 P24
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U21
      125 SETTABLEKS                       R2 R1 K24 ["SetCreatingAnimationFromVideo"]
      127 NEWCLOSURE                       R2 P25
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U22
      130 SETTABLEKS                       R2 R1 K25 ["CancelAnimationFromVideoImport"]
      132 NEWCLOSURE                       R2 P26
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U23
      135 SETTABLEKS                       R2 R1 K26 ["SetTopTrackIndex"]
      137 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["UI"]
       37 GETTABLEKS                       R5 R5 K12 ["KeyboardListener"]
       39 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["withContext"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Context"]
       49 GETTABLEKS                       R9 R9 K17 ["Signals"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R0 K15 ["Src"]
       54 GETTABLEKS                       R9 R9 K18 ["Actions"]
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R9 K19 ["SetCreatingAnimationFromVideo"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R9 K20 ["SetEditorMode"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R9 K21 ["SetEventEditingTick"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R9 K22 ["SetFrameRate"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R9 K23 ["SetGridSpeed"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R16 R9 K24 ["SetLastSelectedPath"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R9 K25 ["SetPlayState"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K5 [require]
       93 GETTABLEKS                       R18 R9 K26 ["SetReduceKeyframesDialogMode"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R19 R9 K27 ["SetRightClickContextInfo"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R0 K15 ["Src"]
      103 GETTABLEKS                       R19 R19 K28 ["Components"]
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R19 K29 ["AnimationControlPanel"]
      109 GETTABLEKS                       R21 R21 K29 ["AnimationControlPanel"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R19 K30 ["TrackList"]
      116 GETTABLEKS                       R22 R22 K31 ["AnimationEventsTrack"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K5 [require]
      121 GETTABLEKS                       R23 R19 K32 ["ChangeFPSPrompt"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R19 K33 ["ChangeGridSpeedPrompt"]
      128 CALL                             R23 1 1
      129 GETIMPORT                        R24 K5 [require]
      131 GETTABLEKS                       R25 R19 K34 ["ChangePlaybackSpeedPrompt"]
      133 CALL                             R24 1 1
      134 GETIMPORT                        R25 K5 [require]
      136 GETTABLEKS                       R26 R19 K35 ["FacialAnimationRecorder"]
      138 GETTABLEKS                       R26 R26 K35 ["FacialAnimationRecorder"]
      140 CALL                             R25 1 1
      141 GETIMPORT                        R26 K5 [require]
      143 GETTABLEKS                       R27 R19 K36 ["FloorGrid"]
      145 CALL                             R26 1 1
      146 GETIMPORT                        R27 K5 [require]
      148 GETTABLEKS                       R28 R19 K37 ["InactiveCover"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K5 [require]
      153 GETTABLEKS                       R29 R19 K38 ["InstanceSelector"]
      155 CALL                             R28 1 1
      156 GETIMPORT                        R29 K5 [require]
      158 GETTABLEKS                       R30 R19 K39 ["MigrationDialog"]
      160 CALL                             R29 1 1
      161 GETIMPORT                        R30 K5 [require]
      163 GETTABLEKS                       R31 R19 K40 ["Playback"]
      165 CALL                             R30 1 1
      166 GETIMPORT                        R31 K5 [require]
      168 GETTABLEKS                       R32 R19 K41 ["ProgressScreen"]
      170 CALL                             R31 1 1
      171 GETIMPORT                        R32 K5 [require]
      173 GETTABLEKS                       R33 R19 K42 ["PromoteToCurvesPrompt"]
      175 CALL                             R32 1 1
      176 GETIMPORT                        R33 K5 [require]
      178 GETTABLEKS                       R34 R19 K43 ["RecordingModeCover"]
      180 CALL                             R33 1 1
      181 GETIMPORT                        R34 K5 [require]
      183 GETTABLEKS                       R35 R19 K44 ["ReduceKeyframesDialog"]
      185 CALL                             R34 1 1
      186 GETIMPORT                        R35 K5 [require]
      188 GETTABLEKS                       R36 R19 K45 ["SelectTargetPrompt"]
      190 CALL                             R35 1 1
      191 GETIMPORT                        R36 K5 [require]
      193 GETTABLEKS                       R37 R19 K46 ["SettingsButton"]
      195 CALL                             R36 1 1
      196 GETIMPORT                        R37 K5 [require]
      198 GETTABLEKS                       R38 R19 K47 ["StartScreen"]
      200 CALL                             R37 1 1
      201 GETIMPORT                        R38 K5 [require]
      203 GETTABLEKS                       R39 R19 K48 ["TrackActions"]
      205 CALL                             R38 1 1
      206 GETIMPORT                        R39 K5 [require]
      208 GETTABLEKS                       R40 R19 K30 ["TrackList"]
      210 GETTABLEKS                       R40 R40 K49 ["TrackColors"]
      212 CALL                             R39 1 1
      213 GETIMPORT                        R40 K5 [require]
      215 GETTABLEKS                       R41 R19 K50 ["TrackEditor"]
      217 CALL                             R40 1 1
      218 GETIMPORT                        R41 K5 [require]
      220 GETTABLEKS                       R42 R19 K30 ["TrackList"]
      222 GETTABLEKS                       R42 R42 K30 ["TrackList"]
      224 CALL                             R41 1 1
      225 GETIMPORT                        R42 K5 [require]
      227 GETTABLEKS                       R43 R19 K30 ["TrackList"]
      229 GETTABLEKS                       R43 R43 K51 ["TrackListBorder"]
      231 CALL                             R42 1 1
      232 GETIMPORT                        R43 K5 [require]
      234 GETTABLEKS                       R44 R19 K30 ["TrackList"]
      236 GETTABLEKS                       R44 R44 K52 ["TrackScrollbar"]
      238 CALL                             R43 1 1
      239 GETTABLEKS                       R44 R0 K15 ["Src"]
      241 GETTABLEKS                       R44 R44 K53 ["Thunks"]
      243 GETIMPORT                        R45 K5 [require]
      245 GETTABLEKS                       R46 R44 K54 ["AddTargetToEndEffector"]
      247 CALL                             R45 1 1
      248 GETIMPORT                        R46 K5 [require]
      250 GETTABLEKS                       R47 R44 K55 ["AddTrack"]
      252 CALL                             R46 1 1
      253 GETIMPORT                        R47 K5 [require]
      255 GETTABLEKS                       R48 R44 K56 ["History"]
      257 GETTABLEKS                       R48 R48 K57 ["AddWaypoint"]
      259 CALL                             R47 1 1
      260 GETIMPORT                        R48 K5 [require]
      262 GETTABLEKS                       R49 R44 K58 ["AttachEditor"]
      264 CALL                             R48 1 1
      265 GETIMPORT                        R49 K5 [require]
      267 GETTABLEKS                       R50 R44 K59 ["CancelAnimationFromVideoImport"]
      269 CALL                             R49 1 1
      270 GETIMPORT                        R50 K5 [require]
      272 GETTABLEKS                       R51 R44 K60 ["MoveSelectedTrack"]
      274 CALL                             R50 1 1
      275 GETIMPORT                        R51 K5 [require]
      277 GETTABLEKS                       R52 R44 K61 ["PromoteKeyframeSequence"]
      279 CALL                             R51 1 1
      280 GETIMPORT                        R52 K5 [require]
      282 GETTABLEKS                       R53 R44 K62 ["ReleaseEditor"]
      284 CALL                             R52 1 1
      285 GETIMPORT                        R53 K5 [require]
      287 GETTABLEKS                       R54 R44 K63 ["SetIkTargetInstance"]
      289 CALL                             R53 1 1
      290 GETIMPORT                        R54 K5 [require]
      292 GETTABLEKS                       R55 R44 K40 ["Playback"]
      294 GETTABLEKS                       R55 R55 K64 ["SetPlaybackSpeed"]
      296 CALL                             R54 1 1
      297 GETIMPORT                        R55 K5 [require]
      299 GETTABLEKS                       R56 R44 K65 ["SetSelectedTracks"]
      301 CALL                             R55 1 1
      302 GETIMPORT                        R56 K5 [require]
      304 GETTABLEKS                       R57 R44 K66 ["SetTopTrackIndex"]
      306 CALL                             R56 1 1
      307 GETIMPORT                        R57 K5 [require]
      309 GETTABLEKS                       R58 R44 K67 ["SetTracksExpanded"]
      311 CALL                             R57 1 1
      312 GETIMPORT                        R58 K5 [require]
      314 GETTABLEKS                       R59 R44 K68 ["SwitchEditorMode"]
      316 CALL                             R58 1 1
      317 GETIMPORT                        R59 K5 [require]
      319 GETTABLEKS                       R60 R44 K69 ["ValueChanged"]
      321 CALL                             R59 1 1
      322 GETTABLEKS                       R60 R0 K15 ["Src"]
      324 GETTABLEKS                       R60 R60 K70 ["Util"]
      326 GETIMPORT                        R61 K5 [require]
      328 GETTABLEKS                       R62 R60 K71 ["AnimationData"]
      330 CALL                             R61 1 1
      331 GETIMPORT                        R62 K5 [require]
      333 GETTABLEKS                       R63 R60 K72 ["Constants"]
      335 CALL                             R62 1 1
      336 GETIMPORT                        R63 K5 [require]
      338 GETTABLEKS                       R64 R60 K73 ["Input"]
      340 CALL                             R63 1 1
      341 GETIMPORT                        R64 K5 [require]
      343 GETTABLEKS                       R65 R60 K74 ["PathUtils"]
      345 CALL                             R64 1 1
      346 GETIMPORT                        R65 K5 [require]
      348 GETTABLEKS                       R66 R60 K75 ["RigInfo"]
      350 CALL                             R65 1 1
      351 GETIMPORT                        R66 K5 [require]
      353 GETTABLEKS                       R67 R60 K76 ["RigUtils"]
      355 CALL                             R66 1 1
      356 GETIMPORT                        R67 K5 [require]
      358 GETTABLEKS                       R68 R60 K77 ["TrackUtils"]
      360 CALL                             R67 1 1
      361 GETIMPORT                        R68 K5 [require]
      363 GETTABLEKS                       R69 R0 K78 ["LuaFlags"]
      365 GETTABLEKS                       R69 R69 K79 ["GetFFlagFacialAnimationRecordingInStudio"]
      367 CALL                             R68 1 1
      368 GETIMPORT                        R69 K5 [require]
      370 GETTABLEKS                       R70 R0 K78 ["LuaFlags"]
      372 GETTABLEKS                       R70 R70 K80 ["GetFFlagControlRig"]
      374 CALL                             R69 1 1
      375 GETTABLEKS                       R70 R2 K81 ["PureComponent"]
      377 LOADK                            R72 K82 ["EditorController"]
      378 NAMECALL                         R70 R70 K83 ["extend"]
      380 CALL                             R70 2 1
      381 DUPCLOSURE                       R71 K84 [PROTO_30]
      382 CAPTURE                          VAL R62
      383 CAPTURE                          VAL R2
      384 CAPTURE                          VAL R64
      385 CAPTURE                          VAL R1
      386 CAPTURE                          VAL R61
      387 CAPTURE                          VAL R69
      388 CAPTURE                          VAL R67
      389 SETTABLEKS                       R71 R70 K85 ["init"]
      391 DUPCLOSURE                       R71 K86 [PROTO_31]
      392 CAPTURE                          VAL R65
      393 CAPTURE                          VAL R62
      394 SETTABLEKS                       R71 R70 K87 ["didUpdate"]
      396 DUPCLOSURE                       R71 K88 [PROTO_38]
      397 CAPTURE                          VAL R62
      398 CAPTURE                          VAL R61
      399 CAPTURE                          VAL R67
      400 CAPTURE                          VAL R2
      401 CAPTURE                          VAL R20
      402 CAPTURE                          VAL R21
      403 CAPTURE                          VAL R41
      404 CAPTURE                          VAL R43
      405 CAPTURE                          VAL R5
      406 CAPTURE                          VAL R63
      407 CAPTURE                          VAL R39
      408 CAPTURE                          VAL R42
      409 CAPTURE                          VAL R40
      410 CAPTURE                          VAL R36
      411 CAPTURE                          VAL R37
      412 CAPTURE                          VAL R30
      413 CAPTURE                          VAL R68
      414 CAPTURE                          VAL R25
      415 CAPTURE                          VAL R33
      416 CAPTURE                          VAL R28
      417 CAPTURE                          VAL R26
      418 CAPTURE                          VAL R38
      419 CAPTURE                          VAL R27
      420 CAPTURE                          VAL R31
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R23
      423 CAPTURE                          VAL R24
      424 CAPTURE                          VAL R32
      425 CAPTURE                          VAL R34
      426 CAPTURE                          VAL R29
      427 CAPTURE                          VAL R69
      428 CAPTURE                          VAL R35
      429 SETTABLEKS                       R71 R70 K89 ["render"]
      431 DUPCLOSURE                       R71 K90 [PROTO_39]
      432 CAPTURE                          VAL R62
      433 SETTABLEKS                       R71 R70 K91 ["didMount"]
      435 DUPCLOSURE                       R71 K92 [PROTO_40]
      436 CAPTURE                          VAL R66
      437 SETTABLEKS                       R71 R70 K93 ["willUnmount"]
      439 DUPCLOSURE                       R71 K94 [PROTO_41]
      440 DUPCLOSURE                       R72 K95 [PROTO_69]
      441 CAPTURE                          VAL R45
      442 CAPTURE                          VAL R15
      443 CAPTURE                          VAL R57
      444 CAPTURE                          VAL R55
      445 CAPTURE                          VAL R50
      446 CAPTURE                          VAL R47
      447 CAPTURE                          VAL R46
      448 CAPTURE                          VAL R18
      449 CAPTURE                          VAL R59
      450 CAPTURE                          VAL R48
      451 CAPTURE                          VAL R52
      452 CAPTURE                          VAL R12
      453 CAPTURE                          VAL R13
      454 CAPTURE                          VAL R14
      455 CAPTURE                          VAL R54
      456 CAPTURE                          VAL R51
      457 CAPTURE                          VAL R11
      458 CAPTURE                          VAL R53
      459 CAPTURE                          VAL R16
      460 CAPTURE                          VAL R17
      461 CAPTURE                          VAL R58
      462 CAPTURE                          VAL R10
      463 CAPTURE                          VAL R49
      464 CAPTURE                          VAL R56
      465 MOVE                             R73 R7
      466 DUPTABLE                         R74 K98 [{"Analytics", "Signals", "Stylizer"}]
      467 GETTABLEKS                       R75 R6 K96 ["Analytics"]
      469 SETTABLEKS                       R75 R74 K96 ["Analytics"]
      471 SETTABLEKS                       R8 R74 K17 ["Signals"]
      473 GETTABLEKS                       R75 R6 K97 ["Stylizer"]
      475 SETTABLEKS                       R75 R74 K97 ["Stylizer"]
      477 CALL                             R73 1 1
      478 MOVE                             R74 R70
      479 CALL                             R73 1 1
      480 MOVE                             R70 R73
      481 GETTABLEKS                       R73 R3 K99 ["connect"]
      483 MOVE                             R74 R71
      484 MOVE                             R75 R72
      485 CALL                             R73 2 1
      486 MOVE                             R74 R70
      487 CALL                             R73 1 -1
      488 RETURN                           R73 -1
