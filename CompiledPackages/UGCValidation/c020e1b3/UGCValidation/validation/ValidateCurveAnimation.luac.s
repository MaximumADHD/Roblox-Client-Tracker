PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reportFailure"]
        3 MOVE                             R4 R1
        4 LOADNIL                          R5
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 LOADB                            R3 0
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R0
       11 SETLIST                          R4 R5 1 [1]
       13 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getBodyPartsToParents"]
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 JUMPIF                           R4 ; [+5]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getBodyPartsToParents"]
        6 CALL                             R4 0 1
        7 SETUPVAL                         R4 0
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOTEQKNIL                  R2 ; [+5]
       12 JUMPIFEQKS                       R0 K1 ["HumanoidRootPart"] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["ClassName"]
        6 GETTABLEKS                       R7 R0 K0 ["ClassName"]
        8 JUMPIFNOTEQ                      R6 R7 ; [+14]
       10 GETTABLEKS                       R6 R5 K1 ["Name"]
       12 GETTABLEKS                       R7 R0 K1 ["Name"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+8]
       16 GETIMPORT                        R6 K4 [table.remove]
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R4
       20 CALL                             R6 2 0
       21 LOADB                            R6 1
       22 RETURN                           R6 1
       23 FORGLOOP                         R1 2 ; [-20]
       25 LOADB                            R1 0
       26 RETURN                           R1 1

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R3 R0 K0 ["GetChildren"]
        7 CALL                             R3 1 3
        8 FORGPREP                         R3
        9 MOVE                             R8 R2
       10 MOVE                             R9 R7
       11 CALL                             R8 1 1
       12 JUMPIF                           R8 ; [+2]
       13 LOADB                            R8 0
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-7]
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 JUMPIF                           R5 ; [+5]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["getBodyPartsToParents"]
        7 CALL                             R5 0 1
        8 SETUPVAL                         R5 0
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 JUMPIFNOTEQ                      R6 R0 ; [+13]
       15 DUPTABLE                         R9 K3 [{"ClassName", "Name"}]
       16 LOADK                            R10 K4 ["Folder"]
       17 SETTABLEKS                       R10 R9 K1 ["ClassName"]
       19 SETTABLEKS                       R5 R9 K2 ["Name"]
       21 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       23 MOVE                             R8 R1
       24 GETIMPORT                        R7 K7 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-15]
       29 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Name"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K0 ["Name"]
        6 JUMPIFNOTEQKS                    R3 K1 ["HumanoidRootPart"] ; [+2]
        8 RETURN                           R2 1
        9 DUPTABLE                         R5 K3 [{"ClassName", "Name"}]
       10 LOADK                            R6 K4 ["Vector3Curve"]
       11 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       13 LOADK                            R6 K5 ["Position"]
       14 SETTABLEKS                       R6 R5 K0 ["Name"]
       16 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K8 [table.insert]
       21 CALL                             R3 2 0
       22 DUPTABLE                         R5 K3 [{"ClassName", "Name"}]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADK                            R6 K9 ["EulerRotationCurve"]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K10 ["RotationCurve"]
       27 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       29 LOADK                            R6 K11 ["Rotation"]
       30 SETTABLEKS                       R6 R5 K0 ["Name"]
       32 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K8 [table.insert]
       37 CALL                             R3 2 0
       38 GETTABLEKS                       R3 R0 K0 ["Name"]
       40 JUMPIFEQKS                       R3 K12 ["Head"] ; [+2]
       42 RETURN                           R2 1
       43 DUPTABLE                         R5 K3 [{"ClassName", "Name"}]
       44 LOADK                            R6 K13 ["Folder"]
       45 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       47 LOADK                            R6 K14 ["FaceControls"]
       48 SETTABLEKS                       R6 R5 K0 ["Name"]
       50 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       52 MOVE                             R4 R2
       53 GETIMPORT                        R3 K8 [table.insert]
       55 CALL                             R3 2 0
       56 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K2 [{"ClassName", "Name"}]
        3 LOADK                            R2 K3 ["FloatCurve"]
        4 SETTABLEKS                       R2 R1 K0 ["ClassName"]
        6 LOADK                            R2 K4 ["X"]
        7 SETTABLEKS                       R2 R1 K1 ["Name"]
        9 DUPTABLE                         R2 K2 [{"ClassName", "Name"}]
       10 LOADK                            R3 K3 ["FloatCurve"]
       11 SETTABLEKS                       R3 R2 K0 ["ClassName"]
       13 LOADK                            R3 K5 ["Y"]
       14 SETTABLEKS                       R3 R2 K1 ["Name"]
       16 DUPTABLE                         R3 K2 [{"ClassName", "Name"}]
       17 LOADK                            R4 K3 ["FloatCurve"]
       18 SETTABLEKS                       R4 R3 K0 ["ClassName"]
       20 LOADK                            R4 K6 ["Z"]
       21 SETTABLEKS                       R4 R3 K1 ["Name"]
       23 SETLIST                          R0 R1 3 [1]
       25 RETURN                           R0 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        5 CALL                             R3 1 1
        6 LENGTH                           R2 R3
        7 NAMECALL                         R4 R0 K1 ["GetChildren"]
        9 CALL                             R4 1 1
       10 LENGTH                           R3 R4
       11 JUMPIFLT                         R3 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+120]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 1
       12 LOADK                            R6 K0 ["Position"]
       13 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+2]
       19 LOADB                            R3 0
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 2
       22 CALL                             R3 0 1
       23 MOVE                             R2 R3
       24 GETUPVAL                         R3 1
       25 LOADK                            R6 K2 ["Rotation"]
       26 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
       28 CALL                             R4 2 1
       29 MOVE                             R5 R2
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+2]
       32 LOADB                            R3 0
       33 RETURN                           R3 1
       34 LOADK                            R5 K3 ["FaceControls"]
       35 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       37 CALL                             R3 2 1
       38 JUMPIFNOT                        R3 ; [+26]
       39 NAMECALL                         R4 R3 K4 ["GetChildren"]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 3
       43 CALL                             R5 0 1
       44 JUMPIFNOT                        R5 ; [+7]
       45 LENGTH                           R5 R4
       46 GETUPVAL                         R6 4
       47 CALL                             R6 0 1
       48 JUMPIFNOTLT                      R6 R5 ; [+3]
       50 LOADB                            R5 0
       51 RETURN                           R5 1
       52 MOVE                             R5 R4
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 FORGPREP                         R5
       56 LOADK                            R12 K5 ["FloatCurve"]
       57 NAMECALL                         R10 R9 K6 ["IsA"]
       59 CALL                             R10 2 1
       60 JUMPIF                           R10 ; [+2]
       61 LOADB                            R10 0
       62 RETURN                           R10 1
       63 FORGLOOP                         R5 2 ; [-8]
       65 LOADK                            R7 K0 ["Position"]
       66 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
       68 CALL                             R5 2 1
       69 JUMPIF                           R5 ; [+2]
       70 LOADB                            R4 0
       71 JUMP                             ; [+12]
       72 NAMECALL                         R7 R5 K7 ["GetDescendants"]
       74 CALL                             R7 1 1
       75 LENGTH                           R6 R7
       76 NAMECALL                         R8 R5 K4 ["GetChildren"]
       78 CALL                             R8 1 1
       79 LENGTH                           R7 R8
       80 JUMPIFLT                         R7 R6 ; [+2]
       82 LOADB                            R4 0 +1
       83 LOADB                            R4 1
       84 JUMPIFNOT                        R4 ; [+2]
       85 LOADB                            R4 0
       86 RETURN                           R4 1
       87 LOADK                            R7 K2 ["Rotation"]
       88 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
       90 CALL                             R5 2 1
       91 JUMPIF                           R5 ; [+2]
       92 LOADB                            R4 0
       93 JUMP                             ; [+12]
       94 NAMECALL                         R7 R5 K7 ["GetDescendants"]
       96 CALL                             R7 1 1
       97 LENGTH                           R6 R7
       98 NAMECALL                         R8 R5 K4 ["GetChildren"]
      100 CALL                             R8 1 1
      101 LENGTH                           R7 R8
      102 JUMPIFLT                         R7 R6 ; [+2]
      104 LOADB                            R4 0 +1
      105 LOADB                            R4 1
      106 JUMPIFNOT                        R4 ; [+2]
      107 LOADB                            R4 0
      108 RETURN                           R4 1
      109 JUMPIF                           R3 ; [+2]
      110 LOADB                            R4 0
      111 JUMP                             ; [+12]
      112 NAMECALL                         R6 R3 K7 ["GetDescendants"]
      114 CALL                             R6 1 1
      115 LENGTH                           R5 R6
      116 NAMECALL                         R7 R3 K4 ["GetChildren"]
      118 CALL                             R7 1 1
      119 LENGTH                           R6 R7
      120 JUMPIFLT                         R6 R5 ; [+2]
      122 LOADB                            R4 0 +1
      123 LOADB                            R4 1
      124 JUMPIFNOT                        R4 ; [+2]
      125 LOADB                            R4 0
      126 RETURN                           R4 1
      127 LOADB                            R4 1
      128 RETURN                           R4 1
      129 LOADB                            R2 0
      130 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+43]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+15]
        7 GETUPVAL                         R1 2
        8 GETIMPORT                        R2 K2 [string.format]
       10 LOADK                            R3 K3 ["CurveAnimation contains body part Folder %s which has an invalid hierarchy (it has children that are not allowed or set-up incorrectly)"]
       11 GETTABLEKS                       R4 R0 K4 ["Name"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K5 ["ErrorType"]
       17 GETTABLEKS                       R3 R3 K6 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       19 GETUPVAL                         R4 4
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1
       22 NAMECALL                         R1 R0 K7 ["GetChildren"]
       24 CALL                             R1 1 3
       25 FORGPREP                         R1
       26 LOADK                            R8 K8 ["Folder"]
       27 NAMECALL                         R6 R5 K9 ["IsA"]
       29 CALL                             R6 2 1
       30 JUMPIFNOT                        R6 ; [+11]
       31 GETTABLEKS                       R6 R5 K4 ["Name"]
       33 JUMPIFEQKS                       R6 K10 ["FaceControls"] ; [+8]
       35 GETUPVAL                         R6 5
       36 MOVE                             R7 R5
       37 CALL                             R6 1 2
       38 JUMPIF                           R6 ; [+3]
       39 LOADB                            R8 0
       40 MOVE                             R9 R7
       41 RETURN                           R8 2
       42 FORGLOOP                         R1 2 ; [-17]
       44 LOADB                            R1 1
       45 RETURN                           R1 1
       46 NAMECALL                         R1 R0 K7 ["GetChildren"]
       48 CALL                             R1 1 3
       49 FORGPREP                         R1
       50 LOADK                            R8 K8 ["Folder"]
       51 NAMECALL                         R6 R5 K9 ["IsA"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+28]
       55 GETTABLEKS                       R6 R5 K4 ["Name"]
       57 JUMPIFNOTEQKS                    R6 K11 ["HumanoidRootPart"] ; [+3]
       59 LOADB                            R6 0
       60 RETURN                           R6 1
       61 GETUPVAL                         R8 6
       62 JUMPIF                           R8 ; [+5]
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R8 R8 K12 ["getBodyPartsToParents"]
       66 CALL                             R8 0 1
       67 SETUPVAL                         R8 6
       68 GETUPVAL                         R7 6
       69 GETTABLEKS                       R8 R5 K4 ["Name"]
       71 GETTABLE                         R6 R7 R8
       72 JUMPIFNOT                        R6 ; [+10]
       73 GETTABLEKS                       R7 R0 K4 ["Name"]
       75 JUMPIFEQ                         R6 R7 ; [+3]
       77 LOADB                            R7 0
       78 RETURN                           R7 1
       79 GETUPVAL                         R7 5
       80 MOVE                             R8 R5
       81 CALL                             R7 1 -1
       82 RETURN                           R7 -1
       83 FORGLOOP                         R1 2 ; [-34]
       85 LOADB                            R1 1
       86 RETURN                           R1 1

PROTO_11:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 GETTABLEKS                       R4 R0 K0 ["Name"]
       11 LOADB                            R3 1
       12 GETUPVAL                         R7 4
       13 JUMPIF                           R7 ; [+5]
       14 GETUPVAL                         R7 5
       15 GETTABLEKS                       R7 R7 K1 ["getBodyPartsToParents"]
       17 CALL                             R7 0 1
       18 SETUPVAL                         R7 4
       19 GETUPVAL                         R6 4
       20 GETTABLE                         R5 R6 R4
       21 JUMPIFNOTEQKNIL                  R5 ; [+5]
       23 JUMPIFEQKS                       R4 K2 ["HumanoidRootPart"] ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIF                           R3 ; [+2]
       28 LOADB                            R3 1
       29 RETURN                           R3 1
       30 MOVE                             R3 R2
       31 MOVE                             R4 R0
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_12:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 3
        4 FORGPREP                         R3
        5 LOADK                            R10 K1 ["Folder"]
        6 NAMECALL                         R8 R7 K2 ["IsA"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+33]
       10 GETTABLEKS                       R9 R7 K3 ["Name"]
       12 LOADB                            R8 1
       13 GETUPVAL                         R12 0
       14 JUMPIF                           R12 ; [+5]
       15 GETUPVAL                         R12 1
       16 GETTABLEKS                       R12 R12 K4 ["getBodyPartsToParents"]
       18 CALL                             R12 0 1
       19 SETUPVAL                         R12 0
       20 GETUPVAL                         R11 0
       21 GETTABLE                         R10 R11 R9
       22 JUMPIFNOTEQKNIL                  R10 ; [+5]
       24 JUMPIFEQKS                       R9 K5 ["HumanoidRootPart"] ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 JUMPIFNOT                        R8 ; [+14]
       29 ADDK                             R2 R2 K6 [1]
       30 LOADN                            R8 1
       31 JUMPIFNOTLT                      R8 R2 ; [+11]
       33 GETUPVAL                         R8 2
       34 LOADK                            R9 K7 ["CurveAnimation contains more than one body part or HumanoidRootPart Folder children. Please ensure there is only one child Folder named after a body part or HumanoidRootPart."]
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R10 R10 K8 ["ErrorType"]
       38 GETTABLEKS                       R10 R10 K9 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       40 MOVE                             R11 R1
       41 CALL                             R8 3 -1
       42 RETURN                           R8 -1
       43 FORGLOOP                         R3 2 ; [-39]
       45 GETUPVAL                         R3 4
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+12]
       48 JUMPIFNOTEQKN                    R2 K10 [0] ; [+11]
       50 GETUPVAL                         R3 2
       51 LOADK                            R4 K11 ["CurveAnimation contains zero body part or HumanoidRootPart Folder children. Please ensure there is one (and only one) child Folder named after a body part or HumanoidRootPart."]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K8 ["ErrorType"]
       55 GETTABLEKS                       R5 R5 K9 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       57 MOVE                             R6 R1
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1
       60 LOADB                            R3 1
       61 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 LOADN                            R3 0
        3 NAMECALL                         R4 R0 K0 ["GetDescendants"]
        5 CALL                             R4 1 3
        6 FORGPREP                         R4
        7 LOADK                            R11 K1 ["MarkerCurve"]
        8 NAMECALL                         R9 R8 K2 ["IsA"]
       10 CALL                             R9 2 1
       11 JUMPIFNOT                        R9 ; [+19]
       12 ADDK                             R3 R3 K3 [1]
       13 JUMPIFNOTLT                      R2 R3 ; [+17]
       15 GETUPVAL                         R9 1
       16 LOADK                            R11 K4 ["CurveAnimation contains more than %* MarkerCurve(s). Please ensure there is no more than %* MarkerCurve descendant(s)."]
       17 MOVE                             R13 R2
       18 MOVE                             R14 R2
       19 NAMECALL                         R11 R11 K5 ["format"]
       21 CALL                             R11 3 1
       22 MOVE                             R10 R11
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R11 R11 K6 ["ErrorType"]
       26 GETTABLEKS                       R11 R11 K7 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       28 MOVE                             R12 R1
       29 CALL                             R9 3 -1
       30 RETURN                           R9 -1
       31 FORGLOOP                         R4 2 ; [-25]
       33 LOADB                            R4 1
       34 RETURN                           R4 1

