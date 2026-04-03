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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["disconnectOnInvoke"]
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
        0 JUMPIFNOT                        R0 ; [+28]
        1 GETIMPORT                        R4 K2 [Instance.new]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["Wire"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K4 ["SourceInstance"]
       10 GETTABLEKS                       R5 R2 K5 ["TargetName"]
       12 SETTABLEKS                       R5 R4 K5 ["TargetName"]
       14 SETTABLEKS                       R3 R4 K6 ["TargetInstance"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K7 ["Parent"]
       19 SETTABLEKS                       R5 R4 K7 ["Parent"]
       21 GETUPVAL                         R6 2
       22 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       24 MOVE                             R7 R4
       25 GETIMPORT                        R5 K10 [table.insert]
       27 CALL                             R5 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 2
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R11 R12 K3 ["Wire"]
       36 NAMECALL                         R9 R8 K11 ["IsA"]
       38 CALL                             R9 2 1
       39 JUMPIF                           R9 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K3 ["Wire"]
       44 NAMECALL                         R9 R8 K11 ["IsA"]
       46 CALL                             R9 2 1
       47 JUMPIFNOT                        R9 ; [+19]
       48 GETTABLEKS                       R9 R8 K6 ["TargetInstance"]
       50 JUMPIFNOTEQ                      R9 R3 ; [+16]
       52 GETTABLEKS                       R9 R8 K5 ["TargetName"]
       54 GETTABLEKS                       R10 R2 K5 ["TargetName"]
       56 JUMPIFNOTEQ                      R9 R10 ; [+10]
       58 NAMECALL                         R9 R8 K12 ["Destroy"]
       60 CALL                             R9 1 0
       61 GETIMPORT                        R9 K14 [table.remove]
       63 GETUPVAL                         R10 2
       64 MOVE                             R11 R7
       65 CALL                             R9 2 0
       66 RETURN                           R0 0
       67 FORGLOOP                         R4 2 ; [-35]
       69 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["teardownPreviewInstances"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["Parent"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R0 ; [+48]
       12 JUMPIFNOT                        R1 ; [+47]
       13 LOADK                            R4 K2 ["Output"]
       14 NAMECALL                         R2 R1 K3 ["GetConnectedWires"]
       16 CALL                             R2 2 3
       17 FORGPREP                         R2
       18 GETIMPORT                        R7 K6 [Instance.new]
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R8 R9 K7 ["Wire"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 1
       25 SETTABLEKS                       R8 R7 K8 ["SourceInstance"]
       27 GETTABLEKS                       R8 R6 K9 ["TargetName"]
       29 SETTABLEKS                       R8 R7 K9 ["TargetName"]
       31 GETTABLEKS                       R8 R6 K10 ["TargetInstance"]
       33 SETTABLEKS                       R8 R7 K10 ["TargetInstance"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R8 R9 K1 ["Parent"]
       38 SETTABLEKS                       R8 R7 K1 ["Parent"]
       40 GETUPVAL                         R9 3
       41 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       43 MOVE                             R10 R7
       44 GETIMPORT                        R8 K13 [table.insert]
       46 CALL                             R8 2 0
       47 FORGLOOP                         R2 2 ; [-30]
       49 GETTABLEKS                       R2 R1 K14 ["WiringChanged"]
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U3
       55 NAMECALL                         R2 R2 K15 ["Connect"]
       57 CALL                             R2 2 1
       58 SETUPVAL                         R2 4
       59 RETURN                           R0 0
       60 GETIMPORT                        R2 K6 [Instance.new]
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R3 R4 K16 ["AudioDeviceOutput"]
       65 CALL                             R2 1 1
       66 GETIMPORT                        R3 K6 [Instance.new]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R4 R5 K7 ["Wire"]
       71 CALL                             R3 1 1
       72 GETUPVAL                         R4 1
       73 SETTABLEKS                       R4 R3 K8 ["SourceInstance"]
       75 SETTABLEKS                       R2 R3 K10 ["TargetInstance"]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R4 R5 K1 ["Parent"]
       80 SETTABLEKS                       R4 R2 K1 ["Parent"]
       82 GETUPVAL                         R5 1
       83 GETTABLEKS                       R4 R5 K1 ["Parent"]
       85 SETTABLEKS                       R4 R3 K1 ["Parent"]
       87 GETUPVAL                         R5 3
       88 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       90 MOVE                             R6 R2
       91 GETIMPORT                        R4 K13 [table.insert]
       93 CALL                             R4 2 0
       94 GETUPVAL                         R5 3
       95 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       97 MOVE                             R6 R3
       98 GETIMPORT                        R4 K13 [table.insert]
      100 CALL                             R4 2 0
      101 RETURN                           R0 0

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
        3 GETUPVAL                         R1 0
        4 GETIMPORT                        R2 K2 [Content.fromUri]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K3 ["AudioContent"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["IsReady"]
       13 JUMPIF                           R1 ; [+14]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["AudioContent"]
       17 GETTABLEKS                       R1 R2 K5 ["Uri"]
       19 JUMPIFNOTEQ                      R1 R0 ; [+8]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K6 ["Heartbeat"]
       24 NAMECALL                         R1 R1 K7 ["Wait"]
       26 CALL                             R1 1 0
       27 JUMPBACK                         ; [-18]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["AudioContent"]
       31 GETTABLEKS                       R1 R2 K5 ["Uri"]
       33 JUMPIFEQ                         R1 R0 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 2
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R3 R4 K8 ["OnTimeLengthReceived"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K9 ["TimeLength"]
       43 NAMECALL                         R1 R1 K10 ["Invoke"]
       45 CALL                             R1 3 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["IsReady"]
        6 JUMPIF                           R1 ; [+10]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["OnWaveformReceived"]
       11 NEWTABLE                         R4 0 0
       13 NAMECALL                         R1 R1 K2 ["Invoke"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 GETIMPORT                        R3 K5 [NumberRange.new]
       20 LOADN                            R4 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K6 ["TimeLength"]
       24 CALL                             R3 2 1
       25 MOVE                             R4 R0
       26 NAMECALL                         R1 R1 K7 ["GetWaveformAsync"]
       28 CALL                             R1 3 1
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K1 ["OnWaveformReceived"]
       33 MOVE                             R5 R1
       34 NAMECALL                         R2 R2 K2 ["Invoke"]
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["IsPlaying"]
        6 JUMPIF                           R0 ; [+12]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["Play"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K2 ["OnIsPlayingUpdated"]
       15 LOADB                            R3 1
       16 NAMECALL                         R0 R0 K3 ["Invoke"]
       18 CALL                             R0 3 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K4 ["TimePosition"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K0 ["IsPlaying"]
       25 JUMPIFNOT                        R1 ; [+25]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R1 R2 K5 ["Heartbeat"]
       29 NAMECALL                         R1 R1 K6 ["Wait"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K4 ["TimePosition"]
       35 JUMPIFEQ                         R1 R0 ; [+14]
       37 GETUPVAL                         R1 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K7 ["OnTimePositionUpdated"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K4 ["TimePosition"]
       44 NAMECALL                         R1 R1 K3 ["Invoke"]
       46 CALL                             R1 3 0
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R0 R1 K4 ["TimePosition"]
       50 JUMPBACK                         ; [-29]
       51 GETUPVAL                         R1 1
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R3 R4 K2 ["OnIsPlayingUpdated"]
       55 LOADB                            R4 0
       56 NAMECALL                         R1 R1 K3 ["Invoke"]
       58 CALL                             R1 3 0
       59 RETURN                           R0 0

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
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K4 ["setupPreviewInstances"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["teardown"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K3 [Instance.new]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["Folder"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["InstanceContainer"]
       16 SETTABLEKS                       R2 R1 K6 ["Name"]
       18 GETUPVAL                         R2 3
       19 SETTABLEKS                       R2 R1 K7 ["Parent"]
       21 GETIMPORT                        R2 K3 [Instance.new]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K8 ["AudioPlayer"]
       26 CALL                             R2 1 1
       27 SETUPVAL                         R2 4
       28 GETUPVAL                         R3 4
       29 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       31 LOADK                            R4 K9 ["audioPlayer was nil"]
       32 GETIMPORT                        R2 K11 [assert]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 4
       36 SETTABLEKS                       R1 R2 K7 ["Parent"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K12 ["setupPreviewInstances"]
       41 LOADB                            R3 0
       42 CALL                             R2 1 0
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K14 ["OnAssignPropertiesRequested"]
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U4
       51 CALL                             R2 2 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K15 ["OnLoadAndTimeLengthRequested"]
       58 NEWCLOSURE                       R4 P1
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U2
       63 CALL                             R2 2 0
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R3 R4 K16 ["OnWaveformRequested"]
       70 NEWCLOSURE                       R4 P2
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U2
       74 CALL                             R2 2 0
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R3 R4 K17 ["OnPlayRequested"]
       81 NEWCLOSURE                       R4 P3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          UPVAL U5
       86 CALL                             R2 2 0
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       90 GETUPVAL                         R4 2
       91 GETTABLEKS                       R3 R4 K18 ["OnStopRequested"]
       93 NEWCLOSURE                       R4 P4
       94 CAPTURE                          UPVAL U4
       95 CALL                             R2 2 0
       96 GETUPVAL                         R3 0
       97 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
       99 GETUPVAL                         R4 2
      100 GETTABLEKS                       R3 R4 K19 ["OnSeekRequested"]
      102 NEWCLOSURE                       R4 P5
      103 CAPTURE                          UPVAL U4
      104 CALL                             R2 2 0
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R2 R3 K13 ["onInvoke"]
      108 GETUPVAL                         R4 2
      109 GETTABLEKS                       R3 R4 K20 ["OnTogglePreviewInWorld"]
      111 NEWCLOSURE                       R4 P6
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U0
      114 CALL                             R2 2 0
      115 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["InstanceContainer"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+3]
        8 NAMECALL                         R1 R0 K2 ["Destroy"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K3 ["teardownPreviewInstances"]
       14 CALL                             R1 0 0
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 3
       17 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnAssignPropertiesRequested"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K1 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["onInvoke"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["OnTimeLengthReceived"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["OnLoadAndTimeLengthRequested"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R2 R2 K3 ["Invoke"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["onInvoke"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["OnWaveformReceived"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["OnWaveformRequested"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R2 R2 K3 ["Invoke"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["onInvoke"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["OnIsPlayingUpdated"]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K0 ["onInvoke"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["OnTimePositionUpdated"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K3 ["OnPlayRequested"]
       23 NAMECALL                         R2 R2 K4 ["Invoke"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["OnStopRequested"]
        7 NAMECALL                         R0 R0 K1 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnSeekRequested"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K1 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

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
       34 GETIMPORT                        R8 K13 [Enum.AssetType.Audio]
       36 GETTABLEKS                       R7 R8 K14 ["Value"]
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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnTogglePreviewInWorld"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K1 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

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
       33 GETTABLEKS                       R7 R0 K13 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Types"]
       37 CALL                             R5 1 1
       38 DUPTABLE                         R6 K31 [{"OnAssignPropertiesRequested", "OnLoadAndTimeLengthRequested", "OnTimeLengthReceived", "OnWaveformRequested", "OnWaveformReceived", "OnPlayRequested", "OnStopRequested", "OnSeekRequested", "OnIsPlayingUpdated", "OnTimePositionUpdated", "OnTogglePreviewInWorld", "InstanceContainer", "Folder", "AudioPlayer", "AudioDeviceOutput", "Wire"}]
       39 LOADK                            R7 K15 ["OnAssignPropertiesRequested"]
       40 SETTABLEKS                       R7 R6 K15 ["OnAssignPropertiesRequested"]
       42 LOADK                            R7 K16 ["OnLoadAndTimeLengthRequested"]
       43 SETTABLEKS                       R7 R6 K16 ["OnLoadAndTimeLengthRequested"]
       45 LOADK                            R7 K17 ["OnTimeLengthReceived"]
       46 SETTABLEKS                       R7 R6 K17 ["OnTimeLengthReceived"]
       48 LOADK                            R7 K18 ["OnWaveformRequested"]
       49 SETTABLEKS                       R7 R6 K18 ["OnWaveformRequested"]
       51 LOADK                            R7 K19 ["OnWaveformReceived"]
       52 SETTABLEKS                       R7 R6 K19 ["OnWaveformReceived"]
       54 LOADK                            R7 K20 ["OnPlayRequested"]
       55 SETTABLEKS                       R7 R6 K20 ["OnPlayRequested"]
       57 LOADK                            R7 K21 ["OnStopRequested"]
       58 SETTABLEKS                       R7 R6 K21 ["OnStopRequested"]
       60 LOADK                            R7 K22 ["OnSeekRequested"]
       61 SETTABLEKS                       R7 R6 K22 ["OnSeekRequested"]
       63 LOADK                            R7 K23 ["OnIsPlayingUpdated"]
       64 SETTABLEKS                       R7 R6 K23 ["OnIsPlayingUpdated"]
       66 LOADK                            R7 K24 ["OnTimePositionUpdated"]
       67 SETTABLEKS                       R7 R6 K24 ["OnTimePositionUpdated"]
       69 LOADK                            R7 K25 ["OnTogglePreviewInWorld"]
       70 SETTABLEKS                       R7 R6 K25 ["OnTogglePreviewInWorld"]
       72 LOADK                            R7 K32 ["AudioPlayerEditor_Container"]
       73 SETTABLEKS                       R7 R6 K26 ["InstanceContainer"]
       75 LOADK                            R7 K27 ["Folder"]
       76 SETTABLEKS                       R7 R6 K27 ["Folder"]
       78 LOADK                            R7 K28 ["AudioPlayer"]
       79 SETTABLEKS                       R7 R6 K28 ["AudioPlayer"]
       81 LOADK                            R7 K29 ["AudioDeviceOutput"]
       82 SETTABLEKS                       R7 R6 K29 ["AudioDeviceOutput"]
       84 LOADK                            R7 K30 ["Wire"]
       85 SETTABLEKS                       R7 R6 K30 ["Wire"]
       87 NEWTABLE                         R7 16 0
       89 LOADNIL                          R8
       90 NEWTABLE                         R9 0 0
       92 LOADNIL                          R10
       93 NEWTABLE                         R11 0 0
       95 LOADNIL                          R12
       96 NEWCLOSURE                       R13 P0
       97 CAPTURE                          REF R8
       98 SETTABLEKS                       R13 R7 K33 ["setPlugin"]
      100 DUPCLOSURE                       R13 K34 [PROTO_1]
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R13 R7 K35 ["disconnectOnInvoke"]
      104 NEWCLOSURE                       R13 P2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R9
      107 CAPTURE                          REF R8
      108 SETTABLEKS                       R13 R7 K36 ["onInvoke"]
      110 NEWCLOSURE                       R13 P3
      111 CAPTURE                          VAL R7
      112 CAPTURE                          REF R10
      113 CAPTURE                          VAL R6
      114 CAPTURE                          REF R11
      115 CAPTURE                          REF R12
      116 SETTABLEKS                       R13 R7 K37 ["setupPreviewInstances"]
      118 NEWCLOSURE                       R13 P4
      119 CAPTURE                          REF R12
      120 CAPTURE                          REF R11
      121 SETTABLEKS                       R13 R7 K38 ["teardownPreviewInstances"]
      123 NEWCLOSURE                       R13 P5
      124 CAPTURE                          VAL R7
      125 CAPTURE                          REF R8
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R1
      128 CAPTURE                          REF R10
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R13 R7 K39 ["setupForInstance"]
      132 NEWCLOSURE                       R13 P6
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          REF R10
      137 SETTABLEKS                       R13 R7 K40 ["teardown"]
      139 NEWCLOSURE                       R13 P7
      140 CAPTURE                          REF R8
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R13 R7 K41 ["assignProperties"]
      144 NEWCLOSURE                       R13 P8
      145 CAPTURE                          REF R8
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R6
      148 SETTABLEKS                       R13 R7 K42 ["loadAndFetchTimeLength"]
      150 NEWCLOSURE                       R13 P9
      151 CAPTURE                          REF R8
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R13 R7 K43 ["fetchWaveform"]
      156 NEWCLOSURE                       R13 P10
      157 CAPTURE                          REF R8
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R13 R7 K44 ["beginPlayback"]
      162 NEWCLOSURE                       R13 P11
      163 CAPTURE                          REF R8
      164 CAPTURE                          VAL R6
      165 SETTABLEKS                       R13 R7 K45 ["stopPlayback"]
      167 NEWCLOSURE                       R13 P12
      168 CAPTURE                          REF R8
      169 CAPTURE                          VAL R6
      170 SETTABLEKS                       R13 R7 K46 ["seek"]
      172 DUPCLOSURE                       R13 K47 [PROTO_22]
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R13 R7 K48 ["getAssetName"]
      176 NEWCLOSURE                       R13 P14
      177 CAPTURE                          REF R8
      178 CAPTURE                          VAL R6
      179 SETTABLEKS                       R13 R7 K49 ["togglePreviewInWorld"]
      181 CLOSEUPVALS                      R8
      182 RETURN                           R7 1
