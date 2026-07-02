PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Plugin doesn't exist"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 NAMECALL                         R1 R1 K0 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 NAMECALL                         R1 R1 K1 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R1 R0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["disconnectOnInvoke"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       11 CALL                             R3 3 1
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETIMPORT                        R4 K2 [Instance.new]
        3 LOADK                            R5 K3 ["Wire"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K4 ["SourceInstance"]
        8 GETTABLEKS                       R5 R2 K5 ["TargetName"]
       10 SETTABLEKS                       R5 R4 K5 ["TargetName"]
       12 SETTABLEKS                       R3 R4 K6 ["TargetInstance"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["Parent"]
       17 SETTABLEKS                       R5 R4 K7 ["Parent"]
       19 GETUPVAL                         R6 1
       20 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R5 K10 [table.insert]
       25 CALL                             R5 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R4 1
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 LOADK                            R11 K3 ["Wire"]
       32 NAMECALL                         R9 R8 K11 ["IsA"]
       34 CALL                             R9 2 1
       35 JUMPIF                           R9 ; [+1]
       36 RETURN                           R0 0
       37 LOADK                            R11 K3 ["Wire"]
       38 NAMECALL                         R9 R8 K11 ["IsA"]
       40 CALL                             R9 2 1
       41 JUMPIFNOT                        R9 ; [+19]
       42 GETTABLEKS                       R9 R8 K6 ["TargetInstance"]
       44 JUMPIFNOTEQ                      R9 R3 ; [+16]
       46 GETTABLEKS                       R9 R8 K5 ["TargetName"]
       48 GETTABLEKS                       R10 R2 K5 ["TargetName"]
       50 JUMPIFNOTEQ                      R9 R10 ; [+10]
       52 NAMECALL                         R9 R8 K12 ["Destroy"]
       54 CALL                             R9 1 0
       55 GETIMPORT                        R9 K14 [table.remove]
       57 GETUPVAL                         R10 1
       58 MOVE                             R11 R7
       59 CALL                             R9 2 0
       60 RETURN                           R0 0
       61 FORGLOOP                         R4 2 ; [-31]
       63 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["teardownPreviewInstances"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["Parent"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R0 ; [+45]
       12 JUMPIFNOT                        R1 ; [+44]
       13 LOADK                            R4 K2 ["Output"]
       14 NAMECALL                         R2 R1 K3 ["GetConnectedWires"]
       16 CALL                             R2 2 3
       17 FORGPREP                         R2
       18 GETIMPORT                        R7 K6 [Instance.new]
       20 LOADK                            R8 K7 ["Wire"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 1
       23 SETTABLEKS                       R8 R7 K8 ["SourceInstance"]
       25 GETTABLEKS                       R8 R6 K9 ["TargetName"]
       27 SETTABLEKS                       R8 R7 K9 ["TargetName"]
       29 GETTABLEKS                       R8 R6 K10 ["TargetInstance"]
       31 SETTABLEKS                       R8 R7 K10 ["TargetInstance"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K1 ["Parent"]
       36 SETTABLEKS                       R8 R7 K1 ["Parent"]
       38 GETUPVAL                         R9 2
       39 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       41 MOVE                             R10 R7
       42 GETIMPORT                        R8 K13 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R2 2 ; [-28]
       47 GETTABLEKS                       R2 R1 K14 ["WiringChanged"]
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 NAMECALL                         R2 R2 K15 ["Connect"]
       54 CALL                             R2 2 1
       55 SETUPVAL                         R2 3
       56 RETURN                           R0 0
       57 GETIMPORT                        R2 K6 [Instance.new]
       59 LOADK                            R3 K16 ["AudioDeviceOutput"]
       60 CALL                             R2 1 1
       61 GETIMPORT                        R3 K6 [Instance.new]
       63 LOADK                            R4 K7 ["Wire"]
       64 CALL                             R3 1 1
       65 GETUPVAL                         R4 1
       66 SETTABLEKS                       R4 R3 K8 ["SourceInstance"]
       68 SETTABLEKS                       R2 R3 K10 ["TargetInstance"]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K1 ["Parent"]
       73 SETTABLEKS                       R4 R2 K1 ["Parent"]
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K1 ["Parent"]
       78 SETTABLEKS                       R4 R3 K1 ["Parent"]
       80 GETUPVAL                         R5 2
       81 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       83 MOVE                             R6 R2
       84 GETIMPORT                        R4 K13 [table.insert]
       86 CALL                             R4 2 0
       87 GETUPVAL                         R5 2
       88 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       90 MOVE                             R6 R3
       91 GETIMPORT                        R4 K13 [table.insert]
       93 CALL                             R4 2 0
       94 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K1 ["Destroy"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 NEWTABLE                         R0 0 0
       19 SETUPVAL                         R0 1
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Volume"]
        6 SETTABLEKS                       R2 R1 K0 ["Volume"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R2 R0 K1 ["PlaybackSpeed"]
       11 SETTABLEKS                       R2 R1 K1 ["PlaybackSpeed"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R2 R0 K2 ["Looping"]
       16 SETTABLEKS                       R2 R1 K2 ["Looping"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R2 R0 K3 ["PlaybackRegion"]
       21 SETTABLEKS                       R2 R1 K3 ["PlaybackRegion"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R2 R0 K4 ["LoopRegion"]
       26 SETTABLEKS                       R2 R1 K4 ["LoopRegion"]
       28 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 ADDK                             R1 R1 K0 [1]
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 GETIMPORT                        R3 K3 [Content.fromUri]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K4 ["AudioContent"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["IsReady"]
       17 JUMPIF                           R2 ; [+10]
       18 GETUPVAL                         R2 1
       19 JUMPIFNOTEQ                      R2 R1 ; [+8]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K6 ["Heartbeat"]
       24 NAMECALL                         R2 R2 K7 ["Wait"]
       26 CALL                             R2 1 0
       27 JUMPBACK                         ; [-14]
       28 GETUPVAL                         R2 1
       29 JUMPIFEQ                         R2 R1 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 3
       33 LOADK                            R4 K8 ["OnTimeLengthReceived"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K9 ["TimeLength"]
       37 NAMECALL                         R2 R2 K10 ["Invoke"]
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["IsReady"]
        6 JUMPIF                           R1 ; [+8]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K1 ["OnWaveformReceived"]
        9 NEWTABLE                         R4 0 0
       11 NAMECALL                         R1 R1 K2 ["Invoke"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETIMPORT                        R3 K5 [NumberRange.new]
       18 LOADN                            R4 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["TimeLength"]
       22 CALL                             R3 2 1
       23 MOVE                             R4 R0
       24 NAMECALL                         R1 R1 K7 ["GetWaveformAsync"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R2 1
       28 LOADK                            R4 K1 ["OnWaveformReceived"]
       29 MOVE                             R5 R1
       30 NAMECALL                         R2 R2 K2 ["Invoke"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["IsPlaying"]
        6 JUMPIF                           R0 ; [+10]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["Play"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 LOADK                            R2 K2 ["OnIsPlayingUpdated"]
       13 LOADB                            R3 1
       14 NAMECALL                         R0 R0 K3 ["Invoke"]
       16 CALL                             R0 3 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K4 ["TimePosition"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["IsPlaying"]
       23 JUMPIFNOT                        R1 ; [+23]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K5 ["Heartbeat"]
       27 NAMECALL                         R1 R1 K6 ["Wait"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K4 ["TimePosition"]
       33 JUMPIFEQ                         R1 R0 ; [+12]
       35 GETUPVAL                         R1 1
       36 LOADK                            R3 K7 ["OnTimePositionUpdated"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K4 ["TimePosition"]
       40 NAMECALL                         R1 R1 K3 ["Invoke"]
       42 CALL                             R1 3 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R0 R1 K4 ["TimePosition"]
       46 JUMPBACK                         ; [-27]
       47 GETUPVAL                         R1 1
       48 LOADK                            R3 K2 ["OnIsPlayingUpdated"]
       49 LOADB                            R4 0
       50 NAMECALL                         R1 R1 K3 ["Invoke"]
       52 CALL                             R1 3 0
       53 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Stop"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R0 R1 K0 ["TimePosition"]
        6 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K0 ["AudioPlayer"]
        3 NAMECALL                         R2 R2 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 GETUPVAL                         R1 0
        8 JUMP                             ; [+11]
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K2 ["Sound"]
       11 NAMECALL                         R2 R2 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETUPVAL                         R2 0
       16 NAMECALL                         R2 R2 K3 ["GetUnderlyingAudioPlayer"]
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["setupPreviewInstances"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["teardown"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K3 [Instance.new]
        9 LOADK                            R2 K4 ["Folder"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K5 ["AudioPlayerEditor_Container"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 GETIMPORT                        R2 K3 [Instance.new]
       19 LOADK                            R3 K8 ["AudioPlayer"]
       20 CALL                             R2 1 1
       21 SETUPVAL                         R2 3
       22 GETUPVAL                         R3 3
       23 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       25 LOADK                            R4 K9 ["audioPlayer was nil"]
       26 GETIMPORT                        R2 K11 [assert]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 3
       30 SETTABLEKS                       R1 R2 K7 ["Parent"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K12 ["setupPreviewInstances"]
       35 LOADB                            R3 0
       36 CALL                             R2 1 0
       37 LOADN                            R2 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       41 LOADK                            R4 K14 ["OnAssignPropertiesRequested"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U3
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       48 LOADK                            R4 K15 ["OnLoadAndTimeLengthRequested"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          REF R2
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U1
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       58 LOADK                            R4 K16 ["OnWaveformRequested"]
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U1
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       66 LOADK                            R4 K17 ["OnPlayRequested"]
       67 NEWCLOSURE                       R5 P3
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U4
       71 CALL                             R3 2 0
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       75 LOADK                            R4 K18 ["OnStopRequested"]
       76 NEWCLOSURE                       R5 P4
       77 CAPTURE                          UPVAL U3
       78 CALL                             R3 2 0
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       82 LOADK                            R4 K19 ["OnSeekRequested"]
       83 NEWCLOSURE                       R5 P5
       84 CAPTURE                          UPVAL U3
       85 CALL                             R3 2 0
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K13 ["onInvoke"]
       89 LOADK                            R4 K20 ["OnTogglePreviewInWorld"]
       90 NEWCLOSURE                       R5 P6
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U0
       93 CALL                             R3 2 0
       94 CLOSEUPVALS                      R2
       95 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AudioPlayerEditor_Container"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 NAMECALL                         R1 R0 K2 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["teardownPreviewInstances"]
       12 CALL                             R1 0 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 2
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["OnAssignPropertiesRequested"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["Invoke"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onInvoke"]
        6 LOADK                            R3 K1 ["OnTimeLengthReceived"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K2 ["OnLoadAndTimeLengthRequested"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K3 ["Invoke"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onInvoke"]
        6 LOADK                            R3 K1 ["OnWaveformReceived"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K2 ["OnWaveformRequested"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K3 ["Invoke"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onInvoke"]
        6 LOADK                            R3 K1 ["OnIsPlayingUpdated"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["onInvoke"]
       12 LOADK                            R3 K2 ["OnTimePositionUpdated"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K3 ["OnPlayRequested"]
       17 NAMECALL                         R2 R2 K4 ["Invoke"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 LOADK                            R2 K0 ["OnStopRequested"]
        5 NAMECALL                         R0 R0 K1 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["OnSeekRequested"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["Invoke"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfoAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_22:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^rbxassetid://(%d+)$"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+4]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K4 [""]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K6 [tonumber]
       14 CALL                             R3 1 1
       15 JUMPIF                           R3 ; [+4]
       16 MOVE                             R4 R1
       17 LOADK                            R5 K4 [""]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R4 K8 [pcall]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 2
       26 JUMPIFNOT                        R4 ; [+1]
       27 JUMPIF                           R5 ; [+4]
       28 MOVE                             R6 R1
       29 LOADK                            R7 K4 [""]
       30 CALL                             R6 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R6 R5 K9 ["AssetTypeId"]
       34 GETIMPORT                        R7 K13 [Enum.AssetType.Audio]
       36 GETTABLEKS                       R7 R7 K14 ["Value"]
       38 JUMPIFEQ                         R6 R7 ; [+5]
       40 MOVE                             R6 R1
       41 LOADK                            R7 K4 [""]
       42 CALL                             R6 1 0
       43 RETURN                           R0 0
       44 MOVE                             R6 R1
       45 GETTABLEKS                       R8 R5 K15 ["Name"]
       47 ORK                              R7 R8 K4 [""]
       48 CALL                             R6 1 0
       49 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["OnTogglePreviewInWorld"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["Invoke"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["GuiService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["MarketplaceService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RunService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["SoundService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R0 K13 ["Src"]
       35 GETTABLEKS                       R6 R6 K14 ["Types"]
       37 CALL                             R5 1 1
       38 DUPTABLE                         R6 K32 [{["OnAssignPropertiesRequested"] = "OnAssignPropertiesRequested", ["OnLoadAndTimeLengthRequested"] = "OnLoadAndTimeLengthRequested", ["OnTimeLengthReceived"] = "OnTimeLengthReceived", ["OnWaveformRequested"] = "OnWaveformRequested", ["OnWaveformReceived"] = "OnWaveformReceived", ["OnPlayRequested"] = "OnPlayRequested", ["OnStopRequested"] = "OnStopRequested", ["OnSeekRequested"] = "OnSeekRequested", ["OnIsPlayingUpdated"] = "OnIsPlayingUpdated", ["OnTimePositionUpdated"] = "OnTimePositionUpdated", ["OnTogglePreviewInWorld"] = "OnTogglePreviewInWorld", ["InstanceContainer"] = "AudioPlayerEditor_Container", ["Folder"] = "Folder", ["AudioPlayer"] = "AudioPlayer", ["AudioDeviceOutput"] = "AudioDeviceOutput", ["Wire"] = "Wire"}]
       39 NEWTABLE                         R7 16 0
       41 LOADNIL                          R8
       42 NEWTABLE                         R9 0 0
       44 LOADNIL                          R10
       45 NEWTABLE                         R11 0 0
       47 LOADNIL                          R12
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          REF R8
       50 SETTABLEKS                       R13 R7 K33 ["setPlugin"]
       52 DUPCLOSURE                       R13 K34 [PROTO_1]
       53 CAPTURE                          VAL R9
       54 SETTABLEKS                       R13 R7 K35 ["disconnectOnInvoke"]
       56 NEWCLOSURE                       R13 P2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R9
       59 CAPTURE                          REF R8
       60 SETTABLEKS                       R13 R7 K36 ["onInvoke"]
       62 NEWCLOSURE                       R13 P3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          REF R10
       65 CAPTURE                          REF R11
       66 CAPTURE                          REF R12
       67 SETTABLEKS                       R13 R7 K37 ["setupPreviewInstances"]
       69 NEWCLOSURE                       R13 P4
       70 CAPTURE                          REF R12
       71 CAPTURE                          REF R11
       72 SETTABLEKS                       R13 R7 K38 ["teardownPreviewInstances"]
       74 NEWCLOSURE                       R13 P5
       75 CAPTURE                          VAL R7
       76 CAPTURE                          REF R8
       77 CAPTURE                          VAL R1
       78 CAPTURE                          REF R10
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R13 R7 K39 ["setupForInstance"]
       82 NEWCLOSURE                       R13 P6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          REF R10
       86 SETTABLEKS                       R13 R7 K40 ["teardown"]
       88 NEWCLOSURE                       R13 P7
       89 CAPTURE                          REF R8
       90 SETTABLEKS                       R13 R7 K41 ["assignProperties"]
       92 NEWCLOSURE                       R13 P8
       93 CAPTURE                          REF R8
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R13 R7 K42 ["loadAndFetchTimeLength"]
       97 NEWCLOSURE                       R13 P9
       98 CAPTURE                          REF R8
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R13 R7 K43 ["fetchWaveform"]
      102 NEWCLOSURE                       R13 P10
      103 CAPTURE                          REF R8
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R13 R7 K44 ["beginPlayback"]
      107 NEWCLOSURE                       R13 P11
      108 CAPTURE                          REF R8
      109 SETTABLEKS                       R13 R7 K45 ["stopPlayback"]
      111 NEWCLOSURE                       R13 P12
      112 CAPTURE                          REF R8
      113 SETTABLEKS                       R13 R7 K46 ["seek"]
      115 DUPCLOSURE                       R13 K47 [PROTO_22]
      116 CAPTURE                          VAL R2
      117 SETTABLEKS                       R13 R7 K48 ["getAssetName"]
      119 NEWCLOSURE                       R13 P14
      120 CAPTURE                          REF R8
      121 SETTABLEKS                       R13 R7 K49 ["togglePreviewInWorld"]
      123 CLOSEUPVALS                      R8
      124 RETURN                           R7 1