PROTO_14:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 3
        4 FORGPREP                         R3
        5 LOADK                            R10 K1 ["AnimationRigData"]
        6 NAMECALL                         R8 R7 K2 ["IsA"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+14]
       10 ADDK                             R2 R2 K3 [1]
       11 LOADN                            R8 1
       12 JUMPIFNOTLT                      R8 R2 ; [+11]
       14 GETUPVAL                         R8 0
       15 LOADK                            R9 K4 ["CurveAnimation contains more than one AnimationRigData children. Please ensure there is only one AnimationRigData child."]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K5 ["ErrorType"]
       19 GETTABLEKS                       R10 R10 K6 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       21 MOVE                             R11 R1
       22 CALL                             R8 3 -1
       23 RETURN                           R8 -1
       24 FORGLOOP                         R3 2 ; [-20]
       26 JUMPIFNOTEQKN                    R2 K7 [0] ; [+11]
       28 GETUPVAL                         R3 0
       29 LOADK                            R4 K8 ["CurveAnimation contains zero AnimationRigData children. Please ensure there is one (and only one) AnimationRigData children."]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["ErrorType"]
       33 GETTABLEKS                       R5 R5 K6 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       35 MOVE                             R6 R1
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1
       38 LOADB                            R3 1
       39 RETURN                           R3 1

