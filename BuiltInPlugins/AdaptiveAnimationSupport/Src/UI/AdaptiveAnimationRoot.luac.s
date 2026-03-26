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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+28]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K0 ["current"]
       10 JUMPIF                           R0 ; [+23]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R0 R1 K1 ["pluginLoaderContext"]
       14 JUMPIFNOT                        R0 ; [+16]
       15 GETTABLEKS                       R1 R0 K2 ["actionTriggeredSignals"]
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K3 ["Plugin"]
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

PROTO_15:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_15]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["Parent"]
        8 SETLIST                          R2 R3 1 [1]
       10 NAMECALL                         R0 R0 K1 ["Set"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K2 ["pluginLoaderContext"]
       16 JUMPIFNOT                        R0 ; [+16]
       17 GETTABLEKS                       R1 R0 K3 ["actionTriggeredSignals"]
       19 JUMPIFNOT                        R1 ; [+13]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K4 ["Plugin"]
       23 LOADK                            R3 K5 ["Actions"]
       24 NAMECALL                         R1 R1 K6 ["GetPluginComponent"]
       26 CALL                             R1 2 1
       27 GETIMPORT                        R2 K9 [task.spawn]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 3
       34 LOADB                            R2 0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 ADDK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+8]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["onPlaybackStopped"]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 4
       13 GETUPVAL                         R5 5
       14 CALL                             R1 4 0
       15 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 RETURN                           R0 0

PROTO_55:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_55]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_59:
        0 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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
      189 DUPCLOSURE                       R4 K30 [PROTO_54]
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
      279 DUPCLOSURE                       R8 K42 [PROTO_59]
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_73:
        0 RETURN                           R0 0

PROTO_74:
        0 RETURN                           R0 0

PROTO_75:
        0 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_80:
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

