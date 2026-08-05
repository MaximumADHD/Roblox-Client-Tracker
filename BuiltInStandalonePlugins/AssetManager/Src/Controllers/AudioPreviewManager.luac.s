PROTO_0:
        0 DUPTABLE                         R3 K12 [{[1], ["_currentSoundId"] = 0, ["_isPlaying"] = False, ["_isLoading"] = False, ["_totalTime"] = 0, ["_audioPlayer"] = , ["_connections"], ["OnStateChanged"], ["OnProgressChanged"]}]
        1 ORK                              R4 R1 K4 [False]
        2 SETTABLEKS                       R4 R3 K0 ["_isMock"]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R3 K9 ["_connections"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K13 ["new"]
       11 CALL                             R4 0 1
       12 SETTABLEKS                       R4 R3 K10 ["OnStateChanged"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K13 ["new"]
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K11 ["OnProgressChanged"]
       20 GETUPVAL                         R4 1
       21 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       23 GETIMPORT                        R2 K15 [setmetatable]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isPlaying"]
        3 JUMPIFNOT                        R0 ; [+33]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_audioPlayer"]
        7 GETUPVAL                         R1 1
        8 JUMPIFNOTEQ                      R0 R1 ; [+28]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["_totalTime"]
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+22]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["TimePosition"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K2 ["_totalTime"]
       22 DIV                              R2 R3 R4
       23 MULK                             R1 R2 K3 [100]
       24 FASTCALL2K                       MATH_MIN R1 K3 ; [+4]
       26 LOADK                            R2 K3 [100]
       27 GETIMPORT                        R0 K7 [math.min]
       29 CALL                             R0 2 1
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K8 ["OnProgressChanged"]
       33 MOVE                             R3 R0
       34 NAMECALL                         R1 R1 K9 ["Fire"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_isPlaying"]
        4 GETUPVAL                         R0 0
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["_currentSoundId"]
        8 GETUPVAL                         R0 0
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["_totalTime"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["OnProgressChanged"]
       15 LOADN                            R2 0
       16 NAMECALL                         R0 R0 K4 ["Fire"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K5 ["OnStateChanged"]
       22 NAMECALL                         R0 R0 K4 ["Fire"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["teardownAudioPlayer"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K3 [Instance.new]
        5 LOADK                            R2 K4 ["AudioPlayer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K5 ["Parent"]
       10 GETIMPORT                        R2 K3 [Instance.new]
       12 LOADK                            R3 K6 ["AudioDeviceOutput"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R1 R2 K5 ["Parent"]
       16 GETIMPORT                        R3 K3 [Instance.new]
       18 LOADK                            R4 K7 ["Wire"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R1 R3 K8 ["SourceInstance"]
       22 SETTABLEKS                       R2 R3 K9 ["TargetInstance"]
       24 SETTABLEKS                       R1 R3 K5 ["Parent"]
       26 SETTABLEKS                       R1 R0 K10 ["_audioPlayer"]
       28 GETTABLEKS                       R4 R0 K11 ["_connections"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K12 ["Heartbeat"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 NAMECALL                         R5 R5 K13 ["Connect"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K12 ["Heartbeat"]
       41 GETTABLEKS                       R4 R0 K11 ["_connections"]
       43 GETTABLEKS                       R5 R1 K14 ["Ended"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R5 R5 K13 ["Connect"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K14 ["Ended"]
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K0 ["_connections"]
        8 GETTABLEKS                       R1 R0 K1 ["_audioPlayer"]
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETTABLEKS                       R1 R0 K1 ["_audioPlayer"]
       13 NAMECALL                         R1 R1 K2 ["Destroy"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K1 ["_audioPlayer"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["rbxassetid://%*"]
        2 GETUPVAL                         R5 1
        3 FASTCALL1                        TOSTRING R5 ; [+2]
        4 GETIMPORT                        R4 K2 [tostring]
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 SETTABLEKS                       R1 R0 K4 ["Asset"]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K5 ["IsReady"]
       16 JUMPIF                           R0 ; [+14]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K6 ["Heartbeat"]
       20 NAMECALL                         R0 R0 K7 ["Wait"]
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K8 ["_audioPlayer"]
       26 GETUPVAL                         R1 0
       27 JUMPIFEQ                         R0 R1 ; [+2]
       29 RETURN                           R0 0
       30 JUMPBACK                         ; [-18]
       31 GETUPVAL                         R0 3
       32 GETTABLEKS                       R0 R0 K8 ["_audioPlayer"]
       34 GETUPVAL                         R1 0
       35 JUMPIFEQ                         R0 R1 ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 3
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K9 ["TimeLength"]
       42 SETTABLEKS                       R1 R0 K10 ["_totalTime"]
       44 GETUPVAL                         R0 3
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K11 ["_isLoading"]
       48 GETUPVAL                         R0 3
       49 LOADB                            R1 1
       50 SETTABLEKS                       R1 R0 K12 ["_isPlaying"]
       52 GETUPVAL                         R0 3
       53 GETTABLEKS                       R0 R0 K13 ["OnStateChanged"]
       55 NAMECALL                         R0 R0 K14 ["Fire"]
       57 CALL                             R0 1 0
       58 GETUPVAL                         R0 0
       59 NAMECALL                         R0 R0 K15 ["Play"]
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_isMock"]
        2 JUMPIFNOT                        R2 ; [+23]
        3 SETTABLEKS                       R1 R0 K1 ["_currentSoundId"]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R0 K2 ["_isPlaying"]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R0 K3 ["_isLoading"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R0 K4 ["_totalTime"]
       14 GETTABLEKS                       R2 R0 K5 ["OnProgressChanged"]
       16 LOADN                            R4 0
       17 NAMECALL                         R2 R2 K6 ["Fire"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R0 K7 ["OnStateChanged"]
       22 NAMECALL                         R2 R2 K6 ["Fire"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 NAMECALL                         R2 R0 K8 ["_setupAudioPlayer"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R0 K9 ["_audioPlayer"]
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R0 K1 ["_currentSoundId"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R0 K2 ["_isPlaying"]
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R0 K3 ["_isLoading"]
       41 LOADN                            R3 0
       42 SETTABLEKS                       R3 R0 K4 ["_totalTime"]
       44 GETTABLEKS                       R3 R0 K5 ["OnProgressChanged"]
       46 LOADN                            R5 0
       47 NAMECALL                         R3 R3 K6 ["Fire"]
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R3 R0 K7 ["OnStateChanged"]
       52 NAMECALL                         R3 R3 K6 ["Fire"]
       54 CALL                             R3 1 0
       55 GETIMPORT                        R3 K12 [task.spawn]
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isPlaying"]
        3 GETTABLEKS                       R1 R0 K1 ["OnStateChanged"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_audioPlayer"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K3 ["_audioPlayer"]
       13 NAMECALL                         R1 R1 K4 ["Stop"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isPlaying"]
        3 GETTABLEKS                       R1 R0 K1 ["OnStateChanged"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_audioPlayer"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K3 ["_audioPlayer"]
       13 NAMECALL                         R1 R1 K4 ["Play"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_currentSoundId"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["_isPlaying"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["_totalTime"]
        9 GETTABLEKS                       R1 R0 K3 ["OnProgressChanged"]
       11 LOADN                            R3 0
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 2 0
       15 NAMECALL                         R1 R0 K5 ["teardownAudioPlayer"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K6 ["OnStateChanged"]
       20 NAMECALL                         R1 R1 K4 ["Fire"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K4 [{"CurrentSoundId", "IsPlaying", "IsLoading", "TotalTime"}]
        1 GETTABLEKS                       R2 R0 K5 ["_currentSoundId"]
        3 SETTABLEKS                       R2 R1 K0 ["CurrentSoundId"]
        5 GETTABLEKS                       R2 R0 K6 ["_isPlaying"]
        7 SETTABLEKS                       R2 R1 K1 ["IsPlaying"]
        9 GETTABLEKS                       R2 R0 K7 ["_isLoading"]
       11 SETTABLEKS                       R2 R1 K2 ["IsLoading"]
       13 GETTABLEKS                       R2 R0 K8 ["_totalTime"]
       15 SETTABLEKS                       R2 R1 K3 ["TotalTime"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssetManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["Util"]
       28 GETTABLEKS                       R4 R4 K14 ["Signal"]
       30 GETIMPORT                        R5 K10 [require]
       32 GETTABLEKS                       R6 R2 K15 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Util"]
       36 GETTABLEKS                       R6 R6 K16 ["cleanConnections"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 16 0
       41 SETTABLEKS                       R6 R6 K17 ["__index"]
       43 DUPCLOSURE                       R7 K18 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R7 R6 K19 ["new"]
       48 DUPCLOSURE                       R7 K20 [PROTO_3]
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R7 R6 K21 ["_setupAudioPlayer"]
       53 DUPCLOSURE                       R7 K22 [PROTO_4]
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K23 ["teardownAudioPlayer"]
       57 DUPCLOSURE                       R7 K24 [PROTO_6]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R7 R6 K25 ["play"]
       61 DUPCLOSURE                       R7 K26 [PROTO_7]
       62 SETTABLEKS                       R7 R6 K27 ["pause"]
       64 DUPCLOSURE                       R7 K28 [PROTO_8]
       65 SETTABLEKS                       R7 R6 K29 ["resume"]
       67 DUPCLOSURE                       R7 K30 [PROTO_9]
       68 SETTABLEKS                       R7 R6 K31 ["stop"]
       70 DUPCLOSURE                       R7 K32 [PROTO_10]
       71 SETTABLEKS                       R7 R6 K33 ["getState"]
       73 RETURN                           R6 1
