PROTO_0:
        0 LOADN                            R2 0
        1 JUMPIFLE                         R1 R2 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["Max"]
        5 GETTABLEKS                       R2 R2 K1 ["X"]
        7 GETTABLEKS                       R3 R0 K2 ["Min"]
        9 GETTABLEKS                       R3 R3 K1 ["X"]
       11 JUMPIFNOTLE                      R2 R3 ; [+3]
       13 LOADK                            R2 K3 ["none"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R4 R0 K2 ["Min"]
       17 GETTABLEKS                       R4 R4 K1 ["X"]
       19 GETTABLEKS                       R5 R0 K0 ["Max"]
       21 GETTABLEKS                       R5 R5 K1 ["X"]
       23 ADD                              R3 R4 R5
       24 DIVK                             R2 R3 K4 [2]
       25 DIVK                             R3 R1 K4 [2]
       26 JUMPIFNOTLT                      R2 R3 ; [+3]
       28 LOADK                            R3 K5 ["left"]
       29 RETURN                           R3 1
       30 LOADK                            R3 K6 ["right"]
       31 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LOADN                            R4 0
        7 JUMPIFLE                         R3 R4 ; [+11]
        9 GETTABLEKS                       R4 R2 K0 ["Max"]
       11 GETTABLEKS                       R4 R4 K1 ["X"]
       13 GETTABLEKS                       R5 R2 K2 ["Min"]
       15 GETTABLEKS                       R5 R5 K1 ["X"]
       17 JUMPIFNOTLE                      R4 R5 ; [+3]
       19 LOADK                            R1 K3 ["none"]
       20 RETURN                           R1 1
       21 GETTABLEKS                       R6 R2 K2 ["Min"]
       23 GETTABLEKS                       R6 R6 K1 ["X"]
       25 GETTABLEKS                       R7 R2 K0 ["Max"]
       27 GETTABLEKS                       R7 R7 K1 ["X"]
       29 ADD                              R5 R6 R7
       30 DIVK                             R4 R5 K4 [2]
       31 DIVK                             R5 R3 K4 [2]
       32 JUMPIFNOTLT                      R4 R5 ; [+3]
       34 LOADK                            R1 K5 ["left"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K6 ["right"]
       37 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADN                            R4 0
        7 JUMPIFLE                         R2 R4 ; [+11]
        9 GETTABLEKS                       R4 R1 K0 ["Max"]
       11 GETTABLEKS                       R4 R4 K1 ["X"]
       13 GETTABLEKS                       R5 R1 K2 ["Min"]
       15 GETTABLEKS                       R5 R5 K1 ["X"]
       17 JUMPIFNOTLE                      R4 R5 ; [+3]
       19 LOADK                            R3 K3 ["none"]
       20 JUMP                             ; [+16]
       21 GETTABLEKS                       R6 R1 K2 ["Min"]
       23 GETTABLEKS                       R6 R6 K1 ["X"]
       25 GETTABLEKS                       R7 R1 K0 ["Max"]
       27 GETTABLEKS                       R7 R7 K1 ["X"]
       29 ADD                              R5 R6 R7
       30 DIVK                             R4 R5 K4 [2]
       31 DIVK                             R5 R2 K4 [2]
       32 JUMPIFNOTLT                      R4 R5 ; [+3]
       34 LOADK                            R3 K5 ["left"]
       35 JUMP                             ; [+1]
       36 LOADK                            R3 K6 ["right"]
       37 JUMPIFEQKS                       R3 K5 ["left"] ; [+3]
       39 GETUPVAL                         R3 2
       40 RETURN                           R3 1
       41 GETIMPORT                        R3 K9 [UDim2.new]
       43 LOADN                            R4 0
       44 LOADN                            R6 0
       45 GETTABLEKS                       R7 R1 K0 ["Max"]
       47 GETTABLEKS                       R7 R7 K1 ["X"]
       49 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       51 GETIMPORT                        R5 K12 [math.max]
       53 CALL                             R5 2 1
       54 LOADN                            R6 1
       55 LOADN                            R7 0
       56 CALL                             R3 4 -1
       57 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADN                            R4 0
        7 JUMPIFLE                         R2 R4 ; [+11]
        9 GETTABLEKS                       R4 R1 K0 ["Max"]
       11 GETTABLEKS                       R4 R4 K1 ["X"]
       13 GETTABLEKS                       R5 R1 K2 ["Min"]
       15 GETTABLEKS                       R5 R5 K1 ["X"]
       17 JUMPIFNOTLE                      R4 R5 ; [+3]
       19 LOADK                            R3 K3 ["none"]
       20 JUMP                             ; [+16]
       21 GETTABLEKS                       R6 R1 K2 ["Min"]
       23 GETTABLEKS                       R6 R6 K1 ["X"]
       25 GETTABLEKS                       R7 R1 K0 ["Max"]
       27 GETTABLEKS                       R7 R7 K1 ["X"]
       29 ADD                              R5 R6 R7
       30 DIVK                             R4 R5 K4 [2]
       31 DIVK                             R5 R2 K4 [2]
       32 JUMPIFNOTLT                      R4 R5 ; [+3]
       34 LOADK                            R3 K5 ["left"]
       35 JUMP                             ; [+1]
       36 LOADK                            R3 K6 ["right"]
       37 JUMPIFEQKS                       R3 K6 ["right"] ; [+3]
       39 GETUPVAL                         R3 2
       40 RETURN                           R3 1
       41 GETIMPORT                        R3 K9 [UDim2.new]
       43 LOADN                            R4 0
       44 LOADN                            R6 0
       45 GETTABLEKS                       R8 R1 K2 ["Min"]
       47 GETTABLEKS                       R8 R8 K1 ["X"]
       49 SUB                              R7 R2 R8
       50 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       52 GETIMPORT                        R5 K12 [math.max]
       54 CALL                             R5 2 1
       55 LOADN                            R6 1
       56 LOADN                            R7 0
       57 CALL                             R3 4 -1
       58 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["createComputed"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U2
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K1 ["createComputed"]
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U2
       32 CALL                             R6 1 1
       33 DUPTABLE                         R7 K7 [{"setRect", "setMezzanineWidth", "getSide", "getLeftPadding", "getRightPadding"}]
       34 SETTABLEKS                       R1 R7 K2 ["setRect"]
       36 SETTABLEKS                       R3 R7 K3 ["setMezzanineWidth"]
       38 SETTABLEKS                       R4 R7 K4 ["getSide"]
       40 SETTABLEKS                       R5 R7 K5 ["getLeftPadding"]
       42 SETTABLEKS                       R6 R7 K6 ["getRightPadding"]
       44 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMezzanineWidth"]
        3 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K2 ["X"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSystemButtonRectAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setRect"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["setRect"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K3 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WindowChromeController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [task.spawn]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K5 ["SystemButtonRectChanged"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R2 R2 K6 ["Connect"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["useSystemButtonRectPadding called without StudioCustomWindowChromeFeature engine feature"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 DUPCLOSURE                       R2 K3 [PROTO_4]
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 5
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R1
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 6
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 2
       31 MOVE                             R6 R0
       32 MOVE                             R7 R1
       33 SETLIST                          R5 R6 2 [1]
       35 CALL                             R3 2 0
       36 GETUPVAL                         R3 7
       37 GETTABLEKS                       R3 R3 K4 ["useSignalBinding"]
       39 GETTABLEKS                       R4 R1 K5 ["getLeftPadding"]
       41 CALL                             R3 1 1
       42 GETUPVAL                         R4 7
       43 GETTABLEKS                       R4 R4 K4 ["useSignalBinding"]
       45 GETTABLEKS                       R5 R1 K6 ["getRightPadding"]
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 7
       49 GETTABLEKS                       R5 R5 K7 ["useSignalState"]
       51 GETTABLEKS                       R6 R1 K8 ["getSide"]
       53 CALL                             R5 1 1
       54 MOVE                             R6 R3
       55 MOVE                             R7 R4
       56 MOVE                             R8 R5
       57 MOVE                             R9 R2
       58 RETURN                           R6 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["useCallback"]
       30 GETTABLEKS                       R5 R1 K11 ["useEffect"]
       32 GETTABLEKS                       R6 R1 K12 ["useMemo"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["SharedFlags"]
       40 GETTABLEKS                       R8 R8 K15 ["getFeatureStudioCustomWindowChrome"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K18 [Rect.new]
       45 GETIMPORT                        R9 K21 [Vector2.zero]
       47 GETIMPORT                        R10 K21 [Vector2.zero]
       49 CALL                             R8 2 1
       50 GETIMPORT                        R9 K23 [UDim2.new]
       52 CALL                             R9 0 1
       53 DUPCLOSURE                       R10 K24 [PROTO_0]
       54 DUPCLOSURE                       R11 K25 [PROTO_10]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 RETURN                           R11 1
