PROTO_0:
        0 NAMECALL                         R5 R0 K0 ["Clone"]
        2 CALL                             R5 1 1
        3 SETTABLEKS                       R3 R5 K1 ["Time"]
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R5
        7 CALL                             R6 1 1
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R1
       10 CALL                             R7 1 1
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R2
       13 CALL                             R8 1 1
       14 MOVE                             R9 R8
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 GETTABLE                         R14 R7 R12
       19 JUMPIFEQKNIL                     R14 ; [+4]
       21 GETTABLEKS                       R15 R14 K2 ["CFrame"]
       23 JUMP                             ; [+2]
       24 GETIMPORT                        R15 K4 [CFrame.identity]
       26 GETTABLEKS                       R16 R13 K2 ["CFrame"]
       28 JUMPIFEQ                         R15 R16 ; [+40]
       30 NAMECALL                         R17 R15 K5 ["Inverse"]
       32 CALL                             R17 1 1
       33 GETTABLEKS                       R18 R13 K2 ["CFrame"]
       35 MUL                              R16 R17 R18
       36 GETTABLE                         R17 R6 R12
       37 JUMPIFEQKNIL                     R17 ; [+7]
       39 GETTABLEKS                       R19 R17 K2 ["CFrame"]
       41 MUL                              R18 R19 R16
       42 SETTABLEKS                       R18 R17 K2 ["CFrame"]
       44 JUMP                             ; [+24]
       45 GETUPVAL                         R19 1
       46 GETTABLEKS                       R19 R19 K6 ["FFlagAssistantAnimationGenNewPosing"]
       48 JUMPIFNOT                        R19 ; [+10]
       49 JUMPIFEQKNIL                     R4 ; [+9]
       51 GETUPVAL                         R18 2
       52 GETTABLEKS                       R18 R18 K7 ["ensurePose"]
       54 MOVE                             R19 R5
       55 MOVE                             R20 R12
       56 MOVE                             R21 R4
       57 CALL                             R18 3 1
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R18 2
       60 GETTABLEKS                       R18 R18 K8 ["DEPRECATED_ensurePose"]
       62 MOVE                             R19 R5
       63 MOVE                             R20 R12
       64 MOVE                             R21 R0
       65 CALL                             R18 3 1
       66 SETTABLEKS                       R16 R18 K2 ["CFrame"]
       68 SETTABLE                         R18 R6 R12
       69 FORGLOOP                         R9 2 ; [-52]
       71 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       18 GETTABLEKS                       R3 R3 K9 ["Posing"]
       20 GETTABLEKS                       R3 R3 K10 ["KeyframePoses"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["poseMap"]
       25 DUPCLOSURE                       R4 K12 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
