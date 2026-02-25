PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R6 1
        7 CALL                             R5 1 -1
        8 NAMECALL                         R3 R0 K2 ["dispatch"]
       10 CALL                             R3 -1 0
       11 JUMPIFNOT                        R2 ; [+48]
       12 GETTABLEKS                       R3 R2 K3 ["Metadata"]
       14 JUMPIFNOT                        R3 ; [+45]
       15 GETTABLEKS                       R4 R2 K3 ["Metadata"]
       17 GETTABLEKS                       R3 R4 K4 ["EndTick"]
       19 LOADN                            R4 0
       20 JUMPIFNOTLT                      R4 R3 ; [+39]
       22 NAMECALL                         R6 R0 K0 ["getState"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R5 R6 K5 ["Status"]
       27 GETTABLEKS                       R4 R5 K6 ["PlayState"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K7 ["PLAY_STATE"]
       32 GETTABLEKS                       R5 R6 K8 ["Pause"]
       34 JUMPIFNOTEQ                      R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+21]
       39 DUPTABLE                         R4 K11 [{"startTime", "startPlayhead"}]
       40 GETIMPORT                        R5 K13 [tick]
       42 CALL                             R5 0 1
       43 SETTABLEKS                       R5 R4 K9 ["startTime"]
       45 NAMECALL                         R7 R0 K0 ["getState"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R6 R7 K5 ["Status"]
       50 GETTABLEKS                       R5 R6 K14 ["Playhead"]
       52 SETTABLEKS                       R5 R4 K10 ["startPlayhead"]
       54 GETUPVAL                         R7 3
       55 MOVE                             R8 R4
       56 CALL                             R7 1 -1
       57 NAMECALL                         R5 R0 K2 ["dispatch"]
       59 CALL                             R5 -1 0
       60 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetPlaybackSpeed"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["SetPlaybackStartInfo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["Constants"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R4 1
