PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Status"]
        5 GETTABLEKS                       R1 R1 K2 ["Actor"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 NAMECALL                         R2 R0 K0 ["getState"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K1 ["Status"]
       14 GETTABLEKS                       R2 R2 K3 ["DebugDataConnection"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 NAMECALL                         R3 R2 K4 ["Disconnect"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["FOLDERS"]
       23 GETTABLEKS                       R5 R5 K6 ["CompositorDebugger"]
       25 NAMECALL                         R3 R1 K7 ["FindFirstChild"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+3]
       29 NAMECALL                         R4 R3 K8 ["Destroy"]
       31 CALL                             R4 1 0
       32 NAMECALL                         R4 R0 K0 ["getState"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K9 ["DebugData"]
       37 GETTABLEKS                       R4 R4 K10 ["FrameBuffer"]
       39 JUMPIFNOT                        R4 ; [+4]
       40 NAMECALL                         R5 R4 K11 ["clear"]
       42 CALL                             R5 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETUPVAL                         R8 1
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 CALL                             R8 2 -1
       49 NAMECALL                         R6 R0 K12 ["dispatch"]
       51 CALL                             R6 -1 0
       52 GETUPVAL                         R8 2
       53 LOADNIL                          R9
       54 CALL                             R8 1 -1
       55 NAMECALL                         R6 R0 K12 ["dispatch"]
       57 CALL                             R6 -1 0
       58 GETUPVAL                         R8 3
       59 LOADNIL                          R9
       60 CALL                             R8 1 -1
       61 NAMECALL                         R6 R0 K12 ["dispatch"]
       63 CALL                             R6 -1 0
       64 GETUPVAL                         R8 4
       65 LOADNIL                          R9
       66 CALL                             R8 1 -1
       67 NAMECALL                         R6 R0 K12 ["dispatch"]
       69 CALL                             R6 -1 0
       70 GETUPVAL                         R8 5
       71 LOADNIL                          R9
       72 CALL                             R8 1 -1
       73 NAMECALL                         R6 R0 K12 ["dispatch"]
       75 CALL                             R6 -1 0
       76 GETUPVAL                         R8 6
       77 MOVE                             R9 R5
       78 CALL                             R8 1 -1
       79 NAMECALL                         R6 R0 K12 ["dispatch"]
       81 CALL                             R6 -1 0
       82 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetActor"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetDebugDataEvent"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetDebugPoseEvent"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["SetFrameBuffer"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["SetLayerSelectionEvent"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["SetPropertyOverridesEvent"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R0 K4 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Util"]
       45 GETIMPORT                        R9 K7 [require]
       47 GETTABLEKS                       R10 R8 K15 ["Constants"]
       49 CALL                             R9 1 1
       50 DUPCLOSURE                       R10 K16 [PROTO_1]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R10 1
