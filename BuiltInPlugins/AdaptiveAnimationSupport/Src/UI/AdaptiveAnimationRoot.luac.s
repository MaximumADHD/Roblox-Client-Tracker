PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mirrorTransformMotor6D"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 MOVE                             R10 R7
        5 NAMECALL                         R8 R0 K0 ["GetJoint"]
        7 CALL                             R8 2 1
        8 JUMPIFNOTEQ                      R8 R1 ; [+2]
       10 RETURN                           R7 1
       11 FORGLOOP                         R3 2 ; [-8]
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_2:
        0 LOADN                            R3 1
        1 LOADN                            R4 4
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 JUMPIFNOTEQKS                    R1 K1 ["Left"] ; [+8]
        7 LOADK                            R2 K2 ["Right"]
        8 LOADN                            R5 5
        9 NAMECALL                         R3 R0 K0 ["sub"]
       11 CALL                             R3 2 1
       12 CONCAT                           R1 R2 R3
       13 RETURN                           R1 1
       14 LOADN                            R3 1
       15 LOADN                            R4 5
       16 NAMECALL                         R1 R0 K0 ["sub"]
       18 CALL                             R1 3 1
       19 JUMPIFNOTEQKS                    R1 K2 ["Right"] ; [+8]
       21 LOADK                            R2 K1 ["Left"]
       22 LOADN                            R5 6
       23 NAMECALL                         R3 R0 K0 ["sub"]
       25 CALL                             R3 2 1
       26 CONCAT                           R1 R2 R3
       27 RETURN                           R1 1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R4 R3
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 JUMPIFEQ                         R8 R2 ; [+12]
        6 MOVE                             R11 R8
        7 NAMECALL                         R9 R0 K0 ["GetJoint"]
        9 CALL                             R9 2 1
       10 JUMPIFNOTEQ                      R9 R1 ; [+6]
       12 MOVE                             R11 R8
       13 LOADNIL                          R12
       14 NAMECALL                         R9 R0 K1 ["SetJoint"]
       16 CALL                             R9 3 0
       17 FORGLOOP                         R4 2 ; [-14]
       19 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R5 K0 ["HumanoidRigDescription"]
        3 NAMECALL                         R3 R0 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+19]
        7 NAMECALL                         R3 R0 K2 ["GetChildren"]
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 LOADK                            R10 K3 ["DigitsRigDescription"]
       12 NAMECALL                         R8 R7 K1 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-13]
       25 JUMP                             ; [+40]
       26 LOADK                            R5 K3 ["DigitsRigDescription"]
       27 NAMECALL                         R3 R0 K1 ["IsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+35]
       31 GETTABLEKS                       R3 R0 K7 ["Parent"]
       33 JUMPIFNOT                        R3 ; [+32]
       34 LOADK                            R6 K0 ["HumanoidRigDescription"]
       35 NAMECALL                         R4 R3 K1 ["IsA"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+27]
       39 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       41 MOVE                             R5 R2
       42 MOVE                             R6 R3
       43 GETIMPORT                        R4 K6 [table.insert]
       45 CALL                             R4 2 0
       46 NAMECALL                         R4 R3 K2 ["GetChildren"]
       48 CALL                             R4 1 3
       49 FORGPREP                         R4
       50 LOADK                            R11 K3 ["DigitsRigDescription"]
       51 NAMECALL                         R9 R8 K1 ["IsA"]
       53 CALL                             R9 2 1
       54 JUMPIFNOT                        R9 ; [+9]
       55 JUMPIFEQ                         R8 R0 ; [+8]
       57 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       59 MOVE                             R10 R2
       60 MOVE                             R11 R8
       61 GETIMPORT                        R9 K6 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R4 2 ; [-15]
       66 MOVE                             R3 R2
       67 LOADNIL                          R4
       68 LOADNIL                          R5
       69 FORGPREP                         R3
       70 LOADK                            R11 K3 ["DigitsRigDescription"]
       71 NAMECALL                         R9 R7 K1 ["IsA"]
       73 CALL                             R9 2 1
       74 JUMPIFNOT                        R9 ; [+4]
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R8 R9 K8 ["handRigLabels"]
       78 JUMP                             ; [+3]
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R8 R9 K9 ["bodyRigLabels"]
       82 MOVE                             R9 R8
       83 LOADNIL                          R10
       84 LOADNIL                          R11
       85 FORGPREP                         R9
       86 MOVE                             R16 R13
       87 NAMECALL                         R14 R7 K10 ["GetJoint"]
       89 CALL                             R14 2 1
       90 JUMPIFNOTEQ                      R14 R1 ; [+6]
       92 MOVE                             R16 R13
       93 LOADNIL                          R17
       94 NAMECALL                         R14 R7 K11 ["SetJoint"]
       96 CALL                             R14 3 0
       97 FORGLOOP                         R9 2 ; [-12]
       99 FORGLOOP                         R3 2 ; [-30]
      101 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["DigitsRigDescription"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["Side"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R2 1
        6 GETIMPORT                        R3 K2 [Instance.new]
        8 LOADK                            R4 K3 ["DigitsRigDescription"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K4 ["Side"]
       12 SETTABLEKS                       R0 R3 K5 ["Parent"]
       14 GETIMPORT                        R5 K9 [Enum.DigitsRigDescriptionSide.Left]
       16 JUMPIFNOTEQ                      R1 R5 ; [+4]
       18 GETIMPORT                        R4 K12 [Enum.RigLabel.LeftWrist]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R4 K14 [Enum.RigLabel.RightWrist]
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R0 K15 ["GetJoint"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+12]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K16 ["HandAutomapper"]
       31 GETTABLEKS                       R6 R7 K17 ["setupHand"]
       33 MOVE                             R7 R3
       34 MOVE                             R8 R5
       35 MOVE                             R9 R1
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R10 R11 K18 ["handRigLabels"]
       39 CALL                             R6 4 0
       40 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["createPortal"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["createElement"]
       11 LOADK                            R5 K3 ["ScreenGui"]
       12 DUPTABLE                         R6 K8 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K4 ["Archivable"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K9 ["DISPLAY_ORDER_MANNEQUIN"]
       19 SETTABLEKS                       R7 R6 K5 ["DisplayOrder"]
       21 GETIMPORT                        R7 K12 [Enum.ZIndexBehavior.Sibling]
       23 SETTABLEKS                       R7 R6 K6 ["ZIndexBehavior"]
       25 SETTABLEKS                       R2 R6 K7 ["ref"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K2 ["createElement"]
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R9 R10 K13 ["Components"]
       33 GETTABLEKS                       R8 R9 K14 ["FoundationProviderAdapter"]
       35 DUPTABLE                         R9 K16 [{"overlayGui"}]
       36 MOVE                             R10 R1
       37 JUMPIF                           R10 ; [+1]
       38 GETUPVAL                         R10 4
       39 SETTABLEKS                       R10 R9 K15 ["overlayGui"]
       41 GETTABLEKS                       R11 R0 K18 ["mannequin"]
       43 ORK                              R10 R11 K17 [False]
       44 GETTABLEKS                       R12 R0 K19 ["handMannequin"]
       46 ORK                              R11 R12 K17 [False]
       47 CALL                             R7 4 -1
       48 CALL                             R4 -1 1
       49 GETUPVAL                         R5 4
       50 LOADK                            R6 K20 ["MannequinPanel"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["get"]
       12 CALL                             R2 0 -1
       13 CALL                             R1 -1 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pluginLoaderContext"]
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETTABLEKS                       R1 R0 K1 ["mainButton"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K1 ["mainButton"]
       14 GETUPVAL                         R3 2
       15 NAMECALL                         R1 R1 K2 ["SetActive"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_14]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pluginLoaderContext"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K1 ["actionTriggeredSignals"]
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETTABLEKS                       R3 R0 K1 ["actionTriggeredSignals"]
       14 GETTABLEN                        R2 R3 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETTABLEKS                       R2 R0 K1 ["actionTriggeredSignals"]
       18 GETTABLEN                        R1 R2 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R1 R0 K2 ["mainButtonClickedSignal"]
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R2 R1 K3 ["Connect"]
       28 CALL                             R2 2 1
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 ADDK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["RunService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R0 R1 K4 ["Heartbeat"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K5 ["Connect"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 1
        2 SETTABLEKS                       R5 R4 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R4 R2
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["getJointTransform"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+5]
       13 GETUPVAL                         R5 0
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R5 K0 ["current"]
       17 RETURN                           R0 0
       18 MUL                              R5 R1 R4
       19 NAMECALL                         R7 R4 K2 ["Inverse"]
       21 CALL                             R7 1 1
       22 MUL                              R6 R7 R5
       23 GETUPVAL                         R8 2
       24 GETUPVAL                         R9 3
       25 MOVE                             R10 R9
       26 LOADNIL                          R11
       27 LOADNIL                          R12
       28 FORGPREP                         R10
       29 MOVE                             R17 R14
       30 NAMECALL                         R15 R8 K3 ["GetJoint"]
       32 CALL                             R15 2 1
       33 JUMPIFNOTEQ                      R15 R0 ; [+3]
       35 MOVE                             R7 R14
       36 JUMP                             ; [+3]
       37 FORGLOOP                         R10 2 ; [-9]
       39 LOADNIL                          R7
       40 JUMPIFNOT                        R7 ; [+7]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R10 R7 K4 ["Name"]
       44 MOVE                             R11 R6
       45 NAMECALL                         R8 R8 K5 ["SetTposeAdjustment"]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R8 4
       49 JUMPIFNOT                        R8 ; [+23]
       50 JUMPIFNOT                        R7 ; [+22]
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R9 R7 K4 ["Name"]
       54 CALL                             R8 1 1
       55 JUMPIFNOT                        R8 ; [+17]
       56 MOVE                             R9 R6
       57 LOADK                            R12 K6 ["Motor6D"]
       58 NAMECALL                         R10 R0 K7 ["IsA"]
       60 CALL                             R10 2 1
       61 JUMPIFNOT                        R10 ; [+5]
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R9 R10 K8 ["mirrorTransformMotor6D"]
       65 MOVE                             R10 R6
       66 CALL                             R9 1 1
       67 GETUPVAL                         R10 2
       68 MOVE                             R12 R8
       69 MOVE                             R13 R9
       70 NAMECALL                         R10 R10 K5 ["SetTposeAdjustment"]
       72 CALL                             R10 3 0
       73 GETUPVAL                         R8 0
       74 LOADB                            R9 0
       75 SETTABLEKS                       R9 R8 K0 ["current"]
       77 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R5 0
        1 LOADB                            R6 1
        2 SETTABLEKS                       R6 R5 K0 ["current"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["current"]
        7 JUMPIFEQ                         R5 R3 ; [+9]
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 SETTABLEKS                       R6 R5 K0 ["current"]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R3 R5 K0 ["current"]
       17 JUMPIF                           R2 ; [+5]
       18 GETUPVAL                         R5 0
       19 LOADB                            R6 0
       20 SETTABLEKS                       R6 R5 K0 ["current"]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R5 R1 K1 ["Position"]
       25 JUMPIFEQKNIL                     R4 ; [+3]
       27 MOVE                             R6 R4
       28 JUMP                             ; [+31]
       29 LOADB                            R6 0
       30 GETTABLEKS                       R8 R5 K2 ["X"]
       32 FASTCALL1                        MATH_ABS R8 ; [+2]
       33 GETIMPORT                        R7 K5 [math.abs]
       35 CALL                             R7 1 1
       36 LOADK                            R8 K6 [1E-06]
       37 JUMPIFNOTLT                      R7 R8 ; [+22]
       39 LOADB                            R6 0
       40 GETTABLEKS                       R8 R5 K7 ["Y"]
       42 FASTCALL1                        MATH_ABS R8 ; [+2]
       43 GETIMPORT                        R7 K5 [math.abs]
       45 CALL                             R7 1 1
       46 LOADK                            R8 K6 [1E-06]
       47 JUMPIFNOTLT                      R7 R8 ; [+12]
       49 GETTABLEKS                       R8 R5 K8 ["Z"]
       51 FASTCALL1                        MATH_ABS R8 ; [+2]
       52 GETIMPORT                        R7 K5 [math.abs]
       54 CALL                             R7 1 1
       55 LOADK                            R8 K6 [1E-06]
       56 JUMPIFLT                         R7 R8 ; [+2]
       58 LOADB                            R6 0 +1
       59 LOADB                            R6 1
       60 LOADNIL                          R7
       61 JUMPIFNOT                        R6 ; [+20]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R8 R9 K9 ["axisAngleFromRotation"]
       65 MOVE                             R9 R1
       66 CALL                             R8 1 2
       67 MOVE                             R12 R8
       68 NAMECALL                         R10 R2 K10 ["VectorToObjectSpace"]
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K13 [CFrame.fromAxisAngle]
       73 MINUS                            R12 R10
       74 MOVE                             R13 R9
       75 CALL                             R11 2 1
       76 MUL                              R12 R2 R11
       77 NAMECALL                         R13 R2 K14 ["Inverse"]
       79 CALL                             R13 1 1
       80 MUL                              R7 R13 R12
       81 JUMP                             ; [+5]
       82 MUL                              R8 R1 R2
       83 NAMECALL                         R9 R2 K14 ["Inverse"]
       85 CALL                             R9 1 1
       86 MUL                              R7 R9 R8
       87 LOADNIL                          R8
       88 GETUPVAL                         R9 4
       89 JUMPIFNOT                        R9 ; [+8]
       90 GETUPVAL                         R10 5
       91 GETTABLEKS                       R9 R10 K15 ["getRigLabelForJoint"]
       93 GETUPVAL                         R10 6
       94 MOVE                             R11 R0
       95 CALL                             R9 2 1
       96 MOVE                             R8 R9
       97 JUMP                             ; [+7]
       98 GETUPVAL                         R10 7
       99 GETTABLEKS                       R9 R10 K15 ["getRigLabelForJoint"]
      101 GETUPVAL                         R10 6
      102 MOVE                             R11 R0
      103 CALL                             R9 2 1
      104 MOVE                             R8 R9
      105 JUMPIFNOT                        R8 ; [+12]
      106 MOVE                             R9 R3
      107 JUMPIF                           R9 ; [+3]
      108 GETIMPORT                        R9 K17 [CFrame.new]
      110 CALL                             R9 0 1
      111 MUL                              R10 R9 R7
      112 GETUPVAL                         R11 6
      113 MOVE                             R13 R8
      114 MOVE                             R14 R10
      115 NAMECALL                         R11 R11 K18 ["SetTposeAdjustment"]
      117 CALL                             R11 3 0
      118 GETUPVAL                         R9 8
      119 JUMPIFNOT                        R9 ; [+72]
      120 JUMPIFNOT                        R8 ; [+71]
      121 GETUPVAL                         R9 4
      122 JUMPIF                           R9 ; [+69]
      123 GETUPVAL                         R10 7
      124 GETTABLEKS                       R9 R10 K19 ["symmetryCounterparts"]
      126 JUMPIFNOT                        R9 ; [+4]
      127 GETUPVAL                         R11 7
      128 GETTABLEKS                       R10 R11 K19 ["symmetryCounterparts"]
      130 GETTABLE                         R9 R10 R8
      131 JUMPIFNOT                        R9 ; [+60]
      132 GETUPVAL                         R10 9
      133 MOVE                             R11 R7
      134 CALL                             R10 1 1
      135 JUMPIF                           R10 ; [+56]
      136 GETUPVAL                         R11 2
      137 GETTABLEKS                       R10 R11 K0 ["current"]
      139 GETTABLE                         R11 R10 R9
      140 JUMPIF                           R11 ; [+11]
      141 GETUPVAL                         R12 6
      142 MOVE                             R14 R9
      143 NAMECALL                         R12 R12 K20 ["GetTposeAdjustment"]
      145 CALL                             R12 2 1
      146 JUMPIF                           R12 ; [+3]
      147 GETIMPORT                        R12 K17 [CFrame.new]
      149 CALL                             R12 0 1
      150 MOVE                             R11 R12
      151 SETTABLE                         R11 R10 R9
      152 LOADNIL                          R12
      153 LOADK                            R15 K21 ["Motor6D"]
      154 NAMECALL                         R13 R0 K22 ["IsA"]
      156 CALL                             R13 2 1
      157 JUMPIFNOT                        R13 ; [+8]
      158 MOVE                             R13 R7
      159 GETUPVAL                         R15 10
      160 GETTABLEKS                       R14 R15 K23 ["mirrorTransformMotor6D"]
      162 MOVE                             R15 R13
      163 CALL                             R14 1 1
      164 MOVE                             R12 R14
      165 JUMP                             ; [+19]
      166 GETUPVAL                         R13 11
      167 CALL                             R13 0 1
      168 JUMPIFNOT                        R13 ; [+7]
      169 GETUPVAL                         R14 10
      170 GETTABLEKS                       R13 R14 K24 ["mirrorTransformAnimationConstraint"]
      172 MOVE                             R14 R7
      173 CALL                             R13 1 1
      174 MOVE                             R12 R13
      175 JUMP                             ; [+9]
      176 GETIMPORT                        R13 K26 [CFrame.fromMatrix]
      178 LOADK                            R14 K27 [{0, 0, 0}]
      179 LOADK                            R15 K28 [{-1, 0, 0}]
      180 LOADK                            R16 K29 [{0, 1, 0}]
      181 LOADK                            R17 K30 [{0, 0, 1}]
      182 CALL                             R13 4 1
      183 MUL                              R14 R13 R7
      184 MUL                              R12 R14 R13
      185 MUL                              R13 R11 R12
      186 GETUPVAL                         R14 6
      187 MOVE                             R16 R9
      188 MOVE                             R17 R13
      189 NAMECALL                         R14 R14 K18 ["SetTposeAdjustment"]
      191 CALL                             R14 3 0
      192 GETUPVAL                         R9 0
      193 LOADB                            R10 0
      194 SETTABLEKS                       R10 R9 K0 ["current"]
      196 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+3]
        9 GETUPVAL                         R0 3
       10 LOADK                            R1 K0 ["preview"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K1 ["current"]
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+26]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 5
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R2 5
       24 LOADN                            R4 0
       25 NAMECALL                         R2 R2 K4 ["StepAnimations"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R4 7
       30 NAMECALL                         R4 R4 K6 ["getValue"]
       32 CALL                             R4 1 1
       33 ADDK                             R3 R4 K5 [1]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 4
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R1 5
       14 JUMPIFNOTEQKS                    R1 K0 ["tpose"] ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 JUMP                             ; [+9]
       19 LOADB                            R0 0
       20 GETUPVAL                         R1 5
       21 JUMPIFEQKS                       R1 K0 ["tpose"] ; [+6]
       23 GETUPVAL                         R1 5
       24 JUMPIFNOTEQKS                    R1 K1 ["preview"] ; [+2]
       26 LOADB                            R0 0 +1
       27 LOADB                            R0 1
       28 JUMPIFNOT                        R0 ; [+19]
       29 GETUPVAL                         R2 6
       30 GETTABLEKS                       R1 R2 K2 ["clearTransforms"]
       32 GETUPVAL                         R2 0
       33 GETUPVAL                         R3 1
       34 CALL                             R1 2 0
       35 GETUPVAL                         R1 2
       36 LOADN                            R3 0
       37 NAMECALL                         R1 R1 K3 ["StepAnimations"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 7
       41 GETUPVAL                         R3 8
       42 NAMECALL                         R3 R3 K5 ["getValue"]
       44 CALL                             R3 1 1
       45 ADDK                             R2 R3 K4 [1]
       46 CALL                             R1 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K6 ["Changed"]
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 NAMECALL                         R1 R1 K7 ["Connect"]
       62 CALL                             R1 2 1
       63 GETUPVAL                         R3 6
       64 GETTABLEKS                       R2 R3 K8 ["applyTposeAdjustment"]
       66 GETUPVAL                         R3 0
       67 GETUPVAL                         R4 1
       68 CALL                             R2 2 0
       69 GETUPVAL                         R2 2
       70 JUMPIFNOT                        R2 ; [+5]
       71 GETUPVAL                         R2 2
       72 LOADN                            R4 0
       73 NAMECALL                         R2 R2 K3 ["StepAnimations"]
       75 CALL                             R2 2 0
       76 GETUPVAL                         R2 7
       77 GETUPVAL                         R4 8
       78 NAMECALL                         R4 R4 K5 ["getValue"]
       80 CALL                             R4 1 1
       81 ADDK                             R3 R4 K4 [1]
       82 CALL                             R2 1 0
       83 NEWCLOSURE                       R2 P1
       84 CAPTURE                          VAL R1
       85 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+18]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R4 5
       22 NAMECALL                         R4 R4 K5 ["getValue"]
       24 CALL                             R4 1 1
       25 ADDK                             R3 R4 K4 [1]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["clearTransforms"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R2 5
       12 NAMECALL                         R2 R2 K3 ["getValue"]
       14 CALL                             R2 1 1
       15 ADDK                             R1 R2 K2 [1]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 JUMPIFEQKS                       R0 K0 ["tpose"] ; [+15]
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R0 R1 K1 ["clearTransforms"]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 5
       18 GETUPVAL                         R2 6
       19 NAMECALL                         R2 R2 K3 ["getValue"]
       21 CALL                             R2 1 1
       22 ADDK                             R1 R2 K2 [1]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R0 R1 K4 ["Changed"]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 NAMECALL                         R0 R0 K5 ["Connect"]
       37 CALL                             R0 2 1
       38 GETUPVAL                         R2 9
       39 GETTABLEKS                       R1 R2 K6 ["applyTposeAdjustment"]
       41 GETUPVAL                         R2 0
       42 CALL                             R1 1 0
       43 GETUPVAL                         R1 5
       44 GETUPVAL                         R3 6
       45 NAMECALL                         R3 R3 K3 ["getValue"]
       47 CALL                             R3 1 1
       48 ADDK                             R2 R3 K2 [1]
       49 CALL                             R1 1 0
       50 NEWCLOSURE                       R1 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 0
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R1
       12 MOVE                             R5 R0
       13 NAMECALL                         R2 R2 K0 ["SetJoint"]
       15 CALL                             R2 3 0
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R2 R3 K1 ["addBoneMappingWaypoint"]
       19 GETTABLEKS                       R3 R0 K2 ["Name"]
       21 GETTABLEKS                       R4 R1 K2 ["Name"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 5
       25 LOADNIL                          R3
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 6
       28 LOADNIL                          R3
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R3
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 MOVE                             R11 R8
        7 NAMECALL                         R9 R2 K0 ["GetJoint"]
        9 CALL                             R9 2 1
       10 JUMPIFNOTEQ                      R9 R0 ; [+3]
       12 MOVE                             R1 R8
       13 JUMP                             ; [+3]
       14 FORGLOOP                         R4 2 ; [-9]
       16 LOADNIL                          R1
       17 JUMPIFNOT                        R1 ; [+3]
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["copyAdjustments"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_36:
        0 JUMPIFNOT                        R0 ; [+17]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["clearTransforms"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 3
       14 LOADN                            R3 0
       15 NAMECALL                         R1 R1 K1 ["StepAnimations"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 2
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K0 ["GetJoint"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K0 ["GetJoint"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 JUMPIFNOTEQKS                    R0 K0 ["left"] ; [+4]
        5 GETIMPORT                        R1 K4 [Enum.DigitsRigDescriptionSide.Left]
        7 JUMP                             ; [+2]
        8 GETIMPORT                        R1 K6 [Enum.DigitsRigDescriptionSide.Right]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+14]
       15 GETIMPORT                        R3 K8 [game]
       17 LOADK                            R5 K9 ["Selection"]
       18 NAMECALL                         R3 R3 K10 ["GetService"]
       20 CALL                             R3 2 1
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R2
       24 SETLIST                          R5 R6 1 [1]
       26 NAMECALL                         R3 R3 K11 ["Set"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Parent"]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["Parent"]
        9 LOADK                            R2 K1 ["HumanoidRigDescription"]
       10 NAMECALL                         R0 R0 K2 ["IsA"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+16]
       14 GETIMPORT                        R0 K4 [game]
       16 LOADK                            R2 K5 ["Selection"]
       17 NAMECALL                         R0 R0 K6 ["GetService"]
       19 CALL                             R0 2 1
       20 NEWTABLE                         R2 0 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["Parent"]
       25 SETLIST                          R2 R3 1 [1]
       27 NAMECALL                         R0 R0 K7 ["Set"]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETIMPORT                        R0 K1 [game]
        4 LOADK                            R2 K2 ["Selection"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R2 0 1
       10 GETUPVAL                         R3 0
       11 SETLIST                          R2 R3 1 [1]
       13 NAMECALL                         R0 R0 K4 ["Set"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["HumanoidRigDescription"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K5 ["addWaypoint"]
       12 LOADK                            R2 K6 ["CreateHRD"]
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K8 [game]
       16 LOADK                            R3 K9 ["Selection"]
       17 NAMECALL                         R1 R1 K10 ["GetService"]
       19 CALL                             R1 2 1
       20 NEWTABLE                         R3 0 1
       22 MOVE                             R4 R0
       23 SETLIST                          R3 R4 1 [1]
       25 NAMECALL                         R1 R1 K11 ["Set"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoMap"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["Automap"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["clearMapping"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["ClearMappings"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["enforceTpose"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["sampleTposeAdjustment"]
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 0
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K2 ["addTPoseWaypoint"]
       19 LOADK                            R1 K3 ["Enforce"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["clearTposeAdjustment"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["addTPoseWaypoint"]
       13 LOADK                            R1 K2 ["Reset"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_51:
        0 RETURN                           R0 0

PROTO_52:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_52]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_56:
        0 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["mapping"] ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["current"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K0 ["mapping"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["tpose"] ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["current"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K0 ["tpose"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+26]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K0 ["Parent"]
       10 JUMPIFNOT                        R0 ; [+31]
       11 LOADK                            R3 K1 ["HumanoidRigDescription"]
       12 NAMECALL                         R1 R0 K2 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+26]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K3 ["autoMapHand"]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K4 ["handRigLabels"]
       24 CALL                             R1 3 0
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K5 ["addWaypoint"]
       28 LOADK                            R2 K6 ["Automap"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R0 R1 K7 ["autoMap"]
       34 GETUPVAL                         R1 2
       35 GETUPVAL                         R2 0
       36 CALL                             R0 2 0
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R0 R1 K5 ["addWaypoint"]
       40 LOADK                            R1 K6 ["Automap"]
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+20]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R0 R3 K0 ["handRigLabels"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 3
       12 MOVE                             R7 R4
       13 LOADNIL                          R8
       14 NAMECALL                         R5 R5 K1 ["SetJoint"]
       16 CALL                             R5 3 0
       17 FORGLOOP                         R0 2 ; [-7]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R0 R1 K2 ["addWaypoint"]
       22 LOADK                            R1 K3 ["ClearMappings"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K4 ["clearMapping"]
       28 GETUPVAL                         R1 3
       29 GETUPVAL                         R2 0
       30 CALL                             R0 2 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R0 R1 K2 ["addWaypoint"]
       34 LOADK                            R1 K3 ["ClearMappings"]
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+19]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+17]
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K0 ["enforceTpose"]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K1 ["sampleTposeAdjustment"]
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 0
       17 CALL                             R0 2 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R0 R1 K2 ["addTPoseWaypoint"]
       21 LOADK                            R1 K3 ["Enforce"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+11]
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K0 ["clearTposeAdjustment"]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 0
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K1 ["addTPoseWaypoint"]
       15 LOADK                            R1 K2 ["Reset"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_64:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_65:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_64]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+310]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKS                    R0 K0 ["mapping"] ; [+100]
        6 NEWTABLE                         R0 0 3
        8 DUPTABLE                         R1 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
        9 LOADK                            R2 K7 ["Button"]
       10 SETTABLEKS                       R2 R1 K1 ["Type"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K8 ["localization"]
       15 LOADK                            R4 K9 ["Toolbar"]
       16 LOADK                            R5 K10 ["Automap"]
       17 NAMECALL                         R2 R2 K11 ["getText"]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K8 ["localization"]
       25 LOADK                            R4 K9 ["Toolbar"]
       26 LOADK                            R5 K12 ["AutomapTooltip"]
       27 NAMECALL                         R2 R2 K11 ["getText"]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K13 ["MAGIC"]
       35 SETTABLEKS                       R2 R1 K4 ["Icon"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 SETTABLEKS                       R2 R1 K5 ["OnClick"]
       44 DUPTABLE                         R2 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
       45 LOADK                            R3 K7 ["Button"]
       46 SETTABLEKS                       R3 R2 K1 ["Type"]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R3 R4 K8 ["localization"]
       51 LOADK                            R5 K9 ["Toolbar"]
       52 LOADK                            R6 K14 ["ClearMappings"]
       53 NAMECALL                         R3 R3 K11 ["getText"]
       55 CALL                             R3 3 1
       56 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
       58 GETUPVAL                         R4 2
       59 GETTABLEKS                       R3 R4 K8 ["localization"]
       61 LOADK                            R5 K9 ["Toolbar"]
       62 LOADK                            R6 K15 ["ClearMappingsTooltip"]
       63 NAMECALL                         R3 R3 K11 ["getText"]
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R3 R4 K16 ["RESET"]
       71 SETTABLEKS                       R3 R2 K4 ["Icon"]
       73 NEWCLOSURE                       R3 P1
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 SETTABLEKS                       R3 R2 K5 ["OnClick"]
       80 DUPTABLE                         R3 K18 [{"Type", "Text", "Icon", "OnClick"}]
       81 LOADK                            R4 K19 ["TextButton"]
       82 SETTABLEKS                       R4 R3 K1 ["Type"]
       84 GETUPVAL                         R5 2
       85 GETTABLEKS                       R4 R5 K8 ["localization"]
       87 LOADK                            R6 K20 ["Mode"]
       88 LOADK                            R7 K21 ["Done"]
       89 NAMECALL                         R4 R4 K11 ["getText"]
       91 CALL                             R4 3 1
       92 SETTABLEKS                       R4 R3 K17 ["Text"]
       94 LOADK                            R4 K22 [""]
       95 SETTABLEKS                       R4 R3 K4 ["Icon"]
       97 NEWCLOSURE                       R4 P2
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          UPVAL U9
      100 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      102 SETLIST                          R0 R1 3 [1]
      104 RETURN                           R0 1
      105 GETUPVAL                         R0 1
      106 JUMPIFNOTEQKS                    R0 K23 ["tpose"] ; [+203]
      108 NEWTABLE                         R0 0 8
      110 DUPTABLE                         R1 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      111 LOADK                            R2 K7 ["Button"]
      112 SETTABLEKS                       R2 R1 K1 ["Type"]
      114 GETUPVAL                         R3 2
      115 GETTABLEKS                       R2 R3 K8 ["localization"]
      117 LOADK                            R4 K9 ["Toolbar"]
      118 LOADK                            R5 K24 ["EnforceTpose"]
      119 NAMECALL                         R2 R2 K11 ["getText"]
      121 CALL                             R2 3 1
      122 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
      124 GETUPVAL                         R3 2
      125 GETTABLEKS                       R2 R3 K8 ["localization"]
      127 LOADK                            R4 K9 ["Toolbar"]
      128 LOADK                            R5 K25 ["EnforceTposeTooltip"]
      129 NAMECALL                         R2 R2 K11 ["getText"]
      131 CALL                             R2 3 1
      132 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
      134 GETUPVAL                         R3 3
      135 GETTABLEKS                       R2 R3 K13 ["MAGIC"]
      137 SETTABLEKS                       R2 R1 K4 ["Icon"]
      139 NEWCLOSURE                       R2 P3
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          UPVAL U5
      143 CAPTURE                          UPVAL U7
      144 SETTABLEKS                       R2 R1 K5 ["OnClick"]
      146 DUPTABLE                         R2 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      147 LOADK                            R3 K7 ["Button"]
      148 SETTABLEKS                       R3 R2 K1 ["Type"]
      150 GETUPVAL                         R4 2
      151 GETTABLEKS                       R3 R4 K8 ["localization"]
      153 LOADK                            R5 K9 ["Toolbar"]
      154 LOADK                            R6 K26 ["ResetTpose"]
      155 NAMECALL                         R3 R3 K11 ["getText"]
      157 CALL                             R3 3 1
      158 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
      160 GETUPVAL                         R4 2
      161 GETTABLEKS                       R3 R4 K8 ["localization"]
      163 LOADK                            R5 K9 ["Toolbar"]
      164 LOADK                            R6 K27 ["ResetTPoseTooltip"]
      165 NAMECALL                         R3 R3 K11 ["getText"]
      167 CALL                             R3 3 1
      168 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
      170 GETUPVAL                         R4 3
      171 GETTABLEKS                       R3 R4 K16 ["RESET"]
      173 SETTABLEKS                       R3 R2 K4 ["Icon"]
      175 NEWCLOSURE                       R3 P4
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U7
      180 SETTABLEKS                       R3 R2 K5 ["OnClick"]
      182 DUPTABLE                         R3 K28 [{"Type", "Icon", "OnClick"}]
      183 LOADK                            R4 K29 ["Separator"]
      184 SETTABLEKS                       R4 R3 K1 ["Type"]
      186 LOADK                            R4 K22 [""]
      187 SETTABLEKS                       R4 R3 K4 ["Icon"]
      189 DUPCLOSURE                       R4 K30 [PROTO_51]
      190 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      192 DUPTABLE                         R4 K32 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
      193 LOADK                            R5 K7 ["Button"]
      194 SETTABLEKS                       R5 R4 K1 ["Type"]
      196 GETUPVAL                         R6 10
      197 JUMPIFNOT                        R6 ; [+9]
      198 GETUPVAL                         R6 2
      199 GETTABLEKS                       R5 R6 K8 ["localization"]
      201 LOADK                            R7 K9 ["Toolbar"]
      202 LOADK                            R8 K33 ["SymmetryOn"]
      203 NAMECALL                         R5 R5 K11 ["getText"]
      205 CALL                             R5 3 1
      206 JUMPIF                           R5 ; [+8]
      207 GETUPVAL                         R6 2
      208 GETTABLEKS                       R5 R6 K8 ["localization"]
      210 LOADK                            R7 K9 ["Toolbar"]
      211 LOADK                            R8 K34 ["SymmetryOff"]
      212 NAMECALL                         R5 R5 K11 ["getText"]
      214 CALL                             R5 3 1
      215 SETTABLEKS                       R5 R4 K2 ["Tooltip"]
      217 GETUPVAL                         R5 10
      218 SETTABLEKS                       R5 R4 K31 ["Selected"]
      220 GETUPVAL                         R6 3
      221 GETTABLEKS                       R5 R6 K35 ["SYMMETRY"]
      223 SETTABLEKS                       R5 R4 K4 ["Icon"]
      225 NEWCLOSURE                       R5 P6
      226 CAPTURE                          UPVAL U11
      227 SETTABLEKS                       R5 R4 K5 ["OnClick"]
      229 DUPTABLE                         R5 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      230 LOADK                            R6 K7 ["Button"]
      231 SETTABLEKS                       R6 R5 K1 ["Type"]
      233 GETUPVAL                         R7 2
      234 GETTABLEKS                       R6 R7 K8 ["localization"]
      236 LOADK                            R8 K2 ["Tooltip"]
      237 LOADK                            R9 K37 ["MirrorLtoR"]
      238 NAMECALL                         R6 R6 K11 ["getText"]
      240 CALL                             R6 3 1
      241 SETTABLEKS                       R6 R5 K2 ["Tooltip"]
      243 GETUPVAL                         R7 3
      244 GETTABLEKS                       R6 R7 K38 ["MIRROR_TO_RIGHT"]
      246 SETTABLEKS                       R6 R5 K4 ["Icon"]
      248 NEWCLOSURE                       R6 P7
      249 CAPTURE                          UPVAL U12
      250 SETTABLEKS                       R6 R5 K5 ["OnClick"]
      252 DUPTABLE                         R6 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      253 LOADK                            R7 K7 ["Button"]
      254 SETTABLEKS                       R7 R6 K1 ["Type"]
      256 GETUPVAL                         R8 2
      257 GETTABLEKS                       R7 R8 K8 ["localization"]
      259 LOADK                            R9 K2 ["Tooltip"]
      260 LOADK                            R10 K39 ["MirrorRtoL"]
      261 NAMECALL                         R7 R7 K11 ["getText"]
      263 CALL                             R7 3 1
      264 SETTABLEKS                       R7 R6 K2 ["Tooltip"]
      266 GETUPVAL                         R8 3
      267 GETTABLEKS                       R7 R8 K40 ["MIRROR_TO_LEFT"]
      269 SETTABLEKS                       R7 R6 K4 ["Icon"]
      271 NEWCLOSURE                       R7 P8
      272 CAPTURE                          UPVAL U12
      273 SETTABLEKS                       R7 R6 K5 ["OnClick"]
      275 DUPTABLE                         R7 K41 [{"Type", "OnClick", "Icon"}]
      276 LOADK                            R8 K29 ["Separator"]
      277 SETTABLEKS                       R8 R7 K1 ["Type"]
      279 DUPCLOSURE                       R8 K42 [PROTO_56]
      280 SETTABLEKS                       R8 R7 K5 ["OnClick"]
      282 LOADK                            R8 K22 [""]
      283 SETTABLEKS                       R8 R7 K4 ["Icon"]
      285 DUPTABLE                         R8 K18 [{"Type", "Text", "Icon", "OnClick"}]
      286 LOADK                            R9 K19 ["TextButton"]
      287 SETTABLEKS                       R9 R8 K1 ["Type"]
      289 GETUPVAL                         R10 2
      290 GETTABLEKS                       R9 R10 K8 ["localization"]
      292 LOADK                            R11 K20 ["Mode"]
      293 LOADK                            R12 K21 ["Done"]
      294 NAMECALL                         R9 R9 K11 ["getText"]
      296 CALL                             R9 3 1
      297 SETTABLEKS                       R9 R8 K17 ["Text"]
      299 LOADK                            R9 K22 [""]
      300 SETTABLEKS                       R9 R8 K4 ["Icon"]
      302 NEWCLOSURE                       R9 P10
      303 CAPTURE                          UPVAL U8
      304 CAPTURE                          UPVAL U9
      305 SETTABLEKS                       R9 R8 K5 ["OnClick"]
      307 SETLIST                          R0 R1 8 [1]
      309 RETURN                           R0 1
      310 NEWTABLE                         R0 0 0
      312 RETURN                           R0 1
      313 NEWTABLE                         R0 0 0
      315 GETUPVAL                         R1 13
      316 LOADNIL                          R2
      317 LOADNIL                          R3
      318 FORGPREP                         R1
      319 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
      321 MOVE                             R7 R0
      322 MOVE                             R8 R5
      323 GETIMPORT                        R6 K45 [table.insert]
      325 CALL                             R6 2 0
      326 FORGLOOP                         R1 2 ; [-8]
      328 DUPTABLE                         R3 K46 [{"Type"}]
      329 LOADK                            R4 K29 ["Separator"]
      330 SETTABLEKS                       R4 R3 K1 ["Type"]
      332 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      334 MOVE                             R2 R0
      335 GETIMPORT                        R1 K45 [table.insert]
      337 CALL                             R1 2 0
      338 DUPTABLE                         R3 K47 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
      339 LOADK                            R4 K7 ["Button"]
      340 SETTABLEKS                       R4 R3 K1 ["Type"]
      342 GETUPVAL                         R5 2
      343 GETTABLEKS                       R4 R5 K8 ["localization"]
      345 LOADK                            R6 K20 ["Mode"]
      346 LOADK                            R7 K48 ["MappingTooltip"]
      347 NAMECALL                         R4 R4 K11 ["getText"]
      349 CALL                             R4 3 1
      350 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      352 GETUPVAL                         R5 2
      353 GETTABLEKS                       R4 R5 K8 ["localization"]
      355 LOADK                            R6 K20 ["Mode"]
      356 LOADK                            R7 K48 ["MappingTooltip"]
      357 NAMECALL                         R4 R4 K11 ["getText"]
      359 CALL                             R4 3 1
      360 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      362 GETUPVAL                         R5 3
      363 GETTABLEKS                       R4 R5 K49 ["MAPPING"]
      365 SETTABLEKS                       R4 R3 K4 ["Icon"]
      367 GETUPVAL                         R5 1
      368 JUMPIFEQKS                       R5 K0 ["mapping"] ; [+2]
      370 LOADB                            R4 0 +1
      371 LOADB                            R4 1
      372 SETTABLEKS                       R4 R3 K31 ["Selected"]
      374 NEWCLOSURE                       R4 P11
      375 CAPTURE                          UPVAL U1
      376 CAPTURE                          UPVAL U14
      377 CAPTURE                          UPVAL U9
      378 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      380 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      382 MOVE                             R2 R0
      383 GETIMPORT                        R1 K45 [table.insert]
      385 CALL                             R1 2 0
      386 DUPTABLE                         R3 K47 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
      387 LOADK                            R4 K7 ["Button"]
      388 SETTABLEKS                       R4 R3 K1 ["Type"]
      390 GETUPVAL                         R5 2
      391 GETTABLEKS                       R4 R5 K8 ["localization"]
      393 LOADK                            R6 K20 ["Mode"]
      394 LOADK                            R7 K50 ["TPose"]
      395 NAMECALL                         R4 R4 K11 ["getText"]
      397 CALL                             R4 3 1
      398 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      400 GETUPVAL                         R5 2
      401 GETTABLEKS                       R4 R5 K8 ["localization"]
      403 LOADK                            R6 K20 ["Mode"]
      404 LOADK                            R7 K51 ["TPoseTooltip"]
      405 NAMECALL                         R4 R4 K11 ["getText"]
      407 CALL                             R4 3 1
      408 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      410 GETUPVAL                         R5 3
      411 GETTABLEKS                       R4 R5 K52 ["TPOSE"]
      413 SETTABLEKS                       R4 R3 K4 ["Icon"]
      415 GETUPVAL                         R5 1
      416 JUMPIFEQKS                       R5 K23 ["tpose"] ; [+2]
      418 LOADB                            R4 0 +1
      419 LOADB                            R4 1
      420 SETTABLEKS                       R4 R3 K31 ["Selected"]
      422 NEWCLOSURE                       R4 P12
      423 CAPTURE                          UPVAL U1
      424 CAPTURE                          UPVAL U14
      425 CAPTURE                          UPVAL U9
      426 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      428 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      430 MOVE                             R2 R0
      431 GETIMPORT                        R1 K45 [table.insert]
      433 CALL                             R1 2 0
      434 DUPTABLE                         R3 K46 [{"Type"}]
      435 LOADK                            R4 K29 ["Separator"]
      436 SETTABLEKS                       R4 R3 K1 ["Type"]
      438 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      440 MOVE                             R2 R0
      441 GETIMPORT                        R1 K45 [table.insert]
      443 CALL                             R1 2 0
      444 GETUPVAL                         R1 1
      445 JUMPIFNOTEQKS                    R1 K0 ["mapping"] ; [+88]
      447 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      448 LOADK                            R4 K7 ["Button"]
      449 SETTABLEKS                       R4 R3 K1 ["Type"]
      451 GETUPVAL                         R5 2
      452 GETTABLEKS                       R4 R5 K8 ["localization"]
      454 LOADK                            R6 K9 ["Toolbar"]
      455 LOADK                            R7 K10 ["Automap"]
      456 NAMECALL                         R4 R4 K11 ["getText"]
      458 CALL                             R4 3 1
      459 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      461 GETUPVAL                         R5 2
      462 GETTABLEKS                       R4 R5 K8 ["localization"]
      464 LOADK                            R6 K9 ["Toolbar"]
      465 LOADK                            R7 K12 ["AutomapTooltip"]
      466 NAMECALL                         R4 R4 K11 ["getText"]
      468 CALL                             R4 3 1
      469 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      471 GETUPVAL                         R5 3
      472 GETTABLEKS                       R4 R5 K13 ["MAGIC"]
      474 SETTABLEKS                       R4 R3 K4 ["Icon"]
      476 NEWCLOSURE                       R4 P13
      477 CAPTURE                          UPVAL U4
      478 CAPTURE                          UPVAL U15
      479 CAPTURE                          UPVAL U6
      480 CAPTURE                          UPVAL U5
      481 CAPTURE                          UPVAL U7
      482 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      484 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      486 MOVE                             R2 R0
      487 GETIMPORT                        R1 K45 [table.insert]
      489 CALL                             R1 2 0
      490 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      491 LOADK                            R4 K7 ["Button"]
      492 SETTABLEKS                       R4 R3 K1 ["Type"]
      494 GETUPVAL                         R5 2
      495 GETTABLEKS                       R4 R5 K8 ["localization"]
      497 LOADK                            R6 K9 ["Toolbar"]
      498 LOADK                            R7 K14 ["ClearMappings"]
      499 NAMECALL                         R4 R4 K11 ["getText"]
      501 CALL                             R4 3 1
      502 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      504 GETUPVAL                         R5 2
      505 GETTABLEKS                       R4 R5 K8 ["localization"]
      507 LOADK                            R6 K9 ["Toolbar"]
      508 LOADK                            R7 K15 ["ClearMappingsTooltip"]
      509 NAMECALL                         R4 R4 K11 ["getText"]
      511 CALL                             R4 3 1
      512 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      514 GETUPVAL                         R5 3
      515 GETTABLEKS                       R4 R5 K16 ["RESET"]
      517 SETTABLEKS                       R4 R3 K4 ["Icon"]
      519 NEWCLOSURE                       R4 P14
      520 CAPTURE                          UPVAL U4
      521 CAPTURE                          UPVAL U15
      522 CAPTURE                          UPVAL U5
      523 CAPTURE                          UPVAL U6
      524 CAPTURE                          UPVAL U7
      525 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      527 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      529 MOVE                             R2 R0
      530 GETIMPORT                        R1 K45 [table.insert]
      532 CALL                             R1 2 0
      533 RETURN                           R0 1
      534 GETUPVAL                         R1 1
      535 JUMPIFNOTEQKS                    R1 K23 ["tpose"] ; [+198]
      537 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      538 LOADK                            R4 K7 ["Button"]
      539 SETTABLEKS                       R4 R3 K1 ["Type"]
      541 GETUPVAL                         R5 2
      542 GETTABLEKS                       R4 R5 K8 ["localization"]
      544 LOADK                            R6 K9 ["Toolbar"]
      545 LOADK                            R7 K24 ["EnforceTpose"]
      546 NAMECALL                         R4 R4 K11 ["getText"]
      548 CALL                             R4 3 1
      549 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      551 GETUPVAL                         R5 2
      552 GETTABLEKS                       R4 R5 K8 ["localization"]
      554 LOADK                            R6 K9 ["Toolbar"]
      555 LOADK                            R7 K25 ["EnforceTposeTooltip"]
      556 NAMECALL                         R4 R4 K11 ["getText"]
      558 CALL                             R4 3 1
      559 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      561 GETUPVAL                         R5 3
      562 GETTABLEKS                       R4 R5 K13 ["MAGIC"]
      564 SETTABLEKS                       R4 R3 K4 ["Icon"]
      566 NEWCLOSURE                       R4 P15
      567 CAPTURE                          UPVAL U4
      568 CAPTURE                          UPVAL U6
      569 CAPTURE                          UPVAL U15
      570 CAPTURE                          UPVAL U5
      571 CAPTURE                          UPVAL U7
      572 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      574 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      576 MOVE                             R2 R0
      577 GETIMPORT                        R1 K45 [table.insert]
      579 CALL                             R1 2 0
      580 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      581 LOADK                            R4 K7 ["Button"]
      582 SETTABLEKS                       R4 R3 K1 ["Type"]
      584 GETUPVAL                         R5 2
      585 GETTABLEKS                       R4 R5 K8 ["localization"]
      587 LOADK                            R6 K9 ["Toolbar"]
      588 LOADK                            R7 K26 ["ResetTpose"]
      589 NAMECALL                         R4 R4 K11 ["getText"]
      591 CALL                             R4 3 1
      592 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      594 GETUPVAL                         R5 2
      595 GETTABLEKS                       R4 R5 K8 ["localization"]
      597 LOADK                            R6 K9 ["Toolbar"]
      598 LOADK                            R7 K27 ["ResetTPoseTooltip"]
      599 NAMECALL                         R4 R4 K11 ["getText"]
      601 CALL                             R4 3 1
      602 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      604 GETUPVAL                         R5 3
      605 GETTABLEKS                       R4 R5 K16 ["RESET"]
      607 SETTABLEKS                       R4 R3 K4 ["Icon"]
      609 NEWCLOSURE                       R4 P16
      610 CAPTURE                          UPVAL U4
      611 CAPTURE                          UPVAL U6
      612 CAPTURE                          UPVAL U15
      613 CAPTURE                          UPVAL U5
      614 CAPTURE                          UPVAL U7
      615 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      617 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      619 MOVE                             R2 R0
      620 GETIMPORT                        R1 K45 [table.insert]
      622 CALL                             R1 2 0
      623 DUPTABLE                         R3 K46 [{"Type"}]
      624 LOADK                            R4 K29 ["Separator"]
      625 SETTABLEKS                       R4 R3 K1 ["Type"]
      627 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      629 MOVE                             R2 R0
      630 GETIMPORT                        R1 K45 [table.insert]
      632 CALL                             R1 2 0
      633 DUPTABLE                         R3 K32 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
      634 LOADK                            R4 K7 ["Button"]
      635 SETTABLEKS                       R4 R3 K1 ["Type"]
      637 GETUPVAL                         R5 10
      638 JUMPIFNOT                        R5 ; [+9]
      639 GETUPVAL                         R5 2
      640 GETTABLEKS                       R4 R5 K8 ["localization"]
      642 LOADK                            R6 K9 ["Toolbar"]
      643 LOADK                            R7 K33 ["SymmetryOn"]
      644 NAMECALL                         R4 R4 K11 ["getText"]
      646 CALL                             R4 3 1
      647 JUMPIF                           R4 ; [+8]
      648 GETUPVAL                         R5 2
      649 GETTABLEKS                       R4 R5 K8 ["localization"]
      651 LOADK                            R6 K9 ["Toolbar"]
      652 LOADK                            R7 K34 ["SymmetryOff"]
      653 NAMECALL                         R4 R4 K11 ["getText"]
      655 CALL                             R4 3 1
      656 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      658 GETUPVAL                         R4 10
      659 SETTABLEKS                       R4 R3 K31 ["Selected"]
      661 GETUPVAL                         R5 3
      662 GETTABLEKS                       R4 R5 K35 ["SYMMETRY"]
      664 SETTABLEKS                       R4 R3 K4 ["Icon"]
      666 NEWCLOSURE                       R4 P17
      667 CAPTURE                          UPVAL U11
      668 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      670 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      672 MOVE                             R2 R0
      673 GETIMPORT                        R1 K45 [table.insert]
      675 CALL                             R1 2 0
      676 DUPTABLE                         R3 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      677 LOADK                            R4 K7 ["Button"]
      678 SETTABLEKS                       R4 R3 K1 ["Type"]
      680 GETUPVAL                         R5 2
      681 GETTABLEKS                       R4 R5 K8 ["localization"]
      683 LOADK                            R6 K2 ["Tooltip"]
      684 LOADK                            R7 K37 ["MirrorLtoR"]
      685 NAMECALL                         R4 R4 K11 ["getText"]
      687 CALL                             R4 3 1
      688 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      690 GETUPVAL                         R5 3
      691 GETTABLEKS                       R4 R5 K38 ["MIRROR_TO_RIGHT"]
      693 SETTABLEKS                       R4 R3 K4 ["Icon"]
      695 NEWCLOSURE                       R4 P18
      696 CAPTURE                          UPVAL U12
      697 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      699 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      701 MOVE                             R2 R0
      702 GETIMPORT                        R1 K45 [table.insert]
      704 CALL                             R1 2 0
      705 DUPTABLE                         R3 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      706 LOADK                            R4 K7 ["Button"]
      707 SETTABLEKS                       R4 R3 K1 ["Type"]
      709 GETUPVAL                         R5 2
      710 GETTABLEKS                       R4 R5 K8 ["localization"]
      712 LOADK                            R6 K2 ["Tooltip"]
      713 LOADK                            R7 K39 ["MirrorRtoL"]
      714 NAMECALL                         R4 R4 K11 ["getText"]
      716 CALL                             R4 3 1
      717 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      719 GETUPVAL                         R5 3
      720 GETTABLEKS                       R4 R5 K40 ["MIRROR_TO_LEFT"]
      722 SETTABLEKS                       R4 R3 K4 ["Icon"]
      724 NEWCLOSURE                       R4 P19
      725 CAPTURE                          UPVAL U12
      726 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      728 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      730 MOVE                             R2 R0
      731 GETIMPORT                        R1 K45 [table.insert]
      733 CALL                             R1 2 0
      734 RETURN                           R0 1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_70:
        0 RETURN                           R0 0

PROTO_71:
        0 RETURN                           R0 0

PROTO_72:
        0 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K1 ["mapping"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["clearTransforms"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 4
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 4
       13 LOADN                            R3 0
       14 NAMECALL                         R1 R1 K1 ["StepAnimations"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["useState"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["get"]
        8 CALL                             R4 0 1
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 0
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       22 DUPCLOSURE                       R6 K4 [PROTO_11]
       23 CAPTURE                          UPVAL U2
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 LOADB                            R6 1
       28 JUMPIFEQKS                       R2 K5 ["hand"] ; [+8]
       30 LOADB                            R6 1
       31 JUMPIFEQKS                       R2 K6 ["leftHand"] ; [+5]
       33 JUMPIFEQKS                       R2 K7 ["rightHand"] ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 JUMPIFNOT                        R6 ; [+4]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R7 R8 K8 ["handRigLabels"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 MOVE                             R8 R7
       44 JUMPIF                           R8 ; [+3]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R8 R9 K9 ["bodyRigLabels"]
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R1
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 5
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 GETUPVAL                         R12 1
       55 GETTABLEKS                       R11 R12 K0 ["useState"]
       57 LOADB                            R12 0
       58 CALL                             R11 1 2
       59 JUMPIF                           R6 ; [+2]
       60 MOVE                             R13 R1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R13
       63 GETUPVAL                         R14 6
       64 MOVE                             R15 R13
       65 MOVE                             R16 R10
       66 CALL                             R14 2 0
       67 GETUPVAL                         R14 7
       68 MOVE                             R15 R3
       69 MOVE                             R16 R13
       70 MOVE                             R17 R9
       71 CALL                             R14 3 0
       72 GETUPVAL                         R14 8
       73 MOVE                             R15 R1
       74 GETTABLEKS                       R16 R0 K10 ["Plugin"]
       76 CALL                             R14 2 0
       77 GETUPVAL                         R14 9
       78 CALL                             R14 0 3
       79 GETUPVAL                         R18 1
       80 GETTABLEKS                       R17 R18 K0 ["useState"]
       82 LOADB                            R18 0
       83 CALL                             R17 1 2
       84 GETUPVAL                         R20 10
       85 CALL                             R20 0 1
       86 JUMPIFNOT                        R20 ; [+2]
       87 MOVE                             R19 R17
       88 JUMP                             ; [+1]
       89 LOADB                            R19 1
       90 GETUPVAL                         R21 1
       91 GETTABLEKS                       R20 R21 K2 ["useEffect"]
       93 NEWCLOSURE                       R21 P2
       94 CAPTURE                          UPVAL U10
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R19
       97 NEWTABLE                         R22 0 2
       99 MOVE                             R23 R19
      100 GETTABLEKS                       R24 R0 K11 ["pluginLoaderContext"]
      102 SETLIST                          R22 R23 2 [1]
      104 CALL                             R20 2 0
      105 GETUPVAL                         R21 1
      106 GETTABLEKS                       R20 R21 K2 ["useEffect"]
      108 NEWCLOSURE                       R21 P3
      109 CAPTURE                          UPVAL U10
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R18
      112 NEWTABLE                         R22 0 1
      114 MOVE                             R23 R1
      115 SETLIST                          R22 R23 1 [1]
      117 CALL                             R20 2 0
      118 GETUPVAL                         R21 1
      119 GETTABLEKS                       R20 R21 K2 ["useEffect"]
      121 NEWCLOSURE                       R21 P4
      122 CAPTURE                          UPVAL U10
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R18
      125 NEWTABLE                         R22 0 1
      127 GETTABLEKS                       R23 R0 K11 ["pluginLoaderContext"]
      129 SETLIST                          R22 R23 1 [1]
      131 CALL                             R20 2 0
      132 GETUPVAL                         R21 1
      133 GETTABLEKS                       R20 R21 K0 ["useState"]
      135 LOADNIL                          R21
      136 CALL                             R20 1 2
      137 GETUPVAL                         R23 1
      138 GETTABLEKS                       R22 R23 K0 ["useState"]
      140 LOADNIL                          R23
      141 CALL                             R22 1 2
      142 GETUPVAL                         R25 1
      143 GETTABLEKS                       R24 R25 K0 ["useState"]
      145 LOADB                            R25 1
      146 CALL                             R24 1 2
      147 GETUPVAL                         R27 1
      148 GETTABLEKS                       R26 R27 K0 ["useState"]
      150 LOADNIL                          R27
      151 CALL                             R26 1 2
      152 GETUPVAL                         R29 1
      153 GETTABLEKS                       R28 R29 K0 ["useState"]
      155 LOADNIL                          R29
      156 CALL                             R28 1 2
      157 GETUPVAL                         R31 1
      158 GETTABLEKS                       R30 R31 K3 ["useCallback"]
      160 NEWCLOSURE                       R31 P5
      161 CAPTURE                          VAL R29
      162 NEWTABLE                         R32 0 0
      164 CALL                             R30 2 1
      165 GETUPVAL                         R32 1
      166 GETTABLEKS                       R31 R32 K12 ["useBinding"]
      168 LOADN                            R32 0
      169 CALL                             R31 1 2
      170 GETUPVAL                         R34 1
      171 GETTABLEKS                       R33 R34 K13 ["useRef"]
      173 LOADB                            R34 0
      174 CALL                             R33 1 1
      175 GETUPVAL                         R35 1
      176 GETTABLEKS                       R34 R35 K13 ["useRef"]
      178 NEWTABLE                         R35 0 0
      180 CALL                             R34 1 1
      181 GETUPVAL                         R36 1
      182 GETTABLEKS                       R35 R36 K13 ["useRef"]
      184 LOADNIL                          R36
      185 CALL                             R35 1 1
      186 GETUPVAL                         R37 1
      187 GETTABLEKS                       R36 R37 K13 ["useRef"]
      189 LOADNIL                          R37
      190 CALL                             R36 1 1
      191 GETUPVAL                         R38 1
      192 GETTABLEKS                       R37 R38 K2 ["useEffect"]
      194 NEWCLOSURE                       R38 P6
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R32
      197 CAPTURE                          VAL R31
      198 NEWTABLE                         R39 0 1
      200 MOVE                             R40 R11
      201 SETLIST                          R39 R40 1 [1]
      203 CALL                             R37 2 0
      204 GETUPVAL                         R38 11
      205 GETTABLEKS                       R37 R38 K14 ["isIdentityTransform"]
      207 GETUPVAL                         R39 1
      208 GETTABLEKS                       R38 R39 K3 ["useCallback"]
      210 NEWCLOSURE                       R39 P7
      211 CAPTURE                          VAL R33
      212 CAPTURE                          UPVAL U3
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R24
      216 CAPTURE                          UPVAL U12
      217 CAPTURE                          UPVAL U13
      218 NEWTABLE                         R40 0 2
      220 MOVE                             R41 R1
      221 MOVE                             R42 R24
      222 SETLIST                          R40 R41 2 [1]
      224 CALL                             R38 2 1
      225 GETUPVAL                         R40 1
      226 GETTABLEKS                       R39 R40 K3 ["useCallback"]
      228 NEWCLOSURE                       R40 P8
      229 CAPTURE                          VAL R33
      230 CAPTURE                          VAL R35
      231 CAPTURE                          VAL R34
      232 CAPTURE                          UPVAL U11
      233 CAPTURE                          VAL R6
      234 CAPTURE                          UPVAL U14
      235 CAPTURE                          VAL R1
      236 CAPTURE                          UPVAL U3
      237 CAPTURE                          VAL R24
      238 CAPTURE                          VAL R37
      239 CAPTURE                          UPVAL U13
      240 CAPTURE                          UPVAL U15
      241 NEWTABLE                         R41 0 2
      243 MOVE                             R42 R1
      244 MOVE                             R43 R24
      245 SETLIST                          R41 R42 2 [1]
      247 CALL                             R39 2 1
      248 GETUPVAL                         R40 16
      249 MOVE                             R41 R20
      250 MOVE                             R42 R1
      251 MOVE                             R43 R24
      252 GETUPVAL                         R45 17
      253 CALL                             R45 0 1
      254 JUMPIFNOT                        R45 ; [+2]
      255 MOVE                             R44 R39
      256 JUMP                             ; [+1]
      257 MOVE                             R44 R38
      258 CALL                             R40 4 1
      259 GETUPVAL                         R42 1
      260 GETTABLEKS                       R41 R42 K2 ["useEffect"]
      262 NEWCLOSURE                       R42 P9
      263 CAPTURE                          VAL R21
      264 CAPTURE                          VAL R23
      265 CAPTURE                          UPVAL U10
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R34
      268 NEWTABLE                         R43 0 1
      270 MOVE                             R44 R1
      271 SETLIST                          R43 R44 1 [1]
      273 CALL                             R41 2 0
      274 GETUPVAL                         R42 1
      275 GETTABLEKS                       R41 R42 K2 ["useEffect"]
      277 NEWCLOSURE                       R42 P10
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R9
      280 CAPTURE                          VAL R10
      281 CAPTURE                          VAL R6
      282 CAPTURE                          UPVAL U10
      283 CAPTURE                          VAL R3
      284 CAPTURE                          UPVAL U3
      285 CAPTURE                          VAL R32
      286 CAPTURE                          VAL R31
      287 CAPTURE                          UPVAL U18
      288 CAPTURE                          VAL R33
      289 NEWTABLE                         R43 0 4
      291 MOVE                             R44 R3
      292 MOVE                             R45 R1
      293 MOVE                             R46 R9
      294 MOVE                             R47 R10
      295 SETLIST                          R43 R44 4 [1]
      297 CALL                             R41 2 0
      298 GETUPVAL                         R42 1
      299 GETTABLEKS                       R41 R42 K2 ["useEffect"]
      301 NEWCLOSURE                       R42 P11
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R9
      304 CAPTURE                          VAL R6
      305 CAPTURE                          VAL R3
      306 CAPTURE                          UPVAL U3
      307 CAPTURE                          VAL R32
      308 CAPTURE                          VAL R31
      309 CAPTURE                          UPVAL U18
      310 CAPTURE                          VAL R33
      311 CAPTURE                          UPVAL U14
      312 NEWTABLE                         R43 0 4
      314 MOVE                             R44 R3
      315 MOVE                             R45 R1
      316 MOVE                             R46 R2
      317 MOVE                             R47 R9
      318 SETLIST                          R43 R44 4 [1]
      320 CALL                             R41 2 0
      321 GETUPVAL                         R42 1
      322 GETTABLEKS                       R41 R42 K2 ["useEffect"]
      324 NEWCLOSURE                       R42 P12
      325 CAPTURE                          VAL R34
      326 NEWTABLE                         R43 0 3
      328 MOVE                             R44 R20
      329 MOVE                             R45 R24
      330 MOVE                             R46 R3
      331 SETLIST                          R43 R44 3 [1]
      333 CALL                             R41 2 0
      334 GETUPVAL                         R42 1
      335 GETTABLEKS                       R41 R42 K3 ["useCallback"]
      337 NEWCLOSURE                       R42 P13
      338 CAPTURE                          UPVAL U19
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R8
      341 CAPTURE                          UPVAL U20
      342 CAPTURE                          UPVAL U21
      343 CAPTURE                          VAL R21
      344 CAPTURE                          VAL R23
      345 NEWTABLE                         R43 0 2
      347 MOVE                             R44 R1
      348 MOVE                             R45 R8
      349 SETLIST                          R43 R44 2 [1]
      351 CALL                             R41 2 1
      352 GETUPVAL                         R43 1
      353 GETTABLEKS                       R42 R43 K3 ["useCallback"]
      355 NEWCLOSURE                       R43 P14
      356 CAPTURE                          VAL R22
      357 CAPTURE                          VAL R41
      358 CAPTURE                          VAL R21
      359 NEWTABLE                         R44 0 2
      361 MOVE                             R45 R22
      362 MOVE                             R46 R41
      363 SETLIST                          R44 R45 2 [1]
      365 CALL                             R42 2 1
      366 GETUPVAL                         R44 1
      367 GETTABLEKS                       R43 R44 K3 ["useCallback"]
      369 NEWCLOSURE                       R44 P15
      370 CAPTURE                          VAL R1
      371 CAPTURE                          VAL R8
      372 CAPTURE                          VAL R21
      373 NEWTABLE                         R45 0 2
      375 MOVE                             R46 R1
      376 MOVE                             R47 R8
      377 SETLIST                          R45 R46 2 [1]
      379 CALL                             R43 2 1
      380 GETUPVAL                         R45 1
      381 GETTABLEKS                       R44 R45 K3 ["useCallback"]
      383 NEWCLOSURE                       R45 P16
      384 CAPTURE                          VAL R6
      385 CAPTURE                          UPVAL U22
      386 CAPTURE                          VAL R1
      387 CAPTURE                          VAL R9
      388 CAPTURE                          VAL R10
      389 NEWTABLE                         R46 0 4
      391 MOVE                             R47 R6
      392 MOVE                             R48 R1
      393 MOVE                             R49 R9
      394 MOVE                             R50 R10
      395 SETLIST                          R46 R47 4 [1]
      397 CALL                             R44 2 1
      398 GETUPVAL                         R46 1
      399 GETTABLEKS                       R45 R46 K3 ["useCallback"]
      401 NEWCLOSURE                       R46 P17
      402 CAPTURE                          VAL R9
      403 CAPTURE                          VAL R1
      404 CAPTURE                          UPVAL U3
      405 CAPTURE                          VAL R10
      406 NEWTABLE                         R47 0 3
      408 MOVE                             R48 R9
      409 MOVE                             R49 R1
      410 MOVE                             R50 R10
      411 SETLIST                          R47 R48 3 [1]
      413 CALL                             R45 2 1
      414 GETUPVAL                         R46 23
      415 MOVE                             R47 R45
      416 GETTABLEKS                       R48 R0 K15 ["localization"]
      418 MOVE                             R49 R9
      419 CALL                             R46 3 4
      420 GETUPVAL                         R51 1
      421 GETTABLEKS                       R50 R51 K2 ["useEffect"]
      423 NEWCLOSURE                       R51 P18
      424 CAPTURE                          VAL R36
      425 CAPTURE                          VAL R49
      426 NEWTABLE                         R52 0 1
      428 MOVE                             R53 R49
      429 SETLIST                          R52 R53 1 [1]
      431 CALL                             R50 2 0
      432 GETUPVAL                         R51 1
      433 GETTABLEKS                       R50 R51 K2 ["useEffect"]
      435 NEWCLOSURE                       R51 P19
      436 CAPTURE                          VAL R12
      437 CAPTURE                          VAL R48
      438 NEWTABLE                         R52 0 1
      440 MOVE                             R53 R48
      441 SETLIST                          R52 R53 1 [1]
      443 CALL                             R50 2 0
      444 GETUPVAL                         R51 1
      445 GETTABLEKS                       R50 R51 K3 ["useCallback"]
      447 NEWCLOSURE                       R51 P20
      448 CAPTURE                          VAL R21
      449 CAPTURE                          VAL R23
      450 NEWTABLE                         R52 0 0
      452 CALL                             R50 2 1
      453 GETUPVAL                         R52 1
      454 GETTABLEKS                       R51 R52 K3 ["useCallback"]
      456 NEWCLOSURE                       R52 P21
      457 CAPTURE                          VAL R22
      458 CAPTURE                          VAL R23
      459 CAPTURE                          VAL R1
      460 CAPTURE                          VAL R21
      461 NEWTABLE                         R53 0 2
      463 MOVE                             R54 R22
      464 MOVE                             R55 R1
      465 SETLIST                          R53 R54 2 [1]
      467 CALL                             R51 2 1
      468 GETUPVAL                         R53 1
      469 GETTABLEKS                       R52 R53 K3 ["useCallback"]
      471 NEWCLOSURE                       R53 P22
      472 CAPTURE                          VAL R22
      473 CAPTURE                          VAL R23
      474 CAPTURE                          VAL R1
      475 CAPTURE                          VAL R21
      476 NEWTABLE                         R54 0 2
      478 MOVE                             R55 R22
      479 MOVE                             R56 R1
      480 SETLIST                          R54 R55 2 [1]
      482 CALL                             R52 2 1
      483 GETUPVAL                         R54 1
      484 GETTABLEKS                       R53 R54 K3 ["useCallback"]
      486 NEWCLOSURE                       R54 P23
      487 CAPTURE                          VAL R1
      488 CAPTURE                          UPVAL U24
      489 NEWTABLE                         R55 0 1
      491 MOVE                             R56 R1
      492 SETLIST                          R55 R56 1 [1]
      494 CALL                             R53 2 1
      495 GETUPVAL                         R55 1
      496 GETTABLEKS                       R54 R55 K3 ["useCallback"]
      498 NEWCLOSURE                       R55 P24
      499 CAPTURE                          VAL R1
      500 NEWTABLE                         R56 0 1
      502 MOVE                             R57 R1
      503 SETLIST                          R56 R57 1 [1]
      505 CALL                             R54 2 1
      506 GETUPVAL                         R56 1
      507 GETTABLEKS                       R55 R56 K3 ["useCallback"]
      509 NEWCLOSURE                       R56 P25
      510 CAPTURE                          VAL R14
      511 NEWTABLE                         R57 0 1
      513 MOVE                             R58 R14
      514 SETLIST                          R57 R58 1 [1]
      516 CALL                             R55 2 1
      517 GETUPVAL                         R57 1
      518 GETTABLEKS                       R56 R57 K3 ["useCallback"]
      520 NEWCLOSURE                       R57 P26
      521 CAPTURE                          VAL R15
      522 CAPTURE                          UPVAL U21
      523 NEWTABLE                         R58 0 1
      525 MOVE                             R59 R15
      526 SETLIST                          R58 R59 1 [1]
      528 CALL                             R56 2 1
      529 GETUPVAL                         R58 1
      530 GETTABLEKS                       R57 R58 K16 ["useMemo"]
      532 NEWCLOSURE                       R58 P27
      533 CAPTURE                          UPVAL U10
      534 CAPTURE                          VAL R3
      535 CAPTURE                          VAL R0
      536 CAPTURE                          UPVAL U18
      537 CAPTURE                          VAL R9
      538 CAPTURE                          UPVAL U3
      539 CAPTURE                          VAL R1
      540 CAPTURE                          UPVAL U21
      541 CAPTURE                          VAL R21
      542 CAPTURE                          VAL R5
      543 CAPTURE                          VAL R24
      544 CAPTURE                          VAL R25
      545 CAPTURE                          VAL R44
      546 CAPTURE                          VAL R46
      547 CAPTURE                          VAL R36
      548 CAPTURE                          VAL R6
      549 NEWTABLE                         R59 0 4
      551 MOVE                             R60 R3
      552 JUMPIFNOT                        R24 ; [+2]
      553 LOADK                            R61 K17 ["y"]
      554 JUMP                             ; [+1]
      555 LOADK                            R61 K18 ["n"]
      556 MOVE                             R62 R1
      557 MOVE                             R63 R46
      558 SETLIST                          R59 R60 4 [1]
      560 CALL                             R57 2 1
      561 GETUPVAL                         R58 10
      562 CALL                             R58 0 1
      563 JUMPIF                           R58 ; [+215]
      564 GETUPVAL                         R59 1
      565 GETTABLEKS                       R58 R59 K19 ["createElement"]
      567 GETUPVAL                         R60 1
      568 GETTABLEKS                       R59 R60 K20 ["Fragment"]
      570 LOADNIL                          R60
      571 DUPTABLE                         R61 K27 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      572 MOVE                             R62 R9
      573 JUMPIFNOT                        R62 ; [+38]
      574 MOVE                             R62 R1
      575 JUMPIFNOT                        R62 ; [+36]
      576 GETUPVAL                         R63 1
      577 GETTABLEKS                       R62 R63 K19 ["createElement"]
      579 GETUPVAL                         R63 25
      580 DUPTABLE                         R64 K35 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation"}]
      581 SETTABLEKS                       R9 R64 K28 ["rigModel"]
      583 SETTABLEKS                       R1 R64 K29 ["rigDescriptor"]
      585 SETTABLEKS                       R20 R64 K30 ["selectedJointInstance"]
      587 JUMPIFNOTEQKS                    R3 K36 ["mapping"] ; [+3]
      589 MOVE                             R65 R42
      590 JUMP                             ; [+5]
      591 JUMPIFNOTEQKS                    R3 K37 ["tpose"] ; [+3]
      593 MOVE                             R65 R43
      594 JUMP                             ; [+1]
      595 LOADNIL                          R65
      596 SETTABLEKS                       R65 R64 K31 ["onJointClicked"]
      598 LOADB                            R65 1
      599 JUMPIFEQKS                       R3 K38 ["preview"] ; [+5]
      601 JUMPIFEQKS                       R3 K37 ["tpose"] ; [+2]
      603 LOADB                            R65 0 +1
      604 LOADB                            R65 1
      605 SETTABLEKS                       R65 R64 K32 ["applyTposeAdjustment"]
      607 SETTABLEKS                       R31 R64 K33 ["updatePositions"]
      609 SETTABLEKS                       R11 R64 K34 ["DEPRECATED_isPlayingAnimation"]
      611 CALL                             R62 2 1
      612 SETTABLEKS                       R62 R61 K21 ["Adornments"]
      614 LOADB                            R62 0
      615 LENGTH                           R63 R57
      616 LOADN                            R64 0
      617 JUMPIFNOTLT                      R64 R63 ; [+14]
      619 GETUPVAL                         R63 1
      620 GETTABLEKS                       R62 R63 K19 ["createElement"]
      622 GETUPVAL                         R64 26
      623 GETTABLEKS                       R63 R64 K22 ["Toolbar"]
      625 DUPTABLE                         R64 K41 [{"InitialPosition", "HorizontalItems"}]
      626 LOADK                            R65 K42 ["Center"]
      627 SETTABLEKS                       R65 R64 K39 ["InitialPosition"]
      629 SETTABLEKS                       R57 R64 K40 ["HorizontalItems"]
      631 CALL                             R62 2 1
      632 SETTABLEKS                       R62 R61 K22 ["Toolbar"]
      634 GETUPVAL                         R63 1
      635 GETTABLEKS                       R62 R63 K19 ["createElement"]
      637 GETUPVAL                         R63 27
      638 DUPTABLE                         R64 K46 [{"visible", "mode", "onSelect", "localization"}]
      639 JUMPIFNOTEQKS                    R3 K38 ["preview"] ; [+2]
      641 LOADB                            R65 0 +1
      642 LOADB                            R65 1
      643 SETTABLEKS                       R65 R64 K43 ["visible"]
      645 SETTABLEKS                       R3 R64 K44 ["mode"]
      647 SETTABLEKS                       R5 R64 K45 ["onSelect"]
      649 GETTABLEKS                       R65 R0 K15 ["localization"]
      651 SETTABLEKS                       R65 R64 K15 ["localization"]
      653 CALL                             R62 2 1
      654 SETTABLEKS                       R62 R61 K23 ["ModeSwitcher"]
      656 LOADB                            R62 0
      657 JUMPIFNOTEQKS                    R3 K36 ["mapping"] ; [+50]
      659 MOVE                             R62 R9
      660 JUMPIFNOT                        R62 ; [+47]
      661 MOVE                             R62 R1
      662 JUMPIFNOT                        R62 ; [+45]
      663 GETUPVAL                         R63 1
      664 GETTABLEKS                       R62 R63 K19 ["createElement"]
      666 GETUPVAL                         R63 28
      667 DUPTABLE                         R64 K59 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "onClear", "onClose", "showMannequinImage", "localization", "detectedHrd", "hasHumanoid", "onSelectHrd", "onCreateHrd"}]
      668 SETTABLEKS                       R9 R64 K47 ["model"]
      670 SETTABLEKS                       R1 R64 K29 ["rigDescriptor"]
      672 SETTABLEKS                       R20 R64 K48 ["selectedJoint"]
      674 SETTABLEKS                       R22 R64 K49 ["armedRigLabel"]
      676 SETTABLEKS                       R51 R64 K50 ["onArmJoint"]
      678 SETTABLEKS                       R41 R64 K51 ["onMapJoint"]
      680 NEWCLOSURE                       R65 P28
      681 CAPTURE                          VAL R21
      682 CAPTURE                          VAL R5
      683 SETTABLEKS                       R65 R64 K52 ["onClear"]
      685 DUPCLOSURE                       R65 K60 [PROTO_70]
      686 SETTABLEKS                       R65 R64 K53 ["onClose"]
      688 LOADB                            R65 1
      689 SETTABLEKS                       R65 R64 K54 ["showMannequinImage"]
      691 GETTABLEKS                       R65 R0 K15 ["localization"]
      693 SETTABLEKS                       R65 R64 K15 ["localization"]
      695 LOADNIL                          R65
      696 SETTABLEKS                       R65 R64 K55 ["detectedHrd"]
      698 LOADB                            R65 0
      699 SETTABLEKS                       R65 R64 K56 ["hasHumanoid"]
      701 DUPCLOSURE                       R65 K61 [PROTO_71]
      702 SETTABLEKS                       R65 R64 K57 ["onSelectHrd"]
      704 DUPCLOSURE                       R65 K62 [PROTO_72]
      705 SETTABLEKS                       R65 R64 K58 ["onCreateHrd"]
      707 CALL                             R62 2 1
      708 SETTABLEKS                       R62 R61 K24 ["Mannequin"]
      710 LOADB                            R62 0
      711 JUMPIFNOTEQKS                    R3 K38 ["preview"] ; [+50]
      713 MOVE                             R62 R9
      714 JUMPIFNOT                        R62 ; [+47]
      715 MOVE                             R62 R1
      716 JUMPIFNOT                        R62 ; [+45]
      717 GETUPVAL                         R63 1
      718 GETTABLEKS                       R62 R63 K19 ["createElement"]
      720 GETUPVAL                         R63 29
      721 DUPTABLE                         R64 K68 [{"visible", "model", "localization", "autoAll", "resetAll", "onEdit", "stopPlayback", "onPlaybackStateChanged"}]
      722 LOADB                            R65 1
      723 SETTABLEKS                       R65 R64 K43 ["visible"]
      725 SETTABLEKS                       R9 R64 K47 ["model"]
      727 GETTABLEKS                       R65 R0 K15 ["localization"]
      729 SETTABLEKS                       R65 R64 K15 ["localization"]
      731 NEWCLOSURE                       R65 P32
      732 CAPTURE                          VAL R9
      733 CAPTURE                          UPVAL U30
      734 CAPTURE                          VAL R1
      735 SETTABLEKS                       R65 R64 K63 ["autoAll"]
      737 NEWCLOSURE                       R65 P33
      738 CAPTURE                          VAL R9
      739 CAPTURE                          UPVAL U30
      740 CAPTURE                          VAL R1
      741 SETTABLEKS                       R65 R64 K64 ["resetAll"]
      743 NEWCLOSURE                       R65 P34
      744 CAPTURE                          VAL R36
      745 CAPTURE                          VAL R12
      746 CAPTURE                          VAL R5
      747 SETTABLEKS                       R65 R64 K65 ["onEdit"]
      749 NEWCLOSURE                       R65 P35
      750 CAPTURE                          VAL R36
      751 SETTABLEKS                       R65 R64 K66 ["stopPlayback"]
      753 NEWCLOSURE                       R65 P36
      754 CAPTURE                          VAL R12
      755 CAPTURE                          UPVAL U3
      756 CAPTURE                          VAL R1
      757 CAPTURE                          VAL R9
      758 CAPTURE                          VAL R10
      759 SETTABLEKS                       R65 R64 K67 ["onPlaybackStateChanged"]
      761 CALL                             R62 2 1
      762 SETTABLEKS                       R62 R61 K25 ["PreviewToolbar"]
      764 LOADB                            R62 0
      765 JUMPIFNOTEQKS                    R3 K37 ["tpose"] ; [+9]
      767 MOVE                             R62 R40
      768 JUMPIFNOT                        R62 ; [+6]
      769 GETUPVAL                         R63 1
      770 GETTABLEKS                       R62 R63 K19 ["createElement"]
      772 GETUPVAL                         R63 31
      773 MOVE                             R64 R40
      774 CALL                             R62 2 1
      775 SETTABLEKS                       R62 R61 K26 ["Dragger"]
      777 CALL                             R58 3 -1
      778 RETURN                           R58 -1
      779 GETUPVAL                         R59 1
      780 GETTABLEKS                       R58 R59 K19 ["createElement"]
      782 GETUPVAL                         R60 1
      783 GETTABLEKS                       R59 R60 K20 ["Fragment"]
      785 LOADNIL                          R60
      786 DUPTABLE                         R61 K71 [{"Adornments", "Toolbar", "MannequinPortal", "PreviewPlayback", "Dragger"}]
      787 MOVE                             R62 R19
      788 JUMPIFNOT                        R62 ; [+43]
      789 MOVE                             R62 R9
      790 JUMPIFNOT                        R62 ; [+41]
      791 MOVE                             R62 R1
      792 JUMPIFNOT                        R62 ; [+39]
      793 GETUPVAL                         R63 1
      794 GETTABLEKS                       R62 R63 K19 ["createElement"]
      796 GETUPVAL                         R63 25
      797 DUPTABLE                         R64 K75 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "overrideLabels", "onHoveredJointChanged", "mannequinHoveredJointName"}]
      798 SETTABLEKS                       R9 R64 K28 ["rigModel"]
      800 SETTABLEKS                       R1 R64 K29 ["rigDescriptor"]
      802 SETTABLEKS                       R20 R64 K30 ["selectedJointInstance"]
      804 JUMPIFNOTEQKS                    R3 K36 ["mapping"] ; [+3]
      806 MOVE                             R65 R42
      807 JUMP                             ; [+5]
      808 JUMPIFNOTEQKS                    R3 K37 ["tpose"] ; [+3]
      810 MOVE                             R65 R43
      811 JUMP                             ; [+1]
      812 LOADNIL                          R65
      813 SETTABLEKS                       R65 R64 K31 ["onJointClicked"]
      815 JUMPIFEQKS                       R3 K37 ["tpose"] ; [+2]
      817 LOADB                            R65 0 +1
      818 LOADB                            R65 1
      819 SETTABLEKS                       R65 R64 K32 ["applyTposeAdjustment"]
      821 SETTABLEKS                       R31 R64 K33 ["updatePositions"]
      823 SETTABLEKS                       R11 R64 K34 ["DEPRECATED_isPlayingAnimation"]
      825 SETTABLEKS                       R7 R64 K72 ["overrideLabels"]
      827 SETTABLEKS                       R27 R64 K73 ["onHoveredJointChanged"]
      829 SETTABLEKS                       R28 R64 K74 ["mannequinHoveredJointName"]
      831 CALL                             R62 2 1
      832 SETTABLEKS                       R62 R61 K21 ["Adornments"]
      834 MOVE                             R62 R19
      835 JUMPIFNOT                        R62 ; [+27]
      836 MOVE                             R62 R9
      837 JUMPIFNOT                        R62 ; [+25]
      838 MOVE                             R62 R1
      839 JUMPIFNOT                        R62 ; [+23]
      840 LOADB                            R62 0
      841 LENGTH                           R63 R57
      842 LOADN                            R64 0
      843 JUMPIFNOTLT                      R64 R63 ; [+19]
      845 GETUPVAL                         R63 1
      846 GETTABLEKS                       R62 R63 K19 ["createElement"]
      848 GETUPVAL                         R64 26
      849 GETTABLEKS                       R63 R64 K22 ["Toolbar"]
      851 DUPTABLE                         R64 K77 [{"InitialPosition", "HorizontalItems", "DisplayOrder"}]
      852 LOADK                            R65 K42 ["Center"]
      853 SETTABLEKS                       R65 R64 K39 ["InitialPosition"]
      855 SETTABLEKS                       R57 R64 K40 ["HorizontalItems"]
      857 GETUPVAL                         R66 18
      858 GETTABLEKS                       R65 R66 K78 ["DISPLAY_ORDER_TOOLBAR"]
      860 SETTABLEKS                       R65 R64 K76 ["DisplayOrder"]
      862 CALL                             R62 2 1
      863 SETTABLEKS                       R62 R61 K22 ["Toolbar"]
      865 GETUPVAL                         R63 1
      866 GETTABLEKS                       R62 R63 K19 ["createElement"]
      868 GETUPVAL                         R63 32
      869 DUPTABLE                         R64 K81 [{"mannequin", "handMannequin"}]
      870 MOVE                             R65 R19
      871 JUMPIFNOT                        R65 ; [+66]
      872 NOT                              R65 R6
      873 JUMPIFNOT                        R65 ; [+64]
      874 GETUPVAL                         R66 1
      875 GETTABLEKS                       R65 R66 K19 ["createElement"]
      877 GETUPVAL                         R66 28
      878 DUPTABLE                         R67 K86 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "showMannequinImage", "localization", "detectedHrd", "hasHumanoid", "onSelectHrd", "onCreateHrd", "onArmJoint", "onMapJoint", "onClear", "onClose", "onNavigateToHand"}]
      879 SETTABLEKS                       R9 R67 K47 ["model"]
      881 SETTABLEKS                       R1 R67 K29 ["rigDescriptor"]
      883 SETTABLEKS                       R20 R67 K48 ["selectedJoint"]
      885 SETTABLEKS                       R22 R67 K49 ["armedRigLabel"]
      887 SETTABLEKS                       R26 R67 K82 ["counterpartHoveredJointName"]
      889 SETTABLEKS                       R29 R67 K83 ["onDotHoverEnter"]
      891 SETTABLEKS                       R30 R67 K84 ["onDotHoverLeave"]
      893 JUMPIFEQKS                       R3 K36 ["mapping"] ; [+2]
      895 LOADB                            R68 0 +1
      896 LOADB                            R68 1
      897 SETTABLEKS                       R68 R67 K54 ["showMannequinImage"]
      899 GETTABLEKS                       R68 R0 K15 ["localization"]
      901 SETTABLEKS                       R68 R67 K15 ["localization"]
      903 JUMPIF                           R1 ; [+2]
      904 MOVE                             R68 R14
      905 JUMP                             ; [+1]
      906 LOADNIL                          R68
      907 SETTABLEKS                       R68 R67 K55 ["detectedHrd"]
      909 JUMPIF                           R1 ; [+2]
      910 MOVE                             R68 R16
      911 JUMP                             ; [+1]
      912 LOADB                            R68 0
      913 SETTABLEKS                       R68 R67 K56 ["hasHumanoid"]
      915 SETTABLEKS                       R55 R67 K57 ["onSelectHrd"]
      917 SETTABLEKS                       R56 R67 K58 ["onCreateHrd"]
      919 SETTABLEKS                       R51 R67 K50 ["onArmJoint"]
      921 SETTABLEKS                       R41 R67 K51 ["onMapJoint"]
      923 SETTABLEKS                       R50 R67 K52 ["onClear"]
      925 NEWCLOSURE                       R68 P37
      926 CAPTURE                          VAL R18
      927 SETTABLEKS                       R68 R67 K53 ["onClose"]
      929 GETUPVAL                         R69 10
      930 CALL                             R69 0 1
      931 JUMPIFNOT                        R69 ; [+2]
      932 MOVE                             R68 R53
      933 JUMP                             ; [+1]
      934 LOADNIL                          R68
      935 SETTABLEKS                       R68 R67 K85 ["onNavigateToHand"]
      937 CALL                             R65 2 1
      938 SETTABLEKS                       R65 R64 K79 ["mannequin"]
      940 MOVE                             R65 R19
      941 JUMPIFNOT                        R65 ; [+47]
      942 MOVE                             R65 R6
      943 JUMPIFNOT                        R65 ; [+45]
      944 LOADB                            R65 0
      945 JUMPIFNOTEQKS                    R3 K36 ["mapping"] ; [+43]
      947 MOVE                             R65 R9
      948 JUMPIFNOT                        R65 ; [+40]
      949 MOVE                             R65 R1
      950 JUMPIFNOT                        R65 ; [+38]
      951 GETUPVAL                         R66 1
      952 GETTABLEKS                       R65 R66 K19 ["createElement"]
      954 GETUPVAL                         R66 33
      955 DUPTABLE                         R67 K89 [{"model", "rigDescriptor", "descriptorKind", "localization", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "onNavigateToBody", "onArmJoint", "onMapJoint", "onClear", "onClose"}]
      956 SETTABLEKS                       R9 R67 K47 ["model"]
      958 SETTABLEKS                       R1 R67 K29 ["rigDescriptor"]
      960 SETTABLEKS                       R2 R67 K87 ["descriptorKind"]
      962 GETTABLEKS                       R68 R0 K15 ["localization"]
      964 SETTABLEKS                       R68 R67 K15 ["localization"]
      966 SETTABLEKS                       R20 R67 K48 ["selectedJoint"]
      968 SETTABLEKS                       R22 R67 K49 ["armedRigLabel"]
      970 SETTABLEKS                       R26 R67 K82 ["counterpartHoveredJointName"]
      972 SETTABLEKS                       R29 R67 K83 ["onDotHoverEnter"]
      974 SETTABLEKS                       R30 R67 K84 ["onDotHoverLeave"]
      976 SETTABLEKS                       R54 R67 K88 ["onNavigateToBody"]
      978 SETTABLEKS                       R52 R67 K50 ["onArmJoint"]
      980 SETTABLEKS                       R41 R67 K51 ["onMapJoint"]
      982 SETTABLEKS                       R50 R67 K52 ["onClear"]
      984 NEWCLOSURE                       R68 P38
      985 CAPTURE                          VAL R18
      986 SETTABLEKS                       R68 R67 K53 ["onClose"]
      988 CALL                             R65 2 1
      989 SETTABLEKS                       R65 R64 K80 ["handMannequin"]
      991 CALL                             R62 2 1
      992 SETTABLEKS                       R62 R61 K69 ["MannequinPortal"]
      994 MOVE                             R62 R19
      995 JUMPIFNOT                        R62 ; [+16]
      996 MOVE                             R62 R9
      997 JUMPIFNOT                        R62 ; [+14]
      998 MOVE                             R62 R48
      999 JUMPIFNOT                        R62 ; [+12]
     1000 GETUPVAL                         R63 1
     1001 GETTABLEKS                       R62 R63 K19 ["createElement"]
     1003 GETUPVAL                         R63 34
     1004 DUPTABLE                         R64 K92 [{"model", "animationId", "isPlaying"}]
     1005 SETTABLEKS                       R9 R64 K47 ["model"]
     1007 SETTABLEKS                       R47 R64 K90 ["animationId"]
     1009 SETTABLEKS                       R48 R64 K91 ["isPlaying"]
     1011 CALL                             R62 2 1
     1012 SETTABLEKS                       R62 R61 K70 ["PreviewPlayback"]
     1014 MOVE                             R62 R19
     1015 JUMPIFNOT                        R62 ; [+11]
     1016 LOADB                            R62 0
     1017 JUMPIFNOTEQKS                    R3 K37 ["tpose"] ; [+9]
     1019 MOVE                             R62 R40
     1020 JUMPIFNOT                        R62 ; [+6]
     1021 GETUPVAL                         R63 1
     1022 GETTABLEKS                       R62 R63 K19 ["createElement"]
     1024 GETUPVAL                         R63 31
     1025 MOVE                             R64 R40
     1026 CALL                             R62 2 1
     1027 SETTABLEKS                       R62 R61 K26 ["Dragger"]
     1029 CALL                             R58 3 -1
     1030 RETURN                           R58 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["SymmetryUtils"]
       23 GETTABLEKS                       R4 R2 K10 ["TransformUtils"]
       25 GETIMPORT                        R6 K5 [require]
       27 GETTABLEKS                       R10 R0 K11 ["Src"]
       29 GETTABLEKS                       R9 R10 K12 ["Components"]
       31 GETTABLEKS                       R8 R9 K13 ["Adornments"]
       33 GETTABLEKS                       R7 R8 K14 ["JointAdornments"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R5 R6 K14 ["JointAdornments"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R10 R0 K11 ["Src"]
       42 GETTABLEKS                       R9 R10 K12 ["Components"]
       44 GETTABLEKS                       R8 R9 K15 ["PreviewToolbar"]
       46 GETTABLEKS                       R7 R8 K16 ["PreviewPlayback"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R11 R0 K11 ["Src"]
       53 GETTABLEKS                       R10 R11 K12 ["Components"]
       55 GETTABLEKS                       R9 R10 K15 ["PreviewToolbar"]
       57 GETTABLEKS                       R8 R9 K17 ["usePreviewPlaybackItems"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K11 ["Src"]
       64 GETTABLEKS                       R10 R11 K12 ["Components"]
       66 GETTABLEKS                       R9 R10 K15 ["PreviewToolbar"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R11 K18 ["PreviewActions"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K11 ["Src"]
       80 GETTABLEKS                       R12 R13 K12 ["Components"]
       82 GETTABLEKS                       R11 R12 K19 ["ModeSwitcher"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R13 R0 K6 ["Packages"]
       89 GETTABLEKS                       R12 R13 K20 ["ViewportToolingFramework"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K11 ["Src"]
       96 GETTABLEKS                       R14 R15 K12 ["Components"]
       98 GETTABLEKS                       R13 R14 K21 ["MannequinSelector"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K11 ["Src"]
      105 GETTABLEKS                       R15 R16 K12 ["Components"]
      107 GETTABLEKS                       R14 R15 K22 ["HandMannequinSelector"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K11 ["Src"]
      114 GETTABLEKS                       R16 R17 K23 ["Utils"]
      116 GETTABLEKS                       R15 R16 K24 ["UndoUtils"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K11 ["Src"]
      123 GETTABLEKS                       R16 R17 K25 ["TposeActions"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R20 R0 K11 ["Src"]
      130 GETTABLEKS                       R19 R20 K12 ["Components"]
      132 GETTABLEKS                       R18 R19 K26 ["Hooks"]
      134 GETTABLEKS                       R17 R18 K27 ["useHRDDraggerProps"]
      136 CALL                             R16 1 1
      137 GETTABLEKS                       R18 R0 K6 ["Packages"]
      139 GETTABLEKS                       R17 R18 K28 ["DraggerFramework"]
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R20 R17 K29 ["DraggerTools"]
      145 GETTABLEKS                       R19 R20 K30 ["DraggerToolComponent"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R21 R0 K11 ["Src"]
      152 GETTABLEKS                       R20 R21 K31 ["Types"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R23 R0 K11 ["Src"]
      159 GETTABLEKS                       R22 R23 K32 ["Resources"]
      161 GETTABLEKS                       R21 R22 K33 ["Constants"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K35 [game]
      166 LOADK                            R23 K36 ["CoreGui"]
      167 NAMECALL                         R21 R21 K37 ["GetService"]
      169 CALL                             R21 2 1
      170 GETIMPORT                        R22 K5 [require]
      172 GETTABLEKS                       R24 R0 K6 ["Packages"]
      174 GETTABLEKS                       R23 R24 K38 ["ReactRoblox"]
      176 CALL                             R22 1 1
      177 GETIMPORT                        R23 K5 [require]
      179 GETTABLEKS                       R25 R0 K6 ["Packages"]
      181 GETTABLEKS                       R24 R25 K39 ["StudioFoundation"]
      183 CALL                             R23 1 1
      184 GETIMPORT                        R24 K5 [require]
      186 GETTABLEKS                       R28 R0 K11 ["Src"]
      188 GETTABLEKS                       R27 R28 K12 ["Components"]
      190 GETTABLEKS                       R26 R27 K26 ["Hooks"]
      192 GETTABLEKS                       R25 R26 K40 ["useSelectedRigDescriptor"]
      194 CALL                             R24 1 1
      195 GETIMPORT                        R25 K5 [require]
      197 GETTABLEKS                       R29 R0 K11 ["Src"]
      199 GETTABLEKS                       R28 R29 K12 ["Components"]
      201 GETTABLEKS                       R27 R28 K26 ["Hooks"]
      203 GETTABLEKS                       R26 R27 K41 ["useClearPrevDescriptorTransforms"]
      205 CALL                             R25 1 1
      206 GETIMPORT                        R26 K5 [require]
      208 GETTABLEKS                       R30 R0 K11 ["Src"]
      210 GETTABLEKS                       R29 R30 K12 ["Components"]
      212 GETTABLEKS                       R28 R29 K26 ["Hooks"]
      214 GETTABLEKS                       R27 R28 K42 ["usePreviewAutoInitializeRig"]
      216 CALL                             R26 1 1
      217 GETIMPORT                        R27 K5 [require]
      219 GETTABLEKS                       R31 R0 K11 ["Src"]
      221 GETTABLEKS                       R30 R31 K12 ["Components"]
      223 GETTABLEKS                       R29 R30 K26 ["Hooks"]
      225 GETTABLEKS                       R28 R29 K43 ["useEnsureAnimator"]
      227 CALL                             R27 1 1
      228 GETIMPORT                        R28 K5 [require]
      230 GETTABLEKS                       R32 R0 K11 ["Src"]
      232 GETTABLEKS                       R31 R32 K12 ["Components"]
      234 GETTABLEKS                       R30 R31 K26 ["Hooks"]
      236 GETTABLEKS                       R29 R30 K44 ["usePluginLifecycleOnRigDescriptor"]
      238 CALL                             R28 1 1
      239 GETIMPORT                        R29 K5 [require]
      241 GETTABLEKS                       R33 R0 K11 ["Src"]
      243 GETTABLEKS                       R32 R33 K12 ["Components"]
      245 GETTABLEKS                       R31 R32 K26 ["Hooks"]
      247 GETTABLEKS                       R30 R31 K45 ["useRigModel"]
      249 CALL                             R29 1 1
      250 GETIMPORT                        R30 K5 [require]
      252 GETTABLEKS                       R34 R0 K11 ["Src"]
      254 GETTABLEKS                       R33 R34 K12 ["Components"]
      256 GETTABLEKS                       R32 R33 K26 ["Hooks"]
      258 GETTABLEKS                       R31 R32 K46 ["useFocusCamera"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K5 [require]
      263 GETTABLEKS                       R35 R0 K11 ["Src"]
      265 GETTABLEKS                       R34 R35 K12 ["Components"]
      267 GETTABLEKS                       R33 R34 K26 ["Hooks"]
      269 GETTABLEKS                       R32 R33 K47 ["useSelectionContext"]
      271 CALL                             R31 1 1
      272 GETIMPORT                        R32 K5 [require]
      274 GETTABLEKS                       R35 R0 K11 ["Src"]
      276 GETTABLEKS                       R34 R35 K48 ["Flags"]
      278 GETTABLEKS                       R33 R34 K49 ["getFFlagAdaptiveAnimatonImprovements"]
      280 CALL                             R32 1 1
      281 GETIMPORT                        R33 K5 [require]
      283 GETTABLEKS                       R36 R0 K11 ["Src"]
      285 GETTABLEKS                       R35 R36 K48 ["Flags"]
      287 GETTABLEKS                       R34 R35 K50 ["getFFlagAdaptiveAnimationConstraints"]
      289 CALL                             R33 1 1
      290 GETIMPORT                        R34 K5 [require]
      292 GETTABLEKS                       R37 R0 K11 ["Src"]
      294 GETTABLEKS                       R36 R37 K48 ["Flags"]
      296 GETTABLEKS                       R35 R36 K51 ["getFFlagAdaptiveAnimationHandRig"]
      298 CALL                             R34 1 1
      299 GETIMPORT                        R35 K5 [require]
      301 GETTABLEKS                       R38 R0 K11 ["Src"]
      303 GETTABLEKS                       R37 R38 K23 ["Utils"]
      305 GETTABLEKS                       R36 R37 K52 ["DigitsRigUtils"]
      307 CALL                             R35 1 1
      308 GETIMPORT                        R36 K5 [require]
      310 GETTABLEKS                       R38 R0 K11 ["Src"]
      312 GETTABLEKS                       R37 R38 K53 ["PluginMode"]
      314 CALL                             R36 1 1
      315 DUPCLOSURE                       R37 K54 [PROTO_0]
      316 CAPTURE                          VAL R3
      317 DUPCLOSURE                       R38 K55 [PROTO_1]
      318 DUPCLOSURE                       R39 K56 [PROTO_2]
      319 DUPCLOSURE                       R40 K57 [PROTO_3]
      320 DUPCLOSURE                       R41 K58 [PROTO_4]
      321 CAPTURE                          VAL R2
      322 DUPCLOSURE                       R42 K59 [PROTO_5]
      323 DUPCLOSURE                       R43 K60 [PROTO_6]
      324 CAPTURE                          VAL R42
      325 CAPTURE                          VAL R2
      326 DUPCLOSURE                       R44 K61 [PROTO_7]
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R22
      329 CAPTURE                          VAL R20
      330 CAPTURE                          VAL R23
      331 CAPTURE                          VAL R21
      332 DUPCLOSURE                       R45 K62 [PROTO_80]
      333 CAPTURE                          VAL R24
      334 CAPTURE                          VAL R1
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R29
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R26
      341 CAPTURE                          VAL R28
      342 CAPTURE                          VAL R31
      343 CAPTURE                          VAL R34
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R39
      346 CAPTURE                          VAL R3
      347 CAPTURE                          VAL R35
      348 CAPTURE                          VAL R33
      349 CAPTURE                          VAL R16
      350 CAPTURE                          VAL R32
      351 CAPTURE                          VAL R20
      352 CAPTURE                          VAL R40
      353 CAPTURE                          VAL R41
      354 CAPTURE                          VAL R14
      355 CAPTURE                          VAL R15
      356 CAPTURE                          VAL R7
      357 CAPTURE                          VAL R43
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R11
      360 CAPTURE                          VAL R10
      361 CAPTURE                          VAL R12
      362 CAPTURE                          VAL R8
      363 CAPTURE                          VAL R9
      364 CAPTURE                          VAL R18
      365 CAPTURE                          VAL R44
      366 CAPTURE                          VAL R13
      367 CAPTURE                          VAL R6
      368 DUPTABLE                         R46 K65 [{"AdaptiveAnimationRoot", "_test"}]
      369 SETTABLEKS                       R45 R46 K63 ["AdaptiveAnimationRoot"]
      371 DUPTABLE                         R47 K72 [{"findLabelForJoint", "computeDeprecatedCounterpartName", "clearConflictingMappings", "clearJointFromOtherDescriptors", "findExistingHandDescription", "ensureHandDescription"}]
      372 SETTABLEKS                       R38 R47 K66 ["findLabelForJoint"]
      374 SETTABLEKS                       R39 R47 K67 ["computeDeprecatedCounterpartName"]
      376 SETTABLEKS                       R40 R47 K68 ["clearConflictingMappings"]
      378 SETTABLEKS                       R41 R47 K69 ["clearJointFromOtherDescriptors"]
      380 SETTABLEKS                       R42 R47 K70 ["findExistingHandDescription"]
      382 SETTABLEKS                       R43 R47 K71 ["ensureHandDescription"]
      384 SETTABLEKS                       R47 R46 K64 ["_test"]
      386 RETURN                           R46 1