PROTO_15:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["AnimationRigData"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+14]
        9 NAMECALL                         R7 R6 K3 ["IsValidR15"]
       11 CALL                             R7 1 1
       12 JUMPIF                           R7 ; [+10]
       13 GETUPVAL                         R7 0
       14 LOADK                            R8 K4 ["AnimationRigData failed internal validation. Please ensure the AnimationRigData is set up correctly."]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K5 ["ErrorType"]
       18 GETTABLEKS                       R9 R9 K6 ["validateCurveAnimation_IncorrectAnimationRigData"]
       20 MOVE                             R10 R1
       21 CALL                             R7 3 -1
       22 RETURN                           R7 -1
       23 FORGLOOP                         R2 2 ; [-20]
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["validateSingleAnimationRigData"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 JUMPIF                           R2 ; [+3]
        7 LOADB                            R4 0
        8 MOVE                             R5 R3
        9 RETURN                           R4 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["validateAnimationRigDataInternals"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 CALL                             R4 2 2
       16 MOVE                             R2 R4
       17 MOVE                             R3 R5
       18 JUMPIF                           R2 ; [+3]
       19 LOADB                            R4 0
       20 MOVE                             R5 R3
       21 RETURN                           R4 2
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_17:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Script"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+5]
        9 LOADK                            R9 K3 ["ModuleScript"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+10]
       14 GETUPVAL                         R7 0
       15 LOADK                            R8 K4 ["CurveAnimation hierarchy contains Scripts, LocalScripts, or ModuleScripts. Please remove them."]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K5 ["ErrorType"]
       19 GETTABLEKS                       R9 R9 K6 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       21 MOVE                             R10 R1
       22 CALL                             R7 3 -1
       23 RETURN                           R7 -1
       24 FORGLOOP                         R2 2 ; [-21]
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_18:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADB                            R7 0
        5 GETUPVAL                         R8 0
        6 LOADNIL                          R9
        7 LOADNIL                          R10
        8 FORGPREP                         R8
        9 MOVE                             R15 R12
       10 NAMECALL                         R13 R6 K1 ["IsA"]
       12 CALL                             R13 2 1
       13 JUMPIFNOT                        R13 ; [+2]
       14 LOADB                            R7 1
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R8 2 ; [-8]
       18 JUMPIF                           R7 ; [+19]
       19 GETUPVAL                         R8 1
       20 LOADK                            R10 K2 ["CurveAnimation hierarchy can only contain %*. Please remove any other Instance types."]
       21 GETIMPORT                        R12 K5 [table.concat]
       23 GETUPVAL                         R13 0
       24 LOADK                            R14 K6 [", "]
       25 CALL                             R12 2 1
       26 NAMECALL                         R10 R10 K7 ["format"]
       28 CALL                             R10 2 1
       29 MOVE                             R9 R10
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K8 ["ErrorType"]
       33 GETTABLEKS                       R10 R10 K9 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       35 MOVE                             R11 R1
       36 CALL                             R8 3 -1
       37 RETURN                           R8 -1
       38 FORGLOOP                         R2 2 ; [-35]
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_21:
        0 LOADK                            R4 K0 ["CurveAnimation"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+18]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["reportFailure"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["ErrorType"]
       11 GETTABLEKS                       R3 R3 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       13 LOADNIL                          R4
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 LOADB                            R2 0
       17 NEWTABLE                         R3 0 1
       19 LOADK                            R4 K5 ["Referenced Animation is not a CurveAnimation. Please ensure the animation is uploaded correctly."]
       20 SETLIST                          R3 R4 1 [1]
       22 RETURN                           R2 2
       23 NAMECALL                         R3 R0 K6 ["GetDescendants"]
       25 CALL                             R3 1 1
       26 LENGTH                           R2 R3
       27 GETUPVAL                         R3 1
       28 CALL                             R3 0 1
       29 JUMPIFNOTLT                      R3 R2 ; [+18]
       31 GETUPVAL                         R3 2
       32 LOADK                            R5 K7 ["CurveAnimation has %* descendants. Maximum allowed is %*. Please reduce the number of descendants."]
       33 MOVE                             R7 R2
       34 GETUPVAL                         R8 1
       35 CALL                             R8 0 1
       36 NAMECALL                         R5 R5 K8 ["format"]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K3 ["ErrorType"]
       43 GETTABLEKS                       R5 R5 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       45 MOVE                             R6 R1
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1
       48 GETUPVAL                         R3 3
       49 MOVE                             R4 R0
       50 MOVE                             R5 R1
       51 CALL                             R3 2 2
       52 JUMPIF                           R3 ; [+3]
       53 LOADB                            R5 0
       54 MOVE                             R6 R4
       55 RETURN                           R5 2
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K9 ["validateSingleAnimationRigData"]
       59 MOVE                             R8 R0
       60 MOVE                             R9 R1
       61 CALL                             R7 2 2
       62 JUMPIF                           R7 ; [+3]
       63 LOADB                            R5 0
       64 MOVE                             R6 R8
       65 JUMP                             ; [+14]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K10 ["validateAnimationRigDataInternals"]
       69 MOVE                             R10 R0
       70 MOVE                             R11 R1
       71 CALL                             R9 2 2
       72 MOVE                             R7 R9
       73 MOVE                             R8 R10
       74 JUMPIF                           R7 ; [+3]
       75 LOADB                            R5 0
       76 MOVE                             R6 R8
       77 JUMP                             ; [+2]
       78 LOADB                            R5 1
       79 LOADNIL                          R6
       80 MOVE                             R3 R5
       81 MOVE                             R4 R6
       82 JUMPIF                           R3 ; [+3]
       83 LOADB                            R5 0
       84 MOVE                             R6 R4
       85 RETURN                           R5 2
       86 GETUPVAL                         R5 5
       87 CALL                             R5 0 1
       88 JUMPIFNOT                        R5 ; [+12]
       89 GETUPVAL                         R5 4
       90 GETTABLEKS                       R5 R5 K11 ["validateMarkerCurves"]
       92 MOVE                             R6 R0
       93 MOVE                             R7 R1
       94 CALL                             R5 2 2
       95 MOVE                             R3 R5
       96 MOVE                             R4 R6
       97 JUMPIF                           R3 ; [+3]
       98 LOADB                            R5 0
       99 MOVE                             R6 R4
      100 RETURN                           R5 2
      101 NAMECALL                         R5 R0 K12 ["GetChildren"]
      103 CALL                             R5 1 3
      104 FORGPREP                         R5
      105 LOADK                            R12 K13 ["MarkerCurve"]
      106 NAMECALL                         R10 R9 K1 ["IsA"]
      108 CALL                             R10 2 1
      109 JUMPIF                           R10 ; [+5]
      110 LOADK                            R12 K14 ["AnimationRigData"]
      111 NAMECALL                         R10 R9 K1 ["IsA"]
      113 CALL                             R10 2 1
      114 JUMPIFNOT                        R10 ; [+21]
      115 GETUPVAL                         R10 6
      116 CALL                             R10 0 1
      117 JUMPIFNOT                        R10 ; [+165]
      118 NAMECALL                         R11 R9 K12 ["GetChildren"]
      120 CALL                             R11 1 1
      121 LENGTH                           R10 R11
      122 LOADN                            R11 0
      123 JUMPIFNOTLT                      R11 R10 ; [+159]
      125 GETUPVAL                         R10 2
      126 LOADK                            R11 K15 ["CurveAnimation child MarkerCurves and AnimationRigData cannot have children"]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K3 ["ErrorType"]
      130 GETTABLEKS                       R12 R12 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      132 MOVE                             R13 R1
      133 CALL                             R10 3 -1
      134 RETURN                           R10 -1
      135 JUMP                             ; [+147]
      136 LOADK                            R12 K16 ["Folder"]
      137 NAMECALL                         R10 R9 K1 ["IsA"]
      139 CALL                             R10 2 1
      140 JUMPIFNOT                        R10 ; [+129]
      141 GETUPVAL                         R10 6
      142 CALL                             R10 0 1
      143 JUMPIFNOT                        R10 ; [+75]
      144 GETTABLEKS                       R11 R9 K17 ["Name"]
      146 LOADB                            R10 1
      147 GETUPVAL                         R14 7
      148 JUMPIF                           R14 ; [+5]
      149 GETUPVAL                         R14 8
      150 GETTABLEKS                       R14 R14 K18 ["getBodyPartsToParents"]
      152 CALL                             R14 0 1
      153 SETUPVAL                         R14 7
      154 GETUPVAL                         R13 7
      155 GETTABLE                         R12 R13 R11
      156 JUMPIFNOTEQKNIL                  R12 ; [+5]
      158 JUMPIFEQKS                       R11 K19 ["HumanoidRootPart"] ; [+2]
      160 LOADB                            R10 0 +1
      161 LOADB                            R10 1
      162 JUMPIF                           R10 ; [+13]
      163 GETUPVAL                         R10 2
      164 LOADK                            R12 K20 ["CurveAnimation contains unexpected child: "]
      165 GETTABLEKS                       R13 R9 K17 ["Name"]
      167 CONCAT                           R11 R12 R13
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R12 R12 K3 ["ErrorType"]
      171 GETTABLEKS                       R12 R12 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      173 MOVE                             R13 R1
      174 CALL                             R10 3 -1
      175 RETURN                           R10 -1
      176 NEWCLOSURE                       R12 P0
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          UPVAL U9
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          UPVAL U0
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R12
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          UPVAL U8
      185 GETTABLEKS                       R14 R9 K17 ["Name"]
      187 LOADB                            R13 1
      188 GETUPVAL                         R17 7
      189 JUMPIF                           R17 ; [+5]
      190 GETUPVAL                         R17 8
      191 GETTABLEKS                       R17 R17 K18 ["getBodyPartsToParents"]
      193 CALL                             R17 0 1
      194 SETUPVAL                         R17 7
      195 GETUPVAL                         R16 7
      196 GETTABLE                         R15 R16 R14
      197 JUMPIFNOTEQKNIL                  R15 ; [+5]
      199 JUMPIFEQKS                       R14 K19 ["HumanoidRootPart"] ; [+2]
      201 LOADB                            R13 0 +1
      202 LOADB                            R13 1
      203 JUMPIF                           R13 ; [+3]
      204 LOADB                            R10 1
      205 LOADNIL                          R11
      206 JUMP                             ; [+5]
      207 MOVE                             R13 R12
      208 MOVE                             R14 R9
      209 CALL                             R13 1 2
      210 MOVE                             R10 R13
      211 MOVE                             R11 R14
      212 MOVE                             R3 R10
      213 MOVE                             R4 R11
      214 JUMPIF                           R3 ; [+68]
      215 LOADB                            R10 0
      216 MOVE                             R11 R4
      217 RETURN                           R10 2
      218 JUMP                             ; [+64]
      219 LOADNIL                          R12
      220 NEWCLOSURE                       R11 P0
      221 CAPTURE                          UPVAL U6
      222 CAPTURE                          UPVAL U9
      223 CAPTURE                          UPVAL U2
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R11
      227 CAPTURE                          UPVAL U7
      228 CAPTURE                          UPVAL U8
      229 GETTABLEKS                       R13 R9 K17 ["Name"]
      231 LOADB                            R12 1
      232 GETUPVAL                         R16 7
      233 JUMPIF                           R16 ; [+5]
      234 GETUPVAL                         R16 8
      235 GETTABLEKS                       R16 R16 K18 ["getBodyPartsToParents"]
      237 CALL                             R16 0 1
      238 SETUPVAL                         R16 7
      239 GETUPVAL                         R15 7
      240 GETTABLE                         R14 R15 R13
      241 JUMPIFNOTEQKNIL                  R14 ; [+5]
      243 JUMPIFEQKS                       R13 K19 ["HumanoidRootPart"] ; [+2]
      245 LOADB                            R12 0 +1
      246 LOADB                            R12 1
      247 JUMPIF                           R12 ; [+2]
      248 LOADB                            R10 1
      249 JUMP                             ; [+4]
      250 MOVE                             R12 R11
      251 MOVE                             R13 R9
      252 CALL                             R12 1 1
      253 MOVE                             R10 R12
      254 JUMPIF                           R10 ; [+28]
      255 GETUPVAL                         R10 2
      256 LOADK                            R12 K21 ["CurveAnimation contains child body part Folder "]
      257 GETTABLEKS                       R13 R9 K17 ["Name"]
      259 LOADK                            R14 K22 [" which has an invalid hierarchy"]
      260 CONCAT                           R11 R12 R14
      261 GETUPVAL                         R12 0
      262 GETTABLEKS                       R12 R12 K3 ["ErrorType"]
      264 GETTABLEKS                       R12 R12 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      266 MOVE                             R13 R1
      267 CALL                             R10 3 -1
      268 RETURN                           R10 -1
      269 JUMP                             ; [+13]
      270 GETUPVAL                         R10 2
      271 LOADK                            R12 K20 ["CurveAnimation contains unexpected child: "]
      272 GETTABLEKS                       R13 R9 K17 ["Name"]
      274 CONCAT                           R11 R12 R13
      275 GETUPVAL                         R12 0
      276 GETTABLEKS                       R12 R12 K3 ["ErrorType"]
      278 GETTABLEKS                       R12 R12 K4 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      280 MOVE                             R13 R1
      281 CALL                             R10 3 -1
      282 RETURN                           R10 -1
      283 FORGLOOP                         R5 2 ; [-179]
      285 GETUPVAL                         R5 10
      286 GETTABLEKS                       R5 R5 K23 ["new"]
      288 CALL                             R5 0 1
      289 GETUPVAL                         R8 11
      290 MOVE                             R9 R0
      291 MOVE                             R10 R1
      292 CALL                             R8 2 -1
      293 NAMECALL                         R6 R5 K24 ["updateReasons"]
      295 CALL                             R6 -1 0
      296 GETUPVAL                         R8 12
      297 MOVE                             R9 R0
      298 MOVE                             R10 R1
      299 CALL                             R8 2 -1
      300 NAMECALL                         R6 R5 K24 ["updateReasons"]
      302 CALL                             R6 -1 0
      303 NAMECALL                         R6 R5 K25 ["getFinalResults"]
      305 CALL                             R6 1 -1
      306 RETURN                           R6 -1

PROTO_22:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [game]
        3 LOADK                            R4 K2 ["AsyncRenamesUsedInLuaApps"]
        4 NAMECALL                         R2 R2 K3 ["GetEngineFeature"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R4 K6 [Instance.new]
       11 LOADK                            R5 K7 ["HumanoidDescription"]
       12 CALL                             R4 1 1
       13 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       15 NAMECALL                         R2 R2 K12 ["CreateHumanoidModelFromDescriptionAsync"]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 JUMP                             ; [+14]
       20 GETIMPORT                        R2 K1 [game]
       22 GETTABLEKS                       R2 R2 K13 ["Players"]
       24 GETIMPORT                        R4 K6 [Instance.new]
       26 LOADK                            R5 K7 ["HumanoidDescription"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       30 NAMECALL                         R2 R2 K14 ["CreateHumanoidModelFromDescription"]
       32 CALL                             R2 3 1
       33 MOVE                             R1 R2
       34 NAMECALL                         R2 R1 K15 ["GetDescendants"]
       36 CALL                             R2 1 3
       37 FORGPREP                         R2
       38 LOADK                            R9 K16 ["Decal"]
       39 NAMECALL                         R7 R6 K17 ["IsA"]
       41 CALL                             R7 2 1
       42 JUMPIFNOT                        R7 ; [+4]
       43 LOADN                            R7 1
       44 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       46 JUMP                             ; [+21]
       47 LOADK                            R9 K19 ["MeshPart"]
       48 NAMECALL                         R7 R6 K17 ["IsA"]
       50 CALL                             R7 2 1
       51 JUMPIFNOT                        R7 ; [+7]
       52 LOADN                            R7 1
       53 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K20 ["CanCollide"]
       58 JUMP                             ; [+9]
       59 LOADK                            R9 K21 ["Motor6D"]
       60 NAMECALL                         R7 R6 K17 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIFNOT                        R7 ; [+4]
       64 JUMPIFNOT                        R0 ; [+3]
       65 NAMECALL                         R7 R6 K22 ["Destroy"]
       67 CALL                             R7 1 0
       68 FORGLOOP                         R2 2 ; [-31]
       70 RETURN                           R1 1

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+20]
        9 GETTABLEKS                       R7 R5 K3 ["Name"]
       11 LOADB                            R6 1
       12 GETUPVAL                         R10 0
       13 JUMPIF                           R10 ; [+5]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K4 ["getBodyPartsToParents"]
       17 CALL                             R10 0 1
       18 SETUPVAL                         R10 0
       19 GETUPVAL                         R9 0
       20 GETTABLE                         R8 R9 R7
       21 JUMPIFNOTEQKNIL                  R8 ; [+5]
       23 JUMPIFEQKS                       R7 K5 ["HumanoidRootPart"] ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 JUMPIFNOT                        R6 ; [+1]
       28 RETURN                           R5 1
       29 FORGLOOP                         R1 2 ; [-26]
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R3 K0 ["X"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Y"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 LOADK                            R5 K3 ["Z"]
        9 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R1 ; [+15]
       13 LOADK                            R6 K4 ["FloatCurve"]
       14 NAMECALL                         R4 R1 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+11]
       18 NAMECALL                         R6 R1 K6 ["GetKeys"]
       20 CALL                             R6 1 1
       21 LENGTH                           R5 R6
       22 LOADN                            R6 0
       23 JUMPIFLT                         R6 R5 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 JUMP                             ; [+1]
       28 LOADB                            R4 0
       29 JUMPIF                           R4 ; [+35]
       30 JUMPIFNOT                        R2 ; [+15]
       31 LOADK                            R6 K4 ["FloatCurve"]
       32 NAMECALL                         R4 R2 K5 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+11]
       36 NAMECALL                         R6 R2 K6 ["GetKeys"]
       38 CALL                             R6 1 1
       39 LENGTH                           R5 R6
       40 LOADN                            R6 0
       41 JUMPIFLT                         R6 R5 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMP                             ; [+1]
       46 LOADB                            R4 0
       47 JUMPIF                           R4 ; [+17]
       48 JUMPIFNOT                        R3 ; [+15]
       49 LOADK                            R6 K4 ["FloatCurve"]
       50 NAMECALL                         R4 R3 K5 ["IsA"]
       52 CALL                             R4 2 1
       53 JUMPIFNOT                        R4 ; [+11]
       54 NAMECALL                         R6 R3 K6 ["GetKeys"]
       56 CALL                             R6 1 1
       57 LENGTH                           R5 R6
       58 LOADN                            R6 0
       59 JUMPIFLT                         R6 R5 ; [+2]
       61 LOADB                            R4 0 +1
       62 LOADB                            R4 1
       63 RETURN                           R4 1
       64 LOADB                            R4 0
       65 RETURN                           R4 1

PROTO_25:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Vector3Curve"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_26:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["EulerRotationCurve"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_27:
        0 NEWTABLE                         R0 0 0
        2 LOADNIL                          R1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+22]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 FASTCALL2K                       ASSERT R2 K0 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K0 ["ValidateCurveAnimation.validateStructure() ensures CurveAnimation has one and only one body part Folder child or HumanoidRootPart child."]
       13 GETIMPORT                        R3 K2 [assert]
       15 CALL                             R3 2 0
       16 NAMECALL                         R3 R2 K3 ["GetDescendants"]
       18 CALL                             R3 1 1
       19 MOVE                             R1 R3
       20 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K6 [table.insert]
       26 CALL                             R3 2 0
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R2 R2 K3 ["GetDescendants"]
       31 CALL                             R2 1 1
       32 MOVE                             R1 R2
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 LOADK                            R9 K7 ["Folder"]
       38 NAMECALL                         R7 R6 K8 ["IsA"]
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R7 ; [+79]
       42 GETUPVAL                         R9 3
       43 JUMPIF                           R9 ; [+5]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K9 ["getBodyPartsToParents"]
       47 CALL                             R9 0 1
       48 SETUPVAL                         R9 3
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R9 R6 K10 ["Name"]
       52 GETTABLE                         R7 R8 R9
       53 JUMPIFNOT                        R7 ; [+67]
       54 LOADK                            R9 K11 ["Position"]
       55 NAMECALL                         R7 R6 K12 ["FindFirstChild"]
       57 CALL                             R7 2 1
       58 LOADK                            R10 K13 ["Rotation"]
       59 NAMECALL                         R8 R6 K12 ["FindFirstChild"]
       61 CALL                             R8 2 1
       62 GETTABLEKS                       R9 R6 K10 ["Name"]
       64 DUPTABLE                         R10 K17 [{"pos", "rot", "faceControls"}]
       65 JUMPIF                           R7 ; [+2]
       66 LOADB                            R12 0
       67 JUMP                             ; [+10]
       68 LOADK                            R15 K18 ["Vector3Curve"]
       69 NAMECALL                         R13 R7 K8 ["IsA"]
       71 CALL                             R13 2 1
       72 JUMPIF                           R13 ; [+2]
       73 LOADB                            R12 0
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R12 5
       76 MOVE                             R13 R7
       77 CALL                             R12 1 1
       78 JUMPIFNOT                        R12 ; [+2]
       79 MOVE                             R11 R7
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K14 ["pos"]
       84 JUMPIF                           R8 ; [+2]
       85 LOADB                            R12 0
       86 JUMP                             ; [+10]
       87 LOADK                            R15 K19 ["EulerRotationCurve"]
       88 NAMECALL                         R13 R8 K8 ["IsA"]
       90 CALL                             R13 2 1
       91 JUMPIF                           R13 ; [+2]
       92 LOADB                            R12 0
       93 JUMP                             ; [+3]
       94 GETUPVAL                         R12 5
       95 MOVE                             R13 R8
       96 CALL                             R12 1 1
       97 JUMPIFNOT                        R12 ; [+2]
       98 MOVE                             R11 R8
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 SETTABLEKS                       R11 R10 K15 ["rot"]
      103 GETTABLEKS                       R12 R6 K10 ["Name"]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R13 R13 K20 ["NAMED_R15_BODY_PARTS"]
      108 GETTABLEKS                       R13 R13 K21 ["Head"]
      110 JUMPIFNOTEQ                      R12 R13 ; [+6]
      112 LOADK                            R13 K22 ["FaceControls"]
      113 NAMECALL                         R11 R6 K12 ["FindFirstChild"]
      115 CALL                             R11 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R11
      118 SETTABLEKS                       R11 R10 K16 ["faceControls"]
      120 SETTABLE                         R10 R0 R9
      121 FORGLOOP                         R2 2 ; [-85]
      123 RETURN                           R0 1

PROTO_28:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R1 R0 K0 ["GetChildren"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["FloatCurve"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+15]
       11 NAMECALL                         R6 R5 K3 ["GetKeys"]
       13 CALL                             R6 1 3
       14 FORGPREP                         R6
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R13 R10 K4 ["Time"]
       18 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       20 GETIMPORT                        R11 K7 [math.max]
       22 CALL                             R11 2 1
       23 SETUPVAL                         R11 0
       24 FORGLOOP                         R6 2 ; [-10]
       26 FORGLOOP                         R1 2 ; [-21]
       28 RETURN                           R0 0

PROTO_29:
        0 LOADN                            R1 255
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 MOVE                             R8 R2
        8 GETTABLEKS                       R9 R7 K0 ["pos"]
       10 CALL                             R8 1 0
       11 MOVE                             R8 R2
       12 GETTABLEKS                       R9 R7 K1 ["rot"]
       14 CALL                             R8 1 0
       15 MOVE                             R8 R2
       16 GETTABLEKS                       R9 R7 K2 ["faceControls"]
       18 CALL                             R8 1 0
       19 FORGLOOP                         R3 2 ; [-13]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R1 1

PROTO_30:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["pos"]
        8 JUMPIFNOT                        R9 ; [+15]
        9 GETTABLEKS                       R10 R7 K0 ["pos"]
       11 MOVE                             R12 R0
       12 NAMECALL                         R10 R10 K1 ["GetValueAtTime"]
       14 CALL                             R10 2 -1
       15 FASTCALL                         TABLE_UNPACK ; [+2]
       16 GETIMPORT                        R9 K3 [unpack]
       18 CALL                             R9 -1 -1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K6 [Vector3.new]
       22 CALL                             R8 -1 1
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K7 [{0, 0, 0}]
       25 GETTABLEKS                       R10 R7 K8 ["rot"]
       27 JUMPIFNOT                        R10 ; [+7]
       28 GETTABLEKS                       R9 R7 K8 ["rot"]
       30 MOVE                             R11 R0
       31 NAMECALL                         R9 R9 K9 ["GetRotationAtTime"]
       33 CALL                             R9 2 1
       34 JUMP                             ; [+3]
       35 GETIMPORT                        R9 K11 [CFrame.new]
       37 CALL                             R9 0 1
       38 ADD                              R10 R9 R8
       39 SETTABLE                         R10 R2 R6
       40 FORGLOOP                         R3 2 ; [-35]
       42 RETURN                           R2 1

PROTO_31:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["pos"]
        8 JUMPIFNOT                        R8 ; [+17]
        9 GETTABLEKS                       R10 R7 K0 ["pos"]
       11 MOVE                             R12 R0
       12 NAMECALL                         R10 R10 K1 ["GetValueAtTime"]
       14 CALL                             R10 2 -1
       15 FASTCALL                         TABLE_UNPACK ; [+2]
       16 GETIMPORT                        R9 K3 [unpack]
       18 CALL                             R9 -1 -1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K6 [Vector3.new]
       22 CALL                             R8 -1 1
       23 GETTABLEKS                       R8 R8 K7 ["Magnitude"]
       25 SETTABLE                         R8 R2 R6
       26 FORGLOOP                         R3 2 ; [-21]
       28 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["calculateAllTransformsForFullBody"]
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 4
       11 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R3 K3 [table.insert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 5
       18 GETUPVAL                         R5 6
       19 MOVE                             R6 R0
       20 GETUPVAL                         R7 1
       21 CALL                             R5 2 1
       22 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       24 GETIMPORT                        R3 K3 [table.insert]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_33:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 DUPCLOSURE                       R2 K0 [PROTO_29]
        9 DUPCLOSURE                       R3 K1 [PROTO_30]
       10 DUPCLOSURE                       R4 K2 [PROTO_31]
       11 GETUPVAL                         R5 6
       12 LOADB                            R6 0
       13 CALL                             R5 1 1
       14 NEWTABLE                         R6 0 0
       16 NAMECALL                         R7 R5 K3 ["GetChildren"]
       18 CALL                             R7 1 3
       19 FORGPREP                         R7
       20 GETTABLEKS                       R13 R11 K4 ["Name"]
       22 LOADB                            R12 1
       23 GETUPVAL                         R16 2
       24 JUMPIF                           R16 ; [+5]
       25 GETUPVAL                         R16 3
       26 GETTABLEKS                       R16 R16 K5 ["getBodyPartsToParents"]
       28 CALL                             R16 0 1
       29 SETUPVAL                         R16 2
       30 GETUPVAL                         R15 2
       31 GETTABLE                         R14 R15 R13
       32 JUMPIFNOTEQKNIL                  R14 ; [+5]
       34 JUMPIFEQKS                       R13 K6 ["HumanoidRootPart"] ; [+2]
       36 LOADB                            R12 0 +1
       37 LOADB                            R12 1
       38 JUMPIFNOT                        R12 ; [+3]
       39 GETTABLEKS                       R12 R11 K4 ["Name"]
       41 SETTABLE                         R11 R6 R12
       42 FORGLOOP                         R7 2 ; [-23]
       44 MOVE                             R7 R1
       45 CALL                             R7 0 1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R7
       48 CALL                             R8 1 1
       49 NEWTABLE                         R9 0 0
       51 NEWTABLE                         R10 0 0
       53 NEWCLOSURE                       R11 P4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R7
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R4
       61 LOADN                            R12 0
       62 JUMPIFNOTLE                      R12 R8 ; [+63]
       64 GETUPVAL                         R13 7
       65 CALL                             R13 0 1
       66 JUMPIFNOT                        R13 ; [+29]
       67 MOVE                             R13 R12
       68 MOVE                             R14 R3
       69 MOVE                             R15 R13
       70 MOVE                             R16 R7
       71 CALL                             R14 2 1
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R15 R15 K7 ["calculateAllTransformsForFullBody"]
       75 MOVE                             R16 R6
       76 MOVE                             R17 R14
       77 CALL                             R15 2 1
       78 FASTCALL2                        TABLE_INSERT R9 R15 ; [+5]
       80 MOVE                             R17 R9
       81 MOVE                             R18 R15
       82 GETIMPORT                        R16 K10 [table.insert]
       84 CALL                             R16 2 0
       85 MOVE                             R18 R4
       86 MOVE                             R19 R13
       87 MOVE                             R20 R7
       88 CALL                             R18 2 1
       89 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
       91 MOVE                             R17 R10
       92 GETIMPORT                        R16 K10 [table.insert]
       94 CALL                             R16 2 0
       95 JUMP                             ; [+27]
       96 MOVE                             R13 R3
       97 MOVE                             R14 R12
       98 MOVE                             R15 R7
       99 CALL                             R13 2 1
      100 GETUPVAL                         R14 3
      101 GETTABLEKS                       R14 R14 K7 ["calculateAllTransformsForFullBody"]
      103 MOVE                             R15 R6
      104 MOVE                             R16 R13
      105 CALL                             R14 2 1
      106 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
      108 MOVE                             R16 R9
      109 MOVE                             R17 R14
      110 GETIMPORT                        R15 K10 [table.insert]
      112 CALL                             R15 2 0
      113 MOVE                             R17 R4
      114 MOVE                             R18 R12
      115 MOVE                             R19 R7
      116 CALL                             R17 2 1
      117 FASTCALL2                        TABLE_INSERT R10 R17 ; [+4]
      119 MOVE                             R16 R10
      120 GETIMPORT                        R15 K10 [table.insert]
      122 CALL                             R15 2 0
      123 GETUPVAL                         R13 8
      124 ADD                              R12 R12 R13
      125 JUMPBACK                         ; [-64]
      126 GETUPVAL                         R13 7
      127 CALL                             R13 0 1
      128 JUMPIFNOT                        R13 ; [+30]
      129 LOADN                            R13 0
      130 JUMPIFNOTLE                      R13 R8 ; [+28]
      132 MOVE                             R13 R3
      133 MOVE                             R14 R8
      134 MOVE                             R15 R7
      135 CALL                             R13 2 1
      136 GETUPVAL                         R14 3
      137 GETTABLEKS                       R14 R14 K7 ["calculateAllTransformsForFullBody"]
      139 MOVE                             R15 R6
      140 MOVE                             R16 R13
      141 CALL                             R14 2 1
      142 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
      144 MOVE                             R16 R9
      145 MOVE                             R17 R14
      146 GETIMPORT                        R15 K10 [table.insert]
      148 CALL                             R15 2 0
      149 MOVE                             R17 R4
      150 MOVE                             R18 R8
      151 MOVE                             R19 R7
      152 CALL                             R17 2 1
      153 FASTCALL2                        TABLE_INSERT R10 R17 ; [+4]
      155 MOVE                             R16 R10
      156 GETIMPORT                        R15 K10 [table.insert]
      158 CALL                             R15 2 0
      159 NAMECALL                         R13 R5 K11 ["Destroy"]
      161 CALL                             R13 1 0
      162 MOVE                             R13 R9
      163 MOVE                             R14 R8
      164 MOVE                             R15 R10
      165 MOVE                             R16 R7
      166 RETURN                           R13 4

PROTO_34:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["asNumber"]
        6 CALL                             R2 0 1
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 JUMPIFLE                         R0 R2 ; [+7]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["asNumber"]
       14 CALL                             R3 0 1
       15 JUMPIFNOTLT                      R3 R0 ; [+41]
       17 GETUPVAL                         R3 3
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+19]
       20 GETUPVAL                         R3 4
       21 LOADK                            R5 K1 ["CurveAnimation must be between %* and %* seconds long. Please fix the animation."]
       22 MOVE                             R7 R2
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K2 ["asString"]
       26 CALL                             R8 0 1
       27 NAMECALL                         R5 R5 K3 ["format"]
       29 CALL                             R5 3 1
       30 MOVE                             R4 R5
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K4 ["ErrorType"]
       34 GETTABLEKS                       R5 R5 K5 ["validateCurveAnimation_UnacceptableLength"]
       36 MOVE                             R6 R1
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
       39 GETUPVAL                         R3 4
       40 LOADK                            R5 K6 ["CurveAnimation must be between 0 and %* seconds long. Please fix the animation."]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K2 ["asString"]
       44 CALL                             R7 0 1
       45 NAMECALL                         R5 R5 K3 ["format"]
       47 CALL                             R5 2 1
       48 MOVE                             R4 R5
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K4 ["ErrorType"]
       52 GETTABLEKS                       R5 R5 K5 ["validateCurveAnimation_UnacceptableLength"]
       54 MOVE                             R6 R1
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
       57 LOADB                            R3 1
       58 RETURN                           R3 1

PROTO_35:
        0 LOADK                            R3 K0 [∞]
        1 LOADN                            R4 0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 GETUPVAL                         R7 0
        5 CALL                             R7 0 1
        6 JUMPIFNOT                        R7 ; [+10]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K1 ["asNumber"]
       10 CALL                             R7 0 1
       11 MOVE                             R5 R7
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K1 ["asNumber"]
       15 CALL                             R7 0 1
       16 MOVE                             R6 R7
       17 MOVE                             R7 R0
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 MOVE                             R12 R11
       22 LOADNIL                          R13
       23 LOADNIL                          R14
       24 FORGPREP                         R12
       25 GETUPVAL                         R17 0
       26 CALL                             R17 0 1
       27 JUMPIFNOT                        R17 ; [+77]
       28 GETTABLEKS                       R17 R16 K2 ["Position"]
       30 GETTABLEKS                       R17 R17 K3 ["Y"]
       32 JUMPIFNOTLT                      R17 R5 ; [+33]
       34 GETIMPORT                        R17 K6 [string.format]
       36 LOADK                            R18 K7 ["In CurveAnimation at time %.2f seconds, body part %s is at height %.2f studs from the HumanoidRootPart. Body parts cannot be lower than %s studs from the HumanoidRootPart. Please fix the animation."]
       37 SUBK                             R22 R10 K8 [1]
       38 GETUPVAL                         R23 3
       39 MUL                              R21 R22 R23
       40 FASTCALL2                        MATH_MIN R2 R21 ; [+4]
       42 MOVE                             R20 R2
       43 GETIMPORT                        R19 K11 [math.min]
       45 CALL                             R19 2 1
       46 MOVE                             R20 R15
       47 GETTABLEKS                       R21 R16 K2 ["Position"]
       49 GETTABLEKS                       R21 R21 K3 ["Y"]
       51 GETUPVAL                         R22 1
       52 GETTABLEKS                       R22 R22 K12 ["asString"]
       54 CALL                             R22 0 -1
       55 CALL                             R17 -1 1
       56 GETUPVAL                         R18 4
       57 MOVE                             R19 R17
       58 GETUPVAL                         R20 5
       59 GETTABLEKS                       R20 R20 K13 ["ErrorType"]
       61 GETTABLEKS                       R20 R20 K14 ["validateCurveAnimation_UnacceptableSizeBounds"]
       63 MOVE                             R21 R1
       64 CALL                             R18 3 -1
       65 RETURN                           R18 -1
       66 GETTABLEKS                       R17 R16 K2 ["Position"]
       68 GETTABLEKS                       R17 R17 K15 ["Magnitude"]
       70 JUMPIFNOTLT                      R6 R17 ; [+56]
       72 GETIMPORT                        R17 K6 [string.format]
       74 LOADK                            R18 K16 ["In CurveAnimation at time %.2f seconds, body part %s is %.2f studs from the HumanoidRootPart. Body parts cannot be more than %s studs from the HumanoidRootPart. Please fix the animation."]
       75 SUBK                             R22 R10 K8 [1]
       76 GETUPVAL                         R23 3
       77 MUL                              R21 R22 R23
       78 FASTCALL2                        MATH_MIN R2 R21 ; [+4]
       80 MOVE                             R20 R2
       81 GETIMPORT                        R19 K11 [math.min]
       83 CALL                             R19 2 1
       84 MOVE                             R20 R15
       85 GETTABLEKS                       R21 R16 K2 ["Position"]
       87 GETTABLEKS                       R21 R21 K15 ["Magnitude"]
       89 GETUPVAL                         R22 2
       90 GETTABLEKS                       R22 R22 K12 ["asString"]
       92 CALL                             R22 0 -1
       93 CALL                             R17 -1 1
       94 GETUPVAL                         R18 4
       95 MOVE                             R19 R17
       96 GETUPVAL                         R20 5
       97 GETTABLEKS                       R20 R20 K13 ["ErrorType"]
       99 GETTABLEKS                       R20 R20 K14 ["validateCurveAnimation_UnacceptableSizeBounds"]
      101 MOVE                             R21 R1
      102 CALL                             R18 3 -1
      103 RETURN                           R18 -1
      104 JUMP                             ; [+22]
      105 GETTABLEKS                       R19 R16 K2 ["Position"]
      107 GETTABLEKS                       R19 R19 K15 ["Magnitude"]
      109 FASTCALL2                        MATH_MAX R4 R19 ; [+4]
      111 MOVE                             R18 R4
      112 GETIMPORT                        R17 K18 [math.max]
      114 CALL                             R17 2 1
      115 MOVE                             R4 R17
      116 GETTABLEKS                       R19 R16 K2 ["Position"]
      118 GETTABLEKS                       R19 R19 K3 ["Y"]
      120 FASTCALL2                        MATH_MIN R3 R19 ; [+4]
      122 MOVE                             R18 R3
      123 GETIMPORT                        R17 K11 [math.min]
      125 CALL                             R17 2 1
      126 MOVE                             R3 R17
      127 FORGLOOP                         R12 2 ; [-103]
      129 FORGLOOP                         R7 2 ; [-109]
      131 GETUPVAL                         R7 0
      132 CALL                             R7 0 1
      133 JUMPIF                           R7 ; [+71]
      134 GETUPVAL                         R7 6
      135 GETTABLEKS                       R7 R7 K19 ["new"]
      137 CALL                             R7 0 1
      138 GETUPVAL                         R11 1
      139 GETTABLEKS                       R11 R11 K1 ["asNumber"]
      141 CALL                             R11 0 1
      142 JUMPIFLE                         R11 R3 ; [+2]
      144 LOADB                            R10 0 +1
      145 LOADB                            R10 1
      146 NEWTABLE                         R11 0 1
      148 LOADK                            R13 K20 ["Body parts in a CurveAnimation cannot be lower than %* studs from the HumanoidRootPart. Please fix the animation."]
      149 GETUPVAL                         R15 1
      150 GETTABLEKS                       R15 R15 K12 ["asString"]
      152 CALL                             R15 0 1
      153 NAMECALL                         R13 R13 K5 ["format"]
      155 CALL                             R13 2 1
      156 MOVE                             R12 R13
      157 SETLIST                          R11 R12 1 [1]
      159 NAMECALL                         R8 R7 K21 ["updateReasons"]
      161 CALL                             R8 3 0
      162 GETUPVAL                         R11 2
      163 GETTABLEKS                       R11 R11 K1 ["asNumber"]
      165 CALL                             R11 0 1
      166 JUMPIFLE                         R4 R11 ; [+2]
      168 LOADB                            R10 0 +1
      169 LOADB                            R10 1
      170 NEWTABLE                         R11 0 1
      172 LOADK                            R13 K22 ["Body parts in a CurveAnimation cannot get more than %* studs from the HumanoidRootPart. Please fix the animation."]
      173 GETUPVAL                         R15 2
      174 GETTABLEKS                       R15 R15 K12 ["asString"]
      176 CALL                             R15 0 1
      177 NAMECALL                         R13 R13 K5 ["format"]
      179 CALL                             R13 2 1
      180 MOVE                             R12 R13
      181 SETLIST                          R11 R12 1 [1]
      183 NAMECALL                         R8 R7 K21 ["updateReasons"]
      185 CALL                             R8 3 0
      186 NAMECALL                         R8 R7 K23 ["getFinalResults"]
      188 CALL                             R8 1 1
      189 JUMPIF                           R8 ; [+11]
      190 GETUPVAL                         R8 5
      191 GETTABLEKS                       R8 R8 K24 ["reportFailure"]
      193 GETUPVAL                         R9 5
      194 GETTABLEKS                       R9 R9 K13 ["ErrorType"]
      196 GETTABLEKS                       R9 R9 K14 ["validateCurveAnimation_UnacceptableSizeBounds"]
      198 LOADNIL                          R10
      199 MOVE                             R11 R1
      200 CALL                             R8 3 0
      201 NAMECALL                         R8 R7 K23 ["getFinalResults"]
      203 CALL                             R8 1 -1
      204 RETURN                           R8 -1
      205 LOADB                            R7 1
      206 RETURN                           R7 1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 DIVK                             R2 R3 K0 [0.0333333333333333]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["asNumber"]
        5 CALL                             R4 0 1
        6 MUL                              R3 R4 R2
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+5]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K1 ["asNumber"]
       14 CALL                             R5 0 1
       15 MULK                             R4 R5 K2 [30]
       16 NEWTABLE                         R5 0 0
       18 MOVE                             R6 R0
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 MOVE                             R11 R10
       23 LOADNIL                          R12
       24 LOADNIL                          R13
       25 FORGPREP                         R11
       26 GETTABLE                         R16 R5 R14
       27 JUMPIFNOT                        R16 ; [+54]
       28 GETTABLEKS                       R18 R15 K3 ["Position"]
       30 GETTABLEKS                       R19 R16 K3 ["Position"]
       32 SUB                              R17 R18 R19
       33 GETTABLEKS                       R17 R17 K4 ["Magnitude"]
       35 JUMPIFNOTLT                      R3 R17 ; [+46]
       37 GETUPVAL                         R18 2
       38 CALL                             R18 0 1
       39 JUMPIFNOT                        R18 ; [+23]
       40 SUBK                             R19 R9 K5 [1]
       41 GETUPVAL                         R20 0
       42 MUL                              R18 R19 R20
       43 DIV                              R20 R17 R2
       44 MULK                             R19 R20 K2 [30]
       45 GETIMPORT                        R20 K8 [string.format]
       47 LOADK                            R21 K9 ["In CurveAnimation at time %.2f seconds, body part %s is moving at a speed of %.2f studs/second. %.2f is the maximum studs/second speed. Please fix the animation."]
       48 MOVE                             R22 R18
       49 MOVE                             R23 R14
       50 MOVE                             R24 R19
       51 MOVE                             R25 R4
       52 CALL                             R20 5 1
       53 GETUPVAL                         R21 3
       54 MOVE                             R22 R20
       55 GETUPVAL                         R23 4
       56 GETTABLEKS                       R23 R23 K10 ["ErrorType"]
       58 GETTABLEKS                       R23 R23 K11 ["validateCurveAnimation_UnacceptableFrameDelta"]
       60 MOVE                             R24 R1
       61 CALL                             R21 3 -1
       62 RETURN                           R21 -1
       63 GETUPVAL                         R18 3
       64 LOADK                            R20 K12 ["Body part %* in CurveAnimation moves more than %* studs between frames. Please fix the animation."]
       65 MOVE                             R22 R14
       66 GETUPVAL                         R23 1
       67 GETTABLEKS                       R23 R23 K13 ["asString"]
       69 CALL                             R23 0 1
       70 NAMECALL                         R20 R20 K7 ["format"]
       72 CALL                             R20 3 1
       73 MOVE                             R19 R20
       74 GETUPVAL                         R20 4
       75 GETTABLEKS                       R20 R20 K10 ["ErrorType"]
       77 GETTABLEKS                       R20 R20 K11 ["validateCurveAnimation_UnacceptableFrameDelta"]
       79 MOVE                             R21 R1
       80 CALL                             R18 3 -1
       81 RETURN                           R18 -1
       82 FORGLOOP                         R11 2 ; [-57]
       84 MOVE                             R5 R10
       85 FORGLOOP                         R6 2 ; [-64]
       87 LOADB                            R6 1
       88 RETURN                           R6 1

PROTO_37:
        0 GETUPVAL                         R7 0
        1 DIVRK                            R6 R0 K7 [assert]
        2 GETUPVAL                         R7 1
        3 CALL                             R7 0 1
        4 SUB                              R5 R6 R7
        5 FASTCALL1                        MATH_ABS R5 ; [+2]
        6 GETIMPORT                        R4 K3 [math.abs]
        8 CALL                             R4 1 1
        9 LOADK                            R5 K4 [1E-05]
       10 JUMPIFLT                         R4 R5 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["frameDelta should be calculated as 1 / getFIntUGCValidateMaxAnimationFPS()"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 1
       22 GETUPVAL                         R4 1
       23 CALL                             R4 0 1
       24 DIV                              R3 R2 R4
       25 NEWTABLE                         R4 0 0
       27 MOVE                             R5 R0
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 MOVE                             R10 R9
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 FORGPREP                         R10
       35 GETTABLE                         R15 R4 R13
       36 JUMPIFNOT                        R15 ; [+38]
       37 MOVE                             R20 R15
       38 NAMECALL                         R18 R14 K8 ["AngleBetween"]
       40 CALL                             R18 2 1
       41 FASTCALL1                        MATH_ABS R18 ; [+2]
       42 GETIMPORT                        R17 K3 [math.abs]
       44 CALL                             R17 1 1
       45 FASTCALL1                        MATH_DEG R17 ; [+2]
       46 GETIMPORT                        R16 K10 [math.deg]
       48 CALL                             R16 1 1
       49 JUMPIFNOTLT                      R3 R16 ; [+25]
       51 SUBK                             R18 R8 K0 [1]
       52 GETUPVAL                         R19 0
       53 MUL                              R17 R18 R19
       54 GETUPVAL                         R19 1
       55 CALL                             R19 0 1
       56 MUL                              R18 R16 R19
       57 GETIMPORT                        R19 K13 [string.format]
       59 LOADK                            R20 K14 ["In CurveAnimation at time %.2f seconds, body part %s is moving at a rotation speed of %.2f degrees/second. %.2f is the maximum degrees/second speed. Please fix the animation."]
       60 MOVE                             R21 R17
       61 MOVE                             R22 R13
       62 MOVE                             R23 R18
       63 MOVE                             R24 R2
       64 CALL                             R19 5 1
       65 GETUPVAL                         R20 3
       66 MOVE                             R21 R19
       67 GETUPVAL                         R22 4
       68 GETTABLEKS                       R22 R22 K15 ["ErrorType"]
       70 GETTABLEKS                       R22 R22 K16 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
       72 MOVE                             R23 R1
       73 CALL                             R20 3 -1
       74 RETURN                           R20 -1
       75 FORGLOOP                         R10 2 ; [-41]
       77 MOVE                             R4 R9
       78 FORGLOOP                         R5 2 ; [-48]
       80 LOADB                            R5 1
       81 RETURN                           R5 1

PROTO_38:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["pos"]
        6 JUMPIF                           R7 ; [+3]
        7 GETTABLEKS                       R7 R6 K1 ["rot"]
        9 JUMPIFNOT                        R7 ; [+2]
       10 LOADB                            R7 1
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 ; [-9]
       14 GETUPVAL                         R2 0
       15 LOADK                            R3 K2 ["CurveAnimation does not contain any joint manipulation."]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K3 ["ErrorType"]
       19 GETTABLEKS                       R4 R4 K4 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
       21 MOVE                             R5 R1
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

PROTO_39:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+22]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 FASTCALL2K                       ASSERT R3 K0 ; [+5]
        9 MOVE                             R5 R3
       10 LOADK                            R6 K0 ["ValidateCurveAnimation.validateStructure() ensures CurveAnimation has one and only one body part Folder child or HumanoidRootPart child."]
       11 GETIMPORT                        R4 K2 [assert]
       13 CALL                             R4 2 0
       14 NAMECALL                         R4 R3 K3 ["GetDescendants"]
       16 CALL                             R4 1 1
       17 MOVE                             R2 R4
       18 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 GETIMPORT                        R4 K6 [table.insert]
       24 CALL                             R4 2 0
       25 JUMP                             ; [+4]
       26 NAMECALL                         R3 R0 K3 ["GetDescendants"]
       28 CALL                             R3 1 1
       29 MOVE                             R2 R3
       30 MOVE                             R3 R2
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 LOADK                            R10 K7 ["Folder"]
       35 NAMECALL                         R8 R7 K8 ["IsA"]
       37 CALL                             R8 2 1
       38 JUMPIFNOT                        R8 ; [+34]
       39 GETUPVAL                         R10 2
       40 JUMPIF                           R10 ; [+5]
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R10 R10 K9 ["getBodyPartsToParents"]
       44 CALL                             R10 0 1
       45 SETUPVAL                         R10 2
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R10 R7 K10 ["Name"]
       49 GETTABLE                         R8 R9 R10
       50 JUMPIFNOT                        R8 ; [+22]
       51 LOADK                            R10 K11 ["Position"]
       52 NAMECALL                         R8 R7 K12 ["FindFirstChild"]
       54 CALL                             R8 2 1
       55 LOADK                            R11 K13 ["Rotation"]
       56 NAMECALL                         R9 R7 K12 ["FindFirstChild"]
       58 CALL                             R9 2 1
       59 JUMPIFNOT                        R8 ; [+13]
       60 LOADK                            R12 K14 ["Vector3Curve"]
       61 NAMECALL                         R10 R8 K8 ["IsA"]
       63 CALL                             R10 2 1
       64 JUMPIFNOT                        R10 ; [+8]
       65 JUMPIFNOT                        R9 ; [+7]
       66 LOADK                            R12 K15 ["EulerRotationCurve"]
       67 NAMECALL                         R10 R9 K8 ["IsA"]
       69 CALL                             R10 2 1
       70 JUMPIFNOT                        R10 ; [+2]
       71 LOADB                            R10 1
       72 RETURN                           R10 1
       73 FORGLOOP                         R3 2 ; [-40]
       75 GETUPVAL                         R3 4
       76 LOADK                            R4 K16 ["CurveAnimation does not contain any joint manipulation."]
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R5 R5 K17 ["ErrorType"]
       80 GETTABLEKS                       R5 R5 K18 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
       82 MOVE                             R6 R1
       83 CALL                             R3 3 -1
       84 RETURN                           R3 -1

PROTO_40:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 30
        2 JUMPIFNOTLT                      R2 R1 ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K2 [string.match]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K3 ["^[0-9]+$"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_41:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R6
        6 MOVE                             R9 R1
        7 CALL                             R7 2 2
        8 JUMPIF                           R7 ; [+1]
        9 RETURN                           R7 2
       10 FORGLOOP                         R2 2 ; [-7]
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K1 ["GetTags"]
       16 CALL                             R2 2 1
       17 LENGTH                           R3 R2
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+32]
       21 LOADN                            R4 1
       22 JUMPIFLT                         R4 R3 ; [+19]
       24 GETTABLEN                        R5 R2 1
       25 LENGTH                           R6 R5
       26 LOADN                            R7 30
       27 JUMPIFNOTLT                      R7 R6 ; [+3]
       29 LOADB                            R4 0
       30 JUMP                             ; [+10]
       31 GETIMPORT                        R7 K4 [string.match]
       33 MOVE                             R8 R5
       34 LOADK                            R9 K5 ["^[0-9]+$"]
       35 CALL                             R7 2 1
       36 JUMPIFNOTEQKNIL                  R7 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 MOVE                             R4 R6
       41 JUMPIF                           R4 ; [+10]
       42 GETUPVAL                         R4 2
       43 LOADK                            R5 K6 ["CurveAnimation can only contain a single timestamp tag. Please remove all other tags."]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K7 ["ErrorType"]
       47 GETTABLEKS                       R6 R6 K8 ["validateTags"]
       49 MOVE                             R7 R1
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1
       52 LOADB                            R4 1
       53 RETURN                           R4 1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_44:
        0 LOADB                            R1 1
        1 JUMPIFEQKN                       R0 K0 [∞] ; [+5]
        3 JUMPIFEQKN                       R0 K1 [-∞] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_45:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_43]
        2 DUPCLOSURE                       R1 K1 [PROTO_44]
        3 NEWTABLE                         R2 0 0
        5 GETVARARGS                       R5 -1
        6 SETLIST                          R2 R5 -1 [1]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 JUMPIFNOTEQ                      R6 R6 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 LOADB                            R7 1
       19 JUMPIFEQKN                       R6 K2 [∞] ; [+5]
       21 JUMPIFEQKN                       R6 K3 [-∞] ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADB                            R7 0
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 2 ; [-18]
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["asNumber"]
        4 CALL                             R4 0 1
        5 MUL                              R2 R3 R4
        6 DIVRK                            R3 R1 K2 ["math"]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K0 ["asNumber"]
       10 CALL                             R6 0 1
       11 MUL                              R5 R3 R6
       12 FASTCALL1                        MATH_CEIL R5 ; [+2]
       13 GETIMPORT                        R4 K4 [math.ceil]
       15 CALL                             R4 1 1
       16 NAMECALL                         R5 R0 K5 ["GetDescendants"]
       18 CALL                             R5 1 3
       19 FORGPREP                         R5
       20 LOADK                            R12 K6 ["MarkerCurve"]
       21 NAMECALL                         R10 R9 K7 ["IsA"]
       23 CALL                             R10 2 1
       24 JUMPIFNOT                        R10 ; [+87]
       25 NAMECALL                         R10 R9 K8 ["GetMarkers"]
       27 CALL                             R10 1 1
       28 GETUPVAL                         R11 3
       29 CALL                             R11 0 1
       30 JUMPIFNOT                        R11 ; [+28]
       31 GETUPVAL                         R12 4
       32 CALL                             R12 0 1
       33 FASTCALL2                        MATH_MIN R12 R4 ; [+4]
       35 MOVE                             R13 R4
       36 GETIMPORT                        R11 K10 [math.min]
       38 CALL                             R11 2 1
       39 LENGTH                           R12 R10
       40 JUMPIFNOTLT                      R11 R12 ; [+36]
       42 GETUPVAL                         R12 5
       43 LOADK                            R14 K11 ["CurveAnimation contains a MarkerCurve with %* Markers. %* is the maximum per MarkerCurve. Please fix the animation."]
       44 LENGTH                           R16 R10
       45 MOVE                             R17 R11
       46 NAMECALL                         R14 R14 K12 ["format"]
       48 CALL                             R14 3 1
       49 MOVE                             R13 R14
       50 GETUPVAL                         R14 6
       51 GETTABLEKS                       R14 R14 K13 ["ErrorType"]
       53 GETTABLEKS                       R14 R14 K14 ["validateCurveAnimation_IncorrectNumericalData"]
       55 MOVE                             R15 R1
       56 CALL                             R12 3 -1
       57 RETURN                           R12 -1
       58 JUMP                             ; [+18]
       59 LENGTH                           R11 R10
       60 JUMPIFNOTLT                      R4 R11 ; [+16]
       62 GETUPVAL                         R11 5
       63 LOADK                            R13 K15 ["CurveAnimation contains MarkerCurve with too many markers. %* is the maximum per MarkerCurve. Please fix the animation."]
       64 MOVE                             R15 R4
       65 NAMECALL                         R13 R13 K12 ["format"]
       67 CALL                             R13 2 1
       68 MOVE                             R12 R13
       69 GETUPVAL                         R13 6
       70 GETTABLEKS                       R13 R13 K13 ["ErrorType"]
       72 GETTABLEKS                       R13 R13 K14 ["validateCurveAnimation_IncorrectNumericalData"]
       74 MOVE                             R14 R1
       75 CALL                             R11 3 -1
       76 RETURN                           R11 -1
       77 MOVE                             R11 R10
       78 LOADNIL                          R12
       79 LOADNIL                          R13
       80 FORGPREP                         R11
       81 GETTABLEKS                       R16 R15 K16 ["Time"]
       83 JUMPIFNOT                        R16 ; [+15]
       84 GETUPVAL                         R16 7
       85 GETTABLEKS                       R17 R15 K16 ["Time"]
       87 CALL                             R16 1 1
       88 JUMPIFNOT                        R16 ; [+10]
       89 GETTABLEKS                       R16 R15 K17 ["Value"]
       91 JUMPIFNOT                        R16 ; [+7]
       92 GETTABLEKS                       R17 R15 K17 ["Value"]
       94 LENGTH                           R16 R17
       95 GETUPVAL                         R17 8
       96 CALL                             R17 0 1
       97 JUMPIFNOTLT                      R17 R16 ; [+11]
       99 GETUPVAL                         R16 5
      100 LOADK                            R17 K18 ["CurveAnimation contains MarkerCurves with invalid Time or Value, or Value is too long. Please fix the animation."]
      101 GETUPVAL                         R18 6
      102 GETTABLEKS                       R18 R18 K13 ["ErrorType"]
      104 GETTABLEKS                       R18 R18 K14 ["validateCurveAnimation_IncorrectNumericalData"]
      106 MOVE                             R19 R1
      107 CALL                             R16 3 -1
      108 RETURN                           R16 -1
      109 FORGLOOP                         R11 2 ; [-29]
      111 JUMP                             ; [+143]
      112 LOADK                            R12 K19 ["FloatCurve"]
      113 NAMECALL                         R10 R9 K7 ["IsA"]
      115 CALL                             R10 2 1
      116 JUMPIFNOT                        R10 ; [+138]
      117 NAMECALL                         R10 R9 K20 ["GetKeys"]
      119 CALL                             R10 1 1
      120 LENGTH                           R11 R10
      121 JUMPIFNOTLT                      R4 R11 ; [+16]
      123 GETUPVAL                         R11 5
      124 LOADK                            R13 K21 ["CurveAnimation contains Curves with too many keys. %* is the maximum per Curve. Please fix the animation."]
      125 MOVE                             R15 R4
      126 NAMECALL                         R13 R13 K12 ["format"]
      128 CALL                             R13 2 1
      129 MOVE                             R12 R13
      130 GETUPVAL                         R13 6
      131 GETTABLEKS                       R13 R13 K13 ["ErrorType"]
      133 GETTABLEKS                       R13 R13 K14 ["validateCurveAnimation_IncorrectNumericalData"]
      135 MOVE                             R14 R1
      136 CALL                             R11 3 -1
      137 RETURN                           R11 -1
      138 LOADNIL                          R11
      139 MOVE                             R12 R10
      140 LOADNIL                          R13
      141 LOADNIL                          R14
      142 FORGPREP                         R12
      143 GETTABLEKS                       R17 R16 K16 ["Time"]
      145 JUMPIFNOT                        R17 ; [+13]
      146 GETUPVAL                         R17 7
      147 GETTABLEKS                       R18 R16 K16 ["Time"]
      149 CALL                             R17 1 1
      150 JUMPIFNOT                        R17 ; [+8]
      151 GETTABLEKS                       R17 R16 K17 ["Value"]
      153 JUMPIFNOT                        R17 ; [+5]
      154 GETUPVAL                         R17 7
      155 GETTABLEKS                       R18 R16 K17 ["Value"]
      157 CALL                             R17 1 1
      158 JUMPIF                           R17 ; [+10]
      159 GETUPVAL                         R17 5
      160 LOADK                            R18 K22 ["CurveAnimation contains Curves with invalid Time or Value. Please fix the animation."]
      161 GETUPVAL                         R19 6
      162 GETTABLEKS                       R19 R19 K13 ["ErrorType"]
      164 GETTABLEKS                       R19 R19 K14 ["validateCurveAnimation_IncorrectNumericalData"]
      166 MOVE                             R20 R1
      167 CALL                             R17 3 -1
      168 RETURN                           R17 -1
      169 JUMPIFNOT                        R11 ; [+42]
      170 ADD                              R17 R11 R2
      171 GETTABLEKS                       R18 R16 K16 ["Time"]
      173 JUMPIFNOTLT                      R18 R17 ; [+77]
      175 GETTABLEKS                       R19 R9 K23 ["Parent"]
      177 GETTABLEKS                       R19 R19 K23 ["Parent"]
      179 JUMPIFNOT                        R19 ; [+7]
      180 GETTABLEKS                       R18 R9 K23 ["Parent"]
      182 GETTABLEKS                       R18 R18 K23 ["Parent"]
      184 GETTABLEKS                       R18 R18 K24 ["Name"]
      186 JUMP                             ; [+1]
      187 LOADK                            R18 K25 ["-"]
      188 GETUPVAL                         R19 5
      189 LOADK                            R21 K26 ["CurveAnimation contains Curve %*.%*.%* with keys that are too close together in time for a maximum %* fps animation. Please fix the animation."]
      190 MOVE                             R23 R18
      191 GETTABLEKS                       R24 R9 K23 ["Parent"]
      193 GETTABLEKS                       R24 R24 K24 ["Name"]
      195 GETTABLEKS                       R25 R9 K24 ["Name"]
      197 GETUPVAL                         R26 9
      198 CALL                             R26 0 1
      199 NAMECALL                         R21 R21 K12 ["format"]
      201 CALL                             R21 5 1
      202 MOVE                             R20 R21
      203 GETUPVAL                         R21 6
      204 GETTABLEKS                       R21 R21 K13 ["ErrorType"]
      206 GETTABLEKS                       R21 R21 K14 ["validateCurveAnimation_IncorrectNumericalData"]
      208 MOVE                             R22 R1
      209 CALL                             R19 3 -1
      210 RETURN                           R19 -1
      211 JUMP                             ; [+39]
      212 GETTABLEKS                       R17 R16 K16 ["Time"]
      214 LOADN                            R18 0
      215 JUMPIFNOTLT                      R17 R18 ; [+35]
      217 GETTABLEKS                       R18 R9 K23 ["Parent"]
      219 GETTABLEKS                       R18 R18 K23 ["Parent"]
      221 JUMPIFNOT                        R18 ; [+7]
      222 GETTABLEKS                       R17 R9 K23 ["Parent"]
      224 GETTABLEKS                       R17 R17 K23 ["Parent"]
      226 GETTABLEKS                       R17 R17 K24 ["Name"]
      228 JUMP                             ; [+1]
      229 LOADK                            R17 K25 ["-"]
      230 GETUPVAL                         R18 5
      231 LOADK                            R20 K27 ["CurveAnimation contains Curve %*.%*.%* with a key that has a negative time. Please fix the animation."]
      232 MOVE                             R22 R17
      233 GETTABLEKS                       R23 R9 K23 ["Parent"]
      235 GETTABLEKS                       R23 R23 K24 ["Name"]
      237 GETTABLEKS                       R24 R9 K24 ["Name"]
      239 NAMECALL                         R20 R20 K12 ["format"]
      241 CALL                             R20 4 1
      242 MOVE                             R19 R20
      243 GETUPVAL                         R20 6
      244 GETTABLEKS                       R20 R20 K13 ["ErrorType"]
      246 GETTABLEKS                       R20 R20 K14 ["validateCurveAnimation_IncorrectNumericalData"]
      248 MOVE                             R21 R1
      249 CALL                             R18 3 -1
      250 RETURN                           R18 -1
      251 GETTABLEKS                       R11 R16 K16 ["Time"]
      253 FORGLOOP                         R12 2 ; [-111]
      255 FORGLOOP                         R5 2 ; [-236]
      257 LOADB                            R5 1
      258 RETURN                           R5 1

PROTO_47:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 MOVE                             R8 R7
        5 LOADNIL                          R9
        6 LOADNIL                          R10
        7 FORGPREP                         R8
        8 GETUPVAL                         R13 0
        9 NAMECALL                         R14 R12 K0 ["GetComponents"]
       11 CALL                             R14 1 -1
       12 CALL                             R13 -1 1
       13 JUMPIF                           R13 ; [+10]
       14 GETUPVAL                         R13 1
       15 LOADK                            R14 K1 ["CurveAnimation contains Curves with invalid numerical data. Please fix the animation."]
       16 GETUPVAL                         R15 2
       17 GETTABLEKS                       R15 R15 K2 ["ErrorType"]
       19 GETTABLEKS                       R15 R15 K3 ["validateCurveAnimation_IncorrectNumericalData"]
       21 MOVE                             R16 R2
       22 CALL                             R13 3 -1
       23 RETURN                           R13 -1
       24 FORGLOOP                         R8 2 ; [-17]
       26 FORGLOOP                         R3 2 ; [-23]
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 MOVE                             R8 R7
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETUPVAL                         R13 0
       37 MOVE                             R14 R12
       38 CALL                             R13 1 1
       39 JUMPIF                           R13 ; [+10]
       40 GETUPVAL                         R13 1
       41 LOADK                            R14 K1 ["CurveAnimation contains Curves with invalid numerical data. Please fix the animation."]
       42 GETUPVAL                         R15 2
       43 GETTABLEKS                       R15 R15 K2 ["ErrorType"]
       45 GETTABLEKS                       R15 R15 K3 ["validateCurveAnimation_IncorrectNumericalData"]
       47 MOVE                             R16 R2
       48 CALL                             R13 3 -1
       49 RETURN                           R13 -1
       50 FORGLOOP                         R8 2 ; [-15]
       52 FORGLOOP                         R3 2 ; [-21]
       54 LOADB                            R3 1
       55 RETURN                           R3 1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_49:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R7
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETUPVAL                         R13 0
       11 GETTABLEKS                       R13 R13 K0 ["NAMED_R15_BODY_PARTS"]
       13 GETTABLEKS                       R13 R13 K1 ["LowerTorso"]
       15 JUMPIFEQ                         R11 R13 ; [+28]
       17 GETTABLE                         R13 R2 R11
       18 JUMPIF                           R13 ; [+6]
       19 GETUPVAL                         R13 1
       20 GETTABLEKS                       R13 R13 K2 ["asNumber"]
       22 MOVE                             R14 R11
       23 CALL                             R13 1 1
       24 SETTABLE                         R13 R2 R11
       25 GETTABLE                         R13 R2 R11
       26 JUMPIFNOTLT                      R13 R12 ; [+17]
       28 GETUPVAL                         R13 2
       29 LOADK                            R15 K3 ["CurveAnimation contains positional separation of body parts. Only LowerTorso can change position. All other body parts can only change their orientation. %* moves more than %* studs from its parent. Please fix the animation."]
       30 MOVE                             R17 R11
       31 GETTABLE                         R18 R2 R11
       32 NAMECALL                         R15 R15 K4 ["format"]
       34 CALL                             R15 3 1
       35 MOVE                             R14 R15
       36 GETUPVAL                         R15 3
       37 GETTABLEKS                       R15 R15 K5 ["ErrorType"]
       39 GETTABLEKS                       R15 R15 K6 ["validateCurveAnimation_PositionalMovement"]
       41 MOVE                             R16 R1
       42 CALL                             R13 3 -1
       43 RETURN                           R13 -1
       44 FORGLOOP                         R8 2 ; [-35]
       46 FORGLOOP                         R3 2 ; [-41]
       48 LOADB                            R3 1
       49 RETURN                           R3 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["calculateAnimFramesAtOrigin"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 4
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["validateCalculatedData"]
        8 MOVE                             R7 R2
        9 MOVE                             R8 R4
       10 MOVE                             R9 R1
       11 CALL                             R6 3 2
       12 JUMPIF                           R6 ; [+1]
       13 RETURN                           R6 2
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K2 ["new"]
       17 CALL                             R8 0 1
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K3 ["validateMinimumTransformations"]
       21 MOVE                             R12 R5
       22 MOVE                             R13 R1
       23 CALL                             R11 2 -1
       24 NAMECALL                         R9 R8 K4 ["updateReasons"]
       26 CALL                             R9 -1 0
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K5 ["validatePositionMagnitudes"]
       30 MOVE                             R12 R4
       31 MOVE                             R13 R1
       32 CALL                             R11 2 -1
       33 NAMECALL                         R9 R8 K4 ["updateReasons"]
       35 CALL                             R9 -1 0
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K6 ["validateAnimationLength"]
       39 MOVE                             R12 R3
       40 MOVE                             R13 R1
       41 CALL                             R11 2 -1
       42 NAMECALL                         R9 R8 K4 ["updateReasons"]
       44 CALL                             R9 -1 0
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K7 ["validateBounds"]
       48 MOVE                             R12 R2
       49 MOVE                             R13 R1
       50 MOVE                             R14 R3
       51 CALL                             R11 3 -1
       52 NAMECALL                         R9 R8 K4 ["updateReasons"]
       54 CALL                             R9 -1 0
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K8 ["validateFrameDeltas"]
       58 MOVE                             R12 R2
       59 MOVE                             R13 R1
       60 CALL                             R11 2 -1
       61 NAMECALL                         R9 R8 K4 ["updateReasons"]
       63 CALL                             R9 -1 0
       64 GETUPVAL                         R9 2
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R9 ; [+9]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K9 ["validateFrameRotationDeltas"]
       70 MOVE                             R12 R2
       71 MOVE                             R13 R1
       72 CALL                             R11 2 -1
       73 NAMECALL                         R9 R8 K4 ["updateReasons"]
       75 CALL                             R9 -1 0
       76 NAMECALL                         R9 R8 K10 ["getFinalResults"]
       78 CALL                             R9 1 -1
       79 RETURN                           R9 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["validateStructure"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R2 2
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K1 ["validate"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 CALL                             R4 2 2
       17 JUMPIF                           R4 ; [+3]
       18 LOADB                            R6 0
       19 MOVE                             R7 R5
       20 RETURN                           R6 2
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K2 ["validateData"]
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 CALL                             R4 2 2
       27 JUMPIF                           R4 ; [+1]
       28 RETURN                           R4 2
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K3 ["new"]
       32 CALL                             R4 0 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R0
       35 MOVE                             R9 R1
       36 CALL                             R7 2 -1
       37 NAMECALL                         R5 R4 K4 ["updateReasons"]
       39 CALL                             R5 -1 0
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K5 ["validateAllowedTags"]
       43 MOVE                             R8 R0
       44 MOVE                             R9 R1
       45 CALL                             R7 2 -1
       46 NAMECALL                         R5 R4 K4 ["updateReasons"]
       48 CALL                             R5 -1 0
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K6 ["validateFrames"]
       52 MOVE                             R8 R0
       53 MOVE                             R9 R1
       54 CALL                             R7 2 -1
       55 NAMECALL                         R5 R4 K4 ["updateReasons"]
       57 CALL                             R5 -1 0
       58 NAMECALL                         R5 R4 K7 ["getFinalResults"]
       60 CALL                             R5 1 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Analytics"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Constants"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K12 ["util"]
       31 GETIMPORT                        R6 K9 [require]
       33 GETTABLEKS                       R7 R5 K13 ["Types"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K9 [require]
       38 GETTABLEKS                       R8 R5 K14 ["FailureReasonsAccumulator"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K9 [require]
       43 GETTABLEKS                       R9 R5 K15 ["AssetCalculator"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R2 K16 ["validation"]
       48 GETIMPORT                        R10 K9 [require]
       50 GETTABLEKS                       R11 R9 K17 ["validateAttributes"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K9 [require]
       55 GETTABLEKS                       R12 R9 K18 ["validateTags"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K9 [require]
       60 GETTABLEKS                       R13 R9 K19 ["ValidatePropertiesSensible"]
       62 CALL                             R12 1 1
       63 GETTABLEKS                       R13 R2 K20 ["flags"]
       65 GETIMPORT                        R14 K9 [require]
       67 GETTABLEKS                       R15 R13 K21 ["GetFStringUGCValidationMaxAnimationLength"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K9 [require]
       72 GETTABLEKS                       R16 R13 K22 ["GetFStringUGCValidationMaxAnimationBounds"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K9 [require]
       77 GETTABLEKS                       R17 R13 K23 ["GetFStringUGCValidationMaxAnimationDeltas"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K9 [require]
       82 GETTABLEKS                       R18 R13 K24 ["getFFlagUGCValidateAddObjectValueToAcceptableTypes"]
       84 CALL                             R17 1 1
       85 GETIMPORT                        R18 K9 [require]
       87 GETTABLEKS                       R19 R13 K25 ["getFFlagUGCValidateDuplicatesInAnimation"]
       89 CALL                             R18 1 1
       90 GETIMPORT                        R19 K9 [require]
       92 GETTABLEKS                       R20 R13 K26 ["getFFlagUGCValidateMaxTotalInstances"]
       94 CALL                             R19 1 1
       95 GETIMPORT                        R20 K9 [require]
       97 GETTABLEKS                       R21 R13 K27 ["getFIntUGCValidateMaxAnimationFPS"]
       99 CALL                             R20 1 1
      100 GETIMPORT                        R21 K9 [require]
      102 GETTABLEKS                       R22 R13 K28 ["getFIntUGCValidateMaxMarkerCurveValueLength"]
      104 CALL                             R21 1 1
      105 GETIMPORT                        R22 K9 [require]
      107 GETTABLEKS                       R23 R13 K29 ["GetFStringUGCValidateMaxAnimationMovementPerPart"]
      109 CALL                             R22 1 1
      110 GETIMPORT                        R23 K9 [require]
      112 GETTABLEKS                       R24 R13 K30 ["GetFStringUGCValidateFrameDeltaKeyTimeTol"]
      114 CALL                             R23 1 1
      115 GETIMPORT                        R24 K9 [require]
      117 GETTABLEKS                       R25 R2 K20 ["flags"]
      119 GETTABLEKS                       R25 R25 K31 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      121 CALL                             R24 1 1
      122 GETIMPORT                        R25 K9 [require]
      124 GETTABLEKS                       R26 R13 K32 ["GetFStringUGCValidateAnimationHeightTol"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K9 [require]
      129 GETTABLEKS                       R27 R13 K33 ["getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage"]
      131 CALL                             R26 1 1
      132 GETIMPORT                        R27 K9 [require]
      134 GETTABLEKS                       R28 R13 K34 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
      136 CALL                             R27 1 1
      137 GETIMPORT                        R28 K9 [require]
      139 GETTABLEKS                       R29 R13 K35 ["getFIntUGCValidationMaxAnimationRotationSpeedPerSecond"]
      141 CALL                             R28 1 1
      142 GETIMPORT                        R29 K9 [require]
      144 GETTABLEKS                       R30 R13 K36 ["getFFlagUGCValidateCurveAnimFinalFrameBug"]
      146 CALL                             R29 1 1
      147 GETIMPORT                        R30 K9 [require]
      149 GETTABLEKS                       R31 R13 K37 ["getFFlagUGCValidateCurveAnimMinTimeFix"]
      151 CALL                             R30 1 1
      152 GETIMPORT                        R31 K9 [require]
      154 GETTABLEKS                       R32 R13 K38 ["GetFStringUGCValidateCurveAnimationMinLength"]
      156 CALL                             R31 1 1
      157 GETIMPORT                        R32 K9 [require]
      159 GETTABLEKS                       R33 R13 K39 ["getFFlagUGCValidateCurveAnimTimeErrorMessageFix"]
      161 CALL                             R32 1 1
      162 GETIMPORT                        R33 K9 [require]
      164 GETTABLEKS                       R34 R13 K40 ["getFFlagUGCValidateRestrictNumMarkerCurves"]
      166 CALL                             R33 1 1
      167 GETIMPORT                        R34 K9 [require]
      169 GETTABLEKS                       R35 R13 K41 ["getFIntUGCValidateMaxTotalMarkerCurves"]
      171 CALL                             R34 1 1
      172 GETIMPORT                        R35 K9 [require]
      174 GETTABLEKS                       R36 R13 K42 ["getFFlagUGCValidateRestrictNumFaceControls"]
      176 CALL                             R35 1 1
      177 GETIMPORT                        R36 K9 [require]
      179 GETTABLEKS                       R37 R13 K43 ["getFIntUGCValidateMaxTotalFaceControls"]
      181 CALL                             R36 1 1
      182 GETIMPORT                        R37 K9 [require]
      184 GETTABLEKS                       R38 R13 K44 ["getFFlagUGCValidateRestrictNumMarkersInsideMarkerCurves"]
      186 CALL                             R37 1 1
      187 GETIMPORT                        R38 K9 [require]
      189 GETTABLEKS                       R39 R13 K45 ["getFIntUGCValidateMaxTotalInternalMarkers"]
      191 CALL                             R38 1 1
      192 NEWTABLE                         R39 32 0
      194 DUPCLOSURE                       R40 K46 [PROTO_0]
      195 CAPTURE                          VAL R3
      196 LOADNIL                          R41
      197 NEWCLOSURE                       R42 P1
      198 CAPTURE                          REF R41
      199 CAPTURE                          VAL R8
      200 NEWCLOSURE                       R43 P2
      201 CAPTURE                          REF R41
      202 CAPTURE                          VAL R8
      203 DUPCLOSURE                       R44 K47 [PROTO_4]
      204 NEWCLOSURE                       R45 P4
      205 CAPTURE                          REF R41
      206 CAPTURE                          VAL R8
      207 DUPCLOSURE                       R46 K48 [PROTO_6]
      208 CAPTURE                          VAL R45
      209 DUPCLOSURE                       R47 K49 [PROTO_7]
      210 DUPCLOSURE                       R48 K50 [PROTO_8]
      211 DUPCLOSURE                       R49 K51 [PROTO_9]
      212 CAPTURE                          VAL R46
      213 CAPTURE                          VAL R44
      214 CAPTURE                          VAL R47
      215 CAPTURE                          VAL R35
      216 CAPTURE                          VAL R36
      217 NEWCLOSURE                       R50 P9
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R49
      220 CAPTURE                          VAL R40
      221 CAPTURE                          VAL R3
      222 CAPTURE                          REF R41
      223 CAPTURE                          VAL R8
      224 NEWCLOSURE                       R51 P10
      225 CAPTURE                          REF R41
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R40
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R18
      230 DUPCLOSURE                       R52 K52 [PROTO_13]
      231 CAPTURE                          VAL R34
      232 CAPTURE                          VAL R40
      233 CAPTURE                          VAL R3
      234 SETTABLEKS                       R52 R39 K53 ["validateMarkerCurves"]
      236 DUPCLOSURE                       R52 K54 [PROTO_14]
      237 CAPTURE                          VAL R40
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R52 R39 K55 ["validateSingleAnimationRigData"]
      241 DUPCLOSURE                       R52 K56 [PROTO_15]
      242 CAPTURE                          VAL R40
      243 CAPTURE                          VAL R3
      244 SETTABLEKS                       R52 R39 K57 ["validateAnimationRigDataInternals"]
      246 DUPCLOSURE                       R52 K58 [PROTO_16]
      247 CAPTURE                          VAL R39
      248 DUPCLOSURE                       R53 K59 [PROTO_17]
      249 CAPTURE                          VAL R40
      250 CAPTURE                          VAL R3
      251 NEWTABLE                         R54 0 6
      253 LOADK                            R55 K60 ["MarkerCurve"]
      254 LOADK                            R56 K61 ["AnimationRigData"]
      255 LOADK                            R57 K62 ["Folder"]
      256 LOADK                            R58 K63 ["Vector3Curve"]
      257 LOADK                            R59 K64 ["EulerRotationCurve"]
      258 LOADK                            R60 K65 ["FloatCurve"]
      259 SETLIST                          R54 R55 6 [1]
      261 MOVE                             R55 R17
      262 CALL                             R55 0 1
      263 JUMPIFNOT                        R55 ; [+7]
      264 FASTCALL2K                       TABLE_INSERT R54 K66 ; [+5]
      266 MOVE                             R56 R54
      267 LOADK                            R57 K66 ["ObjectValue"]
      268 GETIMPORT                        R55 K69 [table.insert]
      270 CALL                             R55 2 0
      271 DUPCLOSURE                       R55 K70 [PROTO_18]
      272 CAPTURE                          VAL R54
      273 CAPTURE                          VAL R40
      274 CAPTURE                          VAL R3
      275 DUPCLOSURE                       R56 K71 [PROTO_19]
      276 CAPTURE                          VAL R55
      277 SETTABLEKS                       R56 R39 K72 ["validateExtraInstancesUnitTest"]
      279 DUPCLOSURE                       R56 K73 [PROTO_20]
      280 CAPTURE                          VAL R53
      281 SETTABLEKS                       R56 R39 K74 ["validateScriptsUnitTest"]
      283 NEWCLOSURE                       R56 P19
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R19
      286 CAPTURE                          VAL R40
      287 CAPTURE                          VAL R51
      288 CAPTURE                          VAL R39
      289 CAPTURE                          VAL R33
      290 CAPTURE                          VAL R18
      291 CAPTURE                          REF R41
      292 CAPTURE                          VAL R8
      293 CAPTURE                          VAL R49
      294 CAPTURE                          VAL R7
      295 CAPTURE                          VAL R53
      296 CAPTURE                          VAL R55
      297 DUPCLOSURE                       R57 K75 [PROTO_22]
      298 CAPTURE                          VAL R1
      299 MOVE                             R59 R20
      300 CALL                             R59 0 1
      301 DIVRK                            R58 R76 K59 [PROTO_17]
      302 NEWCLOSURE                       R59 P21
      303 CAPTURE                          REF R41
      304 CAPTURE                          VAL R8
      305 DUPCLOSURE                       R60 K77 [PROTO_24]
      306 DUPCLOSURE                       R61 K78 [PROTO_25]
      307 CAPTURE                          VAL R60
      308 DUPCLOSURE                       R62 K79 [PROTO_26]
      309 CAPTURE                          VAL R60
      310 NEWCLOSURE                       R63 P25
      311 CAPTURE                          VAL R18
      312 CAPTURE                          VAL R59
      313 CAPTURE                          REF R41
      314 CAPTURE                          VAL R8
      315 CAPTURE                          VAL R60
      316 CAPTURE                          VAL R4
      317 CAPTURE                          VAL R57
      318 CAPTURE                          VAL R29
      319 CAPTURE                          VAL R58
      320 DUPCLOSURE                       R64 K80 [PROTO_34]
      321 CAPTURE                          VAL R30
      322 CAPTURE                          VAL R31
      323 CAPTURE                          VAL R14
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R40
      326 CAPTURE                          VAL R3
      327 SETTABLEKS                       R64 R39 K81 ["validateAnimationLength"]
      329 DUPCLOSURE                       R64 K82 [PROTO_35]
      330 CAPTURE                          VAL R32
      331 CAPTURE                          VAL R25
      332 CAPTURE                          VAL R15
      333 CAPTURE                          VAL R58
      334 CAPTURE                          VAL R40
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R7
      337 SETTABLEKS                       R64 R39 K83 ["validateBounds"]
      339 DUPCLOSURE                       R64 K84 [PROTO_36]
      340 CAPTURE                          VAL R58
      341 CAPTURE                          VAL R16
      342 CAPTURE                          VAL R26
      343 CAPTURE                          VAL R40
      344 CAPTURE                          VAL R3
      345 SETTABLEKS                       R64 R39 K85 ["validateFrameDeltas"]
      347 DUPCLOSURE                       R64 K86 [PROTO_37]
      348 CAPTURE                          VAL R58
      349 CAPTURE                          VAL R20
      350 CAPTURE                          VAL R28
      351 CAPTURE                          VAL R40
      352 CAPTURE                          VAL R3
      353 SETTABLEKS                       R64 R39 K87 ["validateFrameRotationDeltas"]
      355 DUPCLOSURE                       R64 K88 [PROTO_38]
      356 CAPTURE                          VAL R40
      357 CAPTURE                          VAL R3
      358 SETTABLEKS                       R64 R39 K89 ["validateMinimumTransformations"]
      360 NEWCLOSURE                       R64 P31
      361 CAPTURE                          VAL R18
      362 CAPTURE                          VAL R59
      363 CAPTURE                          REF R41
      364 CAPTURE                          VAL R8
      365 CAPTURE                          VAL R40
      366 CAPTURE                          VAL R3
      367 SETTABLEKS                       R64 R39 K90 ["validateContainsJointManipulation"]
      369 DUPCLOSURE                       R64 K91 [PROTO_40]
      370 DUPCLOSURE                       R65 K92 [PROTO_41]
      371 CAPTURE                          VAL R11
      372 CAPTURE                          VAL R0
      373 CAPTURE                          VAL R40
      374 CAPTURE                          VAL R3
      375 SETTABLEKS                       R65 R39 K93 ["validateAllowedTags"]
      377 DUPCLOSURE                       R65 K94 [PROTO_42]
      378 CAPTURE                          VAL R56
      379 SETTABLEKS                       R65 R39 K95 ["validateStructure"]
      381 DUPCLOSURE                       R65 K96 [PROTO_45]
      382 DUPCLOSURE                       R66 K97 [PROTO_46]
      383 CAPTURE                          VAL R58
      384 CAPTURE                          VAL R23
      385 CAPTURE                          VAL R14
      386 CAPTURE                          VAL R37
      387 CAPTURE                          VAL R38
      388 CAPTURE                          VAL R40
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R65
      391 CAPTURE                          VAL R21
      392 CAPTURE                          VAL R20
      393 SETTABLEKS                       R66 R39 K98 ["validateData"]
      395 DUPCLOSURE                       R66 K99 [PROTO_47]
      396 CAPTURE                          VAL R65
      397 CAPTURE                          VAL R40
      398 CAPTURE                          VAL R3
      399 SETTABLEKS                       R66 R39 K100 ["validateCalculatedData"]
      401 DUPCLOSURE                       R66 K101 [PROTO_48]
      402 CAPTURE                          VAL R63
      403 SETTABLEKS                       R66 R39 K102 ["calculateAnimFramesAtOrigin"]
      405 DUPCLOSURE                       R66 K103 [PROTO_49]
      406 CAPTURE                          VAL R4
      407 CAPTURE                          VAL R22
      408 CAPTURE                          VAL R40
      409 CAPTURE                          VAL R3
      410 SETTABLEKS                       R66 R39 K104 ["validatePositionMagnitudes"]
      412 DUPCLOSURE                       R66 K105 [PROTO_50]
      413 CAPTURE                          VAL R39
      414 CAPTURE                          VAL R7
      415 CAPTURE                          VAL R27
      416 SETTABLEKS                       R66 R39 K106 ["validateFrames"]
      418 DUPCLOSURE                       R66 K107 [PROTO_51]
      419 CAPTURE                          VAL R39
      420 CAPTURE                          VAL R24
      421 CAPTURE                          VAL R12
      422 CAPTURE                          VAL R7
      423 CAPTURE                          VAL R10
      424 SETTABLEKS                       R66 R39 K108 ["validate"]
      426 CLOSEUPVALS                      R41
      427 RETURN                           R39 1
