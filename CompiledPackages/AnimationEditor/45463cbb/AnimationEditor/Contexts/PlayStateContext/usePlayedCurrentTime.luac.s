PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["timeRange"]
        3 GETTABLEKS                       R0 R0 K1 ["Min"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLEKS                       R4 R4 K1 ["Min"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["current"]
        9 GETTABLEKS                       R5 R5 K2 ["Max"]
       11 FASTCALL3                        MATH_CLAMP R0 R4 R5
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K5 [math.clamp]
       16 CALL                             R2 3 1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["Min"]
        5 GETUPVAL                         R5 1
        6 GETIMPORT                        R8 K4 [os.clock]
        8 CALL                             R8 0 1
        9 GETUPVAL                         R9 2
       10 SUB                              R7 R8 R9
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K0 ["current"]
       14 MUL                              R6 R7 R8
       15 ADD                              R4 R5 R6
       16 GETTABLEKS                       R6 R0 K5 ["Max"]
       18 GETTABLEKS                       R7 R0 K1 ["Min"]
       20 SUB                              R5 R6 R7
       21 MOD                              R3 R4 R5
       22 ADD                              R1 R2 R3
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isAutomaticallyPlayingRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isAutomaticallyPlayingRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETIMPORT                        R1 K4 [os.clock]
       11 CALL                             R1 0 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U4
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K5 ["RenderStepped"]
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K6 ["Connect"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["isAutomaticallyPlayingRef"]
       29 GETTABLEKS                       R4 R4 K1 ["current"]
       31 JUMPIF                           R4 ; [+1]
       32 JUMP                             ; [+7]
       33 GETUPVAL                         R4 2
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CALL                             R4 1 0
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRefToState"]
        3 GETTABLEKS                       R2 R0 K1 ["timeRange"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRefToState"]
        9 GETTABLEKS                       R3 R0 K2 ["playbackSpeed"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K1 ["timeRange"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["useState"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 2
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R8 0 1
       37 MOVE                             R9 R1
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U2
       51 NEWTABLE                         R9 0 2
       53 GETTABLEKS                       R10 R0 K6 ["isAutomaticallyPlayingRef"]
       55 GETTABLEKS                       R10 R10 K7 ["current"]
       57 MOVE                             R11 R1
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 MOVE                             R7 R4
       62 MOVE                             R8 R6
       63 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_6]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 RETURN                           R4 1
