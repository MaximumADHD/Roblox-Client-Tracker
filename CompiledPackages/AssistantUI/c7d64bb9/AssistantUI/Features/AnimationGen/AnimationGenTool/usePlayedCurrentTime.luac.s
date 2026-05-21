PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADN                            R4 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K0 ["duration"]
        5 FASTCALL3                        MATH_CLAMP R0 R4 R5
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K3 [math.clamp]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R5 K2 [os.clock]
        3 CALL                             R5 0 1
        4 GETUPVAL                         R6 1
        5 SUB                              R4 R5 R6
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K3 ["playbackSpeed"]
        9 MUL                              R3 R4 R5
       10 ADD                              R1 R2 R3
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["duration"]
       14 MOD                              R0 R1 R2
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["duration"]
        7 JUMPIFNOTEQKN                    R0 K2 [0] ; [+3]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 GETIMPORT                        R1 K5 [os.clock]
       14 CALL                             R1 0 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["RenderStepped"]
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R3 K7 ["Connect"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U0
       32 CALL                             R4 1 0
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 1
       13 GETTABLEKS                       R6 R0 K2 ["duration"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 NEWTABLE                         R6 0 3
       28 GETTABLEKS                       R7 R0 K4 ["isPlaying"]
       30 GETTABLEKS                       R8 R0 K5 ["playbackSpeed"]
       32 GETTABLEKS                       R9 R0 K2 ["duration"]
       34 SETLIST                          R6 R7 3 [1]
       36 CALL                             R4 2 0
       37 MOVE                             R4 R1
       38 MOVE                             R5 R3
       39 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K12 [PROTO_5]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 RETURN                           R4 1
