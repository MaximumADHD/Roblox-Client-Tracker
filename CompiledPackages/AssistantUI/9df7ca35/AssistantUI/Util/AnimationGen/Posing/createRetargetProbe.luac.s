PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+11]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["GetChildren"]
        6 CALL                             R0 1 3
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K1 ["Destroy"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+18]
        6 GETIMPORT                        R0 K2 [Instance.new]
        8 LOADK                            R1 K3 ["KeyframeSequence"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K4 ["Animation"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 2
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K5 ["RegisterActiveAnimationClip"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K6 ["AnimationId"]
       21 SETUPVAL                         R0 0
       22 SETUPVAL                         R1 1
       23 GETUPVAL                         R0 0
       24 GETUPVAL                         R1 1
       25 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 0
        4 LOADN                            R2 0
        5 NAMECALL                         R0 R0 K0 ["Stop"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K1 ["Destroy"]
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetChildren"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 LOADK                            R8 K1 ["Keyframe"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+3]
       10 NAMECALL                         R6 R5 K3 ["Destroy"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-9]
       15 NAMECALL                         R1 R0 K4 ["Clone"]
       17 CALL                             R1 1 1
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R1 K5 ["Time"]
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R2 R1 K6 ["Parent"]
       24 GETUPVAL                         R2 1
       25 JUMPIFEQKNIL                     R2 ; [+12]
       27 GETUPVAL                         R2 1
       28 LOADN                            R4 0
       29 NAMECALL                         R2 R2 K7 ["Stop"]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 1
       33 NAMECALL                         R2 R2 K3 ["Destroy"]
       35 CALL                             R2 1 0
       36 LOADNIL                          R2
       37 SETUPVAL                         R2 1
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K8 ["animator"]
       41 GETUPVAL                         R4 3
       42 NAMECALL                         R2 R2 K9 ["LoadAnimation"]
       44 CALL                             R2 2 1
       45 GETIMPORT                        R3 K13 [Enum.AnimationPriority.Action4]
       47 SETTABLEKS                       R3 R2 K14 ["Priority"]
       49 LOADB                            R3 0
       50 SETTABLEKS                       R3 R2 K15 ["Looped"]
       52 LOADN                            R5 0
       53 LOADN                            R6 1
       54 LOADN                            R7 0
       55 NAMECALL                         R3 R2 K16 ["Play"]
       57 CALL                             R3 4 0
       58 SETUPVAL                         R2 1
       59 GETUPVAL                         R3 4
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K8 ["animator"]
       63 LOADN                            R5 0
       64 LOADB                            R6 1
       65 CALL                             R3 3 0
       66 GETUPVAL                         R3 5
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R4 R4 K17 ["rig"]
       70 CALL                             R3 1 -1
       71 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 0
        4 LOADN                            R2 0
        5 NAMECALL                         R0 R0 K0 ["Stop"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K1 ["Destroy"]
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 1
       15 JUMPIFEQKNIL                     R0 ; [+11]
       17 GETUPVAL                         R0 1
       18 NAMECALL                         R0 R0 K2 ["GetChildren"]
       20 CALL                             R0 1 3
       21 FORGPREP                         R0
       22 NAMECALL                         R5 R4 K1 ["Destroy"]
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 2 ; [-4]
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["animationRigData"]
        2 NAMECALL                         R1 R1 K1 ["Clone"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R4 0
       10 JUMPIFEQKNIL                     R4 ; [+4]
       12 GETUPVAL                         R4 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+18]
       15 GETIMPORT                        R4 K4 [Instance.new]
       17 LOADK                            R5 K5 ["KeyframeSequence"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [Instance.new]
       21 LOADK                            R6 K6 ["Animation"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 2
       24 MOVE                             R8 R4
       25 NAMECALL                         R6 R6 K7 ["RegisterActiveAnimationClip"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K8 ["AnimationId"]
       30 SETUPVAL                         R4 0
       31 SETUPVAL                         R5 1
       32 GETUPVAL                         R2 0
       33 GETUPVAL                         R3 1
       34 GETUPVAL                         R4 0
       35 JUMPIFEQKNIL                     R4 ; [+11]
       37 GETUPVAL                         R4 0
       38 NAMECALL                         R4 R4 K9 ["GetChildren"]
       40 CALL                             R4 1 3
       41 FORGPREP                         R4
       42 NAMECALL                         R9 R8 K10 ["Destroy"]
       44 CALL                             R9 1 0
       45 FORGLOOP                         R4 2 ; [-4]
       47 SETTABLEKS                       R2 R1 K11 ["Parent"]
       49 LOADNIL                          R4
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          REF R4
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          REF R4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 DUPTABLE                         R7 K14 [{"render", "finish"}]
       60 SETTABLEKS                       R6 R7 K12 ["render"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          REF R4
       64 CAPTURE                          UPVAL U0
       65 SETTABLEKS                       R8 R7 K13 ["finish"]
       67 CLOSEUPVALS                      R4
       68 RETURN                           R7 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+11]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["GetChildren"]
        6 CALL                             R0 1 3
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K1 ["Destroy"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 GETUPVAL                         R0 1
       14 JUMPIFEQKNIL                     R0 ; [+7]
       16 GETUPVAL                         R0 1
       17 NAMECALL                         R0 R0 K1 ["Destroy"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 1
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 0
       24 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          REF R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R4 P2
        9 CAPTURE                          REF R0
       10 CAPTURE                          REF R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 DUPTABLE                         R5 K2 [{"start", "destroy"}]
       15 SETTABLEKS                       R4 R5 K0 ["start"]
       17 NEWCLOSURE                       R6 P3
       18 CAPTURE                          REF R0
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R6 R5 K1 ["destroy"]
       22 CLOSEUPVALS                      R0
       23 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["Posing"]
       21 GETTABLEKS                       R3 R3 K13 ["getRigJointTransforms"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R1 K10 ["Util"]
       28 GETTABLEKS                       R4 R4 K11 ["AnimationGen"]
       30 GETTABLEKS                       R4 R4 K14 ["stepAnimations"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K15 [PROTO_7]
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R4 1
