PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetKeyframes"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["HumanoidRootPart"]
        5 NAMECALL                         R6 R5 K2 ["FindFirstChild"]
        7 CALL                             R6 2 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+35]
       10 GETIMPORT                        R6 K5 [Instance.new]
       12 LOADK                            R7 K6 ["Pose"]
       13 CALL                             R6 1 1
       14 LOADK                            R7 K1 ["HumanoidRootPart"]
       15 SETTABLEKS                       R7 R6 K7 ["Name"]
       17 LOADN                            R7 0
       18 SETTABLEKS                       R7 R6 K8 ["Weight"]
       20 GETIMPORT                        R7 K11 [CFrame.identity]
       22 SETTABLEKS                       R7 R6 K9 ["CFrame"]
       24 NAMECALL                         R7 R5 K12 ["GetChildren"]
       26 CALL                             R7 1 3
       27 FORGPREP                         R7
       28 LOADK                            R14 K6 ["Pose"]
       29 NAMECALL                         R12 R11 K13 ["IsA"]
       31 CALL                             R12 2 1
       32 JUMPIF                           R12 ; [+5]
       33 LOADK                            R14 K14 ["NumberPose"]
       34 NAMECALL                         R12 R11 K13 ["IsA"]
       36 CALL                             R12 2 1
       37 JUMPIFNOT                        R12 ; [+2]
       38 SETTABLEKS                       R6 R11 K15 ["Parent"]
       40 FORGLOOP                         R7 2 ; [-13]
       42 SETTABLEKS                       R5 R6 K15 ["Parent"]
       44 FORGLOOP                         R1 2 ; [-41]
       46 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
