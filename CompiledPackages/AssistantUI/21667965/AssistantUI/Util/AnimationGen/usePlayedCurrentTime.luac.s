PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["current"]
       14 LOADN                            R3 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K2 ["duration"]
       18 FASTCALL3                        MATH_CLAMP R0 R3 R4
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K5 [math.clamp]
       23 CALL                             R1 3 1
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 3
       28 DUPTABLE                         R3 K8 [{"position", "time"}]
       29 SETTABLEKS                       R1 R3 K6 ["position"]
       31 GETIMPORT                        R4 K11 [os.clock]
       33 CALL                             R4 0 1
       34 SETTABLEKS                       R4 R3 K7 ["time"]
       36 SETTABLEKS                       R3 R2 K0 ["current"]
       38 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R3 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["duration"]
        4 FASTCALL3                        MATH_CLAMP R0 R3 R4
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [math.clamp]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 DUPTABLE                         R3 K6 [{"position", "time"}]
       15 SETTABLEKS                       R1 R3 K4 ["position"]
       17 GETIMPORT                        R4 K9 [os.clock]
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R3 K5 ["time"]
       22 SETTABLEKS                       R3 R2 K10 ["current"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["position"]
        5 GETIMPORT                        R6 K4 [os.clock]
        7 CALL                             R6 0 1
        8 GETTABLEKS                       R7 R0 K5 ["time"]
       10 SUB                              R5 R6 R7
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K6 ["playbackSpeed"]
       14 MUL                              R4 R5 R6
       15 ADD                              R2 R3 R4
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K7 ["duration"]
       19 MOD                              R1 R2 R3
       20 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["duration"]
        7 JUMPIFNOTEQKN                    R0 K2 [0] ; [+3]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 DUPTABLE                         R1 K5 [{"position", "time"}]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K3 ["position"]
       16 GETIMPORT                        R2 K8 [os.clock]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K4 ["time"]
       21 SETTABLEKS                       R1 R0 K9 ["current"]
       23 NEWCLOSURE                       R0 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K10 ["RenderStepped"]
       30 MOVE                             R3 R0
       31 NAMECALL                         R1 R1 K11 ["Connect"]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 5
       35 SETTABLEKS                       R1 R2 K9 ["current"]
       37 GETUPVAL                         R2 3
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U0
       41 CALL                             R2 1 0
       42 NEWCLOSURE                       R2 P2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U5
       45 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 DUPTABLE                         R4 K5 [{["position"] = 0, ["time"] = 0}]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K7 ["duration"]
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R8 0 1
       39 GETTABLEKS                       R9 R0 K7 ["duration"]
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R4
       54 NEWTABLE                         R9 0 3
       56 GETTABLEKS                       R10 R0 K9 ["isPlaying"]
       58 GETTABLEKS                       R11 R0 K10 ["playbackSpeed"]
       60 GETTABLEKS                       R12 R0 K7 ["duration"]
       62 SETLIST                          R9 R10 3 [1]
       64 CALL                             R7 2 0
       65 MOVE                             R7 R1
       66 MOVE                             R8 R5
       67 MOVE                             R9 R6
       68 RETURN                           R7 3

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
       20 DUPCLOSURE                       R4 K12 [PROTO_6]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 RETURN                           R4 1
