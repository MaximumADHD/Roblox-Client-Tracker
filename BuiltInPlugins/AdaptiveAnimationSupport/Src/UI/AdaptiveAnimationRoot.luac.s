PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mirrorTransformMotor6D"]
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
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K8 ["handRigLabels"]
       78 JUMP                             ; [+3]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K9 ["bodyRigLabels"]
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
        0 LOADK                            R3 K0 ["HumanoidRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["DigitsRigDescription"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+9]
       11 GETTABLEKS                       R1 R0 K3 ["Parent"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 LOADK                            R4 K0 ["HumanoidRigDescription"]
       15 NAMECALL                         R2 R1 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R1 1
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 DUPCLOSURE                       R2 K0 [PROTO_6]
        9 LOADK                            R6 K1 ["HumanoidRigDescription"]
       10 NAMECALL                         R4 R0 K2 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 MOVE                             R3 R0
       15 JUMP                             ; [+16]
       16 LOADK                            R6 K3 ["DigitsRigDescription"]
       17 NAMECALL                         R4 R0 K2 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+10]
       21 GETTABLEKS                       R4 R0 K4 ["Parent"]
       23 JUMPIFNOT                        R4 ; [+7]
       24 LOADK                            R7 K1 ["HumanoidRigDescription"]
       25 NAMECALL                         R5 R4 K2 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R5 ; [+2]
       29 MOVE                             R3 R4
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 LOADK                            R7 K1 ["HumanoidRigDescription"]
       33 NAMECALL                         R5 R1 K2 ["IsA"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R4 R1
       38 JUMP                             ; [+16]
       39 LOADK                            R7 K3 ["DigitsRigDescription"]
       40 NAMECALL                         R5 R1 K2 ["IsA"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+10]
       44 GETTABLEKS                       R5 R1 K4 ["Parent"]
       46 JUMPIFNOT                        R5 ; [+7]
       47 LOADK                            R8 K1 ["HumanoidRigDescription"]
       48 NAMECALL                         R6 R5 K2 ["IsA"]
       50 CALL                             R6 2 1
       51 JUMPIFNOT                        R6 ; [+2]
       52 MOVE                             R4 R5
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 LOADB                            R5 0
       56 JUMPIFEQKNIL                     R3 ; [+5]
       58 JUMPIFEQ                         R3 R4 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 RETURN                           R5 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R4 K0 ["HumanoidRigDescription"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NAMECALL                         R2 R0 K2 ["GetChildren"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["DigitsRigDescription"]
       13 NAMECALL                         R7 R6 K1 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+15]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K4 ["handRigLabels"]
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 MOVE                             R14 R11
       24 NAMECALL                         R12 R6 K5 ["GetJoint"]
       26 CALL                             R12 2 1
       27 JUMPIFNOTEQ                      R12 R1 ; [+2]
       29 RETURN                           R6 1
       30 FORGLOOP                         R7 2 ; [-8]
       32 FORGLOOP                         R2 2 ; [-21]
       34 LOADNIL                          R2
       35 RETURN                           R2 1

PROTO_9:
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
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETIMPORT                        R5 K8 [Enum.DigitsRigDescriptionSide.Left]
       17 JUMPIFNOTEQ                      R1 R5 ; [+3]
       19 LOADK                            R4 K9 ["LeftHandDescription"]
       20 JUMP                             ; [+1]
       21 LOADK                            R4 K10 ["RightHandDescription"]
       22 SETTABLEKS                       R4 R3 K11 ["Name"]
       24 SETTABLEKS                       R0 R3 K12 ["Parent"]
       26 GETIMPORT                        R5 K8 [Enum.DigitsRigDescriptionSide.Left]
       28 JUMPIFNOTEQ                      R1 R5 ; [+4]
       30 GETIMPORT                        R4 K15 [Enum.RigLabel.LeftWrist]
       32 JUMP                             ; [+2]
       33 GETIMPORT                        R4 K17 [Enum.RigLabel.RightWrist]
       35 MOVE                             R7 R4
       36 NAMECALL                         R5 R0 K18 ["GetJoint"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+12]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K19 ["HandAutomapper"]
       43 GETTABLEKS                       R6 R6 K20 ["setupHand"]
       45 MOVE                             R7 R3
       46 MOVE                             R8 R5
       47 MOVE                             R9 R1
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K21 ["handRigLabels"]
       51 CALL                             R6 4 0
       52 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["createPortal"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["createElement"]
       11 LOADK                            R5 K3 ["ScreenGui"]
       12 DUPTABLE                         R6 K8 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K4 ["Archivable"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K9 ["DISPLAY_ORDER_MANNEQUIN"]
       19 SETTABLEKS                       R7 R6 K5 ["DisplayOrder"]
       21 GETIMPORT                        R7 K12 [Enum.ZIndexBehavior.Sibling]
       23 SETTABLEKS                       R7 R6 K6 ["ZIndexBehavior"]
       25 SETTABLEKS                       R2 R6 K7 ["ref"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K13 ["Components"]
       33 GETTABLEKS                       R8 R8 K14 ["FoundationProviderAdapter"]
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["get"]
       12 CALL                             R2 0 -1
       13 CALL                             R1 -1 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pluginLoaderContext"]
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETTABLEKS                       R1 R0 K1 ["mainButton"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K1 ["mainButton"]
       14 GETUPVAL                         R3 2
       15 NAMECALL                         R1 R1 K2 ["SetActive"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        2 LOADK                            R3 K5 ["Standalone"]
        3 SETTABLEKS                       R3 R2 K0 ["DataModel"]
        5 LOADK                            R3 K6 ["AdaptiveAnimationSupport"]
        6 SETTABLEKS                       R3 R2 K1 ["PluginId"]
        8 LOADK                            R3 K7 ["Actions"]
        9 SETTABLEKS                       R3 R2 K2 ["Category"]
       11 LOADK                            R3 K8 ["Toggle"]
       12 SETTABLEKS                       R3 R2 K3 ["ItemId"]
       14 NAMECALL                         R0 R0 K9 ["ActivateAsync"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+28]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIF                           R0 ; [+23]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
       14 JUMPIFNOT                        R0 ; [+16]
       15 GETTABLEKS                       R1 R0 K2 ["actionTriggeredSignals"]
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K3 ["Plugin"]
       21 LOADK                            R3 K4 ["Actions"]
       22 NAMECALL                         R1 R1 K5 ["GetPluginComponent"]
       24 CALL                             R1 2 1
       25 GETIMPORT                        R2 K8 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 4
       32 LOADB                            R2 1
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_18:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+16]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIF                           R0 ; [+12]
       11 GETUPVAL                         R0 3
       12 NEWTABLE                         R2 0 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["current"]
       17 SETLIST                          R2 R3 1 [1]
       19 NAMECALL                         R0 R0 K1 ["Set"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 4
       24 DUPCLOSURE                       R1 K2 [PROTO_18]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["pluginLoaderContext"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K1 ["actionTriggeredSignals"]
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETTABLEKS                       R3 R0 K1 ["actionTriggeredSignals"]
       17 GETTABLEN                        R2 R3 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETTABLEKS                       R2 R0 K1 ["actionTriggeredSignals"]
       21 GETTABLEN                        R1 R2 1
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R1 R0 K2 ["mainButtonClickedSignal"]
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 NAMECALL                         R2 R1 K3 ["Connect"]
       35 CALL                             R2 2 1
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          VAL R2
       38 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["clearTransforms"]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R0 3
       13 LOADN                            R2 0
       14 NAMECALL                         R0 R0 K1 ["StepAnimations"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        2 LOADK                            R3 K5 ["Standalone"]
        3 SETTABLEKS                       R3 R2 K0 ["DataModel"]
        5 LOADK                            R3 K6 ["AdaptiveAnimationSupport"]
        6 SETTABLEKS                       R3 R2 K1 ["PluginId"]
        8 LOADK                            R3 K7 ["Actions"]
        9 SETTABLEKS                       R3 R2 K2 ["Category"]
       11 LOADK                            R3 K8 ["Toggle"]
       12 SETTABLEKS                       R3 R2 K3 ["ItemId"]
       14 NAMECALL                         R0 R0 K9 ["ActivateAsync"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["tpose"] ; [+6]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K1 ["mapping"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+11]
       10 GETUPVAL                         R0 4
       11 NEWTABLE                         R2 0 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K2 ["Parent"]
       16 SETLIST                          R2 R3 1 [1]
       18 NAMECALL                         R0 R0 K3 ["Set"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 5
       22 CALL                             R0 0 1
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETUPVAL                         R0 6
       25 GETTABLEKS                       R0 R0 K4 ["Plugin"]
       27 NAMECALL                         R0 R0 K5 ["Deactivate"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 6
       31 GETTABLEKS                       R0 R0 K6 ["pluginLoaderContext"]
       33 JUMPIFNOT                        R0 ; [+16]
       34 GETTABLEKS                       R1 R0 K7 ["actionTriggeredSignals"]
       36 JUMPIFNOT                        R1 ; [+13]
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K4 ["Plugin"]
       40 LOADK                            R3 K8 ["Actions"]
       41 NAMECALL                         R1 R1 K9 ["GetPluginComponent"]
       43 CALL                             R1 2 1
       44 GETIMPORT                        R2 K12 [task.spawn]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R1
       48 CALL                             R2 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 7
       51 LOADB                            R2 0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 ADDK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["RunService"]
        6 NAMECALL                         R0 R0 K3 ["GetService"]
        8 CALL                             R0 2 1
        9 GETTABLEKS                       R0 R0 K4 ["Heartbeat"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K5 ["Connect"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getJointPosition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 LOADK                            R2 K1 [{0.5, 0.5, 0.5}]
        6 SUB                              R1 R0 R2
        7 LOADK                            R3 K1 [{0.5, 0.5, 0.5}]
        8 ADD                              R2 R0 R3
        9 RETURN                           R1 2

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+2]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 LOADN                            R2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R0 R0 K0 ["AddFocusCallback"]
       16 CALL                             R0 3 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 1
        2 SETTABLEKS                       R5 R4 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R4 R2
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["getJointTransform"]
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
       62 GETUPVAL                         R9 6
       63 GETTABLEKS                       R9 R9 K8 ["mirrorTransformMotor6D"]
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

PROTO_33:
        0 GETUPVAL                         R5 0
        1 LOADB                            R6 1
        2 SETTABLEKS                       R6 R5 K0 ["current"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["current"]
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
       61 JUMPIFNOT                        R6 ; [+25]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K9 ["axisAngleFromRotation"]
       65 MOVE                             R9 R1
       66 CALL                             R8 1 2
       67 MOVE                             R12 R8
       68 NAMECALL                         R10 R2 K10 ["VectorToObjectSpace"]
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K13 [CFrame.fromAxisAngle]
       73 GETUPVAL                         R13 4
       74 CALL                             R13 0 1
       75 JUMPIFNOT                        R13 ; [+2]
       76 MOVE                             R12 R10
       77 JUMP                             ; [+1]
       78 MINUS                            R12 R10
       79 MOVE                             R13 R9
       80 CALL                             R11 2 1
       81 MUL                              R12 R2 R11
       82 NAMECALL                         R13 R2 K14 ["Inverse"]
       84 CALL                             R13 1 1
       85 MUL                              R7 R13 R12
       86 JUMP                             ; [+5]
       87 MUL                              R8 R1 R2
       88 NAMECALL                         R9 R2 K14 ["Inverse"]
       90 CALL                             R9 1 1
       91 MUL                              R7 R9 R8
       92 LOADNIL                          R8
       93 GETUPVAL                         R9 5
       94 JUMPIFNOT                        R9 ; [+8]
       95 GETUPVAL                         R9 6
       96 GETTABLEKS                       R9 R9 K15 ["getRigLabelForJoint"]
       98 GETUPVAL                         R10 7
       99 MOVE                             R11 R0
      100 CALL                             R9 2 1
      101 MOVE                             R8 R9
      102 JUMP                             ; [+7]
      103 GETUPVAL                         R9 8
      104 GETTABLEKS                       R9 R9 K15 ["getRigLabelForJoint"]
      106 GETUPVAL                         R10 7
      107 MOVE                             R11 R0
      108 CALL                             R9 2 1
      109 MOVE                             R8 R9
      110 JUMPIFNOT                        R8 ; [+12]
      111 MOVE                             R9 R3
      112 JUMPIF                           R9 ; [+3]
      113 GETIMPORT                        R9 K17 [CFrame.new]
      115 CALL                             R9 0 1
      116 MUL                              R10 R9 R7
      117 GETUPVAL                         R11 7
      118 MOVE                             R13 R8
      119 MOVE                             R14 R10
      120 NAMECALL                         R11 R11 K18 ["SetTposeAdjustment"]
      122 CALL                             R11 3 0
      123 GETUPVAL                         R9 9
      124 JUMPIFNOT                        R9 ; [+122]
      125 JUMPIFNOT                        R8 ; [+121]
      126 GETUPVAL                         R9 5
      127 JUMPIF                           R9 ; [+119]
      128 GETUPVAL                         R9 8
      129 GETTABLEKS                       R9 R9 K19 ["symmetryCounterparts"]
      131 JUMPIFNOT                        R9 ; [+4]
      132 GETUPVAL                         R10 8
      133 GETTABLEKS                       R10 R10 K19 ["symmetryCounterparts"]
      135 GETTABLE                         R9 R10 R8
      136 JUMPIFNOT                        R9 ; [+236]
      137 GETUPVAL                         R10 10
      138 MOVE                             R11 R7
      139 CALL                             R10 1 1
      140 JUMPIF                           R10 ; [+232]
      141 GETUPVAL                         R10 2
      142 GETTABLEKS                       R10 R10 K0 ["current"]
      144 GETTABLE                         R11 R10 R9
      145 JUMPIF                           R11 ; [+11]
      146 GETUPVAL                         R12 7
      147 MOVE                             R14 R9
      148 NAMECALL                         R12 R12 K20 ["GetTposeAdjustment"]
      150 CALL                             R12 2 1
      151 JUMPIF                           R12 ; [+3]
      152 GETIMPORT                        R12 K17 [CFrame.new]
      154 CALL                             R12 0 1
      155 MOVE                             R11 R12
      156 SETTABLE                         R11 R10 R9
      157 LOADNIL                          R12
      158 LOADK                            R15 K21 ["Motor6D"]
      159 NAMECALL                         R13 R0 K22 ["IsA"]
      161 CALL                             R13 2 1
      162 JUMPIFNOT                        R13 ; [+7]
      163 GETUPVAL                         R13 11
      164 GETTABLEKS                       R13 R13 K23 ["mirrorTransformMotor6DDelta"]
      166 MOVE                             R14 R7
      167 CALL                             R13 1 1
      168 MOVE                             R12 R13
      169 JUMP                             ; [+69]
      170 LOADK                            R15 K24 ["Bone"]
      171 NAMECALL                         R13 R0 K22 ["IsA"]
      173 CALL                             R13 2 1
      174 JUMPIFNOT                        R13 ; [+45]
      175 GETUPVAL                         R13 12
      176 CALL                             R13 0 1
      177 JUMPIFNOT                        R13 ; [+42]
      178 GETUPVAL                         R13 7
      179 MOVE                             R15 R9
      180 NAMECALL                         R13 R13 K25 ["GetJoint"]
      182 CALL                             R13 2 1
      183 JUMPIFNOT                        R13 ; [+34]
      184 LOADK                            R16 K24 ["Bone"]
      185 NAMECALL                         R14 R13 K22 ["IsA"]
      187 CALL                             R14 2 1
      188 JUMPIFNOT                        R14 ; [+29]
      189 GETIMPORT                        R14 K27 [CFrame.fromMatrix]
      191 LOADK                            R15 K28 [{0, 0, 0}]
      192 LOADK                            R16 K29 [{-1, 0, 0}]
      193 LOADK                            R17 K30 [{0, 1, 0}]
      194 LOADK                            R18 K31 [{0, 0, 1}]
      195 CALL                             R14 4 1
      196 GETTABLEKS                       R15 R2 K32 ["Rotation"]
      198 GETTABLEKS                       R16 R13 K33 ["WorldCFrame"]
      200 GETTABLEKS                       R16 R16 K32 ["Rotation"]
      202 GETTABLEKS                       R18 R11 K32 ["Rotation"]
      204 MUL                              R17 R16 R18
      205 NAMECALL                         R23 R17 K14 ["Inverse"]
      207 CALL                             R23 1 1
      208 MUL                              R22 R23 R14
      209 MUL                              R21 R22 R15
      210 MUL                              R20 R21 R7
      211 NAMECALL                         R21 R15 K14 ["Inverse"]
      213 CALL                             R21 1 1
      214 MUL                              R19 R20 R21
      215 MUL                              R18 R19 R14
      216 MUL                              R12 R18 R17
      217 JUMP                             ; [+21]
      218 MOVE                             R12 R7
      219 JUMP                             ; [+19]
      220 GETUPVAL                         R13 13
      221 CALL                             R13 0 1
      222 JUMPIFNOT                        R13 ; [+7]
      223 GETUPVAL                         R13 11
      224 GETTABLEKS                       R13 R13 K34 ["mirrorTransformAnimationConstraint"]
      226 MOVE                             R14 R7
      227 CALL                             R13 1 1
      228 MOVE                             R12 R13
      229 JUMP                             ; [+9]
      230 GETIMPORT                        R13 K27 [CFrame.fromMatrix]
      232 LOADK                            R14 K28 [{0, 0, 0}]
      233 LOADK                            R15 K29 [{-1, 0, 0}]
      234 LOADK                            R16 K30 [{0, 1, 0}]
      235 LOADK                            R17 K31 [{0, 0, 1}]
      236 CALL                             R13 4 1
      237 MUL                              R14 R13 R7
      238 MUL                              R12 R14 R13
      239 MUL                              R13 R11 R12
      240 GETUPVAL                         R14 7
      241 MOVE                             R16 R9
      242 MOVE                             R17 R13
      243 NAMECALL                         R14 R14 K18 ["SetTposeAdjustment"]
      245 CALL                             R14 3 0
      246 JUMP                             ; [+126]
      247 GETUPVAL                         R9 9
      248 JUMPIFNOT                        R9 ; [+124]
      249 JUMPIFNOT                        R8 ; [+123]
      250 GETUPVAL                         R9 5
      251 JUMPIFNOT                        R9 ; [+121]
      252 GETUPVAL                         R9 14
      253 CALL                             R9 0 1
      254 JUMPIFNOT                        R9 ; [+118]
      255 GETUPVAL                         R9 7
      256 GETTABLEKS                       R9 R9 K35 ["Parent"]
      258 JUMPIFNOT                        R9 ; [+114]
      259 LOADK                            R12 K36 ["HumanoidRigDescription"]
      260 NAMECALL                         R10 R9 K22 ["IsA"]
      262 CALL                             R10 2 1
      263 JUMPIFNOT                        R10 ; [+109]
      264 GETUPVAL                         R10 7
      265 GETTABLEKS                       R10 R10 K37 ["Side"]
      267 GETIMPORT                        R12 K41 [Enum.DigitsRigDescriptionSide.Left]
      269 JUMPIFNOTEQ                      R10 R12 ; [+4]
      271 GETIMPORT                        R11 K43 [Enum.DigitsRigDescriptionSide.Right]
      273 JUMP                             ; [+2]
      274 GETIMPORT                        R11 K41 [Enum.DigitsRigDescriptionSide.Left]
      276 GETUPVAL                         R12 15
      277 MOVE                             R13 R9
      278 MOVE                             R14 R11
      279 CALL                             R12 2 1
      280 JUMPIFNOT                        R12 ; [+92]
      281 GETUPVAL                         R13 10
      282 MOVE                             R14 R7
      283 CALL                             R13 1 1
      284 JUMPIF                           R13 ; [+88]
      285 GETUPVAL                         R13 2
      286 GETTABLEKS                       R13 R13 K0 ["current"]
      288 GETTABLE                         R14 R13 R12
      289 JUMPIF                           R14 ; [+10]
      290 MOVE                             R17 R8
      291 NAMECALL                         R15 R12 K20 ["GetTposeAdjustment"]
      293 CALL                             R15 2 1
      294 JUMPIF                           R15 ; [+3]
      295 GETIMPORT                        R15 K17 [CFrame.new]
      297 CALL                             R15 0 1
      298 MOVE                             R14 R15
      299 SETTABLE                         R14 R13 R12
      300 MOVE                             R17 R8
      301 NAMECALL                         R15 R12 K25 ["GetJoint"]
      303 CALL                             R15 2 1
      304 LOADNIL                          R16
      305 JUMPIFNOT                        R15 ; [+37]
      306 LOADK                            R19 K24 ["Bone"]
      307 NAMECALL                         R17 R15 K22 ["IsA"]
      309 CALL                             R17 2 1
      310 JUMPIFNOT                        R17 ; [+32]
      311 GETUPVAL                         R17 12
      312 CALL                             R17 0 1
      313 JUMPIFNOT                        R17 ; [+29]
      314 GETIMPORT                        R17 K27 [CFrame.fromMatrix]
      316 LOADK                            R18 K28 [{0, 0, 0}]
      317 LOADK                            R19 K29 [{-1, 0, 0}]
      318 LOADK                            R20 K30 [{0, 1, 0}]
      319 LOADK                            R21 K31 [{0, 0, 1}]
      320 CALL                             R17 4 1
      321 GETTABLEKS                       R18 R2 K32 ["Rotation"]
      323 GETTABLEKS                       R19 R15 K33 ["WorldCFrame"]
      325 GETTABLEKS                       R19 R19 K32 ["Rotation"]
      327 GETTABLEKS                       R21 R14 K32 ["Rotation"]
      329 MUL                              R20 R19 R21
      330 NAMECALL                         R26 R20 K14 ["Inverse"]
      332 CALL                             R26 1 1
      333 MUL                              R25 R26 R17
      334 MUL                              R24 R25 R18
      335 MUL                              R23 R24 R7
      336 NAMECALL                         R24 R18 K14 ["Inverse"]
      338 CALL                             R24 1 1
      339 MUL                              R22 R23 R24
      340 MUL                              R21 R22 R17
      341 MUL                              R16 R21 R20
      342 JUMP                             ; [+19]
      343 JUMPIFNOT                        R15 ; [+12]
      344 LOADK                            R19 K21 ["Motor6D"]
      345 NAMECALL                         R17 R15 K22 ["IsA"]
      347 CALL                             R17 2 1
      348 JUMPIFNOT                        R17 ; [+7]
      349 GETUPVAL                         R17 11
      350 GETTABLEKS                       R17 R17 K23 ["mirrorTransformMotor6DDelta"]
      352 MOVE                             R18 R7
      353 CALL                             R17 1 1
      354 MOVE                             R16 R17
      355 JUMP                             ; [+6]
      356 GETUPVAL                         R17 11
      357 GETTABLEKS                       R17 R17 K34 ["mirrorTransformAnimationConstraint"]
      359 MOVE                             R18 R7
      360 CALL                             R17 1 1
      361 MOVE                             R16 R17
      362 MUL                              R17 R14 R16
      363 MOVE                             R20 R8
      364 MOVE                             R21 R17
      365 NAMECALL                         R18 R12 K18 ["SetTposeAdjustment"]
      367 CALL                             R18 3 0
      368 GETUPVAL                         R18 6
      369 GETTABLEKS                       R18 R18 K44 ["applyTposeAdjustment"]
      371 MOVE                             R19 R12
      372 CALL                             R18 1 0
      373 GETUPVAL                         R9 0
      374 LOADB                            R10 0
      375 SETTABLEKS                       R10 R9 K0 ["current"]
      377 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K0 ["current"]
       14 LOADB                            R2 0
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+35]
       18 JUMPIFNOT                        R1 ; [+34]
       19 GETUPVAL                         R3 1
       20 JUMPIFNOT                        R3 ; [+32]
       21 GETUPVAL                         R3 4
       22 JUMPIFNOT                        R3 ; [+9]
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R3 R3 K1 ["getRigLabelForJoint"]
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R1
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+23]
       30 LOADB                            R2 1
       31 JUMP                             ; [+21]
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R5 6
       34 GETTABLEKS                       R5 R5 K2 ["bodyRigLabels"]
       36 MOVE                             R6 R5
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 MOVE                             R13 R10
       41 NAMECALL                         R11 R4 K3 ["GetJoint"]
       43 CALL                             R11 2 1
       44 JUMPIFNOTEQ                      R11 R1 ; [+3]
       46 MOVE                             R3 R10
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R6 2 ; [-9]
       50 LOADNIL                          R3
       51 JUMPIFNOT                        R3 ; [+1]
       52 LOADB                            R2 1
       53 JUMPIFNOT                        R2 ; [+4]
       54 GETUPVAL                         R3 7
       55 MOVE                             R4 R1
       56 CALL                             R3 1 0
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R3 7
       59 LOADNIL                          R4
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 8
       62 LOADNIL                          R4
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 9
       65 CALL                             R3 0 1
       66 JUMPIF                           R3 ; [+4]
       67 GETUPVAL                         R3 10
       68 LOADK                            R4 K4 ["preview"]
       69 CALL                             R3 1 0
       70 JUMP                             ; [+83]
       71 GETUPVAL                         R3 3
       72 CALL                             R3 0 1
       73 JUMPIFNOT                        R3 ; [+74]
       74 GETUPVAL                         R4 1
       75 JUMPIFNOT                        R0 ; [+1]
       76 JUMPIF                           R4 ; [+2]
       77 LOADB                            R3 0
       78 JUMP                             ; [+58]
       79 JUMPIFNOTEQ                      R0 R4 ; [+3]
       81 LOADB                            R3 1
       82 JUMP                             ; [+54]
       83 DUPCLOSURE                       R5 K5 [PROTO_6]
       84 LOADK                            R9 K6 ["HumanoidRigDescription"]
       85 NAMECALL                         R7 R0 K7 ["IsA"]
       87 CALL                             R7 2 1
       88 JUMPIFNOT                        R7 ; [+2]
       89 MOVE                             R6 R0
       90 JUMP                             ; [+16]
       91 LOADK                            R9 K8 ["DigitsRigDescription"]
       92 NAMECALL                         R7 R0 K7 ["IsA"]
       94 CALL                             R7 2 1
       95 JUMPIFNOT                        R7 ; [+10]
       96 GETTABLEKS                       R7 R0 K9 ["Parent"]
       98 JUMPIFNOT                        R7 ; [+7]
       99 LOADK                            R10 K6 ["HumanoidRigDescription"]
      100 NAMECALL                         R8 R7 K7 ["IsA"]
      102 CALL                             R8 2 1
      103 JUMPIFNOT                        R8 ; [+2]
      104 MOVE                             R6 R7
      105 JUMP                             ; [+1]
      106 LOADNIL                          R6
      107 LOADK                            R10 K6 ["HumanoidRigDescription"]
      108 NAMECALL                         R8 R4 K7 ["IsA"]
      110 CALL                             R8 2 1
      111 JUMPIFNOT                        R8 ; [+2]
      112 MOVE                             R7 R4
      113 JUMP                             ; [+16]
      114 LOADK                            R10 K8 ["DigitsRigDescription"]
      115 NAMECALL                         R8 R4 K7 ["IsA"]
      117 CALL                             R8 2 1
      118 JUMPIFNOT                        R8 ; [+10]
      119 GETTABLEKS                       R8 R4 K9 ["Parent"]
      121 JUMPIFNOT                        R8 ; [+7]
      122 LOADK                            R11 K6 ["HumanoidRigDescription"]
      123 NAMECALL                         R9 R8 K7 ["IsA"]
      125 CALL                             R9 2 1
      126 JUMPIFNOT                        R9 ; [+2]
      127 MOVE                             R7 R8
      128 JUMP                             ; [+1]
      129 LOADNIL                          R7
      130 LOADB                            R3 0
      131 JUMPIFEQKNIL                     R6 ; [+5]
      133 JUMPIFEQ                         R6 R7 ; [+2]
      135 LOADB                            R3 0 +1
      136 LOADB                            R3 1
      137 JUMPIFNOT                        R3 ; [+10]
      138 GETUPVAL                         R3 11
      139 GETTABLEKS                       R3 R3 K10 ["get"]
      141 CALL                             R3 0 1
      142 JUMPIFEQKS                       R3 K11 ["tpose"] ; [+11]
      144 GETUPVAL                         R3 10
      145 LOADK                            R4 K12 ["mapping"]
      146 CALL                             R3 1 0
      147 JUMP                             ; [+6]
      148 GETUPVAL                         R3 12
      149 CALL                             R3 0 1
      150 JUMPIFNOT                        R3 ; [+3]
      151 GETUPVAL                         R3 10
      152 LOADK                            R4 K12 ["mapping"]
      153 CALL                             R3 1 0
      154 GETUPVAL                         R3 13
      155 NEWTABLE                         R4 0 0
      157 SETTABLEKS                       R4 R3 K0 ["current"]
      159 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+46]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 5
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+17]
       24 GETUPVAL                         R2 3
       25 NAMECALL                         R2 R2 K4 ["GetChildren"]
       27 CALL                             R2 1 3
       28 FORGPREP                         R2
       29 LOADK                            R9 K5 ["DigitsRigDescription"]
       30 NAMECALL                         R7 R6 K6 ["IsA"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+5]
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R7 R7 K3 ["applyTposeAdjustment"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 FORGLOOP                         R2 2 ; [-11]
       41 GETUPVAL                         R2 7
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETUPVAL                         R2 7
       44 LOADN                            R4 0
       45 NAMECALL                         R2 R2 K7 ["StepAnimations"]
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 8
       49 GETUPVAL                         R4 9
       50 NAMECALL                         R4 R4 K9 ["getValue"]
       52 CALL                             R4 1 1
       53 ADDK                             R3 R4 K8 [1]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 3
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R1 4
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+3]
       15 GETUPVAL                         R1 5
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 6
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R2 7
       22 JUMPIFNOTEQKS                    R2 K0 ["tpose"] ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMP                             ; [+9]
       27 LOADB                            R1 0
       28 GETUPVAL                         R2 7
       29 JUMPIFEQKS                       R2 K0 ["tpose"] ; [+6]
       31 GETUPVAL                         R2 7
       32 JUMPIFNOTEQKS                    R2 K1 ["preview"] ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 JUMPIFNOT                        R1 ; [+19]
       37 GETUPVAL                         R2 8
       38 GETTABLEKS                       R2 R2 K2 ["clearTransforms"]
       40 MOVE                             R3 R0
       41 GETUPVAL                         R4 3
       42 CALL                             R2 2 0
       43 GETUPVAL                         R2 4
       44 LOADN                            R4 0
       45 NAMECALL                         R2 R2 K3 ["StepAnimations"]
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 9
       49 GETUPVAL                         R4 10
       50 NAMECALL                         R4 R4 K5 ["getValue"]
       52 CALL                             R4 1 1
       53 ADDK                             R3 R4 K4 [1]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R2 R0 K6 ["Changed"]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 NAMECALL                         R2 R2 K7 ["Connect"]
       71 CALL                             R2 2 1
       72 GETUPVAL                         R3 8
       73 GETTABLEKS                       R3 R3 K8 ["applyTposeAdjustment"]
       75 MOVE                             R4 R0
       76 GETUPVAL                         R5 3
       77 CALL                             R3 2 0
       78 GETUPVAL                         R3 4
       79 JUMPIFNOT                        R3 ; [+5]
       80 GETUPVAL                         R3 4
       81 LOADN                            R5 0
       82 NAMECALL                         R3 R3 K3 ["StepAnimations"]
       84 CALL                             R3 2 0
       85 GETUPVAL                         R3 9
       86 GETUPVAL                         R5 10
       87 NAMECALL                         R5 R5 K5 ["getValue"]
       89 CALL                             R5 1 1
       90 ADDK                             R4 R5 K4 [1]
       91 CALL                             R3 1 0
       92 NEWCLOSURE                       R3 P1
       93 CAPTURE                          VAL R2
       94 RETURN                           R3 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+25]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETUPVAL                         R2 4
       23 LOADN                            R4 0
       24 NAMECALL                         R2 R2 K4 ["StepAnimations"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R4 6
       29 NAMECALL                         R4 R4 K6 ["getValue"]
       31 CALL                             R4 1 1
       32 ADDK                             R3 R4 K5 [1]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+28]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 4
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETUPVAL                         R2 5
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R2 5
       26 LOADN                            R4 0
       27 NAMECALL                         R2 R2 K4 ["StepAnimations"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 6
       31 GETUPVAL                         R4 7
       32 NAMECALL                         R4 R4 K6 ["getValue"]
       34 CALL                             R4 1 1
       35 ADDK                             R3 R4 K5 [1]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["clearTransforms"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 4
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 5
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R0 5
       16 LOADN                            R2 0
       17 NAMECALL                         R0 R0 K2 ["StepAnimations"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R2 7
       22 NAMECALL                         R2 R2 K4 ["getValue"]
       24 CALL                             R2 1 1
       25 ADDK                             R1 R2 K3 [1]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+84]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K0 ["GetChildren"]
       13 CALL                             R1 1 3
       14 FORGPREP                         R1
       15 LOADK                            R8 K1 ["DigitsRigDescription"]
       16 NAMECALL                         R6 R5 K2 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       22 MOVE                             R7 R0
       23 MOVE                             R8 R5
       24 GETIMPORT                        R6 K5 [table.insert]
       26 CALL                             R6 2 0
       27 FORGLOOP                         R1 2 ; [-13]
       29 LENGTH                           R1 R0
       30 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 3
       34 JUMPIFEQKS                       R1 K7 ["tpose"] ; [+2]
       36 RETURN                           R0 0
       37 NEWTABLE                         R1 0 0
       39 MOVE                             R2 R0
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K8 ["applyTposeAdjustment"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 0
       48 GETTABLEKS                       R7 R6 K9 ["Changed"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 NAMECALL                         R7 R7 K10 ["Connect"]
       60 CALL                             R7 2 1
       61 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       63 MOVE                             R9 R1
       64 MOVE                             R10 R7
       65 GETIMPORT                        R8 K5 [table.insert]
       67 CALL                             R8 2 0
       68 FORGLOOP                         R2 2 ; [-26]
       70 GETUPVAL                         R2 7
       71 JUMPIFNOT                        R2 ; [+5]
       72 GETUPVAL                         R2 7
       73 LOADN                            R4 0
       74 NAMECALL                         R2 R2 K11 ["StepAnimations"]
       76 CALL                             R2 2 0
       77 GETUPVAL                         R2 8
       78 GETUPVAL                         R4 9
       79 NAMECALL                         R4 R4 K13 ["getValue"]
       81 CALL                             R4 1 1
       82 ADDK                             R3 R4 K12 [1]
       83 CALL                             R2 1 0
       84 NEWCLOSURE                       R2 P1
       85 CAPTURE                          VAL R1
       86 RETURN                           R2 1
       87 GETUPVAL                         R0 10
       88 JUMPIFNOT                        R0 ; [+2]
       89 GETUPVAL                         R0 2
       90 JUMPIF                           R0 ; [+1]
       91 RETURN                           R0 0
       92 GETUPVAL                         R0 11
       93 JUMPIF                           R0 ; [+1]
       94 RETURN                           R0 0
       95 GETUPVAL                         R0 3
       96 JUMPIFEQKS                       R0 K7 ["tpose"] ; [+25]
       98 GETUPVAL                         R0 12
       99 GETTABLEKS                       R0 R0 K14 ["clearTransforms"]
      101 GETUPVAL                         R1 10
      102 GETUPVAL                         R2 2
      103 CALL                             R0 2 0
      104 GETUPVAL                         R0 13
      105 CALL                             R0 0 1
      106 JUMPIFNOT                        R0 ; [+7]
      107 GETUPVAL                         R0 7
      108 JUMPIFNOT                        R0 ; [+5]
      109 GETUPVAL                         R0 7
      110 LOADN                            R2 0
      111 NAMECALL                         R0 R0 K11 ["StepAnimations"]
      113 CALL                             R0 2 0
      114 GETUPVAL                         R0 8
      115 GETUPVAL                         R2 9
      116 NAMECALL                         R2 R2 K13 ["getValue"]
      118 CALL                             R2 1 1
      119 ADDK                             R1 R2 K12 [1]
      120 CALL                             R0 1 0
      121 RETURN                           R0 0
      122 GETUPVAL                         R0 10
      123 GETTABLEKS                       R0 R0 K9 ["Changed"]
      125 NEWCLOSURE                       R2 P2
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          UPVAL U13
      131 CAPTURE                          UPVAL U7
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          UPVAL U9
      134 NAMECALL                         R0 R0 K10 ["Connect"]
      136 CALL                             R0 2 1
      137 GETUPVAL                         R1 4
      138 GETTABLEKS                       R1 R1 K8 ["applyTposeAdjustment"]
      140 GETUPVAL                         R2 10
      141 CALL                             R1 1 0
      142 GETUPVAL                         R1 13
      143 CALL                             R1 0 1
      144 JUMPIFNOT                        R1 ; [+7]
      145 GETUPVAL                         R1 7
      146 JUMPIFNOT                        R1 ; [+5]
      147 GETUPVAL                         R1 7
      148 LOADN                            R3 0
      149 NAMECALL                         R1 R1 K11 ["StepAnimations"]
      151 CALL                             R1 2 0
      152 GETUPVAL                         R1 8
      153 GETUPVAL                         R3 9
      154 NAMECALL                         R3 R3 K13 ["getValue"]
      156 CALL                             R3 1 1
      157 ADDK                             R2 R3 K12 [1]
      158 CALL                             R1 1 0
      159 NEWCLOSURE                       R1 P3
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U12
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          UPVAL U2
      164 CAPTURE                          UPVAL U13
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          UPVAL U8
      167 CAPTURE                          UPVAL U9
      168 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_45:
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
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K1 ["addBoneMappingWaypoint"]
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

PROTO_46:
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

PROTO_47:
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
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 3
       23 CALL                             R1 0 1
       24 JUMPIF                           R1 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 4
       27 JUMPIF                           R1 ; [+18]
       28 GETUPVAL                         R1 5
       29 GETUPVAL                         R2 0
       30 MOVE                             R3 R0
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+77]
       33 GETUPVAL                         R2 6
       34 SETTABLEKS                       R0 R2 K1 ["current"]
       36 GETUPVAL                         R2 7
       37 NEWTABLE                         R4 0 1
       39 MOVE                             R5 R1
       40 SETLIST                          R4 R5 1 [1]
       42 NAMECALL                         R2 R2 K2 ["Set"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 0
       47 JUMPIFNOT                        R1 ; [+3]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K3 ["Parent"]
       51 JUMPIFNOT                        R1 ; [+5]
       52 LOADK                            R4 K4 ["HumanoidRigDescription"]
       53 NAMECALL                         R2 R1 K5 ["IsA"]
       55 CALL                             R2 2 1
       56 JUMPIF                           R2 ; [+1]
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 8
       59 GETTABLEKS                       R3 R3 K6 ["bodyRigLabels"]
       61 MOVE                             R4 R3
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 MOVE                             R11 R8
       66 NAMECALL                         R9 R1 K0 ["GetJoint"]
       68 CALL                             R9 2 1
       69 JUMPIFNOTEQ                      R9 R0 ; [+3]
       71 MOVE                             R2 R8
       72 JUMP                             ; [+3]
       73 FORGLOOP                         R4 2 ; [-9]
       75 LOADNIL                          R2
       76 JUMPIFNOT                        R2 ; [+13]
       77 GETUPVAL                         R3 6
       78 SETTABLEKS                       R0 R3 K1 ["current"]
       80 GETUPVAL                         R3 7
       81 NEWTABLE                         R5 0 1
       83 MOVE                             R6 R1
       84 SETLIST                          R5 R6 1 [1]
       86 NAMECALL                         R3 R3 K2 ["Set"]
       88 CALL                             R3 2 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R3 5
       91 MOVE                             R4 R1
       92 MOVE                             R5 R0
       93 CALL                             R3 2 1
       94 JUMPIFNOT                        R3 ; [+15]
       95 GETUPVAL                         R4 0
       96 JUMPIFEQ                         R3 R4 ; [+13]
       98 GETUPVAL                         R4 6
       99 SETTABLEKS                       R0 R4 K1 ["current"]
      101 GETUPVAL                         R4 7
      102 NEWTABLE                         R6 0 1
      104 MOVE                             R7 R3
      105 SETLIST                          R6 R7 1 [1]
      107 NAMECALL                         R4 R4 K2 ["Set"]
      109 CALL                             R4 2 0
      110 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["copyAdjustments"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_49:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_49]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_51:
        0 JUMPIFNOT                        R0 ; [+33]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+31]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+29]
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+27]
        7 GETUPVAL                         R1 3
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETIMPORT                        R1 K2 [task.defer]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K3 ["onPlaybackStopped"]
       19 GETUPVAL                         R2 0
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 6
       22 GETUPVAL                         R5 7
       23 CALL                             R1 4 0
       24 GETUPVAL                         R1 8
       25 CALL                             R1 0 1
       26 JUMPIFNOT                        R1 ; [+7]
       27 GETUPVAL                         R1 9
       28 GETUPVAL                         R3 10
       29 NAMECALL                         R3 R3 K5 ["getValue"]
       31 CALL                             R3 1 1
       32 ADDK                             R2 R3 K4 [1]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Parent"]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["Parent"]
        9 LOADK                            R2 K1 ["HumanoidRigDescription"]
       10 NAMECALL                         R0 R0 K2 ["IsA"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+16]
       14 GETIMPORT                        R0 K4 [game]
       16 LOADK                            R2 K5 ["Selection"]
       17 NAMECALL                         R0 R0 K6 ["GetService"]
       19 CALL                             R0 2 1
       20 NEWTABLE                         R2 0 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["Parent"]
       25 SETLIST                          R2 R3 1 [1]
       27 NAMECALL                         R0 R0 K7 ["Set"]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["HumanoidRigDescription"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K5 ["addWaypoint"]
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

PROTO_61:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["autoMap"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["Automap"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["clearMapping"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["ClearMappings"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["enforceTpose"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["sampleTposeAdjustment"]
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 0
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K2 ["addTPoseWaypoint"]
       19 LOADK                            R1 K3 ["Enforce"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["clearTposeAdjustment"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["addTPoseWaypoint"]
       13 LOADK                            R1 K2 ["Reset"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_66:
        0 RETURN                           R0 0

PROTO_67:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_68:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_67]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_71:
        0 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["mapping"] ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["current"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K0 ["mapping"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["tpose"] ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["current"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K0 ["tpose"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+23]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["Parent"]
       10 JUMPIFNOT                        R0 ; [+70]
       11 LOADK                            R3 K1 ["HumanoidRigDescription"]
       12 NAMECALL                         R1 R0 K2 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+65]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K3 ["autoMapHand"]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R0
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K4 ["addWaypoint"]
       25 LOADK                            R2 K5 ["Automap"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 3
       29 GETTABLEKS                       R0 R0 K6 ["autoMap"]
       31 GETUPVAL                         R1 2
       32 GETUPVAL                         R2 0
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 5
       35 CALL                             R0 0 1
       36 JUMPIFNOT                        R0 ; [+39]
       37 NEWTABLE                         R0 0 2
       39 GETIMPORT                        R3 K10 [Enum.DigitsRigDescriptionSide.Left]
       41 GETIMPORT                        R4 K12 [Enum.DigitsRigDescriptionSide.Right]
       43 SETLIST                          R0 R3 2 [1]
       45 LOADNIL                          R1
       46 LOADNIL                          R2
       47 FORGPREP                         R0
       48 GETIMPORT                        R6 K10 [Enum.DigitsRigDescriptionSide.Left]
       50 JUMPIFNOTEQ                      R4 R6 ; [+4]
       52 GETIMPORT                        R5 K15 [Enum.RigLabel.LeftWrist]
       54 JUMP                             ; [+2]
       55 GETIMPORT                        R5 K17 [Enum.RigLabel.RightWrist]
       57 GETUPVAL                         R6 2
       58 MOVE                             R8 R5
       59 NAMECALL                         R6 R6 K18 ["GetJoint"]
       61 CALL                             R6 2 1
       62 JUMPIFNOT                        R6 ; [+11]
       63 GETUPVAL                         R6 6
       64 GETUPVAL                         R7 2
       65 MOVE                             R8 R4
       66 CALL                             R6 2 1
       67 JUMPIFNOT                        R6 ; [+6]
       68 GETUPVAL                         R7 3
       69 GETTABLEKS                       R7 R7 K3 ["autoMapHand"]
       71 MOVE                             R8 R6
       72 GETUPVAL                         R9 2
       73 CALL                             R7 2 0
       74 FORGLOOP                         R0 2 ; [-27]
       76 GETUPVAL                         R0 4
       77 GETTABLEKS                       R0 R0 K4 ["addWaypoint"]
       79 LOADK                            R1 K5 ["Automap"]
       80 CALL                             R0 1 0
       81 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+20]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["handRigLabels"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 3
       12 MOVE                             R7 R4
       13 LOADNIL                          R8
       14 NAMECALL                         R5 R5 K1 ["SetJoint"]
       16 CALL                             R5 3 0
       17 FORGLOOP                         R0 2 ; [-7]
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K2 ["addWaypoint"]
       22 LOADK                            R1 K3 ["ClearMappings"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K4 ["clearMapping"]
       28 GETUPVAL                         R1 3
       29 GETUPVAL                         R2 0
       30 CALL                             R0 2 0
       31 GETUPVAL                         R0 5
       32 CALL                             R0 0 1
       33 JUMPIFNOT                        R0 ; [+25]
       34 GETUPVAL                         R0 3
       35 NAMECALL                         R0 R0 K5 ["GetChildren"]
       37 CALL                             R0 1 3
       38 FORGPREP                         R0
       39 LOADK                            R7 K6 ["DigitsRigDescription"]
       40 NAMECALL                         R5 R4 K7 ["IsA"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+13]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K0 ["handRigLabels"]
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 MOVE                             R12 R9
       51 LOADNIL                          R13
       52 NAMECALL                         R10 R4 K1 ["SetJoint"]
       54 CALL                             R10 3 0
       55 FORGLOOP                         R5 2 ; [-6]
       57 FORGLOOP                         R0 2 ; [-19]
       59 GETUPVAL                         R0 4
       60 GETTABLEKS                       R0 R0 K2 ["addWaypoint"]
       62 LOADK                            R1 K3 ["ClearMappings"]
       63 CALL                             R0 1 0
       64 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+30]
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+44]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R1 R0 K0 ["Parent"]
       13 JUMPIFNOT                        R1 ; [+40]
       14 LOADK                            R4 K1 ["HumanoidRigDescription"]
       15 NAMECALL                         R2 R1 K2 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+35]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K3 ["enforceTposeForHand"]
       22 MOVE                             R3 R0
       23 MOVE                             R4 R1
       24 GETUPVAL                         R5 0
       25 CALL                             R2 3 0
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K4 ["sampleTposeAdjustmentForHand"]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 5
       32 GETTABLEKS                       R2 R2 K5 ["addTPoseWaypoint"]
       34 LOADK                            R3 K6 ["Enforce"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 GETTABLEKS                       R0 R0 K7 ["enforceTpose"]
       40 GETUPVAL                         R1 1
       41 GETUPVAL                         R2 0
       42 CALL                             R0 2 0
       43 GETUPVAL                         R0 4
       44 GETTABLEKS                       R0 R0 K8 ["sampleTposeAdjustment"]
       46 GETUPVAL                         R1 1
       47 GETUPVAL                         R2 0
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 5
       50 GETTABLEKS                       R0 R0 K5 ["addTPoseWaypoint"]
       52 LOADK                            R1 K6 ["Enforce"]
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+14]
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+22]
       10 GETUPVAL                         R0 4
       11 GETTABLEKS                       R0 R0 K0 ["clearTposeAdjustment"]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 5
       16 GETTABLEKS                       R0 R0 K1 ["addTPoseWaypoint"]
       18 LOADK                            R1 K2 ["Reset"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 6
       22 GETTABLEKS                       R0 R0 K0 ["clearTposeAdjustment"]
       24 GETUPVAL                         R1 1
       25 GETUPVAL                         R2 0
       26 CALL                             R0 2 0
       27 GETUPVAL                         R0 5
       28 GETTABLEKS                       R0 R0 K1 ["addTPoseWaypoint"]
       30 LOADK                            R1 K2 ["Reset"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_79:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_80:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_79]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+310]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKS                    R0 K0 ["mapping"] ; [+100]
        6 NEWTABLE                         R0 0 3
        8 DUPTABLE                         R1 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
        9 LOADK                            R2 K7 ["Button"]
       10 SETTABLEKS                       R2 R1 K1 ["Type"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K8 ["localization"]
       15 LOADK                            R4 K9 ["Toolbar"]
       16 LOADK                            R5 K10 ["Automap"]
       17 NAMECALL                         R2 R2 K11 ["getText"]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K8 ["localization"]
       25 LOADK                            R4 K9 ["Toolbar"]
       26 LOADK                            R5 K12 ["AutomapTooltip"]
       27 NAMECALL                         R2 R2 K11 ["getText"]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K13 ["MAGIC"]
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
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K8 ["localization"]
       51 LOADK                            R5 K9 ["Toolbar"]
       52 LOADK                            R6 K14 ["ClearMappings"]
       53 NAMECALL                         R3 R3 K11 ["getText"]
       55 CALL                             R3 3 1
       56 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R3 R3 K8 ["localization"]
       61 LOADK                            R5 K9 ["Toolbar"]
       62 LOADK                            R6 K15 ["ClearMappingsTooltip"]
       63 NAMECALL                         R3 R3 K11 ["getText"]
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K16 ["RESET"]
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
       84 GETUPVAL                         R4 2
       85 GETTABLEKS                       R4 R4 K8 ["localization"]
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
      114 GETUPVAL                         R2 2
      115 GETTABLEKS                       R2 R2 K8 ["localization"]
      117 LOADK                            R4 K9 ["Toolbar"]
      118 LOADK                            R5 K24 ["EnforceTpose"]
      119 NAMECALL                         R2 R2 K11 ["getText"]
      121 CALL                             R2 3 1
      122 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
      124 GETUPVAL                         R2 2
      125 GETTABLEKS                       R2 R2 K8 ["localization"]
      127 LOADK                            R4 K9 ["Toolbar"]
      128 LOADK                            R5 K25 ["EnforceTposeTooltip"]
      129 NAMECALL                         R2 R2 K11 ["getText"]
      131 CALL                             R2 3 1
      132 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
      134 GETUPVAL                         R2 3
      135 GETTABLEKS                       R2 R2 K13 ["MAGIC"]
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
      150 GETUPVAL                         R3 2
      151 GETTABLEKS                       R3 R3 K8 ["localization"]
      153 LOADK                            R5 K9 ["Toolbar"]
      154 LOADK                            R6 K26 ["ResetTpose"]
      155 NAMECALL                         R3 R3 K11 ["getText"]
      157 CALL                             R3 3 1
      158 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
      160 GETUPVAL                         R3 2
      161 GETTABLEKS                       R3 R3 K8 ["localization"]
      163 LOADK                            R5 K9 ["Toolbar"]
      164 LOADK                            R6 K27 ["ResetTPoseTooltip"]
      165 NAMECALL                         R3 R3 K11 ["getText"]
      167 CALL                             R3 3 1
      168 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
      170 GETUPVAL                         R3 3
      171 GETTABLEKS                       R3 R3 K16 ["RESET"]
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
      189 DUPCLOSURE                       R4 K30 [PROTO_66]
      190 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      192 DUPTABLE                         R4 K32 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
      193 LOADK                            R5 K7 ["Button"]
      194 SETTABLEKS                       R5 R4 K1 ["Type"]
      196 GETUPVAL                         R6 10
      197 JUMPIFNOT                        R6 ; [+9]
      198 GETUPVAL                         R5 2
      199 GETTABLEKS                       R5 R5 K8 ["localization"]
      201 LOADK                            R7 K9 ["Toolbar"]
      202 LOADK                            R8 K33 ["SymmetryOn"]
      203 NAMECALL                         R5 R5 K11 ["getText"]
      205 CALL                             R5 3 1
      206 JUMPIF                           R5 ; [+8]
      207 GETUPVAL                         R5 2
      208 GETTABLEKS                       R5 R5 K8 ["localization"]
      210 LOADK                            R7 K9 ["Toolbar"]
      211 LOADK                            R8 K34 ["SymmetryOff"]
      212 NAMECALL                         R5 R5 K11 ["getText"]
      214 CALL                             R5 3 1
      215 SETTABLEKS                       R5 R4 K2 ["Tooltip"]
      217 GETUPVAL                         R5 10
      218 SETTABLEKS                       R5 R4 K31 ["Selected"]
      220 GETUPVAL                         R5 3
      221 GETTABLEKS                       R5 R5 K35 ["SYMMETRY"]
      223 SETTABLEKS                       R5 R4 K4 ["Icon"]
      225 NEWCLOSURE                       R5 P6
      226 CAPTURE                          UPVAL U11
      227 SETTABLEKS                       R5 R4 K5 ["OnClick"]
      229 DUPTABLE                         R5 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      230 LOADK                            R6 K7 ["Button"]
      231 SETTABLEKS                       R6 R5 K1 ["Type"]
      233 GETUPVAL                         R6 2
      234 GETTABLEKS                       R6 R6 K8 ["localization"]
      236 LOADK                            R8 K2 ["Tooltip"]
      237 LOADK                            R9 K37 ["MirrorLtoR"]
      238 NAMECALL                         R6 R6 K11 ["getText"]
      240 CALL                             R6 3 1
      241 SETTABLEKS                       R6 R5 K2 ["Tooltip"]
      243 GETUPVAL                         R6 3
      244 GETTABLEKS                       R6 R6 K38 ["MIRROR_TO_RIGHT"]
      246 SETTABLEKS                       R6 R5 K4 ["Icon"]
      248 NEWCLOSURE                       R6 P7
      249 CAPTURE                          UPVAL U12
      250 SETTABLEKS                       R6 R5 K5 ["OnClick"]
      252 DUPTABLE                         R6 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      253 LOADK                            R7 K7 ["Button"]
      254 SETTABLEKS                       R7 R6 K1 ["Type"]
      256 GETUPVAL                         R7 2
      257 GETTABLEKS                       R7 R7 K8 ["localization"]
      259 LOADK                            R9 K2 ["Tooltip"]
      260 LOADK                            R10 K39 ["MirrorRtoL"]
      261 NAMECALL                         R7 R7 K11 ["getText"]
      263 CALL                             R7 3 1
      264 SETTABLEKS                       R7 R6 K2 ["Tooltip"]
      266 GETUPVAL                         R7 3
      267 GETTABLEKS                       R7 R7 K40 ["MIRROR_TO_LEFT"]
      269 SETTABLEKS                       R7 R6 K4 ["Icon"]
      271 NEWCLOSURE                       R7 P8
      272 CAPTURE                          UPVAL U12
      273 SETTABLEKS                       R7 R6 K5 ["OnClick"]
      275 DUPTABLE                         R7 K41 [{"Type", "OnClick", "Icon"}]
      276 LOADK                            R8 K29 ["Separator"]
      277 SETTABLEKS                       R8 R7 K1 ["Type"]
      279 DUPCLOSURE                       R8 K42 [PROTO_71]
      280 SETTABLEKS                       R8 R7 K5 ["OnClick"]
      282 LOADK                            R8 K22 [""]
      283 SETTABLEKS                       R8 R7 K4 ["Icon"]
      285 DUPTABLE                         R8 K18 [{"Type", "Text", "Icon", "OnClick"}]
      286 LOADK                            R9 K19 ["TextButton"]
      287 SETTABLEKS                       R9 R8 K1 ["Type"]
      289 GETUPVAL                         R9 2
      290 GETTABLEKS                       R9 R9 K8 ["localization"]
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
      342 GETUPVAL                         R4 2
      343 GETTABLEKS                       R4 R4 K8 ["localization"]
      345 LOADK                            R6 K20 ["Mode"]
      346 LOADK                            R7 K48 ["Mapping"]
      347 NAMECALL                         R4 R4 K11 ["getText"]
      349 CALL                             R4 3 1
      350 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      352 GETUPVAL                         R4 2
      353 GETTABLEKS                       R4 R4 K8 ["localization"]
      355 LOADK                            R6 K20 ["Mode"]
      356 LOADK                            R7 K49 ["MappingTooltip"]
      357 NAMECALL                         R4 R4 K11 ["getText"]
      359 CALL                             R4 3 1
      360 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      362 GETUPVAL                         R4 3
      363 GETTABLEKS                       R4 R4 K50 ["MAPPING"]
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
      390 GETUPVAL                         R4 2
      391 GETTABLEKS                       R4 R4 K8 ["localization"]
      393 LOADK                            R6 K20 ["Mode"]
      394 LOADK                            R7 K51 ["TPose"]
      395 NAMECALL                         R4 R4 K11 ["getText"]
      397 CALL                             R4 3 1
      398 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      400 GETUPVAL                         R4 2
      401 GETTABLEKS                       R4 R4 K8 ["localization"]
      403 LOADK                            R6 K20 ["Mode"]
      404 LOADK                            R7 K52 ["TPoseTooltip"]
      405 NAMECALL                         R4 R4 K11 ["getText"]
      407 CALL                             R4 3 1
      408 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      410 GETUPVAL                         R4 3
      411 GETTABLEKS                       R4 R4 K53 ["TPOSE"]
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
      445 JUMPIFNOTEQKS                    R1 K0 ["mapping"] ; [+91]
      447 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      448 LOADK                            R4 K7 ["Button"]
      449 SETTABLEKS                       R4 R3 K1 ["Type"]
      451 GETUPVAL                         R4 2
      452 GETTABLEKS                       R4 R4 K8 ["localization"]
      454 LOADK                            R6 K9 ["Toolbar"]
      455 LOADK                            R7 K10 ["Automap"]
      456 NAMECALL                         R4 R4 K11 ["getText"]
      458 CALL                             R4 3 1
      459 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      461 GETUPVAL                         R4 2
      462 GETTABLEKS                       R4 R4 K8 ["localization"]
      464 LOADK                            R6 K9 ["Toolbar"]
      465 LOADK                            R7 K12 ["AutomapTooltip"]
      466 NAMECALL                         R4 R4 K11 ["getText"]
      468 CALL                             R4 3 1
      469 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      471 GETUPVAL                         R4 3
      472 GETTABLEKS                       R4 R4 K13 ["MAGIC"]
      474 SETTABLEKS                       R4 R3 K4 ["Icon"]
      476 NEWCLOSURE                       R4 P13
      477 CAPTURE                          UPVAL U4
      478 CAPTURE                          UPVAL U15
      479 CAPTURE                          UPVAL U6
      480 CAPTURE                          UPVAL U5
      481 CAPTURE                          UPVAL U7
      482 CAPTURE                          UPVAL U16
      483 CAPTURE                          UPVAL U17
      484 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      486 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      488 MOVE                             R2 R0
      489 GETIMPORT                        R1 K45 [table.insert]
      491 CALL                             R1 2 0
      492 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      493 LOADK                            R4 K7 ["Button"]
      494 SETTABLEKS                       R4 R3 K1 ["Type"]
      496 GETUPVAL                         R4 2
      497 GETTABLEKS                       R4 R4 K8 ["localization"]
      499 LOADK                            R6 K9 ["Toolbar"]
      500 LOADK                            R7 K14 ["ClearMappings"]
      501 NAMECALL                         R4 R4 K11 ["getText"]
      503 CALL                             R4 3 1
      504 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      506 GETUPVAL                         R4 2
      507 GETTABLEKS                       R4 R4 K8 ["localization"]
      509 LOADK                            R6 K9 ["Toolbar"]
      510 LOADK                            R7 K15 ["ClearMappingsTooltip"]
      511 NAMECALL                         R4 R4 K11 ["getText"]
      513 CALL                             R4 3 1
      514 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      516 GETUPVAL                         R4 3
      517 GETTABLEKS                       R4 R4 K16 ["RESET"]
      519 SETTABLEKS                       R4 R3 K4 ["Icon"]
      521 NEWCLOSURE                       R4 P14
      522 CAPTURE                          UPVAL U4
      523 CAPTURE                          UPVAL U15
      524 CAPTURE                          UPVAL U5
      525 CAPTURE                          UPVAL U6
      526 CAPTURE                          UPVAL U7
      527 CAPTURE                          UPVAL U16
      528 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      530 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      532 MOVE                             R2 R0
      533 GETIMPORT                        R1 K45 [table.insert]
      535 CALL                             R1 2 0
      536 RETURN                           R0 1
      537 GETUPVAL                         R1 1
      538 JUMPIFNOTEQKS                    R1 K23 ["tpose"] ; [+201]
      540 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      541 LOADK                            R4 K7 ["Button"]
      542 SETTABLEKS                       R4 R3 K1 ["Type"]
      544 GETUPVAL                         R4 2
      545 GETTABLEKS                       R4 R4 K8 ["localization"]
      547 LOADK                            R6 K9 ["Toolbar"]
      548 LOADK                            R7 K24 ["EnforceTpose"]
      549 NAMECALL                         R4 R4 K11 ["getText"]
      551 CALL                             R4 3 1
      552 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      554 GETUPVAL                         R4 2
      555 GETTABLEKS                       R4 R4 K8 ["localization"]
      557 LOADK                            R6 K9 ["Toolbar"]
      558 LOADK                            R7 K25 ["EnforceTposeTooltip"]
      559 NAMECALL                         R4 R4 K11 ["getText"]
      561 CALL                             R4 3 1
      562 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      564 GETUPVAL                         R4 3
      565 GETTABLEKS                       R4 R4 K13 ["MAGIC"]
      567 SETTABLEKS                       R4 R3 K4 ["Icon"]
      569 NEWCLOSURE                       R4 P15
      570 CAPTURE                          UPVAL U4
      571 CAPTURE                          UPVAL U6
      572 CAPTURE                          UPVAL U15
      573 CAPTURE                          UPVAL U16
      574 CAPTURE                          UPVAL U5
      575 CAPTURE                          UPVAL U7
      576 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      578 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      580 MOVE                             R2 R0
      581 GETIMPORT                        R1 K45 [table.insert]
      583 CALL                             R1 2 0
      584 DUPTABLE                         R3 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      585 LOADK                            R4 K7 ["Button"]
      586 SETTABLEKS                       R4 R3 K1 ["Type"]
      588 GETUPVAL                         R4 2
      589 GETTABLEKS                       R4 R4 K8 ["localization"]
      591 LOADK                            R6 K9 ["Toolbar"]
      592 LOADK                            R7 K26 ["ResetTpose"]
      593 NAMECALL                         R4 R4 K11 ["getText"]
      595 CALL                             R4 3 1
      596 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      598 GETUPVAL                         R4 2
      599 GETTABLEKS                       R4 R4 K8 ["localization"]
      601 LOADK                            R6 K9 ["Toolbar"]
      602 LOADK                            R7 K27 ["ResetTPoseTooltip"]
      603 NAMECALL                         R4 R4 K11 ["getText"]
      605 CALL                             R4 3 1
      606 SETTABLEKS                       R4 R3 K3 ["TooltipDescription"]
      608 GETUPVAL                         R4 3
      609 GETTABLEKS                       R4 R4 K16 ["RESET"]
      611 SETTABLEKS                       R4 R3 K4 ["Icon"]
      613 NEWCLOSURE                       R4 P16
      614 CAPTURE                          UPVAL U4
      615 CAPTURE                          UPVAL U6
      616 CAPTURE                          UPVAL U15
      617 CAPTURE                          UPVAL U16
      618 CAPTURE                          UPVAL U18
      619 CAPTURE                          UPVAL U7
      620 CAPTURE                          UPVAL U5
      621 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      623 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      625 MOVE                             R2 R0
      626 GETIMPORT                        R1 K45 [table.insert]
      628 CALL                             R1 2 0
      629 DUPTABLE                         R3 K46 [{"Type"}]
      630 LOADK                            R4 K29 ["Separator"]
      631 SETTABLEKS                       R4 R3 K1 ["Type"]
      633 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      635 MOVE                             R2 R0
      636 GETIMPORT                        R1 K45 [table.insert]
      638 CALL                             R1 2 0
      639 DUPTABLE                         R3 K32 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
      640 LOADK                            R4 K7 ["Button"]
      641 SETTABLEKS                       R4 R3 K1 ["Type"]
      643 GETUPVAL                         R5 10
      644 JUMPIFNOT                        R5 ; [+9]
      645 GETUPVAL                         R4 2
      646 GETTABLEKS                       R4 R4 K8 ["localization"]
      648 LOADK                            R6 K9 ["Toolbar"]
      649 LOADK                            R7 K33 ["SymmetryOn"]
      650 NAMECALL                         R4 R4 K11 ["getText"]
      652 CALL                             R4 3 1
      653 JUMPIF                           R4 ; [+8]
      654 GETUPVAL                         R4 2
      655 GETTABLEKS                       R4 R4 K8 ["localization"]
      657 LOADK                            R6 K9 ["Toolbar"]
      658 LOADK                            R7 K34 ["SymmetryOff"]
      659 NAMECALL                         R4 R4 K11 ["getText"]
      661 CALL                             R4 3 1
      662 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      664 GETUPVAL                         R4 10
      665 SETTABLEKS                       R4 R3 K31 ["Selected"]
      667 GETUPVAL                         R4 3
      668 GETTABLEKS                       R4 R4 K35 ["SYMMETRY"]
      670 SETTABLEKS                       R4 R3 K4 ["Icon"]
      672 NEWCLOSURE                       R4 P17
      673 CAPTURE                          UPVAL U11
      674 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      676 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      678 MOVE                             R2 R0
      679 GETIMPORT                        R1 K45 [table.insert]
      681 CALL                             R1 2 0
      682 DUPTABLE                         R3 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      683 LOADK                            R4 K7 ["Button"]
      684 SETTABLEKS                       R4 R3 K1 ["Type"]
      686 GETUPVAL                         R4 2
      687 GETTABLEKS                       R4 R4 K8 ["localization"]
      689 LOADK                            R6 K2 ["Tooltip"]
      690 LOADK                            R7 K37 ["MirrorLtoR"]
      691 NAMECALL                         R4 R4 K11 ["getText"]
      693 CALL                             R4 3 1
      694 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      696 GETUPVAL                         R4 3
      697 GETTABLEKS                       R4 R4 K38 ["MIRROR_TO_RIGHT"]
      699 SETTABLEKS                       R4 R3 K4 ["Icon"]
      701 NEWCLOSURE                       R4 P18
      702 CAPTURE                          UPVAL U12
      703 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      705 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      707 MOVE                             R2 R0
      708 GETIMPORT                        R1 K45 [table.insert]
      710 CALL                             R1 2 0
      711 DUPTABLE                         R3 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      712 LOADK                            R4 K7 ["Button"]
      713 SETTABLEKS                       R4 R3 K1 ["Type"]
      715 GETUPVAL                         R4 2
      716 GETTABLEKS                       R4 R4 K8 ["localization"]
      718 LOADK                            R6 K2 ["Tooltip"]
      719 LOADK                            R7 K39 ["MirrorRtoL"]
      720 NAMECALL                         R4 R4 K11 ["getText"]
      722 CALL                             R4 3 1
      723 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
      725 GETUPVAL                         R4 3
      726 GETTABLEKS                       R4 R4 K40 ["MIRROR_TO_LEFT"]
      728 SETTABLEKS                       R4 R3 K4 ["Icon"]
      730 NEWCLOSURE                       R4 P19
      731 CAPTURE                          UPVAL U12
      732 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      734 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      736 MOVE                             R2 R0
      737 GETIMPORT                        R1 K45 [table.insert]
      739 CALL                             R1 2 0
      740 RETURN                           R0 1

PROTO_84:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_85:
        0 RETURN                           R0 0

PROTO_86:
        0 RETURN                           R0 0

PROTO_87:
        0 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K1 ["mapping"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["clearTransforms"]
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

PROTO_93:
        0 RETURN                           R0 0

PROTO_94:
        0 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useState"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["get"]
        8 CALL                             R4 0 1
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       22 DUPCLOSURE                       R6 K4 [PROTO_14]
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
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K8 ["handRigLabels"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 MOVE                             R8 R7
       44 JUMPIF                           R8 ; [+3]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K9 ["bodyRigLabels"]
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R1
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 5
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K0 ["useState"]
       57 LOADB                            R12 0
       58 CALL                             R11 1 2
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R13 R13 K0 ["useState"]
       62 LOADN                            R14 0
       63 CALL                             R13 1 2
       64 LOADNIL                          R15
       65 JUMPIFNOT                        R6 ; [+17]
       66 GETUPVAL                         R16 6
       67 CALL                             R16 0 1
       68 JUMPIFNOT                        R16 ; [+14]
       69 MOVE                             R16 R1
       70 JUMPIFNOT                        R16 ; [+2]
       71 GETTABLEKS                       R16 R1 K10 ["Parent"]
       73 JUMPIFNOT                        R16 ; [+7]
       74 LOADK                            R19 K11 ["HumanoidRigDescription"]
       75 NAMECALL                         R17 R16 K12 ["IsA"]
       77 CALL                             R17 2 1
       78 JUMPIFNOT                        R17 ; [+2]
       79 MOVE                             R15 R16
       80 JUMP                             ; [+6]
       81 LOADNIL                          R15
       82 JUMP                             ; [+4]
       83 JUMPIF                           R6 ; [+2]
       84 MOVE                             R15 R1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R15
       87 GETUPVAL                         R16 7
       88 MOVE                             R17 R15
       89 MOVE                             R18 R10
       90 CALL                             R16 2 0
       91 GETUPVAL                         R16 8
       92 MOVE                             R17 R3
       93 MOVE                             R18 R15
       94 MOVE                             R19 R9
       95 CALL                             R16 3 0
       96 GETUPVAL                         R16 9
       97 MOVE                             R17 R1
       98 GETTABLEKS                       R18 R0 K13 ["Plugin"]
      100 CALL                             R16 2 0
      101 GETUPVAL                         R16 10
      102 CALL                             R16 0 3
      103 GETUPVAL                         R19 1
      104 GETTABLEKS                       R19 R19 K0 ["useState"]
      106 LOADB                            R20 0
      107 CALL                             R19 1 2
      108 GETUPVAL                         R22 11
      109 CALL                             R22 0 1
      110 JUMPIFNOT                        R22 ; [+2]
      111 MOVE                             R21 R19
      112 JUMP                             ; [+1]
      113 LOADB                            R21 1
      114 GETUPVAL                         R22 1
      115 GETTABLEKS                       R22 R22 K14 ["useRef"]
      117 MOVE                             R23 R19
      118 CALL                             R22 1 1
      119 SETTABLEKS                       R19 R22 K15 ["current"]
      121 GETUPVAL                         R23 1
      122 GETTABLEKS                       R23 R23 K14 ["useRef"]
      124 MOVE                             R24 R16
      125 CALL                             R23 1 1
      126 SETTABLEKS                       R16 R23 K15 ["current"]
      128 GETUPVAL                         R24 1
      129 GETTABLEKS                       R24 R24 K14 ["useRef"]
      131 MOVE                             R25 R1
      132 CALL                             R24 1 1
      133 SETTABLEKS                       R1 R24 K15 ["current"]
      135 GETUPVAL                         R25 1
      136 GETTABLEKS                       R25 R25 K2 ["useEffect"]
      138 NEWCLOSURE                       R26 P2
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R21
      142 NEWTABLE                         R27 0 2
      144 MOVE                             R28 R21
      145 GETTABLEKS                       R29 R0 K16 ["pluginLoaderContext"]
      147 SETLIST                          R27 R28 2 [1]
      149 CALL                             R25 2 0
      150 GETUPVAL                         R25 1
      151 GETTABLEKS                       R25 R25 K2 ["useEffect"]
      153 NEWCLOSURE                       R26 P3
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R20
      159 NEWTABLE                         R27 0 3
      161 MOVE                             R28 R1
      162 GETTABLEKS                       R29 R0 K16 ["pluginLoaderContext"]
      164 GETTABLEKS                       R30 R0 K13 ["Plugin"]
      166 SETLIST                          R27 R28 3 [1]
      168 CALL                             R25 2 0
      169 GETUPVAL                         R25 1
      170 GETTABLEKS                       R25 R25 K2 ["useEffect"]
      172 NEWCLOSURE                       R26 P4
      173 CAPTURE                          UPVAL U11
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R24
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          VAL R20
      180 NEWTABLE                         R27 0 1
      182 GETTABLEKS                       R28 R0 K16 ["pluginLoaderContext"]
      184 SETLIST                          R27 R28 1 [1]
      186 CALL                             R25 2 0
      187 GETUPVAL                         R25 1
      188 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      190 NEWCLOSURE                       R26 P5
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R9
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          VAL R10
      195 NEWTABLE                         R27 0 3
      197 MOVE                             R28 R1
      198 MOVE                             R29 R9
      199 MOVE                             R30 R10
      200 SETLIST                          R27 R28 3 [1]
      202 CALL                             R25 2 1
      203 GETUPVAL                         R26 1
      204 GETTABLEKS                       R26 R26 K3 ["useCallback"]
      206 NEWCLOSURE                       R27 P6
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R1
      211 CAPTURE                          UPVAL U12
      212 CAPTURE                          UPVAL U6
      213 CAPTURE                          VAL R0
      214 CAPTURE                          VAL R20
      215 NEWTABLE                         R28 0 5
      217 MOVE                             R29 R25
      218 MOVE                             R30 R1
      219 MOVE                             R31 R3
      220 GETTABLEKS                       R32 R0 K16 ["pluginLoaderContext"]
      222 GETTABLEKS                       R33 R0 K13 ["Plugin"]
      224 SETLIST                          R28 R29 5 [1]
      226 CALL                             R26 2 1
      227 GETUPVAL                         R27 1
      228 GETTABLEKS                       R27 R27 K0 ["useState"]
      230 LOADNIL                          R28
      231 CALL                             R27 1 2
      232 GETUPVAL                         R29 1
      233 GETTABLEKS                       R29 R29 K0 ["useState"]
      235 LOADNIL                          R30
      236 CALL                             R29 1 2
      237 GETUPVAL                         R31 1
      238 GETTABLEKS                       R31 R31 K0 ["useState"]
      240 LOADB                            R32 1
      241 CALL                             R31 1 2
      242 GETUPVAL                         R33 1
      243 GETTABLEKS                       R33 R33 K0 ["useState"]
      245 LOADNIL                          R34
      246 CALL                             R33 1 2
      247 GETUPVAL                         R35 1
      248 GETTABLEKS                       R35 R35 K0 ["useState"]
      250 LOADNIL                          R36
      251 CALL                             R35 1 2
      252 GETUPVAL                         R37 1
      253 GETTABLEKS                       R37 R37 K3 ["useCallback"]
      255 NEWCLOSURE                       R38 P7
      256 CAPTURE                          VAL R36
      257 NEWTABLE                         R39 0 0
      259 CALL                             R37 2 1
      260 GETUPVAL                         R38 1
      261 GETTABLEKS                       R38 R38 K17 ["useBinding"]
      263 LOADN                            R39 0
      264 CALL                             R38 1 2
      265 GETUPVAL                         R40 1
      266 GETTABLEKS                       R40 R40 K14 ["useRef"]
      268 LOADB                            R41 0
      269 CALL                             R40 1 1
      270 GETUPVAL                         R41 1
      271 GETTABLEKS                       R41 R41 K14 ["useRef"]
      273 NEWTABLE                         R42 0 0
      275 CALL                             R41 1 1
      276 GETUPVAL                         R42 1
      277 GETTABLEKS                       R42 R42 K14 ["useRef"]
      279 LOADNIL                          R43
      280 CALL                             R42 1 1
      281 GETUPVAL                         R43 1
      282 GETTABLEKS                       R43 R43 K14 ["useRef"]
      284 LOADNIL                          R44
      285 CALL                             R43 1 1
      286 GETUPVAL                         R44 1
      287 GETTABLEKS                       R44 R44 K14 ["useRef"]
      289 LOADNIL                          R45
      290 CALL                             R44 1 1
      291 GETUPVAL                         R45 1
      292 GETTABLEKS                       R45 R45 K14 ["useRef"]
      294 LOADNIL                          R46
      295 CALL                             R45 1 1
      296 GETUPVAL                         R46 1
      297 GETTABLEKS                       R46 R46 K2 ["useEffect"]
      299 NEWCLOSURE                       R47 P8
      300 CAPTURE                          VAL R11
      301 CAPTURE                          VAL R39
      302 CAPTURE                          VAL R38
      303 NEWTABLE                         R48 0 1
      305 MOVE                             R49 R11
      306 SETLIST                          R48 R49 1 [1]
      308 CALL                             R46 2 0
      309 GETUPVAL                         R46 1
      310 GETTABLEKS                       R46 R46 K2 ["useEffect"]
      312 NEWCLOSURE                       R47 P9
      313 CAPTURE                          UPVAL U6
      314 CAPTURE                          VAL R27
      315 CAPTURE                          UPVAL U12
      316 CAPTURE                          UPVAL U3
      317 NEWTABLE                         R48 0 1
      319 MOVE                             R49 R27
      320 SETLIST                          R48 R49 1 [1]
      322 CALL                             R46 2 0
      323 GETUPVAL                         R46 13
      324 GETTABLEKS                       R46 R46 K18 ["isIdentityTransform"]
      326 GETUPVAL                         R47 1
      327 GETTABLEKS                       R47 R47 K3 ["useCallback"]
      329 NEWCLOSURE                       R48 P10
      330 CAPTURE                          VAL R40
      331 CAPTURE                          UPVAL U3
      332 CAPTURE                          VAL R1
      333 CAPTURE                          VAL R8
      334 CAPTURE                          VAL R31
      335 CAPTURE                          UPVAL U14
      336 CAPTURE                          UPVAL U15
      337 NEWTABLE                         R49 0 2
      339 MOVE                             R50 R1
      340 MOVE                             R51 R31
      341 SETLIST                          R49 R50 2 [1]
      343 CALL                             R47 2 1
      344 GETUPVAL                         R48 1
      345 GETTABLEKS                       R48 R48 K3 ["useCallback"]
      347 NEWCLOSURE                       R49 P11
      348 CAPTURE                          VAL R40
      349 CAPTURE                          VAL R42
      350 CAPTURE                          VAL R41
      351 CAPTURE                          UPVAL U13
      352 CAPTURE                          UPVAL U16
      353 CAPTURE                          VAL R6
      354 CAPTURE                          UPVAL U17
      355 CAPTURE                          VAL R1
      356 CAPTURE                          UPVAL U3
      357 CAPTURE                          VAL R31
      358 CAPTURE                          VAL R46
      359 CAPTURE                          UPVAL U15
      360 CAPTURE                          UPVAL U18
      361 CAPTURE                          UPVAL U19
      362 CAPTURE                          UPVAL U6
      363 CAPTURE                          UPVAL U20
      364 NEWTABLE                         R50 0 2
      366 MOVE                             R51 R1
      367 MOVE                             R52 R31
      368 SETLIST                          R50 R51 2 [1]
      370 CALL                             R48 2 1
      371 GETUPVAL                         R49 21
      372 MOVE                             R50 R27
      373 MOVE                             R51 R1
      374 MOVE                             R52 R31
      375 GETUPVAL                         R54 22
      376 CALL                             R54 0 1
      377 JUMPIFNOT                        R54 ; [+2]
      378 MOVE                             R53 R48
      379 JUMP                             ; [+1]
      380 MOVE                             R53 R47
      381 GETUPVAL                         R55 6
      382 CALL                             R55 0 1
      383 JUMPIFNOT                        R55 ; [+4]
      384 NEWCLOSURE                       R54 P12
      385 CAPTURE                          VAL R28
      386 CAPTURE                          VAL R30
      387 JUMP                             ; [+1]
      388 LOADNIL                          R54
      389 GETUPVAL                         R56 6
      390 CALL                             R56 0 1
      391 JUMPIFNOT                        R56 ; [+2]
      392 MOVE                             R55 R9
      393 JUMP                             ; [+1]
      394 LOADNIL                          R55
      395 GETUPVAL                         R57 6
      396 CALL                             R57 0 1
      397 JUMPIFNOT                        R57 ; [+5]
      398 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
      400 LOADB                            R56 0 +1
      401 LOADB                            R56 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R56
      404 CALL                             R49 7 1
      405 GETUPVAL                         R50 1
      406 GETTABLEKS                       R50 R50 K2 ["useEffect"]
      408 NEWCLOSURE                       R51 P13
      409 CAPTURE                          VAL R44
      410 CAPTURE                          VAL R1
      411 CAPTURE                          VAL R45
      412 CAPTURE                          UPVAL U6
      413 CAPTURE                          VAL R6
      414 CAPTURE                          UPVAL U17
      415 CAPTURE                          UPVAL U3
      416 CAPTURE                          VAL R28
      417 CAPTURE                          VAL R30
      418 CAPTURE                          UPVAL U11
      419 CAPTURE                          VAL R5
      420 CAPTURE                          UPVAL U2
      421 CAPTURE                          UPVAL U23
      422 CAPTURE                          VAL R41
      423 NEWTABLE                         R52 0 1
      425 MOVE                             R53 R1
      426 SETLIST                          R52 R53 1 [1]
      428 CALL                             R50 2 0
      429 GETUPVAL                         R50 1
      430 GETTABLEKS                       R50 R50 K2 ["useEffect"]
      432 NEWCLOSURE                       R51 P14
      433 CAPTURE                          UPVAL U6
      434 CAPTURE                          REF R15
      435 CAPTURE                          VAL R1
      436 CAPTURE                          VAL R9
      437 CAPTURE                          VAL R10
      438 CAPTURE                          VAL R6
      439 CAPTURE                          UPVAL U11
      440 CAPTURE                          VAL R3
      441 CAPTURE                          UPVAL U3
      442 CAPTURE                          VAL R39
      443 CAPTURE                          VAL R38
      444 CAPTURE                          UPVAL U24
      445 CAPTURE                          VAL R40
      446 CAPTURE                          UPVAL U17
      447 NEWTABLE                         R52 0 6
      449 MOVE                             R53 R3
      450 MOVE                             R54 R15
      451 MOVE                             R55 R1
      452 MOVE                             R56 R9
      453 MOVE                             R57 R10
      454 MOVE                             R58 R13
      455 SETLIST                          R52 R53 6 [1]
      457 CALL                             R50 2 0
      458 GETUPVAL                         R50 1
      459 GETTABLEKS                       R50 R50 K2 ["useEffect"]
      461 NEWCLOSURE                       R51 P15
      462 CAPTURE                          UPVAL U6
      463 CAPTURE                          REF R15
      464 CAPTURE                          VAL R9
      465 CAPTURE                          VAL R3
      466 CAPTURE                          UPVAL U17
      467 CAPTURE                          UPVAL U24
      468 CAPTURE                          VAL R40
      469 CAPTURE                          VAL R10
      470 CAPTURE                          VAL R39
      471 CAPTURE                          VAL R38
      472 CAPTURE                          VAL R1
      473 CAPTURE                          VAL R6
      474 CAPTURE                          UPVAL U3
      475 CAPTURE                          UPVAL U23
      476 GETUPVAL                         R53 6
      477 CALL                             R53 0 1
      478 JUMPIFNOT                        R53 ; [+12]
      479 NEWTABLE                         R52 0 7
      481 MOVE                             R53 R3
      482 MOVE                             R54 R15
      483 MOVE                             R55 R1
      484 MOVE                             R56 R2
      485 MOVE                             R57 R9
      486 MOVE                             R58 R10
      487 MOVE                             R59 R13
      488 SETLIST                          R52 R53 7 [1]
      490 JUMP                             ; [+21]
      491 GETUPVAL                         R53 23
      492 CALL                             R53 0 1
      493 JUMPIFNOT                        R53 ; [+10]
      494 NEWTABLE                         R52 0 5
      496 MOVE                             R53 R3
      497 MOVE                             R54 R1
      498 MOVE                             R55 R2
      499 MOVE                             R56 R9
      500 MOVE                             R57 R10
      501 SETLIST                          R52 R53 5 [1]
      503 JUMP                             ; [+8]
      504 NEWTABLE                         R52 0 4
      506 MOVE                             R53 R3
      507 MOVE                             R54 R1
      508 MOVE                             R55 R2
      509 MOVE                             R56 R9
      510 SETLIST                          R52 R53 4 [1]
      512 CALL                             R50 2 0
      513 GETUPVAL                         R50 1
      514 GETTABLEKS                       R50 R50 K2 ["useEffect"]
      516 NEWCLOSURE                       R51 P16
      517 CAPTURE                          VAL R41
      518 NEWTABLE                         R52 0 3
      520 MOVE                             R53 R27
      521 MOVE                             R54 R31
      522 MOVE                             R55 R3
      523 SETLIST                          R52 R53 3 [1]
      525 CALL                             R50 2 0
      526 GETUPVAL                         R50 1
      527 GETTABLEKS                       R50 R50 K3 ["useCallback"]
      529 NEWCLOSURE                       R51 P17
      530 CAPTURE                          UPVAL U25
      531 CAPTURE                          VAL R1
      532 CAPTURE                          VAL R8
      533 CAPTURE                          UPVAL U26
      534 CAPTURE                          UPVAL U27
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R30
      537 NEWTABLE                         R52 0 2
      539 MOVE                             R53 R1
      540 MOVE                             R54 R8
      541 SETLIST                          R52 R53 2 [1]
      543 CALL                             R50 2 1
      544 GETUPVAL                         R51 1
      545 GETTABLEKS                       R51 R51 K3 ["useCallback"]
      547 NEWCLOSURE                       R52 P18
      548 CAPTURE                          VAL R29
      549 CAPTURE                          VAL R50
      550 CAPTURE                          VAL R28
      551 NEWTABLE                         R53 0 2
      553 MOVE                             R54 R29
      554 MOVE                             R55 R50
      555 SETLIST                          R53 R54 2 [1]
      557 CALL                             R51 2 1
      558 GETUPVAL                         R52 1
      559 GETTABLEKS                       R52 R52 K3 ["useCallback"]
      561 NEWCLOSURE                       R53 P19
      562 CAPTURE                          VAL R1
      563 CAPTURE                          VAL R8
      564 CAPTURE                          VAL R28
      565 CAPTURE                          UPVAL U6
      566 CAPTURE                          VAL R6
      567 CAPTURE                          UPVAL U28
      568 CAPTURE                          VAL R45
      569 CAPTURE                          UPVAL U12
      570 CAPTURE                          UPVAL U3
      571 NEWTABLE                         R54 0 3
      573 MOVE                             R55 R1
      574 MOVE                             R56 R8
      575 MOVE                             R57 R6
      576 SETLIST                          R54 R55 3 [1]
      578 CALL                             R52 2 1
      579 GETUPVAL                         R53 1
      580 GETTABLEKS                       R53 R53 K3 ["useCallback"]
      582 NEWCLOSURE                       R54 P20
      583 CAPTURE                          VAL R6
      584 CAPTURE                          UPVAL U29
      585 CAPTURE                          VAL R1
      586 CAPTURE                          VAL R9
      587 CAPTURE                          VAL R10
      588 NEWTABLE                         R55 0 4
      590 MOVE                             R56 R6
      591 MOVE                             R57 R1
      592 MOVE                             R58 R9
      593 MOVE                             R59 R10
      594 SETLIST                          R55 R56 4 [1]
      596 CALL                             R53 2 1
      597 GETUPVAL                         R54 1
      598 GETTABLEKS                       R54 R54 K3 ["useCallback"]
      600 NEWCLOSURE                       R55 P21
      601 CAPTURE                          VAL R9
      602 CAPTURE                          VAL R1
      603 CAPTURE                          VAL R6
      604 CAPTURE                          UPVAL U6
      605 CAPTURE                          VAL R14
      606 CAPTURE                          UPVAL U30
      607 CAPTURE                          VAL R10
      608 CAPTURE                          VAL R3
      609 CAPTURE                          UPVAL U31
      610 CAPTURE                          VAL R39
      611 CAPTURE                          VAL R38
      612 NEWTABLE                         R56 0 5
      614 MOVE                             R57 R9
      615 MOVE                             R58 R1
      616 MOVE                             R59 R10
      617 MOVE                             R60 R3
      618 MOVE                             R61 R6
      619 SETLIST                          R56 R57 5 [1]
      621 CALL                             R54 2 1
      622 GETUPVAL                         R55 32
      623 MOVE                             R56 R54
      624 GETTABLEKS                       R57 R0 K20 ["localization"]
      626 MOVE                             R58 R9
      627 CALL                             R55 3 4
      628 GETUPVAL                         R59 1
      629 GETTABLEKS                       R59 R59 K2 ["useEffect"]
      631 NEWCLOSURE                       R60 P22
      632 CAPTURE                          VAL R43
      633 CAPTURE                          VAL R58
      634 NEWTABLE                         R61 0 1
      636 MOVE                             R62 R58
      637 SETLIST                          R61 R62 1 [1]
      639 CALL                             R59 2 0
      640 GETUPVAL                         R59 1
      641 GETTABLEKS                       R59 R59 K2 ["useEffect"]
      643 NEWCLOSURE                       R60 P23
      644 CAPTURE                          VAL R12
      645 CAPTURE                          VAL R57
      646 NEWTABLE                         R61 0 1
      648 MOVE                             R62 R57
      649 SETLIST                          R61 R62 1 [1]
      651 CALL                             R59 2 0
      652 GETUPVAL                         R59 1
      653 GETTABLEKS                       R59 R59 K3 ["useCallback"]
      655 NEWCLOSURE                       R60 P24
      656 CAPTURE                          VAL R28
      657 CAPTURE                          VAL R30
      658 NEWTABLE                         R61 0 0
      660 CALL                             R59 2 1
      661 GETUPVAL                         R60 1
      662 GETTABLEKS                       R60 R60 K3 ["useCallback"]
      664 NEWCLOSURE                       R61 P25
      665 CAPTURE                          VAL R29
      666 CAPTURE                          VAL R30
      667 CAPTURE                          VAL R1
      668 CAPTURE                          VAL R28
      669 NEWTABLE                         R62 0 2
      671 MOVE                             R63 R29
      672 MOVE                             R64 R1
      673 SETLIST                          R62 R63 2 [1]
      675 CALL                             R60 2 1
      676 GETUPVAL                         R61 1
      677 GETTABLEKS                       R61 R61 K3 ["useCallback"]
      679 NEWCLOSURE                       R62 P26
      680 CAPTURE                          VAL R29
      681 CAPTURE                          VAL R30
      682 CAPTURE                          VAL R1
      683 CAPTURE                          VAL R28
      684 NEWTABLE                         R63 0 2
      686 MOVE                             R64 R29
      687 MOVE                             R65 R1
      688 SETLIST                          R63 R64 2 [1]
      690 CALL                             R61 2 1
      691 GETUPVAL                         R62 1
      692 GETTABLEKS                       R62 R62 K3 ["useCallback"]
      694 NEWCLOSURE                       R63 P27
      695 CAPTURE                          VAL R1
      696 CAPTURE                          UPVAL U33
      697 NEWTABLE                         R64 0 1
      699 MOVE                             R65 R1
      700 SETLIST                          R64 R65 1 [1]
      702 CALL                             R62 2 1
      703 GETUPVAL                         R63 1
      704 GETTABLEKS                       R63 R63 K3 ["useCallback"]
      706 NEWCLOSURE                       R64 P28
      707 CAPTURE                          VAL R1
      708 NEWTABLE                         R65 0 1
      710 MOVE                             R66 R1
      711 SETLIST                          R65 R66 1 [1]
      713 CALL                             R63 2 1
      714 GETUPVAL                         R64 1
      715 GETTABLEKS                       R64 R64 K3 ["useCallback"]
      717 NEWCLOSURE                       R65 P29
      718 CAPTURE                          VAL R16
      719 NEWTABLE                         R66 0 1
      721 MOVE                             R67 R16
      722 SETLIST                          R66 R67 1 [1]
      724 CALL                             R64 2 1
      725 GETUPVAL                         R65 1
      726 GETTABLEKS                       R65 R65 K3 ["useCallback"]
      728 NEWCLOSURE                       R66 P30
      729 CAPTURE                          VAL R17
      730 CAPTURE                          UPVAL U27
      731 NEWTABLE                         R67 0 1
      733 MOVE                             R68 R17
      734 SETLIST                          R67 R68 1 [1]
      736 CALL                             R65 2 1
      737 GETUPVAL                         R66 1
      738 GETTABLEKS                       R66 R66 K21 ["useMemo"]
      740 NEWCLOSURE                       R67 P31
      741 CAPTURE                          UPVAL U11
      742 CAPTURE                          VAL R3
      743 CAPTURE                          VAL R0
      744 CAPTURE                          UPVAL U24
      745 CAPTURE                          VAL R9
      746 CAPTURE                          UPVAL U3
      747 CAPTURE                          VAL R1
      748 CAPTURE                          UPVAL U27
      749 CAPTURE                          VAL R28
      750 CAPTURE                          VAL R5
      751 CAPTURE                          VAL R31
      752 CAPTURE                          VAL R32
      753 CAPTURE                          VAL R53
      754 CAPTURE                          VAL R55
      755 CAPTURE                          VAL R43
      756 CAPTURE                          VAL R6
      757 CAPTURE                          UPVAL U6
      758 CAPTURE                          UPVAL U33
      759 CAPTURE                          UPVAL U17
      760 NEWTABLE                         R68 0 4
      762 MOVE                             R69 R3
      763 JUMPIFNOT                        R31 ; [+2]
      764 LOADK                            R70 K22 ["y"]
      765 JUMP                             ; [+1]
      766 LOADK                            R70 K23 ["n"]
      767 MOVE                             R71 R1
      768 MOVE                             R72 R55
      769 SETLIST                          R68 R69 4 [1]
      771 CALL                             R66 2 1
      772 GETUPVAL                         R67 11
      773 CALL                             R67 0 1
      774 JUMPIF                           R67 ; [+216]
      775 GETUPVAL                         R67 1
      776 GETTABLEKS                       R67 R67 K24 ["createElement"]
      778 GETUPVAL                         R68 1
      779 GETTABLEKS                       R68 R68 K25 ["Fragment"]
      781 LOADNIL                          R69
      782 DUPTABLE                         R70 K32 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      783 MOVE                             R71 R9
      784 JUMPIFNOT                        R71 ; [+38]
      785 MOVE                             R71 R1
      786 JUMPIFNOT                        R71 ; [+36]
      787 GETUPVAL                         R71 1
      788 GETTABLEKS                       R71 R71 K24 ["createElement"]
      790 GETUPVAL                         R72 34
      791 DUPTABLE                         R73 K40 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation"}]
      792 SETTABLEKS                       R9 R73 K33 ["rigModel"]
      794 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
      796 SETTABLEKS                       R27 R73 K35 ["selectedJointInstance"]
      798 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
      800 MOVE                             R74 R51
      801 JUMP                             ; [+5]
      802 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
      804 MOVE                             R74 R52
      805 JUMP                             ; [+1]
      806 LOADNIL                          R74
      807 SETTABLEKS                       R74 R73 K36 ["onJointClicked"]
      809 LOADB                            R74 1
      810 JUMPIFEQKS                       R3 K42 ["preview"] ; [+5]
      812 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
      814 LOADB                            R74 0 +1
      815 LOADB                            R74 1
      816 SETTABLEKS                       R74 R73 K37 ["applyTposeAdjustment"]
      818 SETTABLEKS                       R38 R73 K38 ["updatePositions"]
      820 SETTABLEKS                       R11 R73 K39 ["DEPRECATED_isPlayingAnimation"]
      822 CALL                             R71 2 1
      823 SETTABLEKS                       R71 R70 K26 ["Adornments"]
      825 LOADB                            R71 0
      826 LENGTH                           R72 R66
      827 LOADN                            R73 0
      828 JUMPIFNOTLT                      R73 R72 ; [+14]
      830 GETUPVAL                         R71 1
      831 GETTABLEKS                       R71 R71 K24 ["createElement"]
      833 GETUPVAL                         R72 35
      834 GETTABLEKS                       R72 R72 K27 ["Toolbar"]
      836 DUPTABLE                         R73 K45 [{"InitialPosition", "HorizontalItems"}]
      837 LOADK                            R74 K46 ["Center"]
      838 SETTABLEKS                       R74 R73 K43 ["InitialPosition"]
      840 SETTABLEKS                       R66 R73 K44 ["HorizontalItems"]
      842 CALL                             R71 2 1
      843 SETTABLEKS                       R71 R70 K27 ["Toolbar"]
      845 GETUPVAL                         R71 1
      846 GETTABLEKS                       R71 R71 K24 ["createElement"]
      848 GETUPVAL                         R72 36
      849 DUPTABLE                         R73 K50 [{"visible", "mode", "onSelect", "localization"}]
      850 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+2]
      852 LOADB                            R74 0 +1
      853 LOADB                            R74 1
      854 SETTABLEKS                       R74 R73 K47 ["visible"]
      856 SETTABLEKS                       R3 R73 K48 ["mode"]
      858 SETTABLEKS                       R5 R73 K49 ["onSelect"]
      860 GETTABLEKS                       R74 R0 K20 ["localization"]
      862 SETTABLEKS                       R74 R73 K20 ["localization"]
      864 CALL                             R71 2 1
      865 SETTABLEKS                       R71 R70 K28 ["ModeSwitcher"]
      867 LOADB                            R71 0
      868 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+50]
      870 MOVE                             R71 R9
      871 JUMPIFNOT                        R71 ; [+47]
      872 MOVE                             R71 R1
      873 JUMPIFNOT                        R71 ; [+45]
      874 GETUPVAL                         R71 1
      875 GETTABLEKS                       R71 R71 K24 ["createElement"]
      877 GETUPVAL                         R72 37
      878 DUPTABLE                         R73 K63 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "onClear", "onClose", "showMannequinImage", "localization", "detectedHrd", "hasModel", "onSelectHrd", "onCreateHrd"}]
      879 SETTABLEKS                       R9 R73 K51 ["model"]
      881 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
      883 SETTABLEKS                       R27 R73 K52 ["selectedJoint"]
      885 SETTABLEKS                       R29 R73 K53 ["armedRigLabel"]
      887 SETTABLEKS                       R60 R73 K54 ["onArmJoint"]
      889 SETTABLEKS                       R50 R73 K55 ["onMapJoint"]
      891 NEWCLOSURE                       R74 P32
      892 CAPTURE                          VAL R28
      893 CAPTURE                          VAL R5
      894 SETTABLEKS                       R74 R73 K56 ["onClear"]
      896 DUPCLOSURE                       R74 K64 [PROTO_85]
      897 SETTABLEKS                       R74 R73 K57 ["onClose"]
      899 LOADB                            R74 1
      900 SETTABLEKS                       R74 R73 K58 ["showMannequinImage"]
      902 GETTABLEKS                       R74 R0 K20 ["localization"]
      904 SETTABLEKS                       R74 R73 K20 ["localization"]
      906 LOADNIL                          R74
      907 SETTABLEKS                       R74 R73 K59 ["detectedHrd"]
      909 LOADB                            R74 0
      910 SETTABLEKS                       R74 R73 K60 ["hasModel"]
      912 DUPCLOSURE                       R74 K65 [PROTO_86]
      913 SETTABLEKS                       R74 R73 K61 ["onSelectHrd"]
      915 DUPCLOSURE                       R74 K66 [PROTO_87]
      916 SETTABLEKS                       R74 R73 K62 ["onCreateHrd"]
      918 CALL                             R71 2 1
      919 SETTABLEKS                       R71 R70 K29 ["Mannequin"]
      921 LOADB                            R71 0
      922 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+50]
      924 MOVE                             R71 R9
      925 JUMPIFNOT                        R71 ; [+47]
      926 MOVE                             R71 R1
      927 JUMPIFNOT                        R71 ; [+45]
      928 GETUPVAL                         R71 1
      929 GETTABLEKS                       R71 R71 K24 ["createElement"]
      931 GETUPVAL                         R72 38
      932 DUPTABLE                         R73 K72 [{"visible", "model", "localization", "autoAll", "resetAll", "onEdit", "stopPlayback", "onPlaybackStateChanged"}]
      933 LOADB                            R74 1
      934 SETTABLEKS                       R74 R73 K47 ["visible"]
      936 SETTABLEKS                       R9 R73 K51 ["model"]
      938 GETTABLEKS                       R74 R0 K20 ["localization"]
      940 SETTABLEKS                       R74 R73 K20 ["localization"]
      942 NEWCLOSURE                       R74 P36
      943 CAPTURE                          VAL R9
      944 CAPTURE                          UPVAL U30
      945 CAPTURE                          VAL R1
      946 SETTABLEKS                       R74 R73 K67 ["autoAll"]
      948 NEWCLOSURE                       R74 P37
      949 CAPTURE                          VAL R9
      950 CAPTURE                          UPVAL U30
      951 CAPTURE                          VAL R1
      952 SETTABLEKS                       R74 R73 K68 ["resetAll"]
      954 NEWCLOSURE                       R74 P38
      955 CAPTURE                          VAL R43
      956 CAPTURE                          VAL R12
      957 CAPTURE                          VAL R5
      958 SETTABLEKS                       R74 R73 K69 ["onEdit"]
      960 NEWCLOSURE                       R74 P39
      961 CAPTURE                          VAL R43
      962 SETTABLEKS                       R74 R73 K70 ["stopPlayback"]
      964 NEWCLOSURE                       R74 P40
      965 CAPTURE                          VAL R12
      966 CAPTURE                          UPVAL U3
      967 CAPTURE                          VAL R1
      968 CAPTURE                          VAL R9
      969 CAPTURE                          VAL R10
      970 SETTABLEKS                       R74 R73 K71 ["onPlaybackStateChanged"]
      972 CALL                             R71 2 1
      973 SETTABLEKS                       R71 R70 K30 ["PreviewToolbar"]
      975 LOADB                            R71 0
      976 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+9]
      978 MOVE                             R71 R49
      979 JUMPIFNOT                        R71 ; [+6]
      980 GETUPVAL                         R71 1
      981 GETTABLEKS                       R71 R71 K24 ["createElement"]
      983 GETUPVAL                         R72 39
      984 MOVE                             R73 R49
      985 CALL                             R71 2 1
      986 SETTABLEKS                       R71 R70 K31 ["Dragger"]
      988 CALL                             R67 3 -1
      989 CLOSEUPVALS                      R15
      990 RETURN                           R67 -1
      991 GETUPVAL                         R67 1
      992 GETTABLEKS                       R67 R67 K24 ["createElement"]
      994 GETUPVAL                         R68 1
      995 GETTABLEKS                       R68 R68 K25 ["Fragment"]
      997 LOADNIL                          R69
      998 DUPTABLE                         R70 K75 [{"Adornments", "Toolbar", "MannequinPortal", "PreviewPlayback", "Dragger"}]
      999 MOVE                             R71 R21
     1000 JUMPIFNOT                        R71 ; [+49]
     1001 MOVE                             R71 R9
     1002 JUMPIFNOT                        R71 ; [+47]
     1003 MOVE                             R71 R1
     1004 JUMPIFNOT                        R71 ; [+45]
     1005 GETUPVAL                         R71 1
     1006 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1008 GETUPVAL                         R72 34
     1009 DUPTABLE                         R73 K80 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "overrideLabels", "onHoveredJointChanged", "mannequinHoveredJointName", "isMappingMode"}]
     1010 SETTABLEKS                       R9 R73 K33 ["rigModel"]
     1012 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
     1014 SETTABLEKS                       R27 R73 K35 ["selectedJointInstance"]
     1016 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
     1018 MOVE                             R74 R51
     1019 JUMP                             ; [+5]
     1020 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1022 MOVE                             R74 R52
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R74
     1025 SETTABLEKS                       R74 R73 K36 ["onJointClicked"]
     1027 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
     1029 LOADB                            R74 0 +1
     1030 LOADB                            R74 1
     1031 SETTABLEKS                       R74 R73 K37 ["applyTposeAdjustment"]
     1033 SETTABLEKS                       R38 R73 K38 ["updatePositions"]
     1035 SETTABLEKS                       R11 R73 K39 ["DEPRECATED_isPlayingAnimation"]
     1037 SETTABLEKS                       R7 R73 K76 ["overrideLabels"]
     1039 SETTABLEKS                       R34 R73 K77 ["onHoveredJointChanged"]
     1041 SETTABLEKS                       R35 R73 K78 ["mannequinHoveredJointName"]
     1043 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
     1045 LOADB                            R74 0 +1
     1046 LOADB                            R74 1
     1047 SETTABLEKS                       R74 R73 K79 ["isMappingMode"]
     1049 CALL                             R71 2 1
     1050 SETTABLEKS                       R71 R70 K26 ["Adornments"]
     1052 MOVE                             R71 R21
     1053 JUMPIFNOT                        R71 ; [+27]
     1054 MOVE                             R71 R9
     1055 JUMPIFNOT                        R71 ; [+25]
     1056 MOVE                             R71 R1
     1057 JUMPIFNOT                        R71 ; [+23]
     1058 LOADB                            R71 0
     1059 LENGTH                           R72 R66
     1060 LOADN                            R73 0
     1061 JUMPIFNOTLT                      R73 R72 ; [+19]
     1063 GETUPVAL                         R71 1
     1064 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1066 GETUPVAL                         R72 35
     1067 GETTABLEKS                       R72 R72 K27 ["Toolbar"]
     1069 DUPTABLE                         R73 K82 [{"InitialPosition", "HorizontalItems", "DisplayOrder"}]
     1070 LOADK                            R74 K46 ["Center"]
     1071 SETTABLEKS                       R74 R73 K43 ["InitialPosition"]
     1073 SETTABLEKS                       R66 R73 K44 ["HorizontalItems"]
     1075 GETUPVAL                         R74 24
     1076 GETTABLEKS                       R74 R74 K83 ["DISPLAY_ORDER_TOOLBAR"]
     1078 SETTABLEKS                       R74 R73 K81 ["DisplayOrder"]
     1080 CALL                             R71 2 1
     1081 SETTABLEKS                       R71 R70 K27 ["Toolbar"]
     1083 GETUPVAL                         R71 1
     1084 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1086 GETUPVAL                         R72 40
     1087 DUPTABLE                         R73 K86 [{"mannequin", "handMannequin"}]
     1088 MOVE                             R74 R21
     1089 JUMPIFNOT                        R74 ; [+92]
     1090 NOT                              R74 R6
     1091 JUMPIFNOT                        R74 ; [+90]
     1092 GETUPVAL                         R74 1
     1093 GETTABLEKS                       R74 R74 K24 ["createElement"]
     1095 GETUPVAL                         R75 37
     1096 DUPTABLE                         R76 K92 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "showMannequinImage", "localization", "detectedHrd", "DEPRECATED_hasHumanoid", "hasModel", "onSelectHrd", "onCreateHrd", "onArmJoint", "onMapJoint", "onClear", "onClose", "onNavigateToHand"}]
     1097 SETTABLEKS                       R9 R76 K51 ["model"]
     1099 SETTABLEKS                       R1 R76 K34 ["rigDescriptor"]
     1101 SETTABLEKS                       R27 R76 K52 ["selectedJoint"]
     1103 SETTABLEKS                       R29 R76 K53 ["armedRigLabel"]
     1105 SETTABLEKS                       R33 R76 K87 ["counterpartHoveredJointName"]
     1107 SETTABLEKS                       R36 R76 K88 ["onDotHoverEnter"]
     1109 SETTABLEKS                       R37 R76 K89 ["onDotHoverLeave"]
     1111 GETUPVAL                         R78 6
     1112 CALL                             R78 0 1
     1113 JUMPIFNOT                        R78 ; [+8]
     1114 LOADB                            R77 1
     1115 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+10]
     1117 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
     1119 LOADB                            R77 0 +1
     1120 LOADB                            R77 1
     1121 JUMP                             ; [+4]
     1122 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
     1124 LOADB                            R77 0 +1
     1125 LOADB                            R77 1
     1126 SETTABLEKS                       R77 R76 K58 ["showMannequinImage"]
     1128 GETTABLEKS                       R77 R0 K20 ["localization"]
     1130 SETTABLEKS                       R77 R76 K20 ["localization"]
     1132 JUMPIF                           R1 ; [+2]
     1133 MOVE                             R77 R16
     1134 JUMP                             ; [+1]
     1135 LOADNIL                          R77
     1136 SETTABLEKS                       R77 R76 K59 ["detectedHrd"]
     1138 JUMPIF                           R1 ; [+2]
     1139 MOVE                             R77 R18
     1140 JUMP                             ; [+1]
     1141 LOADB                            R77 0
     1142 SETTABLEKS                       R77 R76 K90 ["DEPRECATED_hasHumanoid"]
     1144 JUMPIF                           R1 ; [+5]
     1145 JUMPIFNOTEQKNIL                  R17 ; [+2]
     1147 LOADB                            R77 0 +1
     1148 LOADB                            R77 1
     1149 JUMP                             ; [+1]
     1150 LOADB                            R77 0
     1151 SETTABLEKS                       R77 R76 K60 ["hasModel"]
     1153 SETTABLEKS                       R64 R76 K61 ["onSelectHrd"]
     1155 SETTABLEKS                       R65 R76 K62 ["onCreateHrd"]
     1157 SETTABLEKS                       R60 R76 K54 ["onArmJoint"]
     1159 GETUPVAL                         R78 6
     1160 CALL                             R78 0 1
     1161 JUMPIFNOT                        R78 ; [+4]
     1162 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1164 DUPCLOSURE                       R77 K93 [PROTO_93]
     1165 JUMP                             ; [+1]
     1166 MOVE                             R77 R50
     1167 SETTABLEKS                       R77 R76 K55 ["onMapJoint"]
     1169 SETTABLEKS                       R59 R76 K56 ["onClear"]
     1171 SETTABLEKS                       R26 R76 K57 ["onClose"]
     1173 GETUPVAL                         R78 11
     1174 CALL                             R78 0 1
     1175 JUMPIFNOT                        R78 ; [+2]
     1176 MOVE                             R77 R62
     1177 JUMP                             ; [+1]
     1178 LOADNIL                          R77
     1179 SETTABLEKS                       R77 R76 K91 ["onNavigateToHand"]
     1181 CALL                             R74 2 1
     1182 SETTABLEKS                       R74 R73 K84 ["mannequin"]
     1184 MOVE                             R74 R21
     1185 JUMPIFNOT                        R74 ; [+58]
     1186 MOVE                             R74 R6
     1187 JUMPIFNOT                        R74 ; [+56]
     1188 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+7]
     1190 GETUPVAL                         R74 6
     1191 CALL                             R74 0 1
     1192 JUMPIFNOT                        R74 ; [+51]
     1193 LOADB                            R74 0
     1194 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+49]
     1196 MOVE                             R74 R9
     1197 JUMPIFNOT                        R74 ; [+46]
     1198 MOVE                             R74 R1
     1199 JUMPIFNOT                        R74 ; [+44]
     1200 GETUPVAL                         R74 1
     1201 GETTABLEKS                       R74 R74 K24 ["createElement"]
     1203 GETUPVAL                         R75 41
     1204 DUPTABLE                         R76 K96 [{"model", "rigDescriptor", "descriptorKind", "localization", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "onNavigateToBody", "onArmJoint", "onMapJoint", "onClear", "onClose"}]
     1205 SETTABLEKS                       R9 R76 K51 ["model"]
     1207 SETTABLEKS                       R1 R76 K34 ["rigDescriptor"]
     1209 SETTABLEKS                       R2 R76 K94 ["descriptorKind"]
     1211 GETTABLEKS                       R77 R0 K20 ["localization"]
     1213 SETTABLEKS                       R77 R76 K20 ["localization"]
     1215 SETTABLEKS                       R27 R76 K52 ["selectedJoint"]
     1217 SETTABLEKS                       R29 R76 K53 ["armedRigLabel"]
     1219 SETTABLEKS                       R33 R76 K87 ["counterpartHoveredJointName"]
     1221 SETTABLEKS                       R36 R76 K88 ["onDotHoverEnter"]
     1223 SETTABLEKS                       R37 R76 K89 ["onDotHoverLeave"]
     1225 SETTABLEKS                       R63 R76 K95 ["onNavigateToBody"]
     1227 SETTABLEKS                       R61 R76 K54 ["onArmJoint"]
     1229 GETUPVAL                         R78 6
     1230 CALL                             R78 0 1
     1231 JUMPIFNOT                        R78 ; [+4]
     1232 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1234 DUPCLOSURE                       R77 K97 [PROTO_94]
     1235 JUMP                             ; [+1]
     1236 MOVE                             R77 R50
     1237 SETTABLEKS                       R77 R76 K55 ["onMapJoint"]
     1239 SETTABLEKS                       R59 R76 K56 ["onClear"]
     1241 SETTABLEKS                       R26 R76 K57 ["onClose"]
     1243 CALL                             R74 2 1
     1244 SETTABLEKS                       R74 R73 K85 ["handMannequin"]
     1246 CALL                             R71 2 1
     1247 SETTABLEKS                       R71 R70 K73 ["MannequinPortal"]
     1249 MOVE                             R71 R21
     1250 JUMPIFNOT                        R71 ; [+16]
     1251 MOVE                             R71 R9
     1252 JUMPIFNOT                        R71 ; [+14]
     1253 MOVE                             R71 R57
     1254 JUMPIFNOT                        R71 ; [+12]
     1255 GETUPVAL                         R71 1
     1256 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1258 GETUPVAL                         R72 42
     1259 DUPTABLE                         R73 K100 [{"model", "animationId", "isPlaying"}]
     1260 SETTABLEKS                       R9 R73 K51 ["model"]
     1262 SETTABLEKS                       R56 R73 K98 ["animationId"]
     1264 SETTABLEKS                       R57 R73 K99 ["isPlaying"]
     1266 CALL                             R71 2 1
     1267 SETTABLEKS                       R71 R70 K74 ["PreviewPlayback"]
     1269 MOVE                             R71 R21
     1270 JUMPIFNOT                        R71 ; [+21]
     1271 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+7]
     1273 GETUPVAL                         R71 6
     1274 CALL                             R71 0 1
     1275 JUMPIFNOT                        R71 ; [+16]
     1276 LOADB                            R71 0
     1277 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+14]
     1279 MOVE                             R71 R49
     1280 JUMPIFNOT                        R71 ; [+11]
     1281 GETUPVAL                         R72 23
     1282 CALL                             R72 0 1
     1283 JUMPIFNOT                        R72 ; [+2]
     1284 NOT                              R71 R11
     1285 JUMPIFNOT                        R71 ; [+6]
     1286 GETUPVAL                         R71 1
     1287 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1289 GETUPVAL                         R72 39
     1290 MOVE                             R73 R49
     1291 CALL                             R71 2 1
     1292 SETTABLEKS                       R71 R70 K31 ["Dragger"]
     1294 CALL                             R67 3 -1
     1295 CLOSEUPVALS                      R15
     1296 RETURN                           R67 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["SymmetryUtils"]
       23 GETTABLEKS                       R4 R2 K10 ["TransformUtils"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["Adornments"]
       33 GETTABLEKS                       R6 R6 K14 ["JointAdornments"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R5 R5 K14 ["JointAdornments"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Src"]
       42 GETTABLEKS                       R7 R7 K12 ["Components"]
       44 GETTABLEKS                       R7 R7 K15 ["PreviewToolbar"]
       46 GETTABLEKS                       R7 R7 K16 ["PreviewPlayback"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Src"]
       53 GETTABLEKS                       R8 R8 K12 ["Components"]
       55 GETTABLEKS                       R8 R8 K15 ["PreviewToolbar"]
       57 GETTABLEKS                       R8 R8 K17 ["usePreviewPlaybackItems"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K11 ["Src"]
       64 GETTABLEKS                       R9 R9 K12 ["Components"]
       66 GETTABLEKS                       R9 R9 K15 ["PreviewToolbar"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["PreviewActions"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Src"]
       80 GETTABLEKS                       R11 R11 K12 ["Components"]
       82 GETTABLEKS                       R11 R11 K19 ["ModeSwitcher"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Packages"]
       89 GETTABLEKS                       R12 R12 K20 ["ViewportToolingFramework"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K11 ["Src"]
       96 GETTABLEKS                       R13 R13 K12 ["Components"]
       98 GETTABLEKS                       R13 R13 K21 ["MannequinSelector"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K11 ["Src"]
      105 GETTABLEKS                       R14 R14 K12 ["Components"]
      107 GETTABLEKS                       R14 R14 K22 ["HandMannequinSelector"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K11 ["Src"]
      114 GETTABLEKS                       R15 R15 K23 ["Utils"]
      116 GETTABLEKS                       R15 R15 K24 ["UndoUtils"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K11 ["Src"]
      123 GETTABLEKS                       R16 R16 K25 ["TposeActions"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K11 ["Src"]
      130 GETTABLEKS                       R17 R17 K12 ["Components"]
      132 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      134 GETTABLEKS                       R17 R17 K27 ["useHRDDraggerProps"]
      136 CALL                             R16 1 1
      137 GETTABLEKS                       R17 R0 K6 ["Packages"]
      139 GETTABLEKS                       R17 R17 K28 ["DraggerFramework"]
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R19 R17 K29 ["DraggerTools"]
      145 GETTABLEKS                       R19 R19 K30 ["DraggerToolComponent"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K11 ["Src"]
      152 GETTABLEKS                       R20 R20 K31 ["Types"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R0 K11 ["Src"]
      159 GETTABLEKS                       R21 R21 K32 ["Resources"]
      161 GETTABLEKS                       R21 R21 K33 ["Constants"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K35 [game]
      166 LOADK                            R23 K36 ["CoreGui"]
      167 NAMECALL                         R21 R21 K37 ["GetService"]
      169 CALL                             R21 2 1
      170 GETIMPORT                        R22 K35 [game]
      172 LOADK                            R24 K38 ["Selection"]
      173 NAMECALL                         R22 R22 K37 ["GetService"]
      175 CALL                             R22 2 1
      176 GETIMPORT                        R23 K5 [require]
      178 GETTABLEKS                       R24 R0 K6 ["Packages"]
      180 GETTABLEKS                       R24 R24 K39 ["ReactRoblox"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K5 [require]
      185 GETTABLEKS                       R25 R0 K6 ["Packages"]
      187 GETTABLEKS                       R25 R25 K40 ["StudioFoundation"]
      189 CALL                             R24 1 1
      190 GETIMPORT                        R25 K5 [require]
      192 GETTABLEKS                       R26 R0 K11 ["Src"]
      194 GETTABLEKS                       R26 R26 K12 ["Components"]
      196 GETTABLEKS                       R26 R26 K26 ["Hooks"]
      198 GETTABLEKS                       R26 R26 K41 ["useSelectedRigDescriptor"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K5 [require]
      203 GETTABLEKS                       R27 R0 K11 ["Src"]
      205 GETTABLEKS                       R27 R27 K12 ["Components"]
      207 GETTABLEKS                       R27 R27 K26 ["Hooks"]
      209 GETTABLEKS                       R27 R27 K42 ["useClearPrevDescriptorTransforms"]
      211 CALL                             R26 1 1
      212 GETIMPORT                        R27 K5 [require]
      214 GETTABLEKS                       R28 R0 K11 ["Src"]
      216 GETTABLEKS                       R28 R28 K12 ["Components"]
      218 GETTABLEKS                       R28 R28 K26 ["Hooks"]
      220 GETTABLEKS                       R28 R28 K43 ["usePreviewAutoInitializeRig"]
      222 CALL                             R27 1 1
      223 GETIMPORT                        R28 K5 [require]
      225 GETTABLEKS                       R29 R0 K11 ["Src"]
      227 GETTABLEKS                       R29 R29 K12 ["Components"]
      229 GETTABLEKS                       R29 R29 K26 ["Hooks"]
      231 GETTABLEKS                       R29 R29 K44 ["useEnsureAnimator"]
      233 CALL                             R28 1 1
      234 GETIMPORT                        R29 K5 [require]
      236 GETTABLEKS                       R30 R0 K11 ["Src"]
      238 GETTABLEKS                       R30 R30 K12 ["Components"]
      240 GETTABLEKS                       R30 R30 K26 ["Hooks"]
      242 GETTABLEKS                       R30 R30 K45 ["usePluginLifecycleOnRigDescriptor"]
      244 CALL                             R29 1 1
      245 GETIMPORT                        R30 K5 [require]
      247 GETTABLEKS                       R31 R0 K11 ["Src"]
      249 GETTABLEKS                       R31 R31 K12 ["Components"]
      251 GETTABLEKS                       R31 R31 K26 ["Hooks"]
      253 GETTABLEKS                       R31 R31 K46 ["useRigModel"]
      255 CALL                             R30 1 1
      256 GETIMPORT                        R31 K5 [require]
      258 GETTABLEKS                       R32 R0 K11 ["Src"]
      260 GETTABLEKS                       R32 R32 K12 ["Components"]
      262 GETTABLEKS                       R32 R32 K26 ["Hooks"]
      264 GETTABLEKS                       R32 R32 K47 ["useSelectionContext"]
      266 CALL                             R31 1 1
      267 GETIMPORT                        R32 K5 [require]
      269 GETTABLEKS                       R33 R0 K11 ["Src"]
      271 GETTABLEKS                       R33 R33 K48 ["Flags"]
      273 GETTABLEKS                       R33 R33 K49 ["getFFlagAdaptiveAnimatonImprovements"]
      275 CALL                             R32 1 1
      276 GETIMPORT                        R33 K5 [require]
      278 GETTABLEKS                       R34 R0 K11 ["Src"]
      280 GETTABLEKS                       R34 R34 K48 ["Flags"]
      282 GETTABLEKS                       R34 R34 K50 ["getFFlagAdaptiveAnimationConstraints"]
      284 CALL                             R33 1 1
      285 GETIMPORT                        R34 K5 [require]
      287 GETTABLEKS                       R35 R0 K11 ["Src"]
      289 GETTABLEKS                       R35 R35 K48 ["Flags"]
      291 GETTABLEKS                       R35 R35 K51 ["getFFlagAdaptiveAnimationHandRig"]
      293 CALL                             R34 1 1
      294 GETIMPORT                        R35 K5 [require]
      296 GETTABLEKS                       R36 R0 K11 ["Src"]
      298 GETTABLEKS                       R36 R36 K48 ["Flags"]
      300 GETTABLEKS                       R36 R36 K52 ["getFFlagAdaptiveAnimationHandRigQoL"]
      302 CALL                             R35 1 1
      303 GETIMPORT                        R36 K5 [require]
      305 GETTABLEKS                       R37 R0 K11 ["Src"]
      307 GETTABLEKS                       R37 R37 K48 ["Flags"]
      309 GETTABLEKS                       R37 R37 K53 ["getFFlagAdaptiveAnimationBetaImprovements"]
      311 CALL                             R36 1 1
      312 GETIMPORT                        R37 K5 [require]
      314 GETTABLEKS                       R38 R0 K11 ["Src"]
      316 GETTABLEKS                       R38 R38 K48 ["Flags"]
      318 GETTABLEKS                       R38 R38 K54 ["getFFlagAdaptiveAnimationBoneSymmetry"]
      320 CALL                             R37 1 1
      321 GETIMPORT                        R38 K5 [require]
      323 GETTABLEKS                       R39 R0 K11 ["Src"]
      325 GETTABLEKS                       R39 R39 K48 ["Flags"]
      327 GETTABLEKS                       R39 R39 K55 ["getFFlagAdaptiveAnimationNaNFix"]
      329 CALL                             R38 1 1
      330 GETIMPORT                        R39 K5 [require]
      332 GETTABLEKS                       R40 R0 K11 ["Src"]
      334 GETTABLEKS                       R40 R40 K48 ["Flags"]
      336 GETTABLEKS                       R40 R40 K56 ["getFFlagAdaptiveAnimationPreviewResetFix"]
      338 CALL                             R39 1 1
      339 GETIMPORT                        R40 K5 [require]
      341 GETTABLEKS                       R41 R0 K11 ["Src"]
      343 GETTABLEKS                       R41 R41 K23 ["Utils"]
      345 GETTABLEKS                       R41 R41 K57 ["DigitsRigUtils"]
      347 CALL                             R40 1 1
      348 GETIMPORT                        R41 K5 [require]
      350 GETTABLEKS                       R42 R0 K11 ["Src"]
      352 GETTABLEKS                       R42 R42 K58 ["PluginMode"]
      354 CALL                             R41 1 1
      355 DUPCLOSURE                       R42 K59 [PROTO_0]
      356 CAPTURE                          VAL R3
      357 DUPCLOSURE                       R43 K60 [PROTO_1]
      358 DUPCLOSURE                       R44 K61 [PROTO_2]
      359 DUPCLOSURE                       R45 K62 [PROTO_3]
      360 DUPCLOSURE                       R46 K63 [PROTO_4]
      361 CAPTURE                          VAL R2
      362 DUPCLOSURE                       R47 K64 [PROTO_5]
      363 DUPCLOSURE                       R48 K65 [PROTO_7]
      364 DUPCLOSURE                       R49 K66 [PROTO_8]
      365 CAPTURE                          VAL R2
      366 DUPCLOSURE                       R50 K67 [PROTO_9]
      367 CAPTURE                          VAL R47
      368 CAPTURE                          VAL R36
      369 CAPTURE                          VAL R2
      370 DUPCLOSURE                       R51 K68 [PROTO_10]
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R23
      373 CAPTURE                          VAL R20
      374 CAPTURE                          VAL R24
      375 CAPTURE                          VAL R21
      376 DUPCLOSURE                       R52 K69 [PROTO_95]
      377 CAPTURE                          VAL R25
      378 CAPTURE                          VAL R1
      379 CAPTURE                          VAL R41
      380 CAPTURE                          VAL R2
      381 CAPTURE                          VAL R30
      382 CAPTURE                          VAL R28
      383 CAPTURE                          VAL R35
      384 CAPTURE                          VAL R26
      385 CAPTURE                          VAL R27
      386 CAPTURE                          VAL R29
      387 CAPTURE                          VAL R31
      388 CAPTURE                          VAL R34
      389 CAPTURE                          VAL R22
      390 CAPTURE                          VAL R4
      391 CAPTURE                          VAL R44
      392 CAPTURE                          VAL R3
      393 CAPTURE                          VAL R38
      394 CAPTURE                          VAL R40
      395 CAPTURE                          VAL R37
      396 CAPTURE                          VAL R33
      397 CAPTURE                          VAL R47
      398 CAPTURE                          VAL R16
      399 CAPTURE                          VAL R32
      400 CAPTURE                          VAL R36
      401 CAPTURE                          VAL R20
      402 CAPTURE                          VAL R45
      403 CAPTURE                          VAL R46
      404 CAPTURE                          VAL R14
      405 CAPTURE                          VAL R49
      406 CAPTURE                          VAL R15
      407 CAPTURE                          VAL R9
      408 CAPTURE                          VAL R39
      409 CAPTURE                          VAL R7
      410 CAPTURE                          VAL R50
      411 CAPTURE                          VAL R5
      412 CAPTURE                          VAL R11
      413 CAPTURE                          VAL R10
      414 CAPTURE                          VAL R12
      415 CAPTURE                          VAL R8
      416 CAPTURE                          VAL R18
      417 CAPTURE                          VAL R51
      418 CAPTURE                          VAL R13
      419 CAPTURE                          VAL R6
      420 DUPTABLE                         R53 K72 [{"AdaptiveAnimationRoot", "_test"}]
      421 SETTABLEKS                       R52 R53 K70 ["AdaptiveAnimationRoot"]
      423 DUPTABLE                         R54 K79 [{"findLabelForJoint", "computeDeprecatedCounterpartName", "clearConflictingMappings", "clearJointFromOtherDescriptors", "findExistingHandDescription", "ensureHandDescription"}]
      424 SETTABLEKS                       R43 R54 K73 ["findLabelForJoint"]
      426 SETTABLEKS                       R44 R54 K74 ["computeDeprecatedCounterpartName"]
      428 SETTABLEKS                       R45 R54 K75 ["clearConflictingMappings"]
      430 SETTABLEKS                       R46 R54 K76 ["clearJointFromOtherDescriptors"]
      432 SETTABLEKS                       R47 R54 K77 ["findExistingHandDescription"]
      434 SETTABLEKS                       R50 R54 K78 ["ensureHandDescription"]
      436 SETTABLEKS                       R54 R53 K71 ["_test"]
      438 RETURN                           R53 1
