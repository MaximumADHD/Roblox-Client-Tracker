PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R3 R0 K1 ["X"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 NAMECALL                         R1 R1 K3 ["ViewportPointToRay"]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R4 R1 K4 ["Origin"]
       15 GETTABLEKS                       R6 R1 K6 ["Direction"]
       17 MULK                             R5 R6 K5 [1000]
       18 GETUPVAL                         R6 3
       19 NAMECALL                         R2 R2 K7 ["Raycast"]
       21 CALL                             R2 4 1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R3 R2 K8 ["Position"]
       25 RETURN                           R3 1
       26 GETTABLEKS                       R4 R1 K4 ["Origin"]
       28 GETTABLEKS                       R6 R1 K6 ["Direction"]
       30 MULK                             R5 R6 K5 [1000]
       31 ADD                              R3 R4 R5
       32 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetMouseLocation"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R5 R2 K1 ["X"]
        7 GETTABLEKS                       R6 R2 K2 ["Y"]
        9 NAMECALL                         R3 R3 K3 ["ViewportPointToRay"]
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R6 R3 K4 ["Origin"]
       15 GETTABLEKS                       R8 R3 K6 ["Direction"]
       17 MULK                             R7 R8 K5 [1000]
       18 GETUPVAL                         R8 3
       19 NAMECALL                         R4 R4 K7 ["Raycast"]
       21 CALL                             R4 4 1
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R1 R4 K8 ["Position"]
       25 JUMP                             ; [+6]
       26 GETTABLEKS                       R5 R3 K4 ["Origin"]
       28 GETTABLEKS                       R7 R3 K6 ["Direction"]
       30 MULK                             R6 R7 K5 [1000]
       31 ADD                              R1 R5 R6
       32 GETUPVAL                         R2 4
       33 MOVE                             R4 R1
       34 NAMECALL                         R2 R2 K9 ["Fire"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserInputService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Workspace"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R0 K6 ["LocalPlayer"]
       21 LOADK                            R6 K7 ["RocketInputContext"]
       22 NAMECALL                         R4 R3 K8 ["WaitForChild"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["RaycastAction"]
       26 NAMECALL                         R4 R4 K8 ["WaitForChild"]
       28 CALL                             R4 2 1
       29 LOADK                            R6 K10 ["RaycastBinding"]
       30 NAMECALL                         R4 R4 K8 ["WaitForChild"]
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R5 R2 K11 ["CurrentCamera"]
       35 GETTABLEKS                       R6 R3 K12 ["Character"]
       37 JUMPIFNOTEQKNIL                  R6 ; [+6]
       39 GETTABLEKS                       R6 R3 K13 ["CharacterAdded"]
       41 NAMECALL                         R6 R6 K14 ["Wait"]
       43 CALL                             R6 1 0
       44 GETIMPORT                        R6 K17 [RaycastParams.new]
       46 CALL                             R6 0 1
       47 GETIMPORT                        R7 K21 [Enum.RaycastFilterType.Exclude]
       49 SETTABLEKS                       R7 R6 K22 ["FilterType"]
       51 NEWTABLE                         R7 0 1
       53 GETTABLEKS                       R8 R3 K12 ["Character"]
       55 SETLIST                          R7 R8 1 [1]
       57 SETTABLEKS                       R7 R6 K23 ["FilterDescendantsInstances"]
       59 DUPCLOSURE                       R7 K24 [PROTO_0]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 GETIMPORT                        R8 K1 [game]
       66 GETTABLEKS                       R8 R8 K25 ["RunService"]
       68 GETTABLEKS                       R8 R8 K26 ["RenderStepped"]
       70 DUPCLOSURE                       R10 K27 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 NAMECALL                         R8 R8 K28 ["Connect"]
       78 CALL                             R8 2 0
       79 RETURN                           R0 0