PROTO_81:
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
       91 GETTABLEKS                       R20 R21 K11 ["useRef"]
       93 MOVE                             R21 R17
       94 CALL                             R20 1 1
       95 SETTABLEKS                       R17 R20 K12 ["current"]
       97 GETUPVAL                         R22 1
       98 GETTABLEKS                       R21 R22 K2 ["useEffect"]
      100 NEWCLOSURE                       R22 P2
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R19
      104 NEWTABLE                         R23 0 2
      106 MOVE                             R24 R19
      107 GETTABLEKS                       R25 R0 K13 ["pluginLoaderContext"]
      109 SETLIST                          R23 R24 2 [1]
      111 CALL                             R21 2 0
      112 GETUPVAL                         R22 1
      113 GETTABLEKS                       R21 R22 K2 ["useEffect"]
      115 NEWCLOSURE                       R22 P3
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R18
      121 NEWTABLE                         R23 0 3
      123 MOVE                             R24 R1
      124 GETTABLEKS                       R25 R0 K13 ["pluginLoaderContext"]
      126 GETTABLEKS                       R26 R0 K10 ["Plugin"]
      128 SETLIST                          R23 R24 3 [1]
      130 CALL                             R21 2 0
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R21 R22 K2 ["useEffect"]
      134 NEWCLOSURE                       R22 P4
      135 CAPTURE                          UPVAL U10
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R18
      138 NEWTABLE                         R23 0 1
      140 GETTABLEKS                       R24 R0 K13 ["pluginLoaderContext"]
      142 SETLIST                          R23 R24 1 [1]
      144 CALL                             R21 2 0
      145 GETUPVAL                         R22 1
      146 GETTABLEKS                       R21 R22 K3 ["useCallback"]
      148 NEWCLOSURE                       R22 P5
      149 CAPTURE                          VAL R1
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R18
      153 NEWTABLE                         R23 0 3
      155 MOVE                             R24 R1
      156 GETTABLEKS                       R25 R0 K13 ["pluginLoaderContext"]
      158 GETTABLEKS                       R26 R0 K10 ["Plugin"]
      160 SETLIST                          R23 R24 3 [1]
      162 CALL                             R21 2 1
      163 GETUPVAL                         R23 1
      164 GETTABLEKS                       R22 R23 K0 ["useState"]
      166 LOADNIL                          R23
      167 CALL                             R22 1 2
      168 GETUPVAL                         R25 1
      169 GETTABLEKS                       R24 R25 K0 ["useState"]
      171 LOADNIL                          R25
      172 CALL                             R24 1 2
      173 GETUPVAL                         R27 1
      174 GETTABLEKS                       R26 R27 K0 ["useState"]
      176 LOADB                            R27 1
      177 CALL                             R26 1 2
      178 GETUPVAL                         R29 1
      179 GETTABLEKS                       R28 R29 K0 ["useState"]
      181 LOADNIL                          R29
      182 CALL                             R28 1 2
      183 GETUPVAL                         R31 1
      184 GETTABLEKS                       R30 R31 K0 ["useState"]
      186 LOADNIL                          R31
      187 CALL                             R30 1 2
      188 GETUPVAL                         R33 1
      189 GETTABLEKS                       R32 R33 K3 ["useCallback"]
      191 NEWCLOSURE                       R33 P6
      192 CAPTURE                          VAL R31
      193 NEWTABLE                         R34 0 0
      195 CALL                             R32 2 1
      196 GETUPVAL                         R34 1
      197 GETTABLEKS                       R33 R34 K14 ["useBinding"]
      199 LOADN                            R34 0
      200 CALL                             R33 1 2
      201 GETUPVAL                         R36 1
      202 GETTABLEKS                       R35 R36 K11 ["useRef"]
      204 LOADB                            R36 0
      205 CALL                             R35 1 1
      206 GETUPVAL                         R37 1
      207 GETTABLEKS                       R36 R37 K11 ["useRef"]
      209 NEWTABLE                         R37 0 0
      211 CALL                             R36 1 1
      212 GETUPVAL                         R38 1
      213 GETTABLEKS                       R37 R38 K11 ["useRef"]
      215 LOADNIL                          R38
      216 CALL                             R37 1 1
      217 GETUPVAL                         R39 1
      218 GETTABLEKS                       R38 R39 K11 ["useRef"]
      220 LOADNIL                          R39
      221 CALL                             R38 1 1
      222 GETUPVAL                         R40 1
      223 GETTABLEKS                       R39 R40 K2 ["useEffect"]
      225 NEWCLOSURE                       R40 P7
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R34
      228 CAPTURE                          VAL R33
      229 NEWTABLE                         R41 0 1
      231 MOVE                             R42 R11
      232 SETLIST                          R41 R42 1 [1]
      234 CALL                             R39 2 0
      235 GETUPVAL                         R40 12
      236 GETTABLEKS                       R39 R40 K15 ["isIdentityTransform"]
      238 GETUPVAL                         R41 1
      239 GETTABLEKS                       R40 R41 K3 ["useCallback"]
      241 NEWCLOSURE                       R41 P8
      242 CAPTURE                          VAL R35
      243 CAPTURE                          UPVAL U3
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R26
      247 CAPTURE                          UPVAL U13
      248 CAPTURE                          UPVAL U14
      249 NEWTABLE                         R42 0 2
      251 MOVE                             R43 R1
      252 MOVE                             R44 R26
      253 SETLIST                          R42 R43 2 [1]
      255 CALL                             R40 2 1
      256 GETUPVAL                         R42 1
      257 GETTABLEKS                       R41 R42 K3 ["useCallback"]
      259 NEWCLOSURE                       R42 P9
      260 CAPTURE                          VAL R35
      261 CAPTURE                          VAL R37
      262 CAPTURE                          VAL R36
      263 CAPTURE                          UPVAL U12
      264 CAPTURE                          VAL R6
      265 CAPTURE                          UPVAL U15
      266 CAPTURE                          VAL R1
      267 CAPTURE                          UPVAL U3
      268 CAPTURE                          VAL R26
      269 CAPTURE                          VAL R39
      270 CAPTURE                          UPVAL U14
      271 CAPTURE                          UPVAL U16
      272 NEWTABLE                         R43 0 2
      274 MOVE                             R44 R1
      275 MOVE                             R45 R26
      276 SETLIST                          R43 R44 2 [1]
      278 CALL                             R41 2 1
      279 GETUPVAL                         R42 17
      280 MOVE                             R43 R22
      281 MOVE                             R44 R1
      282 MOVE                             R45 R26
      283 GETUPVAL                         R47 18
      284 CALL                             R47 0 1
      285 JUMPIFNOT                        R47 ; [+2]
      286 MOVE                             R46 R41
      287 JUMP                             ; [+1]
      288 MOVE                             R46 R40
      289 CALL                             R42 4 1
      290 GETUPVAL                         R44 1
      291 GETTABLEKS                       R43 R44 K2 ["useEffect"]
      293 NEWCLOSURE                       R44 P10
      294 CAPTURE                          VAL R23
      295 CAPTURE                          VAL R25
      296 CAPTURE                          UPVAL U10
      297 CAPTURE                          VAL R5
      298 CAPTURE                          VAL R36
      299 NEWTABLE                         R45 0 1
      301 MOVE                             R46 R1
      302 SETLIST                          R45 R46 1 [1]
      304 CALL                             R43 2 0
      305 GETUPVAL                         R44 1
      306 GETTABLEKS                       R43 R44 K2 ["useEffect"]
      308 NEWCLOSURE                       R44 P11
      309 CAPTURE                          VAL R1
      310 CAPTURE                          VAL R9
      311 CAPTURE                          VAL R10
      312 CAPTURE                          VAL R6
      313 CAPTURE                          UPVAL U10
      314 CAPTURE                          VAL R3
      315 CAPTURE                          UPVAL U3
      316 CAPTURE                          VAL R34
      317 CAPTURE                          VAL R33
      318 CAPTURE                          UPVAL U19
      319 CAPTURE                          VAL R35
      320 NEWTABLE                         R45 0 4
      322 MOVE                             R46 R3
      323 MOVE                             R47 R1
      324 MOVE                             R48 R9
      325 MOVE                             R49 R10
      326 SETLIST                          R45 R46 4 [1]
      328 CALL                             R43 2 0
      329 GETUPVAL                         R44 1
      330 GETTABLEKS                       R43 R44 K2 ["useEffect"]
      332 NEWCLOSURE                       R44 P12
      333 CAPTURE                          VAL R1
      334 CAPTURE                          VAL R9
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R3
      337 CAPTURE                          UPVAL U3
      338 CAPTURE                          VAL R34
      339 CAPTURE                          VAL R33
      340 CAPTURE                          UPVAL U19
      341 CAPTURE                          VAL R35
      342 CAPTURE                          UPVAL U15
      343 NEWTABLE                         R45 0 4
      345 MOVE                             R46 R3
      346 MOVE                             R47 R1
      347 MOVE                             R48 R2
      348 MOVE                             R49 R9
      349 SETLIST                          R45 R46 4 [1]
      351 CALL                             R43 2 0
      352 GETUPVAL                         R44 1
      353 GETTABLEKS                       R43 R44 K2 ["useEffect"]
      355 NEWCLOSURE                       R44 P13
      356 CAPTURE                          VAL R36
      357 NEWTABLE                         R45 0 3
      359 MOVE                             R46 R22
      360 MOVE                             R47 R26
      361 MOVE                             R48 R3
      362 SETLIST                          R45 R46 3 [1]
      364 CALL                             R43 2 0
      365 GETUPVAL                         R44 1
      366 GETTABLEKS                       R43 R44 K3 ["useCallback"]
      368 NEWCLOSURE                       R44 P14
      369 CAPTURE                          UPVAL U20
      370 CAPTURE                          VAL R1
      371 CAPTURE                          VAL R8
      372 CAPTURE                          UPVAL U21
      373 CAPTURE                          UPVAL U22
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R25
      376 NEWTABLE                         R45 0 2
      378 MOVE                             R46 R1
      379 MOVE                             R47 R8
      380 SETLIST                          R45 R46 2 [1]
      382 CALL                             R43 2 1
      383 GETUPVAL                         R45 1
      384 GETTABLEKS                       R44 R45 K3 ["useCallback"]
      386 NEWCLOSURE                       R45 P15
      387 CAPTURE                          VAL R24
      388 CAPTURE                          VAL R43
      389 CAPTURE                          VAL R23
      390 NEWTABLE                         R46 0 2
      392 MOVE                             R47 R24
      393 MOVE                             R48 R43
      394 SETLIST                          R46 R47 2 [1]
      396 CALL                             R44 2 1
      397 GETUPVAL                         R46 1
      398 GETTABLEKS                       R45 R46 K3 ["useCallback"]
      400 NEWCLOSURE                       R46 P16
      401 CAPTURE                          VAL R1
      402 CAPTURE                          VAL R8
      403 CAPTURE                          VAL R23
      404 NEWTABLE                         R47 0 2
      406 MOVE                             R48 R1
      407 MOVE                             R49 R8
      408 SETLIST                          R47 R48 2 [1]
      410 CALL                             R45 2 1
      411 GETUPVAL                         R47 1
      412 GETTABLEKS                       R46 R47 K3 ["useCallback"]
      414 NEWCLOSURE                       R47 P17
      415 CAPTURE                          VAL R6
      416 CAPTURE                          UPVAL U23
      417 CAPTURE                          VAL R1
      418 CAPTURE                          VAL R9
      419 CAPTURE                          VAL R10
      420 NEWTABLE                         R48 0 4
      422 MOVE                             R49 R6
      423 MOVE                             R50 R1
      424 MOVE                             R51 R9
      425 MOVE                             R52 R10
      426 SETLIST                          R48 R49 4 [1]
      428 CALL                             R46 2 1
      429 GETUPVAL                         R48 1
      430 GETTABLEKS                       R47 R48 K3 ["useCallback"]
      432 NEWCLOSURE                       R48 P18
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R1
      435 CAPTURE                          VAL R6
      436 CAPTURE                          UPVAL U24
      437 CAPTURE                          VAL R10
      438 CAPTURE                          VAL R3
      439 NEWTABLE                         R49 0 5
      441 MOVE                             R50 R9
      442 MOVE                             R51 R1
      443 MOVE                             R52 R10
      444 MOVE                             R53 R3
      445 MOVE                             R54 R6
      446 SETLIST                          R49 R50 5 [1]
      448 CALL                             R47 2 1
      449 GETUPVAL                         R48 25
      450 MOVE                             R49 R47
      451 GETTABLEKS                       R50 R0 K16 ["localization"]
      453 MOVE                             R51 R9
      454 CALL                             R48 3 4
      455 GETUPVAL                         R53 1
      456 GETTABLEKS                       R52 R53 K2 ["useEffect"]
      458 NEWCLOSURE                       R53 P19
      459 CAPTURE                          VAL R38
      460 CAPTURE                          VAL R51
      461 NEWTABLE                         R54 0 1
      463 MOVE                             R55 R51
      464 SETLIST                          R54 R55 1 [1]
      466 CALL                             R52 2 0
      467 GETUPVAL                         R53 1
      468 GETTABLEKS                       R52 R53 K2 ["useEffect"]
      470 NEWCLOSURE                       R53 P20
      471 CAPTURE                          VAL R12
      472 CAPTURE                          VAL R50
      473 NEWTABLE                         R54 0 1
      475 MOVE                             R55 R50
      476 SETLIST                          R54 R55 1 [1]
      478 CALL                             R52 2 0
      479 GETUPVAL                         R53 1
      480 GETTABLEKS                       R52 R53 K3 ["useCallback"]
      482 NEWCLOSURE                       R53 P21
      483 CAPTURE                          VAL R23
      484 CAPTURE                          VAL R25
      485 NEWTABLE                         R54 0 0
      487 CALL                             R52 2 1
      488 GETUPVAL                         R54 1
      489 GETTABLEKS                       R53 R54 K3 ["useCallback"]
      491 NEWCLOSURE                       R54 P22
      492 CAPTURE                          VAL R24
      493 CAPTURE                          VAL R25
      494 CAPTURE                          VAL R1
      495 CAPTURE                          VAL R23
      496 NEWTABLE                         R55 0 2
      498 MOVE                             R56 R24
      499 MOVE                             R57 R1
      500 SETLIST                          R55 R56 2 [1]
      502 CALL                             R53 2 1
      503 GETUPVAL                         R55 1
      504 GETTABLEKS                       R54 R55 K3 ["useCallback"]
      506 NEWCLOSURE                       R55 P23
      507 CAPTURE                          VAL R24
      508 CAPTURE                          VAL R25
      509 CAPTURE                          VAL R1
      510 CAPTURE                          VAL R23
      511 NEWTABLE                         R56 0 2
      513 MOVE                             R57 R24
      514 MOVE                             R58 R1
      515 SETLIST                          R56 R57 2 [1]
      517 CALL                             R54 2 1
      518 GETUPVAL                         R56 1
      519 GETTABLEKS                       R55 R56 K3 ["useCallback"]
      521 NEWCLOSURE                       R56 P24
      522 CAPTURE                          VAL R1
      523 CAPTURE                          UPVAL U26
      524 NEWTABLE                         R57 0 1
      526 MOVE                             R58 R1
      527 SETLIST                          R57 R58 1 [1]
      529 CALL                             R55 2 1
      530 GETUPVAL                         R57 1
      531 GETTABLEKS                       R56 R57 K3 ["useCallback"]
      533 NEWCLOSURE                       R57 P25
      534 CAPTURE                          VAL R1
      535 NEWTABLE                         R58 0 1
      537 MOVE                             R59 R1
      538 SETLIST                          R58 R59 1 [1]
      540 CALL                             R56 2 1
      541 GETUPVAL                         R58 1
      542 GETTABLEKS                       R57 R58 K3 ["useCallback"]
      544 NEWCLOSURE                       R58 P26
      545 CAPTURE                          VAL R14
      546 NEWTABLE                         R59 0 1
      548 MOVE                             R60 R14
      549 SETLIST                          R59 R60 1 [1]
      551 CALL                             R57 2 1
      552 GETUPVAL                         R59 1
      553 GETTABLEKS                       R58 R59 K3 ["useCallback"]
      555 NEWCLOSURE                       R59 P27
      556 CAPTURE                          VAL R15
      557 CAPTURE                          UPVAL U22
      558 NEWTABLE                         R60 0 1
      560 MOVE                             R61 R15
      561 SETLIST                          R60 R61 1 [1]
      563 CALL                             R58 2 1
      564 GETUPVAL                         R60 1
      565 GETTABLEKS                       R59 R60 K17 ["useMemo"]
      567 NEWCLOSURE                       R60 P28
      568 CAPTURE                          UPVAL U10
      569 CAPTURE                          VAL R3
      570 CAPTURE                          VAL R0
      571 CAPTURE                          UPVAL U19
      572 CAPTURE                          VAL R9
      573 CAPTURE                          UPVAL U3
      574 CAPTURE                          VAL R1
      575 CAPTURE                          UPVAL U22
      576 CAPTURE                          VAL R23
      577 CAPTURE                          VAL R5
      578 CAPTURE                          VAL R26
      579 CAPTURE                          VAL R27
      580 CAPTURE                          VAL R46
      581 CAPTURE                          VAL R48
      582 CAPTURE                          VAL R38
      583 CAPTURE                          VAL R6
      584 NEWTABLE                         R61 0 4
      586 MOVE                             R62 R3
      587 JUMPIFNOT                        R26 ; [+2]
      588 LOADK                            R63 K18 ["y"]
      589 JUMP                             ; [+1]
      590 LOADK                            R63 K19 ["n"]
      591 MOVE                             R64 R1
      592 MOVE                             R65 R48
      593 SETLIST                          R61 R62 4 [1]
      595 CALL                             R59 2 1
      596 GETUPVAL                         R60 10
      597 CALL                             R60 0 1
      598 JUMPIF                           R60 ; [+215]
      599 GETUPVAL                         R61 1
      600 GETTABLEKS                       R60 R61 K20 ["createElement"]
      602 GETUPVAL                         R62 1
      603 GETTABLEKS                       R61 R62 K21 ["Fragment"]
      605 LOADNIL                          R62
      606 DUPTABLE                         R63 K28 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      607 MOVE                             R64 R9
      608 JUMPIFNOT                        R64 ; [+38]
      609 MOVE                             R64 R1
      610 JUMPIFNOT                        R64 ; [+36]
      611 GETUPVAL                         R65 1
      612 GETTABLEKS                       R64 R65 K20 ["createElement"]
      614 GETUPVAL                         R65 27
      615 DUPTABLE                         R66 K36 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation"}]
      616 SETTABLEKS                       R9 R66 K29 ["rigModel"]
      618 SETTABLEKS                       R1 R66 K30 ["rigDescriptor"]
      620 SETTABLEKS                       R22 R66 K31 ["selectedJointInstance"]
      622 JUMPIFNOTEQKS                    R3 K37 ["mapping"] ; [+3]
      624 MOVE                             R67 R44
      625 JUMP                             ; [+5]
      626 JUMPIFNOTEQKS                    R3 K38 ["tpose"] ; [+3]
      628 MOVE                             R67 R45
      629 JUMP                             ; [+1]
      630 LOADNIL                          R67
      631 SETTABLEKS                       R67 R66 K32 ["onJointClicked"]
      633 LOADB                            R67 1
      634 JUMPIFEQKS                       R3 K39 ["preview"] ; [+5]
      636 JUMPIFEQKS                       R3 K38 ["tpose"] ; [+2]
      638 LOADB                            R67 0 +1
      639 LOADB                            R67 1
      640 SETTABLEKS                       R67 R66 K33 ["applyTposeAdjustment"]
      642 SETTABLEKS                       R33 R66 K34 ["updatePositions"]
      644 SETTABLEKS                       R11 R66 K35 ["DEPRECATED_isPlayingAnimation"]
      646 CALL                             R64 2 1
      647 SETTABLEKS                       R64 R63 K22 ["Adornments"]
      649 LOADB                            R64 0
      650 LENGTH                           R65 R59
      651 LOADN                            R66 0
      652 JUMPIFNOTLT                      R66 R65 ; [+14]
      654 GETUPVAL                         R65 1
      655 GETTABLEKS                       R64 R65 K20 ["createElement"]
      657 GETUPVAL                         R66 28
      658 GETTABLEKS                       R65 R66 K23 ["Toolbar"]
      660 DUPTABLE                         R66 K42 [{"InitialPosition", "HorizontalItems"}]
      661 LOADK                            R67 K43 ["Center"]
      662 SETTABLEKS                       R67 R66 K40 ["InitialPosition"]
      664 SETTABLEKS                       R59 R66 K41 ["HorizontalItems"]
      666 CALL                             R64 2 1
      667 SETTABLEKS                       R64 R63 K23 ["Toolbar"]
      669 GETUPVAL                         R65 1
      670 GETTABLEKS                       R64 R65 K20 ["createElement"]
      672 GETUPVAL                         R65 29
      673 DUPTABLE                         R66 K47 [{"visible", "mode", "onSelect", "localization"}]
      674 JUMPIFNOTEQKS                    R3 K39 ["preview"] ; [+2]
      676 LOADB                            R67 0 +1
      677 LOADB                            R67 1
      678 SETTABLEKS                       R67 R66 K44 ["visible"]
      680 SETTABLEKS                       R3 R66 K45 ["mode"]
      682 SETTABLEKS                       R5 R66 K46 ["onSelect"]
      684 GETTABLEKS                       R67 R0 K16 ["localization"]
      686 SETTABLEKS                       R67 R66 K16 ["localization"]
      688 CALL                             R64 2 1
      689 SETTABLEKS                       R64 R63 K24 ["ModeSwitcher"]
      691 LOADB                            R64 0
      692 JUMPIFNOTEQKS                    R3 K37 ["mapping"] ; [+50]
      694 MOVE                             R64 R9
      695 JUMPIFNOT                        R64 ; [+47]
      696 MOVE                             R64 R1
      697 JUMPIFNOT                        R64 ; [+45]
      698 GETUPVAL                         R65 1
      699 GETTABLEKS                       R64 R65 K20 ["createElement"]
      701 GETUPVAL                         R65 30
      702 DUPTABLE                         R66 K60 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "onClear", "onClose", "showMannequinImage", "localization", "detectedHrd", "hasHumanoid", "onSelectHrd", "onCreateHrd"}]
      703 SETTABLEKS                       R9 R66 K48 ["model"]
      705 SETTABLEKS                       R1 R66 K30 ["rigDescriptor"]
      707 SETTABLEKS                       R22 R66 K49 ["selectedJoint"]
      709 SETTABLEKS                       R24 R66 K50 ["armedRigLabel"]
      711 SETTABLEKS                       R53 R66 K51 ["onArmJoint"]
      713 SETTABLEKS                       R43 R66 K52 ["onMapJoint"]
      715 NEWCLOSURE                       R67 P29
      716 CAPTURE                          VAL R23
      717 CAPTURE                          VAL R5
      718 SETTABLEKS                       R67 R66 K53 ["onClear"]
      720 DUPCLOSURE                       R67 K61 [PROTO_73]
      721 SETTABLEKS                       R67 R66 K54 ["onClose"]
      723 LOADB                            R67 1
      724 SETTABLEKS                       R67 R66 K55 ["showMannequinImage"]
      726 GETTABLEKS                       R67 R0 K16 ["localization"]
      728 SETTABLEKS                       R67 R66 K16 ["localization"]
      730 LOADNIL                          R67
      731 SETTABLEKS                       R67 R66 K56 ["detectedHrd"]
      733 LOADB                            R67 0
      734 SETTABLEKS                       R67 R66 K57 ["hasHumanoid"]
      736 DUPCLOSURE                       R67 K62 [PROTO_74]
      737 SETTABLEKS                       R67 R66 K58 ["onSelectHrd"]
      739 DUPCLOSURE                       R67 K63 [PROTO_75]
      740 SETTABLEKS                       R67 R66 K59 ["onCreateHrd"]
      742 CALL                             R64 2 1
      743 SETTABLEKS                       R64 R63 K25 ["Mannequin"]
      745 LOADB                            R64 0
      746 JUMPIFNOTEQKS                    R3 K39 ["preview"] ; [+50]
      748 MOVE                             R64 R9
      749 JUMPIFNOT                        R64 ; [+47]
      750 MOVE                             R64 R1
      751 JUMPIFNOT                        R64 ; [+45]
      752 GETUPVAL                         R65 1
      753 GETTABLEKS                       R64 R65 K20 ["createElement"]
      755 GETUPVAL                         R65 31
      756 DUPTABLE                         R66 K69 [{"visible", "model", "localization", "autoAll", "resetAll", "onEdit", "stopPlayback", "onPlaybackStateChanged"}]
      757 LOADB                            R67 1
      758 SETTABLEKS                       R67 R66 K44 ["visible"]
      760 SETTABLEKS                       R9 R66 K48 ["model"]
      762 GETTABLEKS                       R67 R0 K16 ["localization"]
      764 SETTABLEKS                       R67 R66 K16 ["localization"]
      766 NEWCLOSURE                       R67 P33
      767 CAPTURE                          VAL R9
      768 CAPTURE                          UPVAL U24
      769 CAPTURE                          VAL R1
      770 SETTABLEKS                       R67 R66 K64 ["autoAll"]
      772 NEWCLOSURE                       R67 P34
      773 CAPTURE                          VAL R9
      774 CAPTURE                          UPVAL U24
      775 CAPTURE                          VAL R1
      776 SETTABLEKS                       R67 R66 K65 ["resetAll"]
      778 NEWCLOSURE                       R67 P35
      779 CAPTURE                          VAL R38
      780 CAPTURE                          VAL R12
      781 CAPTURE                          VAL R5
      782 SETTABLEKS                       R67 R66 K66 ["onEdit"]
      784 NEWCLOSURE                       R67 P36
      785 CAPTURE                          VAL R38
      786 SETTABLEKS                       R67 R66 K67 ["stopPlayback"]
      788 NEWCLOSURE                       R67 P37
      789 CAPTURE                          VAL R12
      790 CAPTURE                          UPVAL U3
      791 CAPTURE                          VAL R1
      792 CAPTURE                          VAL R9
      793 CAPTURE                          VAL R10
      794 SETTABLEKS                       R67 R66 K68 ["onPlaybackStateChanged"]
      796 CALL                             R64 2 1
      797 SETTABLEKS                       R64 R63 K26 ["PreviewToolbar"]
      799 LOADB                            R64 0
      800 JUMPIFNOTEQKS                    R3 K38 ["tpose"] ; [+9]
      802 MOVE                             R64 R42
      803 JUMPIFNOT                        R64 ; [+6]
      804 GETUPVAL                         R65 1
      805 GETTABLEKS                       R64 R65 K20 ["createElement"]
      807 GETUPVAL                         R65 32
      808 MOVE                             R66 R42
      809 CALL                             R64 2 1
      810 SETTABLEKS                       R64 R63 K27 ["Dragger"]
      812 CALL                             R60 3 -1
      813 RETURN                           R60 -1
      814 GETUPVAL                         R61 1
      815 GETTABLEKS                       R60 R61 K20 ["createElement"]
      817 GETUPVAL                         R62 1
      818 GETTABLEKS                       R61 R62 K21 ["Fragment"]
      820 LOADNIL                          R62
      821 DUPTABLE                         R63 K72 [{"Adornments", "Toolbar", "MannequinPortal", "PreviewPlayback", "Dragger"}]
      822 MOVE                             R64 R19
      823 JUMPIFNOT                        R64 ; [+43]
      824 MOVE                             R64 R9
      825 JUMPIFNOT                        R64 ; [+41]
      826 MOVE                             R64 R1
      827 JUMPIFNOT                        R64 ; [+39]
      828 GETUPVAL                         R65 1
      829 GETTABLEKS                       R64 R65 K20 ["createElement"]
      831 GETUPVAL                         R65 27
      832 DUPTABLE                         R66 K76 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "overrideLabels", "onHoveredJointChanged", "mannequinHoveredJointName"}]
      833 SETTABLEKS                       R9 R66 K29 ["rigModel"]
      835 SETTABLEKS                       R1 R66 K30 ["rigDescriptor"]
      837 SETTABLEKS                       R22 R66 K31 ["selectedJointInstance"]
      839 JUMPIFNOTEQKS                    R3 K37 ["mapping"] ; [+3]
      841 MOVE                             R67 R44
      842 JUMP                             ; [+5]
      843 JUMPIFNOTEQKS                    R3 K38 ["tpose"] ; [+3]
      845 MOVE                             R67 R45
      846 JUMP                             ; [+1]
      847 LOADNIL                          R67
      848 SETTABLEKS                       R67 R66 K32 ["onJointClicked"]
      850 JUMPIFEQKS                       R3 K38 ["tpose"] ; [+2]
      852 LOADB                            R67 0 +1
      853 LOADB                            R67 1
      854 SETTABLEKS                       R67 R66 K33 ["applyTposeAdjustment"]
      856 SETTABLEKS                       R33 R66 K34 ["updatePositions"]
      858 SETTABLEKS                       R11 R66 K35 ["DEPRECATED_isPlayingAnimation"]
      860 SETTABLEKS                       R7 R66 K73 ["overrideLabels"]
      862 SETTABLEKS                       R29 R66 K74 ["onHoveredJointChanged"]
      864 SETTABLEKS                       R30 R66 K75 ["mannequinHoveredJointName"]
      866 CALL                             R64 2 1
      867 SETTABLEKS                       R64 R63 K22 ["Adornments"]
      869 MOVE                             R64 R19
      870 JUMPIFNOT                        R64 ; [+27]
      871 MOVE                             R64 R9
      872 JUMPIFNOT                        R64 ; [+25]
      873 MOVE                             R64 R1
      874 JUMPIFNOT                        R64 ; [+23]
      875 LOADB                            R64 0
      876 LENGTH                           R65 R59
      877 LOADN                            R66 0
      878 JUMPIFNOTLT                      R66 R65 ; [+19]
      880 GETUPVAL                         R65 1
      881 GETTABLEKS                       R64 R65 K20 ["createElement"]
      883 GETUPVAL                         R66 28
      884 GETTABLEKS                       R65 R66 K23 ["Toolbar"]
      886 DUPTABLE                         R66 K78 [{"InitialPosition", "HorizontalItems", "DisplayOrder"}]
      887 LOADK                            R67 K43 ["Center"]
      888 SETTABLEKS                       R67 R66 K40 ["InitialPosition"]
      890 SETTABLEKS                       R59 R66 K41 ["HorizontalItems"]
      892 GETUPVAL                         R68 19
      893 GETTABLEKS                       R67 R68 K79 ["DISPLAY_ORDER_TOOLBAR"]
      895 SETTABLEKS                       R67 R66 K77 ["DisplayOrder"]
      897 CALL                             R64 2 1
      898 SETTABLEKS                       R64 R63 K23 ["Toolbar"]
      900 GETUPVAL                         R65 1
      901 GETTABLEKS                       R64 R65 K20 ["createElement"]
      903 GETUPVAL                         R65 33
      904 DUPTABLE                         R66 K82 [{"mannequin", "handMannequin"}]
      905 MOVE                             R67 R19
      906 JUMPIFNOT                        R67 ; [+64]
      907 NOT                              R67 R6
      908 JUMPIFNOT                        R67 ; [+62]
      909 GETUPVAL                         R68 1
      910 GETTABLEKS                       R67 R68 K20 ["createElement"]
      912 GETUPVAL                         R68 30
      913 DUPTABLE                         R69 K87 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "showMannequinImage", "localization", "detectedHrd", "hasHumanoid", "onSelectHrd", "onCreateHrd", "onArmJoint", "onMapJoint", "onClear", "onClose", "onNavigateToHand"}]
      914 SETTABLEKS                       R9 R69 K48 ["model"]
      916 SETTABLEKS                       R1 R69 K30 ["rigDescriptor"]
      918 SETTABLEKS                       R22 R69 K49 ["selectedJoint"]
      920 SETTABLEKS                       R24 R69 K50 ["armedRigLabel"]
      922 SETTABLEKS                       R28 R69 K83 ["counterpartHoveredJointName"]
      924 SETTABLEKS                       R31 R69 K84 ["onDotHoverEnter"]
      926 SETTABLEKS                       R32 R69 K85 ["onDotHoverLeave"]
      928 JUMPIFEQKS                       R3 K37 ["mapping"] ; [+2]
      930 LOADB                            R70 0 +1
      931 LOADB                            R70 1
      932 SETTABLEKS                       R70 R69 K55 ["showMannequinImage"]
      934 GETTABLEKS                       R70 R0 K16 ["localization"]
      936 SETTABLEKS                       R70 R69 K16 ["localization"]
      938 JUMPIF                           R1 ; [+2]
      939 MOVE                             R70 R14
      940 JUMP                             ; [+1]
      941 LOADNIL                          R70
      942 SETTABLEKS                       R70 R69 K56 ["detectedHrd"]
      944 JUMPIF                           R1 ; [+2]
      945 MOVE                             R70 R16
      946 JUMP                             ; [+1]
      947 LOADB                            R70 0
      948 SETTABLEKS                       R70 R69 K57 ["hasHumanoid"]
      950 SETTABLEKS                       R57 R69 K58 ["onSelectHrd"]
      952 SETTABLEKS                       R58 R69 K59 ["onCreateHrd"]
      954 SETTABLEKS                       R53 R69 K51 ["onArmJoint"]
      956 SETTABLEKS                       R43 R69 K52 ["onMapJoint"]
      958 SETTABLEKS                       R52 R69 K53 ["onClear"]
      960 SETTABLEKS                       R21 R69 K54 ["onClose"]
      962 GETUPVAL                         R71 10
      963 CALL                             R71 0 1
      964 JUMPIFNOT                        R71 ; [+2]
      965 MOVE                             R70 R55
      966 JUMP                             ; [+1]
      967 LOADNIL                          R70
      968 SETTABLEKS                       R70 R69 K86 ["onNavigateToHand"]
      970 CALL                             R67 2 1
      971 SETTABLEKS                       R67 R66 K80 ["mannequin"]
      973 MOVE                             R67 R19
      974 JUMPIFNOT                        R67 ; [+45]
      975 MOVE                             R67 R6
      976 JUMPIFNOT                        R67 ; [+43]
      977 LOADB                            R67 0
      978 JUMPIFNOTEQKS                    R3 K37 ["mapping"] ; [+41]
      980 MOVE                             R67 R9
      981 JUMPIFNOT                        R67 ; [+38]
      982 MOVE                             R67 R1
      983 JUMPIFNOT                        R67 ; [+36]
      984 GETUPVAL                         R68 1
      985 GETTABLEKS                       R67 R68 K20 ["createElement"]
      987 GETUPVAL                         R68 34
      988 DUPTABLE                         R69 K90 [{"model", "rigDescriptor", "descriptorKind", "localization", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "onNavigateToBody", "onArmJoint", "onMapJoint", "onClear", "onClose"}]
      989 SETTABLEKS                       R9 R69 K48 ["model"]
      991 SETTABLEKS                       R1 R69 K30 ["rigDescriptor"]
      993 SETTABLEKS                       R2 R69 K88 ["descriptorKind"]
      995 GETTABLEKS                       R70 R0 K16 ["localization"]
      997 SETTABLEKS                       R70 R69 K16 ["localization"]
      999 SETTABLEKS                       R22 R69 K49 ["selectedJoint"]
     1001 SETTABLEKS                       R24 R69 K50 ["armedRigLabel"]
     1003 SETTABLEKS                       R28 R69 K83 ["counterpartHoveredJointName"]
     1005 SETTABLEKS                       R31 R69 K84 ["onDotHoverEnter"]
     1007 SETTABLEKS                       R32 R69 K85 ["onDotHoverLeave"]
     1009 SETTABLEKS                       R56 R69 K89 ["onNavigateToBody"]
     1011 SETTABLEKS                       R54 R69 K51 ["onArmJoint"]
     1013 SETTABLEKS                       R43 R69 K52 ["onMapJoint"]
     1015 SETTABLEKS                       R52 R69 K53 ["onClear"]
     1017 SETTABLEKS                       R21 R69 K54 ["onClose"]
     1019 CALL                             R67 2 1
     1020 SETTABLEKS                       R67 R66 K81 ["handMannequin"]
     1022 CALL                             R64 2 1
     1023 SETTABLEKS                       R64 R63 K70 ["MannequinPortal"]
     1025 MOVE                             R64 R19
     1026 JUMPIFNOT                        R64 ; [+16]
     1027 MOVE                             R64 R9
     1028 JUMPIFNOT                        R64 ; [+14]
     1029 MOVE                             R64 R50
     1030 JUMPIFNOT                        R64 ; [+12]
     1031 GETUPVAL                         R65 1
     1032 GETTABLEKS                       R64 R65 K20 ["createElement"]
     1034 GETUPVAL                         R65 35
     1035 DUPTABLE                         R66 K93 [{"model", "animationId", "isPlaying"}]
     1036 SETTABLEKS                       R9 R66 K48 ["model"]
     1038 SETTABLEKS                       R49 R66 K91 ["animationId"]
     1040 SETTABLEKS                       R50 R66 K92 ["isPlaying"]
     1042 CALL                             R64 2 1
     1043 SETTABLEKS                       R64 R63 K71 ["PreviewPlayback"]
     1045 MOVE                             R64 R19
     1046 JUMPIFNOT                        R64 ; [+11]
     1047 LOADB                            R64 0
     1048 JUMPIFNOTEQKS                    R3 K38 ["tpose"] ; [+9]
     1050 MOVE                             R64 R42
     1051 JUMPIFNOT                        R64 ; [+6]
     1052 GETUPVAL                         R65 1
     1053 GETTABLEKS                       R64 R65 K20 ["createElement"]
     1055 GETUPVAL                         R65 32
     1056 MOVE                             R66 R42
     1057 CALL                             R64 2 1
     1058 SETTABLEKS                       R64 R63 K27 ["Dragger"]
     1060 CALL                             R60 3 -1
     1061 RETURN                           R60 -1

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
      170 GETIMPORT                        R22 K35 [game]
      172 LOADK                            R24 K38 ["Selection"]
      173 NAMECALL                         R22 R22 K37 ["GetService"]
      175 CALL                             R22 2 1
      176 GETIMPORT                        R23 K5 [require]
      178 GETTABLEKS                       R25 R0 K6 ["Packages"]
      180 GETTABLEKS                       R24 R25 K39 ["ReactRoblox"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K5 [require]
      185 GETTABLEKS                       R26 R0 K6 ["Packages"]
      187 GETTABLEKS                       R25 R26 K40 ["StudioFoundation"]
      189 CALL                             R24 1 1
      190 GETIMPORT                        R25 K5 [require]
      192 GETTABLEKS                       R29 R0 K11 ["Src"]
      194 GETTABLEKS                       R28 R29 K12 ["Components"]
      196 GETTABLEKS                       R27 R28 K26 ["Hooks"]
      198 GETTABLEKS                       R26 R27 K41 ["useSelectedRigDescriptor"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K5 [require]
      203 GETTABLEKS                       R30 R0 K11 ["Src"]
      205 GETTABLEKS                       R29 R30 K12 ["Components"]
      207 GETTABLEKS                       R28 R29 K26 ["Hooks"]
      209 GETTABLEKS                       R27 R28 K42 ["useClearPrevDescriptorTransforms"]
      211 CALL                             R26 1 1
      212 GETIMPORT                        R27 K5 [require]
      214 GETTABLEKS                       R31 R0 K11 ["Src"]
      216 GETTABLEKS                       R30 R31 K12 ["Components"]
      218 GETTABLEKS                       R29 R30 K26 ["Hooks"]
      220 GETTABLEKS                       R28 R29 K43 ["usePreviewAutoInitializeRig"]
      222 CALL                             R27 1 1
      223 GETIMPORT                        R28 K5 [require]
      225 GETTABLEKS                       R32 R0 K11 ["Src"]
      227 GETTABLEKS                       R31 R32 K12 ["Components"]
      229 GETTABLEKS                       R30 R31 K26 ["Hooks"]
      231 GETTABLEKS                       R29 R30 K44 ["useEnsureAnimator"]
      233 CALL                             R28 1 1
      234 GETIMPORT                        R29 K5 [require]
      236 GETTABLEKS                       R33 R0 K11 ["Src"]
      238 GETTABLEKS                       R32 R33 K12 ["Components"]
      240 GETTABLEKS                       R31 R32 K26 ["Hooks"]
      242 GETTABLEKS                       R30 R31 K45 ["usePluginLifecycleOnRigDescriptor"]
      244 CALL                             R29 1 1
      245 GETIMPORT                        R30 K5 [require]
      247 GETTABLEKS                       R34 R0 K11 ["Src"]
      249 GETTABLEKS                       R33 R34 K12 ["Components"]
      251 GETTABLEKS                       R32 R33 K26 ["Hooks"]
      253 GETTABLEKS                       R31 R32 K46 ["useRigModel"]
      255 CALL                             R30 1 1
      256 GETIMPORT                        R31 K5 [require]
      258 GETTABLEKS                       R35 R0 K11 ["Src"]
      260 GETTABLEKS                       R34 R35 K12 ["Components"]
      262 GETTABLEKS                       R33 R34 K26 ["Hooks"]
      264 GETTABLEKS                       R32 R33 K47 ["useFocusCamera"]
      266 CALL                             R31 1 1
      267 GETIMPORT                        R32 K5 [require]
      269 GETTABLEKS                       R36 R0 K11 ["Src"]
      271 GETTABLEKS                       R35 R36 K12 ["Components"]
      273 GETTABLEKS                       R34 R35 K26 ["Hooks"]
      275 GETTABLEKS                       R33 R34 K48 ["useSelectionContext"]
      277 CALL                             R32 1 1
      278 GETIMPORT                        R33 K5 [require]
      280 GETTABLEKS                       R36 R0 K11 ["Src"]
      282 GETTABLEKS                       R35 R36 K49 ["Flags"]
      284 GETTABLEKS                       R34 R35 K50 ["getFFlagAdaptiveAnimatonImprovements"]
      286 CALL                             R33 1 1
      287 GETIMPORT                        R34 K5 [require]
      289 GETTABLEKS                       R37 R0 K11 ["Src"]
      291 GETTABLEKS                       R36 R37 K49 ["Flags"]
      293 GETTABLEKS                       R35 R36 K51 ["getFFlagAdaptiveAnimationConstraints"]
      295 CALL                             R34 1 1
      296 GETIMPORT                        R35 K5 [require]
      298 GETTABLEKS                       R38 R0 K11 ["Src"]
      300 GETTABLEKS                       R37 R38 K49 ["Flags"]
      302 GETTABLEKS                       R36 R37 K52 ["getFFlagAdaptiveAnimationHandRig"]
      304 CALL                             R35 1 1
      305 GETIMPORT                        R36 K5 [require]
      307 GETTABLEKS                       R39 R0 K11 ["Src"]
      309 GETTABLEKS                       R38 R39 K23 ["Utils"]
      311 GETTABLEKS                       R37 R38 K53 ["DigitsRigUtils"]
      313 CALL                             R36 1 1
      314 GETIMPORT                        R37 K5 [require]
      316 GETTABLEKS                       R39 R0 K11 ["Src"]
      318 GETTABLEKS                       R38 R39 K54 ["PluginMode"]
      320 CALL                             R37 1 1
      321 DUPCLOSURE                       R38 K55 [PROTO_0]
      322 CAPTURE                          VAL R3
      323 DUPCLOSURE                       R39 K56 [PROTO_1]
      324 DUPCLOSURE                       R40 K57 [PROTO_2]
      325 DUPCLOSURE                       R41 K58 [PROTO_3]
      326 DUPCLOSURE                       R42 K59 [PROTO_4]
      327 CAPTURE                          VAL R2
      328 DUPCLOSURE                       R43 K60 [PROTO_5]
      329 DUPCLOSURE                       R44 K61 [PROTO_6]
      330 CAPTURE                          VAL R43
      331 CAPTURE                          VAL R2
      332 DUPCLOSURE                       R45 K62 [PROTO_7]
      333 CAPTURE                          VAL R1
      334 CAPTURE                          VAL R23
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R24
      337 CAPTURE                          VAL R21
      338 DUPCLOSURE                       R46 K63 [PROTO_81]
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R1
      341 CAPTURE                          VAL R37
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R30
      344 CAPTURE                          VAL R28
      345 CAPTURE                          VAL R26
      346 CAPTURE                          VAL R27
      347 CAPTURE                          VAL R29
      348 CAPTURE                          VAL R32
      349 CAPTURE                          VAL R35
      350 CAPTURE                          VAL R22
      351 CAPTURE                          VAL R4
      352 CAPTURE                          VAL R40
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R36
      355 CAPTURE                          VAL R34
      356 CAPTURE                          VAL R16
      357 CAPTURE                          VAL R33
      358 CAPTURE                          VAL R20
      359 CAPTURE                          VAL R41
      360 CAPTURE                          VAL R42
      361 CAPTURE                          VAL R14
      362 CAPTURE                          VAL R15
      363 CAPTURE                          VAL R9
      364 CAPTURE                          VAL R7
      365 CAPTURE                          VAL R44
      366 CAPTURE                          VAL R5
      367 CAPTURE                          VAL R11
      368 CAPTURE                          VAL R10
      369 CAPTURE                          VAL R12
      370 CAPTURE                          VAL R8
      371 CAPTURE                          VAL R18
      372 CAPTURE                          VAL R45
      373 CAPTURE                          VAL R13
      374 CAPTURE                          VAL R6
      375 DUPTABLE                         R47 K66 [{"AdaptiveAnimationRoot", "_test"}]
      376 SETTABLEKS                       R46 R47 K64 ["AdaptiveAnimationRoot"]
      378 DUPTABLE                         R48 K73 [{"findLabelForJoint", "computeDeprecatedCounterpartName", "clearConflictingMappings", "clearJointFromOtherDescriptors", "findExistingHandDescription", "ensureHandDescription"}]
      379 SETTABLEKS                       R39 R48 K67 ["findLabelForJoint"]
      381 SETTABLEKS                       R40 R48 K68 ["computeDeprecatedCounterpartName"]
      383 SETTABLEKS                       R41 R48 K69 ["clearConflictingMappings"]
      385 SETTABLEKS                       R42 R48 K70 ["clearJointFromOtherDescriptors"]
      387 SETTABLEKS                       R43 R48 K71 ["findExistingHandDescription"]
      389 SETTABLEKS                       R44 R48 K72 ["ensureHandDescription"]
      391 SETTABLEKS                       R48 R47 K65 ["_test"]
      393 RETURN                           R47 1
