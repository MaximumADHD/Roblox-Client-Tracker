PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StepAnimations"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 LOADK                            R5 K0 ["Humanoid"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+2]
        7 MOVE                             R2 R3
        8 JUMP                             ; [+14]
        9 LOADK                            R6 K2 ["AnimationController"]
       10 LOADB                            R7 1
       11 NAMECALL                         R4 R0 K1 ["FindFirstChildWhichIsA"]
       13 CALL                             R4 3 1
       14 JUMPIF                           R4 ; [+7]
       15 GETIMPORT                        R5 K5 [Instance.new]
       17 LOADK                            R6 K2 ["AnimationController"]
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R0 R4 K6 ["Parent"]
       22 MOVE                             R2 R4
       23 LOADK                            R6 K7 ["Animator"]
       24 LOADB                            R7 1
       25 NAMECALL                         R4 R2 K1 ["FindFirstChildWhichIsA"]
       27 CALL                             R4 3 1
       28 JUMPIF                           R4 ; [+7]
       29 GETIMPORT                        R5 K5 [Instance.new]
       31 LOADK                            R6 K7 ["Animator"]
       32 CALL                             R5 1 1
       33 MOVE                             R4 R5
       34 SETTABLEKS                       R2 R4 K6 ["Parent"]
       36 LOADK                            R7 K8 ["Animation"]
       37 LOADB                            R8 1
       38 NAMECALL                         R5 R0 K1 ["FindFirstChildWhichIsA"]
       40 CALL                             R5 3 1
       41 JUMPIF                           R5 ; [+18]
       42 GETUPVAL                         R6 0
       43 MOVE                             R8 R1
       44 NAMECALL                         R6 R6 K9 ["RegisterKeyframeSequence"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K5 [Instance.new]
       49 LOADK                            R8 K8 ["Animation"]
       50 CALL                             R7 1 1
       51 MOVE                             R5 R7
       52 GETTABLEKS                       R7 R1 K10 ["Name"]
       54 SETTABLEKS                       R7 R5 K10 ["Name"]
       56 SETTABLEKS                       R6 R5 K11 ["AnimationId"]
       58 SETTABLEKS                       R2 R5 K6 ["Parent"]
       60 MOVE                             R8 R5
       61 NAMECALL                         R6 R4 K12 ["LoadAnimation"]
       63 CALL                             R6 2 1
       64 LOADB                            R7 1
       65 SETTABLEKS                       R7 R6 K13 ["Looped"]
       67 NAMECALL                         R7 R6 K14 ["Play"]
       69 CALL                             R7 1 0
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R7 R7 K15 ["Heartbeat"]
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          REF R4
       75 NAMECALL                         R7 R7 K16 ["Connect"]
       77 CALL                             R7 2 1
       78 GETTABLEKS                       R8 R0 K17 ["Destroying"]
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          VAL R7
       82 NAMECALL                         R8 R8 K16 ["Connect"]
       84 CALL                             R8 2 0
       85 CLOSEUPVALS                      R4
       86 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["KeyframeSequenceProvider"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["RunService"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
