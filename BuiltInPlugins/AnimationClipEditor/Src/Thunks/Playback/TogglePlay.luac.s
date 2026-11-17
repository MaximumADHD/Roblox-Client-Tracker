PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R2 ; [+45]
        6 GETTABLEKS                       R3 R2 K2 ["Metadata"]
        8 JUMPIFNOT                        R3 ; [+42]
        9 GETTABLEKS                       R3 R2 K2 ["Metadata"]
       11 GETTABLEKS                       R3 R3 K3 ["EndTick"]
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R3 ; [+36]
       16 NAMECALL                         R3 R0 K0 ["getState"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K4 ["Status"]
       21 GETTABLEKS                       R3 R3 K5 ["PlayState"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["PLAY_STATE"]
       26 GETTABLEKS                       R4 R4 K7 ["Pause"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+12]
       30 GETUPVAL                         R5 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K6 ["PLAY_STATE"]
       34 GETTABLEKS                       R6 R6 K8 ["Play"]
       36 CALL                             R5 1 -1
       37 NAMECALL                         R3 R0 K9 ["dispatch"]
       39 CALL                             R3 -1 0
       40 JUMP                             ; [+10]
       41 GETUPVAL                         R5 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K6 ["PLAY_STATE"]
       45 GETTABLEKS                       R6 R6 K7 ["Pause"]
       47 CALL                             R5 1 -1
       48 NAMECALL                         R3 R0 K9 ["dispatch"]
       50 CALL                             R3 -1 0
       51 GETUPVAL                         R3 2
       52 LOADK                            R5 K10 ["onControlPressed"]
       53 LOADK                            R6 K11 ["TogglePlay"]
       54 NAMECALL                         R3 R3 K12 ["report"]
       56 CALL                             R3 3 0
       57 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Actions"]
       22 GETTABLEKS                       R3 R3 K10 ["SetPlayState"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
