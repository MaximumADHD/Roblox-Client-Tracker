PROTO_0:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 LOADK                            R4 K2 ["Workspace"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 NAMECALL                         R2 R0 K4 ["GetPlayingAnimationTracks"]
       14 CALL                             R2 1 3
       15 FORGPREP                         R2
       16 LOADN                            R9 0
       17 NAMECALL                         R7 R6 K5 ["Stop"]
       19 CALL                             R7 2 0
       20 NAMECALL                         R7 R6 K6 ["Destroy"]
       22 CALL                             R7 1 0
       23 FORGLOOP                         R2 2 ; [-8]
       25 NAMECALL                         R2 R1 K7 ["GetDescendants"]
       27 CALL                             R2 1 3
       28 FORGPREP                         R2
       29 LOADK                            R9 K8 ["Motor6D"]
       30 NAMECALL                         R7 R6 K3 ["IsA"]
       32 CALL                             R7 2 1
       33 JUMPIF                           R7 ; [+10]
       34 LOADK                            R9 K9 ["AnimationConstraint"]
       35 NAMECALL                         R7 R6 K3 ["IsA"]
       37 CALL                             R7 2 1
       38 JUMPIF                           R7 ; [+5]
       39 LOADK                            R9 K10 ["Bone"]
       40 NAMECALL                         R7 R6 K3 ["IsA"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETIMPORT                        R7 K13 [CFrame.identity]
       46 SETTABLEKS                       R7 R6 K14 ["Transform"]
       48 FORGLOOP                         R2 2 ; [-20]
       50 GETUPVAL                         R2 0
       51 NAMECALL                         R2 R2 K15 ["IsRunning"]
       53 CALL                             R2 1 1
       54 JUMPIF                           R2 ; [+4]
       55 LOADN                            R4 0
       56 NAMECALL                         R2 R0 K16 ["StepAnimations"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
