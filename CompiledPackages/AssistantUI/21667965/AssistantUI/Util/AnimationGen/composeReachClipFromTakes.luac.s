PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetKeyframes"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [table.sort]
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K4 [PROTO_0]
        7 CALL                             R2 2 0
        8 RETURN                           R1 1

PROTO_2:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R9 R6 K0 ["Time"]
       12 GETTABLE                         R10 R1 R5
       13 GETTABLEKS                       R10 R10 K0 ["Time"]
       15 SUB                              R8 R9 R10
       16 FASTCALL1                        MATH_ABS R8 ; [+2]
       17 GETIMPORT                        R7 K3 [math.abs]
       19 CALL                             R7 1 1
       20 LOADK                            R8 K4 [0.0001]
       21 JUMPIFNOTLT                      R8 R7 ; [+3]
       23 LOADB                            R7 0
       24 RETURN                           R7 1
       25 FORGLOOP                         R2 2 ; [-16]
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["UpperTorso"]
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        4 CALL                             R2 3 1
        5 LOADK                            R5 K0 ["UpperTorso"]
        6 LOADB                            R6 1
        7 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        9 CALL                             R3 3 1
       10 JUMPIFEQKNIL                     R2 ; [+13]
       12 LOADK                            R6 K2 ["Pose"]
       13 NAMECALL                         R4 R2 K3 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 JUMPIFEQKNIL                     R3 ; [+6]
       19 LOADK                            R6 K2 ["Pose"]
       20 NAMECALL                         R4 R3 K3 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIF                           R4 ; [+2]
       24 LOADB                            R4 0
       25 RETURN                           R4 1
       26 GETTABLEKS                       R4 R3 K4 ["Parent"]
       28 NAMECALL                         R5 R2 K5 ["Clone"]
       30 CALL                             R5 1 1
       31 NAMECALL                         R6 R3 K6 ["Destroy"]
       33 CALL                             R6 1 0
       34 SETTABLEKS                       R4 R5 K4 ["Parent"]
       36 LOADB                            R6 1
       37 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["NEUTRAL"]
        3 JUMPIFNOTEQ                      R2 R5 ; [+3]
        5 MOVE                             R4 R0
        6 JUMP                             ; [+1]
        7 GETTABLE                         R4 R1 R2
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["NEUTRAL"]
       11 JUMPIFNOTEQ                      R3 R6 ; [+3]
       13 MOVE                             R5 R0
       14 JUMP                             ; [+1]
       15 GETTABLE                         R5 R1 R3
       16 JUMPIFEQKNIL                     R4 ; [+3]
       18 JUMPIFNOTEQKNIL                  R5 ; [+3]
       20 LOADNIL                          R6
       21 RETURN                           R6 1
       22 NAMECALL                         R6 R0 K1 ["Clone"]
       24 CALL                             R6 1 1
       25 NAMECALL                         R8 R6 K2 ["GetKeyframes"]
       27 CALL                             R8 1 1
       28 GETIMPORT                        R9 K5 [table.sort]
       30 MOVE                             R10 R8
       31 DUPCLOSURE                       R11 K6 [PROTO_0]
       32 CALL                             R9 2 0
       33 MOVE                             R7 R8
       34 NAMECALL                         R9 R4 K2 ["GetKeyframes"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K5 [table.sort]
       39 MOVE                             R11 R9
       40 DUPCLOSURE                       R12 K6 [PROTO_0]
       41 CALL                             R10 2 0
       42 MOVE                             R8 R9
       43 NAMECALL                         R10 R5 K2 ["GetKeyframes"]
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K5 [table.sort]
       48 MOVE                             R12 R10
       49 DUPCLOSURE                       R13 K6 [PROTO_0]
       50 CALL                             R11 2 0
       51 MOVE                             R9 R10
       52 GETUPVAL                         R10 1
       53 MOVE                             R11 R7
       54 MOVE                             R12 R8
       55 CALL                             R10 2 1
       56 JUMPIFNOT                        R10 ; [+5]
       57 GETUPVAL                         R10 1
       58 MOVE                             R11 R7
       59 MOVE                             R12 R9
       60 CALL                             R10 2 1
       61 JUMPIF                           R10 ; [+5]
       62 NAMECALL                         R10 R6 K7 ["Destroy"]
       64 CALL                             R10 1 0
       65 LOADNIL                          R10
       66 RETURN                           R10 1
       67 MOVE                             R10 R7
       68 LOADNIL                          R11
       69 LOADNIL                          R12
       70 FORGPREP                         R10
       71 NAMECALL                         R15 R14 K8 ["GetPoses"]
       73 CALL                             R15 1 3
       74 FORGPREP                         R15
       75 NAMECALL                         R20 R19 K7 ["Destroy"]
       77 CALL                             R20 1 0
       78 FORGLOOP                         R15 2 ; [-4]
       80 GETTABLE                         R15 R9 R13
       81 NAMECALL                         R15 R15 K8 ["GetPoses"]
       83 CALL                             R15 1 3
       84 FORGPREP                         R15
       85 NAMECALL                         R22 R19 K1 ["Clone"]
       87 CALL                             R22 1 -1
       88 NAMECALL                         R20 R14 K9 ["AddPose"]
       90 CALL                             R20 -1 0
       91 FORGLOOP                         R15 2 ; [-7]
       93 GETUPVAL                         R15 2
       94 GETTABLE                         R16 R8 R13
       95 MOVE                             R17 R14
       96 CALL                             R15 2 1
       97 JUMPIF                           R15 ; [+5]
       98 NAMECALL                         R15 R6 K7 ["Destroy"]
      100 CALL                             R15 1 0
      101 LOADNIL                          R15
      102 RETURN                           R15 1
      103 FORGLOOP                         R10 2 ; [-33]
      105 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["ReachSteps"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 DUPCLOSURE                       R3 K10 [PROTO_2]
       18 DUPCLOSURE                       R4 K11 [PROTO_3]
       19 DUPCLOSURE                       R5 K12 [PROTO_4]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 RETURN                           R5 1
