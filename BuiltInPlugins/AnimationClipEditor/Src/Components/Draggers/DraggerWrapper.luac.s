PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["selection"]
        4 JUMPIFNOT                        R3 ; [+27]
        5 GETTABLEKS                       R3 R2 K2 ["SelectedTrackInstances"]
        7 GETTABLEKS                       R4 R1 K2 ["SelectedTrackInstances"]
        9 JUMPIFEQ                         R3 R4 ; [+22]
       11 GETTABLEKS                       R3 R0 K1 ["selection"]
       13 GETTABLEKS                       R4 R2 K2 ["SelectedTrackInstances"]
       15 SETTABLEKS                       R4 R3 K3 ["selectedTrackInstances"]
       17 GETTABLEKS                       R4 R0 K0 ["props"]
       19 GETTABLEKS                       R3 R4 K4 ["Signals"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K5 ["SIGNAL_KEYS"]
       24 GETTABLEKS                       R5 R6 K6 ["SelectionChanged"]
       26 NAMECALL                         R3 R3 K7 ["get"]
       28 CALL                             R3 2 1
       29 NAMECALL                         R4 R3 K8 ["Fire"]
       31 CALL                             R4 1 0
       32 GETUPVAL                         R3 1
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+67]
       35 GETTABLEKS                       R3 R2 K9 ["IKEnabled"]
       37 JUMPIFNOT                        R3 ; [+64]
       38 GETTABLEKS                       R3 R2 K10 ["IKMode"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K11 ["IK_MODE"]
       43 GETTABLEKS                       R4 R5 K12 ["BodyPart"]
       45 JUMPIFNOTEQ                      R3 R4 ; [+56]
       47 GETTABLEKS                       R4 R0 K13 ["draggerContext"]
       49 GETTABLEKS                       R3 R4 K14 ["ikControlManager"]
       51 JUMPIFNOTEQKNIL                  R3 ; [+14]
       53 GETTABLEKS                       R3 R0 K13 ["draggerContext"]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K15 ["new"]
       58 GETTABLEKS                       R5 R2 K16 ["RootInstance"]
       60 GETTABLEKS                       R6 R2 K10 ["IKMode"]
       62 CALL                             R4 2 1
       63 SETTABLEKS                       R4 R3 K14 ["ikControlManager"]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R4 R0 K13 ["draggerContext"]
       68 GETTABLEKS                       R3 R4 K14 ["ikControlManager"]
       70 NAMECALL                         R3 R3 K17 ["getModel"]
       72 CALL                             R3 1 1
       73 GETTABLEKS                       R4 R2 K16 ["RootInstance"]
       75 JUMPIFNOTEQ                      R3 R4 ; [+7]
       77 GETTABLEKS                       R3 R2 K10 ["IKMode"]
       79 GETTABLEKS                       R4 R1 K10 ["IKMode"]
       81 JUMPIFEQ                         R3 R4 ; [+20]
       83 GETTABLEKS                       R4 R0 K13 ["draggerContext"]
       85 GETTABLEKS                       R3 R4 K14 ["ikControlManager"]
       87 NAMECALL                         R3 R3 K18 ["cleanUp"]
       89 CALL                             R3 1 0
       90 GETTABLEKS                       R3 R0 K13 ["draggerContext"]
       92 GETUPVAL                         R5 2
       93 GETTABLEKS                       R4 R5 K15 ["new"]
       95 GETTABLEKS                       R5 R2 K16 ["RootInstance"]
       97 GETTABLEKS                       R6 R2 K10 ["IKMode"]
       99 CALL                             R4 2 1
      100 SETTABLEKS                       R4 R3 K14 ["ikControlManager"]
      102 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ValueChanged"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R6 R7 K1 ["List"]
        7 GETTABLEKS                       R5 R6 K2 ["join"]
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 MOVE                             R6 R0
       13 GETUPVAL                         R7 4
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K3 ["Playhead"]
       17 MOVE                             R9 R2
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R10 R11 K4 ["Analytics"]
       21 CALL                             R3 7 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ReadOnly"]
        3 JUMPIF                           R2 ; [+10]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["PlayState"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["PLAY_STATE"]
       10 GETTABLEKS                       R3 R4 K3 ["Pause"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["RootInstance"]
       18 LOADK                            R4 K5 ["Model"]
       19 NAMECALL                         R2 R2 K6 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+19]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K4 ["RootInstance"]
       26 NAMECALL                         R2 R2 K7 ["GetScale"]
       28 CALL                             R2 1 1
       29 MOVE                             R3 R1
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 GETTABLEKS                       R9 R7 K8 ["Rotation"]
       35 GETTABLEKS                       R11 R7 K9 ["Position"]
       37 DIV                              R10 R11 R2
       38 ADD                              R8 R9 R10
       39 SETTABLE                         R8 R1 R6
       40 FORGLOOP                         R3 2 ; [-8]
       42 GETIMPORT                        R2 K11 [pairs]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 3
       46 FORGPREP_NEXT                    R2
       47 NEWTABLE                         R7 0 1
       49 MOVE                             R8 R5
       50 SETLIST                          R7 R8 1 [1]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R8 R9 K12 ["isChannelAnimation"]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K13 ["AnimationData"]
       58 CALL                             R8 1 1
       59 JUMPIF                           R8 ; [+20]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K14 ["ValueChanged"]
       63 MOVE                             R9 R0
       64 MOVE                             R10 R7
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R12 R13 K15 ["TRACK_TYPES"]
       68 GETTABLEKS                       R11 R12 K16 ["CFrame"]
       70 LOADNIL                          R12
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K17 ["Playhead"]
       74 MOVE                             R14 R6
       75 GETUPVAL                         R16 0
       76 GETTABLEKS                       R15 R16 K18 ["Analytics"]
       78 CALL                             R8 7 0
       79 JUMP                             ; [+58]
       80 LOADNIL                          R8
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R9 R10 K19 ["DefaultEulerAnglesOrder"]
       84 GETUPVAL                         R11 4
       85 GETTABLEKS                       R10 R11 K20 ["getRotationTypeFromName"]
       87 MOVE                             R11 R5
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R12 R13 K21 ["Tracks"]
       91 CALL                             R10 2 1
       92 JUMPIF                           R10 ; [+3]
       93 GETUPVAL                         R11 0
       94 GETTABLEKS                       R10 R11 K22 ["DefaultRotationType"]
       96 MOVE                             R8 R10
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R11 R12 K15 ["TRACK_TYPES"]
      100 GETTABLEKS                       R10 R11 K23 ["EulerAngles"]
      102 JUMPIFNOTEQ                      R8 R10 ; [+16]
      104 GETUPVAL                         R11 3
      105 GETTABLEKS                       R10 R11 K24 ["getTrack"]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R11 R12 K13 ["AnimationData"]
      110 LOADK                            R12 K25 ["Root"]
      111 MOVE                             R13 R7
      112 CALL                             R10 3 1
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R11 R12 K26 ["getEulerAnglesOrder"]
      116 MOVE                             R12 R10
      117 CALL                             R11 1 1
      118 OR                               R9 R11 R9
      119 GETUPVAL                         R11 4
      120 GETTABLEKS                       R10 R11 K27 ["traverseValue"]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R12 R13 K15 ["TRACK_TYPES"]
      125 GETTABLEKS                       R11 R12 K16 ["CFrame"]
      127 MOVE                             R12 R6
      128 NEWCLOSURE                       R13 P0
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          VAL R7
      133 CAPTURE                          REF R8
      134 MOVE                             R14 R8
      135 MOVE                             R15 R9
      136 CALL                             R10 5 0
      137 CLOSEUPVALS                      R8
      138 FORGLOOP                         R2 2 ; [-92]
      140 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["RootInstance"]
        2 SETTABLEKS                       R2 R0 K0 ["RootInstance"]
        4 GETTABLEKS                       R2 R1 K1 ["IKMode"]
        6 SETTABLEKS                       R2 R0 K1 ["IKMode"]
        8 GETTABLEKS                       R2 R1 K2 ["StartingPose"]
       10 SETTABLEKS                       R2 R0 K2 ["StartingPose"]
       12 GETTABLEKS                       R2 R1 K3 ["PinnedParts"]
       14 SETTABLEKS                       R2 R0 K3 ["PinnedParts"]
       16 GETTABLEKS                       R2 R1 K4 ["IKEnabled"]
       18 SETTABLEKS                       R2 R0 K4 ["IKEnabled"]
       20 GETTABLEKS                       R2 R1 K5 ["Tool"]
       22 SETTABLEKS                       R2 R0 K5 ["Tool"]
       24 GETTABLEKS                       R3 R1 K6 ["PlayState"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K7 ["PLAY_STATE"]
       29 GETTABLEKS                       R4 R5 K8 ["Pause"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 SETTABLEKS                       R2 R0 K9 ["IsPlaying"]
       37 GETTABLEKS                       R2 R1 K10 ["VisualizeBones"]
       39 SETTABLEKS                       R2 R0 K10 ["VisualizeBones"]
       41 GETTABLEKS                       R2 R1 K11 ["Signals"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K12 ["SIGNAL_KEYS"]
       46 GETTABLEKS                       R4 R5 K13 ["ScrubberChanged"]
       48 NAMECALL                         R2 R2 K14 ["get"]
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R0 K15 ["ScrubberSignal"]
       53 NEWCLOSURE                       R2 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U3
       60 SETTABLEKS                       R2 R0 K16 ["OnManipulateJoints"]
       62 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AddWaypoint"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["Signals"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["SIGNAL_KEYS"]
       10 GETTABLEKS                       R4 R5 K4 ["SelectionChanged"]
       12 NAMECALL                         R2 R2 K1 ["get"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K5 ["Selection"]
       18 GETTABLEKS                       R3 R4 K6 ["new"]
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R5 R0 K7 ["SetSelectedTrackInstances"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K6 ["new"]
       27 MOVE                             R5 R1
       28 GETIMPORT                        R6 K9 [game]
       30 GETIMPORT                        R7 K11 [settings]
       32 CALL                             R7 0 1
       33 MOVE                             R8 R3
       34 CALL                             R4 4 1
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R4 K12 ["AddWaypoint"]
       39 RETURN                           R3 2

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Tool"]
        4 GETTABLEKS                       R3 R1 K2 ["Mouse"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K4 ["draggerContext"]
       11 JUMPIF                           R4 ; [+13]
       12 GETTABLEKS                       R4 R1 K5 ["AnimationData"]
       14 JUMPIFEQKNIL                     R4 ; [+9]
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R1
       18 CALL                             R4 1 2
       19 SETTABLEKS                       R4 R0 K6 ["selection"]
       21 SETTABLEKS                       R5 R0 K4 ["draggerContext"]
       23 JUMP                             ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R1 K5 ["AnimationData"]
       27 JUMPIFEQKNIL                     R4 ; [+6]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R5 R0 K4 ["draggerContext"]
       32 MOVE                             R6 R1
       33 CALL                             R4 2 0
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K7 ["createElement"]
       37 GETUPVAL                         R5 3
       38 DUPTABLE                         R6 K9 [{"Context", "Tool", "Mouse"}]
       39 GETTABLEKS                       R7 R0 K4 ["draggerContext"]
       41 SETTABLEKS                       R7 R6 K8 ["Context"]
       43 SETTABLEKS                       R2 R6 K1 ["Tool"]
       45 SETTABLEKS                       R3 R6 K2 ["Mouse"]
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K16 [{"Tool", "SelectedTrackInstances", "RootInstance", "IKMode", "StartingPose", "PinnedParts", "IKEnabled", "Playhead", "Tracks", "PlayState", "AnimationData", "DefaultRotationType", "DefaultEulerAnglesOrder", "VisualizeBones", "ReadOnly"}]
        3 GETTABLEKS                       R5 R0 K0 ["Status"]
        5 GETTABLEKS                       R4 R5 K1 ["Tool"]
        7 SETTABLEKS                       R4 R3 K1 ["Tool"]
        9 GETTABLEKS                       R5 R0 K0 ["Status"]
       11 GETTABLEKS                       R4 R5 K2 ["SelectedTrackInstances"]
       13 SETTABLEKS                       R4 R3 K2 ["SelectedTrackInstances"]
       15 GETTABLEKS                       R5 R0 K0 ["Status"]
       17 GETTABLEKS                       R4 R5 K3 ["RootInstance"]
       19 SETTABLEKS                       R4 R3 K3 ["RootInstance"]
       21 GETTABLEKS                       R5 R0 K0 ["Status"]
       23 GETTABLEKS                       R4 R5 K4 ["IKMode"]
       25 SETTABLEKS                       R4 R3 K4 ["IKMode"]
       27 GETTABLEKS                       R5 R0 K0 ["Status"]
       29 GETTABLEKS                       R4 R5 K5 ["StartingPose"]
       31 SETTABLEKS                       R4 R3 K5 ["StartingPose"]
       33 GETTABLEKS                       R5 R0 K0 ["Status"]
       35 GETTABLEKS                       R4 R5 K6 ["PinnedParts"]
       37 SETTABLEKS                       R4 R3 K6 ["PinnedParts"]
       39 GETTABLEKS                       R5 R0 K0 ["Status"]
       41 GETTABLEKS                       R4 R5 K7 ["IKEnabled"]
       43 SETTABLEKS                       R4 R3 K7 ["IKEnabled"]
       45 GETTABLEKS                       R5 R0 K0 ["Status"]
       47 GETTABLEKS                       R4 R5 K8 ["Playhead"]
       49 SETTABLEKS                       R4 R3 K8 ["Playhead"]
       51 GETTABLEKS                       R5 R0 K0 ["Status"]
       53 GETTABLEKS                       R4 R5 K9 ["Tracks"]
       55 SETTABLEKS                       R4 R3 K9 ["Tracks"]
       57 GETTABLEKS                       R4 R2 K10 ["PlayState"]
       59 SETTABLEKS                       R4 R3 K10 ["PlayState"]
       61 GETTABLEKS                       R4 R0 K11 ["AnimationData"]
       63 SETTABLEKS                       R4 R3 K11 ["AnimationData"]
       65 GETTABLEKS                       R4 R2 K12 ["DefaultRotationType"]
       67 SETTABLEKS                       R4 R3 K12 ["DefaultRotationType"]
       69 GETTABLEKS                       R4 R2 K13 ["DefaultEulerAnglesOrder"]
       71 SETTABLEKS                       R4 R3 K13 ["DefaultEulerAnglesOrder"]
       73 GETTABLEKS                       R5 R0 K0 ["Status"]
       75 GETTABLEKS                       R4 R5 K14 ["VisualizeBones"]
       77 SETTABLEKS                       R4 R3 K14 ["VisualizeBones"]
       79 GETTABLEKS                       R5 R0 K0 ["Status"]
       81 GETTABLEKS                       R4 R5 K15 ["ReadOnly"]
       83 SETTABLEKS                       R4 R3 K15 ["ReadOnly"]
       85 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K3 [{"SetSelectedTrackInstances", "ValueChanged", "AddWaypoint"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSelectedTrackInstances"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["ValueChanged"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["AddWaypoint"]
       16 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETTABLEKS                       R1 R0 K0 ["draggerContext"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R2 R0 K0 ["draggerContext"]
        8 GETTABLEKS                       R1 R2 K1 ["ikControlManager"]
       10 JUMPIFNOT                        R1 ; [+12]
       11 GETTABLEKS                       R2 R0 K0 ["draggerContext"]
       13 GETTABLEKS                       R1 R2 K1 ["ikControlManager"]
       15 NAMECALL                         R1 R1 K2 ["cleanUp"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K0 ["draggerContext"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K1 ["ikControlManager"]
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Context"]
       45 GETTABLEKS                       R8 R9 K15 ["Signals"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R9 K16 ["Components"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R11 R8 K17 ["Draggers"]
       56 GETTABLEKS                       R10 R11 K18 ["AnimationClipEditorDragger"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R11 R0 K6 ["Packages"]
       61 GETTABLEKS                       R10 R11 K19 ["DraggerFramework"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R13 R10 K20 ["Implementation"]
       67 GETTABLEKS                       R12 R13 K21 ["DraggerContext_PluginImpl"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R13 R0 K13 ["Src"]
       72 GETTABLEKS                       R12 R13 K22 ["Thunks"]
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R15 R12 K23 ["History"]
       78 GETTABLEKS                       R14 R15 K24 ["AddWaypoint"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K5 [require]
       83 GETTABLEKS                       R15 R12 K25 ["SetSelectedTrackInstances"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R12 K26 ["ValueChanged"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R17 R0 K13 ["Src"]
       93 GETTABLEKS                       R16 R17 K27 ["Util"]
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R18 R16 K28 ["AnimationData"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K5 [require]
      102 GETTABLEKS                       R19 R16 K29 ["Constants"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R21 R16 K30 ["DraggerSchema"]
      109 GETTABLEKS                       R20 R21 K30 ["DraggerSchema"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K5 [require]
      114 GETTABLEKS                       R21 R16 K31 ["TrackUtils"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K5 [require]
      119 GETTABLEKS                       R22 R16 K32 ["IKControlManager"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K5 [require]
      124 GETTABLEKS                       R24 R0 K33 ["LuaFlags"]
      126 GETTABLEKS                       R23 R24 K34 ["GetFFlagUseIKControls"]
      128 CALL                             R22 1 1
      129 GETTABLEKS                       R23 R1 K35 ["PureComponent"]
      131 LOADK                            R25 K36 ["DraggerWrapper"]
      132 NAMECALL                         R23 R23 K37 ["extend"]
      134 CALL                             R23 2 1
      135 DUPCLOSURE                       R24 K38 [PROTO_0]
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R21
      139 SETTABLEKS                       R24 R23 K39 ["didUpdate"]
      141 DUPCLOSURE                       R24 K40 [PROTO_3]
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R3
      146 DUPCLOSURE                       R25 K41 [PROTO_5]
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R11
      150 DUPCLOSURE                       R26 K42 [PROTO_6]
      151 CAPTURE                          VAL R25
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R9
      155 SETTABLEKS                       R26 R23 K43 ["render"]
      157 DUPCLOSURE                       R26 K44 [PROTO_7]
      158 DUPCLOSURE                       R27 K45 [PROTO_11]
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R13
      162 DUPCLOSURE                       R28 K46 [PROTO_12]
      163 CAPTURE                          VAL R22
      164 SETTABLEKS                       R28 R23 K47 ["willUnmount"]
      166 MOVE                             R28 R6
      167 DUPTABLE                         R29 K52 [{"Plugin", "PluginActions", "Signals", "Mouse", "Analytics"}]
      168 GETTABLEKS                       R30 R5 K48 ["Plugin"]
      170 SETTABLEKS                       R30 R29 K48 ["Plugin"]
      172 GETTABLEKS                       R30 R5 K49 ["PluginActions"]
      174 SETTABLEKS                       R30 R29 K49 ["PluginActions"]
      176 SETTABLEKS                       R7 R29 K15 ["Signals"]
      178 GETTABLEKS                       R30 R5 K50 ["Mouse"]
      180 SETTABLEKS                       R30 R29 K50 ["Mouse"]
      182 GETTABLEKS                       R30 R5 K51 ["Analytics"]
      184 SETTABLEKS                       R30 R29 K51 ["Analytics"]
      186 CALL                             R28 1 1
      187 MOVE                             R29 R23
      188 CALL                             R28 1 1
      189 MOVE                             R23 R28
      190 GETTABLEKS                       R28 R2 K53 ["connect"]
      192 MOVE                             R29 R26
      193 MOVE                             R30 R27
      194 CALL                             R28 2 1
      195 MOVE                             R29 R23
      196 CALL                             R28 1 -1
      197 RETURN                           R28 -1
