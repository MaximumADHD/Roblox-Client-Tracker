PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["BodyTypeScale"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K5 ["ProportionScale"]
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R1 R0 K6 ["HeadColor"]
       13 GETUPVAL                         R1 0
       14 SETTABLEKS                       R1 R0 K7 ["LeftArmColor"]
       16 GETUPVAL                         R1 0
       17 SETTABLEKS                       R1 R0 K8 ["LeftLegColor"]
       19 GETUPVAL                         R1 0
       20 SETTABLEKS                       R1 R0 K9 ["RightArmColor"]
       22 GETUPVAL                         R1 0
       23 SETTABLEKS                       R1 R0 K10 ["RightLegColor"]
       25 GETUPVAL                         R1 0
       26 SETTABLEKS                       R1 R0 K11 ["TorsoColor"]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["CreateHumanoidModelFromDescriptionAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["HumanoidDescription"]
        3 CALL                             R2 1 1
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K4 ["BodyTypeScale"]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K5 ["ProportionScale"]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K6 ["HeadColor"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K7 ["LeftArmColor"]
       16 GETUPVAL                         R3 0
       17 SETTABLEKS                       R3 R2 K8 ["LeftLegColor"]
       19 GETUPVAL                         R3 0
       20 SETTABLEKS                       R3 R2 K9 ["RightArmColor"]
       22 GETUPVAL                         R3 0
       23 SETTABLEKS                       R3 R2 K10 ["RightLegColor"]
       25 GETUPVAL                         R3 0
       26 SETTABLEKS                       R3 R2 K11 ["TorsoColor"]
       28 MOVE                             R1 R2
       29 GETIMPORT                        R2 K13 [pcall]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CALL                             R2 1 2
       36 JUMPIF                           R2 ; [+11]
       37 GETIMPORT                        R4 K15 [warn]
       39 LOADK                            R5 K16 ["[AnimationGen] Failed to build default rig:"]
       40 FASTCALL1                        TOSTRING R3 ; [+3]
       41 MOVE                             R7 R3
       42 GETIMPORT                        R6 K18 [tostring]
       44 CALL                             R6 1 1
       45 CALL                             R4 2 0
       46 LOADNIL                          R4
       47 RETURN                           R4 1
       48 JUMPIFNOTEQKNIL                  R3 ; [+3]
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 LOADK                            R4 K19 ["Rig"]
       53 SETTABLEKS                       R4 R3 K20 ["Name"]
       55 NAMECALL                         R4 R3 K21 ["GetDescendants"]
       57 CALL                             R4 1 3
       58 FORGPREP                         R4
       59 LOADK                            R11 K22 ["BasePart"]
       60 NAMECALL                         R9 R8 K23 ["IsA"]
       62 CALL                             R9 2 1
       63 JUMPIFNOT                        R9 ; [+3]
       64 LOADB                            R9 0
       65 SETTABLEKS                       R9 R8 K24 ["Locked"]
       67 FORGLOOP                         R4 2 ; [-9]
       69 GETIMPORT                        R4 K26 [workspace]
       71 SETTABLEKS                       R4 R3 K27 ["Parent"]
       73 GETIMPORT                        R4 K26 [workspace]
       75 GETTABLEKS                       R4 R4 K28 ["CurrentCamera"]
       77 JUMPIFEQKNIL                     R4 ; [+20]
       79 GETUPVAL                         R5 2
       80 GETTABLEKS                       R6 R4 K29 ["CFrame"]
       82 GETTABLEKS                       R6 R6 K30 ["LookVector"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K34 [Enum.HumanoidRigType.R6]
       87 JUMPIFNOTEQ                      R0 R6 ; [+2]
       89 MINUS                            R5 R5
       90 GETUPVAL                         R6 3
       91 GETTABLEKS                       R6 R6 K35 ["setPositionOnGround"]
       93 MOVE                             R7 R3
       94 LOADB                            R8 1
       95 LOADNIL                          R9
       96 MOVE                             R10 R5
       97 CALL                             R6 4 0
       98 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["ToolUtils"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       26 GETTABLEKS                       R4 R4 K13 ["getDirectionTowardCamera"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K16 [Color3.new]
       31 LOADK                            R5 K17 [0.5]
       32 LOADK                            R6 K17 [0.5]
       33 LOADK                            R7 K17 [0.5]
       34 CALL                             R4 3 1
       35 DUPCLOSURE                       R5 K18 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 DUPCLOSURE                       R6 K19 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 RETURN                           R6 1
