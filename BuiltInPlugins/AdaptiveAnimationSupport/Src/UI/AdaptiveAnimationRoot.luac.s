PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 DUPCLOSURE                       R2 K0 [PROTO_5]
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

PROTO_7:
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

PROTO_8:
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
       12 GETIMPORT                        R5 K8 [Enum.DigitsRigDescriptionSide.Left]
       14 JUMPIFNOTEQ                      R1 R5 ; [+3]
       16 LOADK                            R4 K9 ["LeftHandDescription"]
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K10 ["RightHandDescription"]
       19 SETTABLEKS                       R4 R3 K11 ["Name"]
       21 SETTABLEKS                       R0 R3 K12 ["Parent"]
       23 GETIMPORT                        R5 K8 [Enum.DigitsRigDescriptionSide.Left]
       25 JUMPIFNOTEQ                      R1 R5 ; [+4]
       27 GETIMPORT                        R4 K15 [Enum.RigLabel.LeftWrist]
       29 JUMP                             ; [+2]
       30 GETIMPORT                        R4 K17 [Enum.RigLabel.RightWrist]
       32 MOVE                             R7 R4
       33 NAMECALL                         R5 R0 K18 ["GetJoint"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+12]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K19 ["HandAutomapper"]
       40 GETTABLEKS                       R6 R6 K20 ["setupHand"]
       42 MOVE                             R7 R3
       43 MOVE                             R8 R5
       44 MOVE                             R9 R1
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K21 ["handRigLabels"]
       48 CALL                             R6 4 0
       49 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["createPortal"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["createElement"]
       11 LOADK                            R5 K3 ["ScreenGui"]
       12 DUPTABLE                         R6 K9 [{["Archivable"] = False, ["DisplayOrder"], ["ZIndexBehavior"], ["ref"]}]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K10 ["DISPLAY_ORDER_MANNEQUIN"]
       16 SETTABLEKS                       R7 R6 K6 ["DisplayOrder"]
       18 GETIMPORT                        R7 K13 [Enum.ZIndexBehavior.Sibling]
       20 SETTABLEKS                       R7 R6 K7 ["ZIndexBehavior"]
       22 SETTABLEKS                       R2 R6 K8 ["ref"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K2 ["createElement"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K14 ["Components"]
       30 GETTABLEKS                       R8 R8 K15 ["FoundationProviderAdapter"]
       32 DUPTABLE                         R9 K17 [{"overlayGui"}]
       33 MOVE                             R10 R1
       34 JUMPIF                           R10 ; [+1]
       35 GETUPVAL                         R10 4
       36 SETTABLEKS                       R10 R9 K16 ["overlayGui"]
       38 GETTABLEKS                       R11 R0 K18 ["mannequin"]
       40 ORK                              R10 R11 K5 [False]
       41 GETTABLEKS                       R12 R0 K19 ["handMannequin"]
       43 ORK                              R11 R12 K5 [False]
       44 CALL                             R7 4 -1
       45 CALL                             R4 -1 1
       46 GETUPVAL                         R5 4
       47 LOADK                            R6 K20 ["MannequinPanel"]
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K8 [{[1] = "Standalone", ["PluginId"] = "AdaptiveAnimationSupport", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        2 NAMECALL                         R0 R0 K9 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_18:
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
       24 DUPCLOSURE                       R1 K2 [PROTO_17]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K8 [{[1] = "Standalone", ["PluginId"] = "AdaptiveAnimationSupport", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        2 NAMECALL                         R0 R0 K9 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 ADDK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getJointPosition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 LOADK                            R2 K1 [{0.5, 0.5, 0.5}]
        6 SUB                              R1 R0 R2
        7 LOADK                            R3 K1 [{0.5, 0.5, 0.5}]
        8 ADD                              R2 R0 R3
        9 RETURN                           R1 2

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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
       61 JUMPIFNOT                        R6 ; [+20]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K9 ["axisAngleFromRotation"]
       65 MOVE                             R9 R1
       66 CALL                             R8 1 2
       67 MOVE                             R12 R8
       68 NAMECALL                         R10 R2 K10 ["VectorToObjectSpace"]
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K13 [CFrame.fromAxisAngle]
       73 MOVE                             R12 R10
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
       90 GETUPVAL                         R9 5
       91 GETTABLEKS                       R9 R9 K15 ["getRigLabelForJoint"]
       93 GETUPVAL                         R10 6
       94 MOVE                             R11 R0
       95 CALL                             R9 2 1
       96 MOVE                             R8 R9
       97 JUMP                             ; [+7]
       98 GETUPVAL                         R9 7
       99 GETTABLEKS                       R9 R9 K15 ["getRigLabelForJoint"]
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
      119 JUMPIFNOT                        R9 ; [+109]
      120 JUMPIFNOT                        R8 ; [+108]
      121 GETUPVAL                         R9 4
      122 JUMPIF                           R9 ; [+106]
      123 GETUPVAL                         R9 7
      124 GETTABLEKS                       R9 R9 K19 ["symmetryCounterparts"]
      126 JUMPIFNOT                        R9 ; [+4]
      127 GETUPVAL                         R10 7
      128 GETTABLEKS                       R10 R10 K19 ["symmetryCounterparts"]
      130 GETTABLE                         R9 R10 R8
      131 JUMPIFNOT                        R9 ; [+223]
      132 GETUPVAL                         R10 9
      133 MOVE                             R11 R7
      134 CALL                             R10 1 1
      135 JUMPIF                           R10 ; [+219]
      136 GETUPVAL                         R10 2
      137 GETTABLEKS                       R10 R10 K0 ["current"]
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
      157 JUMPIFNOT                        R13 ; [+7]
      158 GETUPVAL                         R13 10
      159 GETTABLEKS                       R13 R13 K23 ["mirrorTransformMotor6DDelta"]
      161 MOVE                             R14 R7
      162 CALL                             R13 1 1
      163 MOVE                             R12 R13
      164 JUMP                             ; [+56]
      165 LOADK                            R15 K24 ["Bone"]
      166 NAMECALL                         R13 R0 K22 ["IsA"]
      168 CALL                             R13 2 1
      169 JUMPIFNOT                        R13 ; [+45]
      170 GETUPVAL                         R13 11
      171 CALL                             R13 0 1
      172 JUMPIFNOT                        R13 ; [+42]
      173 GETUPVAL                         R13 6
      174 MOVE                             R15 R9
      175 NAMECALL                         R13 R13 K25 ["GetJoint"]
      177 CALL                             R13 2 1
      178 JUMPIFNOT                        R13 ; [+34]
      179 LOADK                            R16 K24 ["Bone"]
      180 NAMECALL                         R14 R13 K22 ["IsA"]
      182 CALL                             R14 2 1
      183 JUMPIFNOT                        R14 ; [+29]
      184 GETIMPORT                        R14 K27 [CFrame.fromMatrix]
      186 LOADK                            R15 K28 [{0, 0, 0}]
      187 LOADK                            R16 K29 [{-1, 0, 0}]
      188 LOADK                            R17 K30 [{0, 1, 0}]
      189 LOADK                            R18 K31 [{0, 0, 1}]
      190 CALL                             R14 4 1
      191 GETTABLEKS                       R15 R2 K32 ["Rotation"]
      193 GETTABLEKS                       R16 R13 K33 ["WorldCFrame"]
      195 GETTABLEKS                       R16 R16 K32 ["Rotation"]
      197 GETTABLEKS                       R18 R11 K32 ["Rotation"]
      199 MUL                              R17 R16 R18
      200 NAMECALL                         R23 R17 K14 ["Inverse"]
      202 CALL                             R23 1 1
      203 MUL                              R22 R23 R14
      204 MUL                              R21 R22 R15
      205 MUL                              R20 R21 R7
      206 NAMECALL                         R21 R15 K14 ["Inverse"]
      208 CALL                             R21 1 1
      209 MUL                              R19 R20 R21
      210 MUL                              R18 R19 R14
      211 MUL                              R12 R18 R17
      212 JUMP                             ; [+8]
      213 MOVE                             R12 R7
      214 JUMP                             ; [+6]
      215 GETUPVAL                         R13 10
      216 GETTABLEKS                       R13 R13 K34 ["mirrorTransformAnimationConstraint"]
      218 MOVE                             R14 R7
      219 CALL                             R13 1 1
      220 MOVE                             R12 R13
      221 MUL                              R13 R11 R12
      222 GETUPVAL                         R14 6
      223 MOVE                             R16 R9
      224 MOVE                             R17 R13
      225 NAMECALL                         R14 R14 K18 ["SetTposeAdjustment"]
      227 CALL                             R14 3 0
      228 JUMP                             ; [+126]
      229 GETUPVAL                         R9 8
      230 JUMPIFNOT                        R9 ; [+124]
      231 JUMPIFNOT                        R8 ; [+123]
      232 GETUPVAL                         R9 4
      233 JUMPIFNOT                        R9 ; [+121]
      234 GETUPVAL                         R9 12
      235 CALL                             R9 0 1
      236 JUMPIFNOT                        R9 ; [+118]
      237 GETUPVAL                         R9 6
      238 GETTABLEKS                       R9 R9 K35 ["Parent"]
      240 JUMPIFNOT                        R9 ; [+114]
      241 LOADK                            R12 K36 ["HumanoidRigDescription"]
      242 NAMECALL                         R10 R9 K22 ["IsA"]
      244 CALL                             R10 2 1
      245 JUMPIFNOT                        R10 ; [+109]
      246 GETUPVAL                         R10 6
      247 GETTABLEKS                       R10 R10 K37 ["Side"]
      249 GETIMPORT                        R12 K41 [Enum.DigitsRigDescriptionSide.Left]
      251 JUMPIFNOTEQ                      R10 R12 ; [+4]
      253 GETIMPORT                        R11 K43 [Enum.DigitsRigDescriptionSide.Right]
      255 JUMP                             ; [+2]
      256 GETIMPORT                        R11 K41 [Enum.DigitsRigDescriptionSide.Left]
      258 GETUPVAL                         R12 13
      259 MOVE                             R13 R9
      260 MOVE                             R14 R11
      261 CALL                             R12 2 1
      262 JUMPIFNOT                        R12 ; [+92]
      263 GETUPVAL                         R13 9
      264 MOVE                             R14 R7
      265 CALL                             R13 1 1
      266 JUMPIF                           R13 ; [+88]
      267 GETUPVAL                         R13 2
      268 GETTABLEKS                       R13 R13 K0 ["current"]
      270 GETTABLE                         R14 R13 R12
      271 JUMPIF                           R14 ; [+10]
      272 MOVE                             R17 R8
      273 NAMECALL                         R15 R12 K20 ["GetTposeAdjustment"]
      275 CALL                             R15 2 1
      276 JUMPIF                           R15 ; [+3]
      277 GETIMPORT                        R15 K17 [CFrame.new]
      279 CALL                             R15 0 1
      280 MOVE                             R14 R15
      281 SETTABLE                         R14 R13 R12
      282 MOVE                             R17 R8
      283 NAMECALL                         R15 R12 K25 ["GetJoint"]
      285 CALL                             R15 2 1
      286 LOADNIL                          R16
      287 JUMPIFNOT                        R15 ; [+37]
      288 LOADK                            R19 K24 ["Bone"]
      289 NAMECALL                         R17 R15 K22 ["IsA"]
      291 CALL                             R17 2 1
      292 JUMPIFNOT                        R17 ; [+32]
      293 GETUPVAL                         R17 11
      294 CALL                             R17 0 1
      295 JUMPIFNOT                        R17 ; [+29]
      296 GETIMPORT                        R17 K27 [CFrame.fromMatrix]
      298 LOADK                            R18 K28 [{0, 0, 0}]
      299 LOADK                            R19 K29 [{-1, 0, 0}]
      300 LOADK                            R20 K30 [{0, 1, 0}]
      301 LOADK                            R21 K31 [{0, 0, 1}]
      302 CALL                             R17 4 1
      303 GETTABLEKS                       R18 R2 K32 ["Rotation"]
      305 GETTABLEKS                       R19 R15 K33 ["WorldCFrame"]
      307 GETTABLEKS                       R19 R19 K32 ["Rotation"]
      309 GETTABLEKS                       R21 R14 K32 ["Rotation"]
      311 MUL                              R20 R19 R21
      312 NAMECALL                         R26 R20 K14 ["Inverse"]
      314 CALL                             R26 1 1
      315 MUL                              R25 R26 R17
      316 MUL                              R24 R25 R18
      317 MUL                              R23 R24 R7
      318 NAMECALL                         R24 R18 K14 ["Inverse"]
      320 CALL                             R24 1 1
      321 MUL                              R22 R23 R24
      322 MUL                              R21 R22 R17
      323 MUL                              R16 R21 R20
      324 JUMP                             ; [+19]
      325 JUMPIFNOT                        R15 ; [+12]
      326 LOADK                            R19 K21 ["Motor6D"]
      327 NAMECALL                         R17 R15 K22 ["IsA"]
      329 CALL                             R17 2 1
      330 JUMPIFNOT                        R17 ; [+7]
      331 GETUPVAL                         R17 10
      332 GETTABLEKS                       R17 R17 K23 ["mirrorTransformMotor6DDelta"]
      334 MOVE                             R18 R7
      335 CALL                             R17 1 1
      336 MOVE                             R16 R17
      337 JUMP                             ; [+6]
      338 GETUPVAL                         R17 10
      339 GETTABLEKS                       R17 R17 K34 ["mirrorTransformAnimationConstraint"]
      341 MOVE                             R18 R7
      342 CALL                             R17 1 1
      343 MOVE                             R16 R17
      344 MUL                              R17 R14 R16
      345 MOVE                             R20 R8
      346 MOVE                             R21 R17
      347 NAMECALL                         R18 R12 K18 ["SetTposeAdjustment"]
      349 CALL                             R18 3 0
      350 GETUPVAL                         R18 5
      351 GETTABLEKS                       R18 R18 K44 ["applyTposeAdjustment"]
      353 MOVE                             R19 R12
      354 CALL                             R18 1 0
      355 GETUPVAL                         R9 0
      356 LOADB                            R10 0
      357 SETTABLEKS                       R10 R9 K0 ["current"]
      359 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_33:
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
       70 JUMP                             ; [+80]
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
       83 DUPCLOSURE                       R5 K5 [PROTO_5]
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
      142 JUMPIFEQKS                       R3 K11 ["tpose"] ; [+8]
      144 GETUPVAL                         R3 10
      145 LOADK                            R4 K12 ["mapping"]
      146 CALL                             R3 1 0
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R3 10
      149 LOADK                            R4 K12 ["mapping"]
      150 CALL                             R3 1 0
      151 GETUPVAL                         R3 12
      152 NEWTABLE                         R4 0 0
      154 SETTABLEKS                       R4 R3 K0 ["current"]
      156 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

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
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["clearTransforms"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 4
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R0 4
       13 LOADN                            R2 0
       14 NAMECALL                         R0 R0 K2 ["StepAnimations"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 5
       18 GETUPVAL                         R2 6
       19 NAMECALL                         R2 R2 K4 ["getValue"]
       21 CALL                             R2 1 1
       22 ADDK                             R1 R2 K3 [1]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+102]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 3
       11 JUMPIFNOT                        R1 ; [+16]
       12 GETUPVAL                         R1 4
       13 JUMPIFNOT                        R1 ; [+14]
       14 GETUPVAL                         R1 4
       15 LOADK                            R3 K0 ["DigitsRigDescription"]
       16 NAMECALL                         R1 R1 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETUPVAL                         R3 4
       21 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K4 [table.insert]
       26 CALL                             R1 2 0
       27 JUMP                             ; [+19]
       28 GETUPVAL                         R1 1
       29 NAMECALL                         R1 R1 K5 ["GetChildren"]
       31 CALL                             R1 1 3
       32 FORGPREP                         R1
       33 LOADK                            R8 K0 ["DigitsRigDescription"]
       34 NAMECALL                         R6 R5 K1 ["IsA"]
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R6 ; [+7]
       38 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       40 MOVE                             R7 R0
       41 MOVE                             R8 R5
       42 GETIMPORT                        R6 K4 [table.insert]
       44 CALL                             R6 2 0
       45 FORGLOOP                         R1 2 ; [-13]
       47 LENGTH                           R1 R0
       48 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       50 RETURN                           R0 0
       51 GETUPVAL                         R1 5
       52 JUMPIFEQKS                       R1 K7 ["tpose"] ; [+2]
       54 RETURN                           R0 0
       55 NEWTABLE                         R1 0 0
       57 MOVE                             R2 R0
       58 LOADNIL                          R3
       59 LOADNIL                          R4
       60 FORGPREP                         R2
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R7 R7 K8 ["applyTposeAdjustment"]
       64 MOVE                             R8 R6
       65 CALL                             R7 1 0
       66 GETTABLEKS                       R7 R6 K9 ["Changed"]
       68 NEWCLOSURE                       R9 P0
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R6
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 NAMECALL                         R7 R7 K10 ["Connect"]
       78 CALL                             R7 2 1
       79 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       81 MOVE                             R9 R1
       82 MOVE                             R10 R7
       83 GETIMPORT                        R8 K4 [table.insert]
       85 CALL                             R8 2 0
       86 FORGLOOP                         R2 2 ; [-26]
       88 GETUPVAL                         R2 9
       89 JUMPIFNOT                        R2 ; [+5]
       90 GETUPVAL                         R2 9
       91 LOADN                            R4 0
       92 NAMECALL                         R2 R2 K11 ["StepAnimations"]
       94 CALL                             R2 2 0
       95 GETUPVAL                         R2 10
       96 GETUPVAL                         R4 11
       97 NAMECALL                         R4 R4 K13 ["getValue"]
       99 CALL                             R4 1 1
      100 ADDK                             R3 R4 K12 [1]
      101 CALL                             R2 1 0
      102 NEWCLOSURE                       R2 P1
      103 CAPTURE                          VAL R1
      104 RETURN                           R2 1
      105 GETUPVAL                         R0 4
      106 JUMPIFNOT                        R0 ; [+2]
      107 GETUPVAL                         R0 2
      108 JUMPIF                           R0 ; [+1]
      109 RETURN                           R0 0
      110 GETUPVAL                         R0 3
      111 JUMPIF                           R0 ; [+1]
      112 RETURN                           R0 0
      113 GETUPVAL                         R0 5
      114 JUMPIFEQKS                       R0 K7 ["tpose"] ; [+22]
      116 GETUPVAL                         R0 12
      117 GETTABLEKS                       R0 R0 K14 ["clearTransforms"]
      119 GETUPVAL                         R1 4
      120 GETUPVAL                         R2 2
      121 CALL                             R0 2 0
      122 GETUPVAL                         R0 9
      123 JUMPIFNOT                        R0 ; [+5]
      124 GETUPVAL                         R0 9
      125 LOADN                            R2 0
      126 NAMECALL                         R0 R0 K11 ["StepAnimations"]
      128 CALL                             R0 2 0
      129 GETUPVAL                         R0 10
      130 GETUPVAL                         R2 11
      131 NAMECALL                         R2 R2 K13 ["getValue"]
      133 CALL                             R2 1 1
      134 ADDK                             R1 R2 K12 [1]
      135 CALL                             R0 1 0
      136 RETURN                           R0 0
      137 GETUPVAL                         R0 4
      138 GETTABLEKS                       R0 R0 K9 ["Changed"]
      140 NEWCLOSURE                       R2 P2
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          UPVAL U9
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          UPVAL U11
      148 NAMECALL                         R0 R0 K10 ["Connect"]
      150 CALL                             R0 2 1
      151 GETUPVAL                         R1 6
      152 GETTABLEKS                       R1 R1 K8 ["applyTposeAdjustment"]
      154 GETUPVAL                         R2 4
      155 CALL                             R1 1 0
      156 GETUPVAL                         R1 9
      157 JUMPIFNOT                        R1 ; [+5]
      158 GETUPVAL                         R1 9
      159 LOADN                            R3 0
      160 NAMECALL                         R1 R1 K11 ["StepAnimations"]
      162 CALL                             R1 2 0
      163 GETUPVAL                         R1 10
      164 GETUPVAL                         R3 11
      165 NAMECALL                         R3 R3 K13 ["getValue"]
      167 CALL                             R3 1 1
      168 ADDK                             R2 R3 K12 [1]
      169 CALL                             R1 1 0
      170 NEWCLOSURE                       R1 P3
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U12
      173 CAPTURE                          UPVAL U4
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          UPVAL U11
      178 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+21]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+14]
       12 GETUPVAL                         R2 4
       13 SETTABLEKS                       R0 R2 K0 ["current"]
       15 GETUPVAL                         R2 5
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R1
       19 SETLIST                          R4 R5 1 [1]
       21 NAMECALL                         R2 R2 K1 ["Set"]
       23 CALL                             R2 2 0
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R2 0
       27 RETURN                           R2 1
       28 GETUPVAL                         R1 3
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R1 R1 K2 ["Parent"]
       33 JUMPIFNOT                        R1 ; [+5]
       34 LOADK                            R4 K3 ["HumanoidRigDescription"]
       35 NAMECALL                         R2 R1 K4 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+2]
       39 LOADB                            R2 0
       40 RETURN                           R2 1
       41 GETUPVAL                         R3 6
       42 GETTABLEKS                       R3 R3 K5 ["bodyRigLabels"]
       44 MOVE                             R4 R3
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 MOVE                             R11 R8
       49 NAMECALL                         R9 R1 K6 ["GetJoint"]
       51 CALL                             R9 2 1
       52 JUMPIFNOTEQ                      R9 R0 ; [+3]
       54 MOVE                             R2 R8
       55 JUMP                             ; [+3]
       56 FORGLOOP                         R4 2 ; [-9]
       58 LOADNIL                          R2
       59 JUMPIFNOT                        R2 ; [+14]
       60 GETUPVAL                         R3 4
       61 SETTABLEKS                       R0 R3 K0 ["current"]
       63 GETUPVAL                         R3 5
       64 NEWTABLE                         R5 0 1
       66 MOVE                             R6 R1
       67 SETLIST                          R5 R6 1 [1]
       69 NAMECALL                         R3 R3 K1 ["Set"]
       71 CALL                             R3 2 0
       72 LOADB                            R3 1
       73 RETURN                           R3 1
       74 GETUPVAL                         R3 2
       75 MOVE                             R4 R1
       76 MOVE                             R5 R0
       77 CALL                             R3 2 1
       78 JUMPIFNOT                        R3 ; [+17]
       79 GETUPVAL                         R4 3
       80 JUMPIFEQ                         R3 R4 ; [+15]
       82 GETUPVAL                         R4 4
       83 SETTABLEKS                       R0 R4 K0 ["current"]
       85 GETUPVAL                         R4 5
       86 NEWTABLE                         R6 0 1
       88 MOVE                             R7 R3
       89 SETLIST                          R6 R7 1 [1]
       91 NAMECALL                         R4 R4 K1 ["Set"]
       93 CALL                             R4 2 0
       94 LOADB                            R4 1
       95 RETURN                           R4 1
       96 LOADB                            R4 0
       97 RETURN                           R4 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+27]
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R3 4
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R2 K0 ["GetJoint"]
       19 CALL                             R9 2 1
       20 JUMPIFNOTEQ                      R9 R0 ; [+3]
       22 MOVE                             R1 R8
       23 JUMP                             ; [+3]
       24 FORGLOOP                         R4 2 ; [-9]
       26 LOADNIL                          R1
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETUPVAL                         R1 5
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 6
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 JUMPIFNOT                        R1 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 5
       38 MOVE                             R2 R0
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_46:
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
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_48]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_54:
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
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K0 ["GetJoint"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 RETURN                           R0 0

PROTO_66:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_66]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_70:
        0 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_78]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+265]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKS                    R0 K0 ["mapping"] ; [+88]
        6 NEWTABLE                         R0 0 3
        8 DUPTABLE                         R1 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K8 ["localization"]
       12 LOADK                            R4 K9 ["Toolbar"]
       13 LOADK                            R5 K10 ["Automap"]
       14 NAMECALL                         R2 R2 K11 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K3 ["Tooltip"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K8 ["localization"]
       22 LOADK                            R4 K9 ["Toolbar"]
       23 LOADK                            R5 K12 ["AutomapTooltip"]
       24 NAMECALL                         R2 R2 K11 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K4 ["TooltipDescription"]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K13 ["MAGIC"]
       32 SETTABLEKS                       R2 R1 K5 ["Icon"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K6 ["OnClick"]
       41 DUPTABLE                         R2 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K8 ["localization"]
       45 LOADK                            R5 K9 ["Toolbar"]
       46 LOADK                            R6 K14 ["ClearMappings"]
       47 NAMECALL                         R3 R3 K11 ["getText"]
       49 CALL                             R3 3 1
       50 SETTABLEKS                       R3 R2 K3 ["Tooltip"]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K8 ["localization"]
       55 LOADK                            R5 K9 ["Toolbar"]
       56 LOADK                            R6 K15 ["ClearMappingsTooltip"]
       57 NAMECALL                         R3 R3 K11 ["getText"]
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R2 K4 ["TooltipDescription"]
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K16 ["RESET"]
       65 SETTABLEKS                       R3 R2 K5 ["Icon"]
       67 NEWCLOSURE                       R3 P1
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 SETTABLEKS                       R3 R2 K6 ["OnClick"]
       74 DUPTABLE                         R3 K20 [{["Type"] = "TextButton", ["Text"], ["Icon"] = "", ["OnClick"]}]
       75 GETUPVAL                         R4 2
       76 GETTABLEKS                       R4 R4 K8 ["localization"]
       78 LOADK                            R6 K21 ["Mode"]
       79 LOADK                            R7 K22 ["Done"]
       80 NAMECALL                         R4 R4 K11 ["getText"]
       82 CALL                             R4 3 1
       83 SETTABLEKS                       R4 R3 K18 ["Text"]
       85 NEWCLOSURE                       R4 P2
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U9
       88 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       90 SETLIST                          R0 R1 3 [1]
       92 RETURN                           R0 1
       93 GETUPVAL                         R0 1
       94 JUMPIFNOTEQKS                    R0 K23 ["tpose"] ; [+170]
       96 NEWTABLE                         R0 0 8
       98 DUPTABLE                         R1 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
       99 GETUPVAL                         R2 2
      100 GETTABLEKS                       R2 R2 K8 ["localization"]
      102 LOADK                            R4 K9 ["Toolbar"]
      103 LOADK                            R5 K24 ["EnforceTpose"]
      104 NAMECALL                         R2 R2 K11 ["getText"]
      106 CALL                             R2 3 1
      107 SETTABLEKS                       R2 R1 K3 ["Tooltip"]
      109 GETUPVAL                         R2 2
      110 GETTABLEKS                       R2 R2 K8 ["localization"]
      112 LOADK                            R4 K9 ["Toolbar"]
      113 LOADK                            R5 K25 ["EnforceTposeTooltip"]
      114 NAMECALL                         R2 R2 K11 ["getText"]
      116 CALL                             R2 3 1
      117 SETTABLEKS                       R2 R1 K4 ["TooltipDescription"]
      119 GETUPVAL                         R2 3
      120 GETTABLEKS                       R2 R2 K13 ["MAGIC"]
      122 SETTABLEKS                       R2 R1 K5 ["Icon"]
      124 NEWCLOSURE                       R2 P3
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U6
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          UPVAL U7
      129 SETTABLEKS                       R2 R1 K6 ["OnClick"]
      131 DUPTABLE                         R2 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
      132 GETUPVAL                         R3 2
      133 GETTABLEKS                       R3 R3 K8 ["localization"]
      135 LOADK                            R5 K9 ["Toolbar"]
      136 LOADK                            R6 K26 ["ResetTpose"]
      137 NAMECALL                         R3 R3 K11 ["getText"]
      139 CALL                             R3 3 1
      140 SETTABLEKS                       R3 R2 K3 ["Tooltip"]
      142 GETUPVAL                         R3 2
      143 GETTABLEKS                       R3 R3 K8 ["localization"]
      145 LOADK                            R5 K9 ["Toolbar"]
      146 LOADK                            R6 K27 ["ResetTPoseTooltip"]
      147 NAMECALL                         R3 R3 K11 ["getText"]
      149 CALL                             R3 3 1
      150 SETTABLEKS                       R3 R2 K4 ["TooltipDescription"]
      152 GETUPVAL                         R3 3
      153 GETTABLEKS                       R3 R3 K16 ["RESET"]
      155 SETTABLEKS                       R3 R2 K5 ["Icon"]
      157 NEWCLOSURE                       R3 P4
      158 CAPTURE                          UPVAL U4
      159 CAPTURE                          UPVAL U6
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          UPVAL U7
      162 SETTABLEKS                       R3 R2 K6 ["OnClick"]
      164 DUPTABLE                         R3 K29 [{["Type"] = "Separator", ["Icon"] = "", ["OnClick"]}]
      165 DUPCLOSURE                       R4 K30 [PROTO_65]
      166 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      168 DUPTABLE                         R4 K32 [{["Type"] = "Button", ["Tooltip"], ["Selected"], ["Icon"], ["OnClick"]}]
      169 GETUPVAL                         R6 10
      170 JUMPIFNOT                        R6 ; [+9]
      171 GETUPVAL                         R5 2
      172 GETTABLEKS                       R5 R5 K8 ["localization"]
      174 LOADK                            R7 K9 ["Toolbar"]
      175 LOADK                            R8 K33 ["SymmetryOn"]
      176 NAMECALL                         R5 R5 K11 ["getText"]
      178 CALL                             R5 3 1
      179 JUMPIF                           R5 ; [+8]
      180 GETUPVAL                         R5 2
      181 GETTABLEKS                       R5 R5 K8 ["localization"]
      183 LOADK                            R7 K9 ["Toolbar"]
      184 LOADK                            R8 K34 ["SymmetryOff"]
      185 NAMECALL                         R5 R5 K11 ["getText"]
      187 CALL                             R5 3 1
      188 SETTABLEKS                       R5 R4 K3 ["Tooltip"]
      190 GETUPVAL                         R5 10
      191 SETTABLEKS                       R5 R4 K31 ["Selected"]
      193 GETUPVAL                         R5 3
      194 GETTABLEKS                       R5 R5 K35 ["SYMMETRY"]
      196 SETTABLEKS                       R5 R4 K5 ["Icon"]
      198 NEWCLOSURE                       R5 P6
      199 CAPTURE                          UPVAL U11
      200 SETTABLEKS                       R5 R4 K6 ["OnClick"]
      202 DUPTABLE                         R5 K36 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      203 GETUPVAL                         R6 2
      204 GETTABLEKS                       R6 R6 K8 ["localization"]
      206 LOADK                            R8 K3 ["Tooltip"]
      207 LOADK                            R9 K37 ["MirrorLtoR"]
      208 NAMECALL                         R6 R6 K11 ["getText"]
      210 CALL                             R6 3 1
      211 SETTABLEKS                       R6 R5 K3 ["Tooltip"]
      213 GETUPVAL                         R6 3
      214 GETTABLEKS                       R6 R6 K38 ["MIRROR_TO_RIGHT"]
      216 SETTABLEKS                       R6 R5 K5 ["Icon"]
      218 NEWCLOSURE                       R6 P7
      219 CAPTURE                          UPVAL U12
      220 SETTABLEKS                       R6 R5 K6 ["OnClick"]
      222 DUPTABLE                         R6 K36 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      223 GETUPVAL                         R7 2
      224 GETTABLEKS                       R7 R7 K8 ["localization"]
      226 LOADK                            R9 K3 ["Tooltip"]
      227 LOADK                            R10 K39 ["MirrorRtoL"]
      228 NAMECALL                         R7 R7 K11 ["getText"]
      230 CALL                             R7 3 1
      231 SETTABLEKS                       R7 R6 K3 ["Tooltip"]
      233 GETUPVAL                         R7 3
      234 GETTABLEKS                       R7 R7 K40 ["MIRROR_TO_LEFT"]
      236 SETTABLEKS                       R7 R6 K5 ["Icon"]
      238 NEWCLOSURE                       R7 P8
      239 CAPTURE                          UPVAL U12
      240 SETTABLEKS                       R7 R6 K6 ["OnClick"]
      242 DUPTABLE                         R7 K41 [{["Type"] = "Separator", ["OnClick"], ["Icon"] = ""}]
      243 DUPCLOSURE                       R8 K42 [PROTO_70]
      244 SETTABLEKS                       R8 R7 K6 ["OnClick"]
      246 DUPTABLE                         R8 K20 [{["Type"] = "TextButton", ["Text"], ["Icon"] = "", ["OnClick"]}]
      247 GETUPVAL                         R9 2
      248 GETTABLEKS                       R9 R9 K8 ["localization"]
      250 LOADK                            R11 K21 ["Mode"]
      251 LOADK                            R12 K22 ["Done"]
      252 NAMECALL                         R9 R9 K11 ["getText"]
      254 CALL                             R9 3 1
      255 SETTABLEKS                       R9 R8 K18 ["Text"]
      257 NEWCLOSURE                       R9 P10
      258 CAPTURE                          UPVAL U8
      259 CAPTURE                          UPVAL U9
      260 SETTABLEKS                       R9 R8 K6 ["OnClick"]
      262 SETLIST                          R0 R1 8 [1]
      264 RETURN                           R0 1
      265 NEWTABLE                         R0 0 0
      267 RETURN                           R0 1
      268 NEWTABLE                         R0 0 0
      270 GETUPVAL                         R1 13
      271 LOADNIL                          R2
      272 LOADNIL                          R3
      273 FORGPREP                         R1
      274 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
      276 MOVE                             R7 R0
      277 MOVE                             R8 R5
      278 GETIMPORT                        R6 K45 [table.insert]
      280 CALL                             R6 2 0
      281 FORGLOOP                         R1 2 ; [-8]
      283 DUPTABLE                         R3 K46 [{["Type"] = "Separator"}]
      284 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      286 MOVE                             R2 R0
      287 GETIMPORT                        R1 K45 [table.insert]
      289 CALL                             R1 2 0
      290 DUPTABLE                         R3 K47 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
      291 GETUPVAL                         R4 2
      292 GETTABLEKS                       R4 R4 K8 ["localization"]
      294 LOADK                            R6 K21 ["Mode"]
      295 LOADK                            R7 K48 ["Mapping"]
      296 NAMECALL                         R4 R4 K11 ["getText"]
      298 CALL                             R4 3 1
      299 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      301 GETUPVAL                         R4 2
      302 GETTABLEKS                       R4 R4 K8 ["localization"]
      304 LOADK                            R6 K21 ["Mode"]
      305 LOADK                            R7 K49 ["MappingTooltip"]
      306 NAMECALL                         R4 R4 K11 ["getText"]
      308 CALL                             R4 3 1
      309 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      311 GETUPVAL                         R4 3
      312 GETTABLEKS                       R4 R4 K50 ["MAPPING"]
      314 SETTABLEKS                       R4 R3 K5 ["Icon"]
      316 GETUPVAL                         R5 1
      317 JUMPIFEQKS                       R5 K0 ["mapping"] ; [+2]
      319 LOADB                            R4 0 +1
      320 LOADB                            R4 1
      321 SETTABLEKS                       R4 R3 K31 ["Selected"]
      323 NEWCLOSURE                       R4 P11
      324 CAPTURE                          UPVAL U1
      325 CAPTURE                          UPVAL U14
      326 CAPTURE                          UPVAL U9
      327 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      329 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      331 MOVE                             R2 R0
      332 GETIMPORT                        R1 K45 [table.insert]
      334 CALL                             R1 2 0
      335 DUPTABLE                         R3 K47 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
      336 GETUPVAL                         R4 2
      337 GETTABLEKS                       R4 R4 K8 ["localization"]
      339 LOADK                            R6 K21 ["Mode"]
      340 LOADK                            R7 K51 ["TPose"]
      341 NAMECALL                         R4 R4 K11 ["getText"]
      343 CALL                             R4 3 1
      344 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      346 GETUPVAL                         R4 2
      347 GETTABLEKS                       R4 R4 K8 ["localization"]
      349 LOADK                            R6 K21 ["Mode"]
      350 LOADK                            R7 K52 ["TPoseTooltip"]
      351 NAMECALL                         R4 R4 K11 ["getText"]
      353 CALL                             R4 3 1
      354 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      356 GETUPVAL                         R4 3
      357 GETTABLEKS                       R4 R4 K53 ["TPOSE"]
      359 SETTABLEKS                       R4 R3 K5 ["Icon"]
      361 GETUPVAL                         R5 1
      362 JUMPIFEQKS                       R5 K23 ["tpose"] ; [+2]
      364 LOADB                            R4 0 +1
      365 LOADB                            R4 1
      366 SETTABLEKS                       R4 R3 K31 ["Selected"]
      368 NEWCLOSURE                       R4 P12
      369 CAPTURE                          UPVAL U1
      370 CAPTURE                          UPVAL U14
      371 CAPTURE                          UPVAL U9
      372 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      374 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      376 MOVE                             R2 R0
      377 GETIMPORT                        R1 K45 [table.insert]
      379 CALL                             R1 2 0
      380 DUPTABLE                         R3 K46 [{["Type"] = "Separator"}]
      381 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      383 MOVE                             R2 R0
      384 GETIMPORT                        R1 K45 [table.insert]
      386 CALL                             R1 2 0
      387 GETUPVAL                         R1 1
      388 JUMPIFNOTEQKS                    R1 K0 ["mapping"] ; [+85]
      390 DUPTABLE                         R3 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
      391 GETUPVAL                         R4 2
      392 GETTABLEKS                       R4 R4 K8 ["localization"]
      394 LOADK                            R6 K9 ["Toolbar"]
      395 LOADK                            R7 K10 ["Automap"]
      396 NAMECALL                         R4 R4 K11 ["getText"]
      398 CALL                             R4 3 1
      399 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      401 GETUPVAL                         R4 2
      402 GETTABLEKS                       R4 R4 K8 ["localization"]
      404 LOADK                            R6 K9 ["Toolbar"]
      405 LOADK                            R7 K12 ["AutomapTooltip"]
      406 NAMECALL                         R4 R4 K11 ["getText"]
      408 CALL                             R4 3 1
      409 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      411 GETUPVAL                         R4 3
      412 GETTABLEKS                       R4 R4 K13 ["MAGIC"]
      414 SETTABLEKS                       R4 R3 K5 ["Icon"]
      416 NEWCLOSURE                       R4 P13
      417 CAPTURE                          UPVAL U4
      418 CAPTURE                          UPVAL U15
      419 CAPTURE                          UPVAL U6
      420 CAPTURE                          UPVAL U5
      421 CAPTURE                          UPVAL U7
      422 CAPTURE                          UPVAL U16
      423 CAPTURE                          UPVAL U17
      424 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      426 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      428 MOVE                             R2 R0
      429 GETIMPORT                        R1 K45 [table.insert]
      431 CALL                             R1 2 0
      432 DUPTABLE                         R3 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
      433 GETUPVAL                         R4 2
      434 GETTABLEKS                       R4 R4 K8 ["localization"]
      436 LOADK                            R6 K9 ["Toolbar"]
      437 LOADK                            R7 K14 ["ClearMappings"]
      438 NAMECALL                         R4 R4 K11 ["getText"]
      440 CALL                             R4 3 1
      441 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      443 GETUPVAL                         R4 2
      444 GETTABLEKS                       R4 R4 K8 ["localization"]
      446 LOADK                            R6 K9 ["Toolbar"]
      447 LOADK                            R7 K15 ["ClearMappingsTooltip"]
      448 NAMECALL                         R4 R4 K11 ["getText"]
      450 CALL                             R4 3 1
      451 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      453 GETUPVAL                         R4 3
      454 GETTABLEKS                       R4 R4 K16 ["RESET"]
      456 SETTABLEKS                       R4 R3 K5 ["Icon"]
      458 NEWCLOSURE                       R4 P14
      459 CAPTURE                          UPVAL U4
      460 CAPTURE                          UPVAL U15
      461 CAPTURE                          UPVAL U5
      462 CAPTURE                          UPVAL U6
      463 CAPTURE                          UPVAL U7
      464 CAPTURE                          UPVAL U16
      465 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      467 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      469 MOVE                             R2 R0
      470 GETIMPORT                        R1 K45 [table.insert]
      472 CALL                             R1 2 0
      473 RETURN                           R0 1
      474 GETUPVAL                         R1 1
      475 JUMPIFNOTEQKS                    R1 K23 ["tpose"] ; [+183]
      477 DUPTABLE                         R3 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
      478 GETUPVAL                         R4 2
      479 GETTABLEKS                       R4 R4 K8 ["localization"]
      481 LOADK                            R6 K9 ["Toolbar"]
      482 LOADK                            R7 K24 ["EnforceTpose"]
      483 NAMECALL                         R4 R4 K11 ["getText"]
      485 CALL                             R4 3 1
      486 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      488 GETUPVAL                         R4 2
      489 GETTABLEKS                       R4 R4 K8 ["localization"]
      491 LOADK                            R6 K9 ["Toolbar"]
      492 LOADK                            R7 K25 ["EnforceTposeTooltip"]
      493 NAMECALL                         R4 R4 K11 ["getText"]
      495 CALL                             R4 3 1
      496 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      498 GETUPVAL                         R4 3
      499 GETTABLEKS                       R4 R4 K13 ["MAGIC"]
      501 SETTABLEKS                       R4 R3 K5 ["Icon"]
      503 NEWCLOSURE                       R4 P15
      504 CAPTURE                          UPVAL U4
      505 CAPTURE                          UPVAL U6
      506 CAPTURE                          UPVAL U15
      507 CAPTURE                          UPVAL U16
      508 CAPTURE                          UPVAL U5
      509 CAPTURE                          UPVAL U7
      510 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      512 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      514 MOVE                             R2 R0
      515 GETIMPORT                        R1 K45 [table.insert]
      517 CALL                             R1 2 0
      518 DUPTABLE                         R3 K7 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"]}]
      519 GETUPVAL                         R4 2
      520 GETTABLEKS                       R4 R4 K8 ["localization"]
      522 LOADK                            R6 K9 ["Toolbar"]
      523 LOADK                            R7 K26 ["ResetTpose"]
      524 NAMECALL                         R4 R4 K11 ["getText"]
      526 CALL                             R4 3 1
      527 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      529 GETUPVAL                         R4 2
      530 GETTABLEKS                       R4 R4 K8 ["localization"]
      532 LOADK                            R6 K9 ["Toolbar"]
      533 LOADK                            R7 K27 ["ResetTPoseTooltip"]
      534 NAMECALL                         R4 R4 K11 ["getText"]
      536 CALL                             R4 3 1
      537 SETTABLEKS                       R4 R3 K4 ["TooltipDescription"]
      539 GETUPVAL                         R4 3
      540 GETTABLEKS                       R4 R4 K16 ["RESET"]
      542 SETTABLEKS                       R4 R3 K5 ["Icon"]
      544 NEWCLOSURE                       R4 P16
      545 CAPTURE                          UPVAL U4
      546 CAPTURE                          UPVAL U6
      547 CAPTURE                          UPVAL U15
      548 CAPTURE                          UPVAL U16
      549 CAPTURE                          UPVAL U18
      550 CAPTURE                          UPVAL U7
      551 CAPTURE                          UPVAL U5
      552 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      554 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      556 MOVE                             R2 R0
      557 GETIMPORT                        R1 K45 [table.insert]
      559 CALL                             R1 2 0
      560 DUPTABLE                         R3 K46 [{["Type"] = "Separator"}]
      561 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      563 MOVE                             R2 R0
      564 GETIMPORT                        R1 K45 [table.insert]
      566 CALL                             R1 2 0
      567 DUPTABLE                         R3 K32 [{["Type"] = "Button", ["Tooltip"], ["Selected"], ["Icon"], ["OnClick"]}]
      568 GETUPVAL                         R5 10
      569 JUMPIFNOT                        R5 ; [+9]
      570 GETUPVAL                         R4 2
      571 GETTABLEKS                       R4 R4 K8 ["localization"]
      573 LOADK                            R6 K9 ["Toolbar"]
      574 LOADK                            R7 K33 ["SymmetryOn"]
      575 NAMECALL                         R4 R4 K11 ["getText"]
      577 CALL                             R4 3 1
      578 JUMPIF                           R4 ; [+8]
      579 GETUPVAL                         R4 2
      580 GETTABLEKS                       R4 R4 K8 ["localization"]
      582 LOADK                            R6 K9 ["Toolbar"]
      583 LOADK                            R7 K34 ["SymmetryOff"]
      584 NAMECALL                         R4 R4 K11 ["getText"]
      586 CALL                             R4 3 1
      587 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      589 GETUPVAL                         R4 10
      590 SETTABLEKS                       R4 R3 K31 ["Selected"]
      592 GETUPVAL                         R4 3
      593 GETTABLEKS                       R4 R4 K35 ["SYMMETRY"]
      595 SETTABLEKS                       R4 R3 K5 ["Icon"]
      597 NEWCLOSURE                       R4 P17
      598 CAPTURE                          UPVAL U11
      599 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      601 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      603 MOVE                             R2 R0
      604 GETIMPORT                        R1 K45 [table.insert]
      606 CALL                             R1 2 0
      607 DUPTABLE                         R3 K36 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      608 GETUPVAL                         R4 2
      609 GETTABLEKS                       R4 R4 K8 ["localization"]
      611 LOADK                            R6 K3 ["Tooltip"]
      612 LOADK                            R7 K37 ["MirrorLtoR"]
      613 NAMECALL                         R4 R4 K11 ["getText"]
      615 CALL                             R4 3 1
      616 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      618 GETUPVAL                         R4 3
      619 GETTABLEKS                       R4 R4 K38 ["MIRROR_TO_RIGHT"]
      621 SETTABLEKS                       R4 R3 K5 ["Icon"]
      623 NEWCLOSURE                       R4 P18
      624 CAPTURE                          UPVAL U12
      625 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      627 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      629 MOVE                             R2 R0
      630 GETIMPORT                        R1 K45 [table.insert]
      632 CALL                             R1 2 0
      633 DUPTABLE                         R3 K36 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      634 GETUPVAL                         R4 2
      635 GETTABLEKS                       R4 R4 K8 ["localization"]
      637 LOADK                            R6 K3 ["Tooltip"]
      638 LOADK                            R7 K39 ["MirrorRtoL"]
      639 NAMECALL                         R4 R4 K11 ["getText"]
      641 CALL                             R4 3 1
      642 SETTABLEKS                       R4 R3 K3 ["Tooltip"]
      644 GETUPVAL                         R4 3
      645 GETTABLEKS                       R4 R4 K40 ["MIRROR_TO_LEFT"]
      647 SETTABLEKS                       R4 R3 K5 ["Icon"]
      649 NEWCLOSURE                       R4 P19
      650 CAPTURE                          UPVAL U12
      651 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      653 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
      655 MOVE                             R2 R0
      656 GETIMPORT                        R1 K45 [table.insert]
      658 CALL                             R1 2 0
      659 RETURN                           R0 1

PROTO_83:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_84:
        0 RETURN                           R0 0

PROTO_85:
        0 RETURN                           R0 0

PROTO_86:
        0 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_91:
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

PROTO_92:
        0 RETURN                           R0 0

PROTO_93:
        0 RETURN                           R0 0

PROTO_94:
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
       22 DUPCLOSURE                       R6 K4 [PROTO_13]
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
      331 CAPTURE                          VAL R42
      332 CAPTURE                          VAL R41
      333 CAPTURE                          UPVAL U13
      334 CAPTURE                          VAL R6
      335 CAPTURE                          UPVAL U14
      336 CAPTURE                          VAL R1
      337 CAPTURE                          UPVAL U3
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R46
      340 CAPTURE                          UPVAL U15
      341 CAPTURE                          UPVAL U16
      342 CAPTURE                          UPVAL U6
      343 CAPTURE                          UPVAL U17
      344 NEWTABLE                         R49 0 2
      346 MOVE                             R50 R1
      347 MOVE                             R51 R31
      348 SETLIST                          R49 R50 2 [1]
      350 CALL                             R47 2 1
      351 GETUPVAL                         R48 18
      352 MOVE                             R49 R27
      353 MOVE                             R50 R1
      354 MOVE                             R51 R31
      355 MOVE                             R52 R47
      356 GETUPVAL                         R54 6
      357 CALL                             R54 0 1
      358 JUMPIFNOT                        R54 ; [+4]
      359 NEWCLOSURE                       R53 P11
      360 CAPTURE                          VAL R28
      361 CAPTURE                          VAL R30
      362 JUMP                             ; [+1]
      363 LOADNIL                          R53
      364 GETUPVAL                         R55 6
      365 CALL                             R55 0 1
      366 JUMPIFNOT                        R55 ; [+2]
      367 MOVE                             R54 R9
      368 JUMP                             ; [+1]
      369 LOADNIL                          R54
      370 GETUPVAL                         R56 6
      371 CALL                             R56 0 1
      372 JUMPIFNOT                        R56 ; [+5]
      373 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
      375 LOADB                            R55 0 +1
      376 LOADB                            R55 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R55
      379 CALL                             R48 7 1
      380 GETUPVAL                         R49 1
      381 GETTABLEKS                       R49 R49 K2 ["useEffect"]
      383 NEWCLOSURE                       R50 P12
      384 CAPTURE                          VAL R44
      385 CAPTURE                          VAL R1
      386 CAPTURE                          VAL R45
      387 CAPTURE                          UPVAL U6
      388 CAPTURE                          VAL R6
      389 CAPTURE                          UPVAL U14
      390 CAPTURE                          UPVAL U3
      391 CAPTURE                          VAL R28
      392 CAPTURE                          VAL R30
      393 CAPTURE                          UPVAL U11
      394 CAPTURE                          VAL R5
      395 CAPTURE                          UPVAL U2
      396 CAPTURE                          VAL R41
      397 NEWTABLE                         R51 0 1
      399 MOVE                             R52 R1
      400 SETLIST                          R51 R52 1 [1]
      402 CALL                             R49 2 0
      403 GETUPVAL                         R49 1
      404 GETTABLEKS                       R49 R49 K2 ["useEffect"]
      406 NEWCLOSURE                       R50 P13
      407 CAPTURE                          UPVAL U6
      408 CAPTURE                          REF R15
      409 CAPTURE                          VAL R1
      410 CAPTURE                          VAL R9
      411 CAPTURE                          VAL R10
      412 CAPTURE                          VAL R6
      413 CAPTURE                          UPVAL U11
      414 CAPTURE                          VAL R3
      415 CAPTURE                          UPVAL U3
      416 CAPTURE                          VAL R39
      417 CAPTURE                          VAL R38
      418 CAPTURE                          UPVAL U19
      419 CAPTURE                          VAL R40
      420 CAPTURE                          UPVAL U14
      421 NEWTABLE                         R51 0 6
      423 MOVE                             R52 R3
      424 MOVE                             R53 R15
      425 MOVE                             R54 R1
      426 MOVE                             R55 R9
      427 MOVE                             R56 R10
      428 MOVE                             R57 R13
      429 SETLIST                          R51 R52 6 [1]
      431 CALL                             R49 2 0
      432 GETUPVAL                         R49 1
      433 GETTABLEKS                       R49 R49 K2 ["useEffect"]
      435 NEWCLOSURE                       R50 P14
      436 CAPTURE                          UPVAL U6
      437 CAPTURE                          REF R15
      438 CAPTURE                          VAL R9
      439 CAPTURE                          VAL R6
      440 CAPTURE                          VAL R1
      441 CAPTURE                          VAL R3
      442 CAPTURE                          UPVAL U14
      443 CAPTURE                          UPVAL U19
      444 CAPTURE                          VAL R40
      445 CAPTURE                          VAL R10
      446 CAPTURE                          VAL R39
      447 CAPTURE                          VAL R38
      448 CAPTURE                          UPVAL U3
      449 GETUPVAL                         R52 6
      450 CALL                             R52 0 1
      451 JUMPIFNOT                        R52 ; [+12]
      452 NEWTABLE                         R51 0 7
      454 MOVE                             R52 R3
      455 MOVE                             R53 R15
      456 MOVE                             R54 R1
      457 MOVE                             R55 R2
      458 MOVE                             R56 R9
      459 MOVE                             R57 R10
      460 MOVE                             R58 R13
      461 SETLIST                          R51 R52 7 [1]
      463 JUMP                             ; [+9]
      464 NEWTABLE                         R51 0 5
      466 MOVE                             R52 R3
      467 MOVE                             R53 R1
      468 MOVE                             R54 R2
      469 MOVE                             R55 R9
      470 MOVE                             R56 R10
      471 SETLIST                          R51 R52 5 [1]
      473 CALL                             R49 2 0
      474 GETUPVAL                         R49 1
      475 GETTABLEKS                       R49 R49 K2 ["useEffect"]
      477 NEWCLOSURE                       R50 P15
      478 CAPTURE                          VAL R41
      479 NEWTABLE                         R51 0 3
      481 MOVE                             R52 R27
      482 MOVE                             R53 R31
      483 MOVE                             R54 R3
      484 SETLIST                          R51 R52 3 [1]
      486 CALL                             R49 2 0
      487 GETUPVAL                         R49 1
      488 GETTABLEKS                       R49 R49 K3 ["useCallback"]
      490 NEWCLOSURE                       R50 P16
      491 CAPTURE                          UPVAL U20
      492 CAPTURE                          VAL R1
      493 CAPTURE                          VAL R8
      494 CAPTURE                          UPVAL U21
      495 CAPTURE                          UPVAL U22
      496 CAPTURE                          VAL R28
      497 CAPTURE                          VAL R30
      498 NEWTABLE                         R51 0 2
      500 MOVE                             R52 R1
      501 MOVE                             R53 R8
      502 SETLIST                          R51 R52 2 [1]
      504 CALL                             R49 2 1
      505 GETUPVAL                         R50 1
      506 GETTABLEKS                       R50 R50 K3 ["useCallback"]
      508 NEWCLOSURE                       R51 P17
      509 CAPTURE                          UPVAL U6
      510 CAPTURE                          VAL R6
      511 CAPTURE                          UPVAL U23
      512 CAPTURE                          VAL R1
      513 CAPTURE                          VAL R45
      514 CAPTURE                          UPVAL U12
      515 CAPTURE                          UPVAL U3
      516 NEWTABLE                         R52 0 2
      518 MOVE                             R53 R1
      519 MOVE                             R54 R6
      520 SETLIST                          R52 R53 2 [1]
      522 CALL                             R50 2 1
      523 GETUPVAL                         R51 1
      524 GETTABLEKS                       R51 R51 K3 ["useCallback"]
      526 NEWCLOSURE                       R52 P18
      527 CAPTURE                          VAL R29
      528 CAPTURE                          VAL R49
      529 CAPTURE                          UPVAL U24
      530 CAPTURE                          VAL R1
      531 CAPTURE                          VAL R8
      532 CAPTURE                          VAL R28
      533 CAPTURE                          VAL R50
      534 NEWTABLE                         R53 0 5
      536 MOVE                             R54 R29
      537 MOVE                             R55 R49
      538 MOVE                             R56 R1
      539 MOVE                             R57 R8
      540 MOVE                             R58 R50
      541 SETLIST                          R53 R54 5 [1]
      543 CALL                             R51 2 1
      544 GETUPVAL                         R52 1
      545 GETTABLEKS                       R52 R52 K3 ["useCallback"]
      547 NEWCLOSURE                       R53 P19
      548 CAPTURE                          VAL R1
      549 CAPTURE                          VAL R8
      550 CAPTURE                          VAL R28
      551 CAPTURE                          VAL R50
      552 NEWTABLE                         R54 0 3
      554 MOVE                             R55 R1
      555 MOVE                             R56 R8
      556 MOVE                             R57 R50
      557 SETLIST                          R54 R55 3 [1]
      559 CALL                             R52 2 1
      560 GETUPVAL                         R53 1
      561 GETTABLEKS                       R53 R53 K3 ["useCallback"]
      563 NEWCLOSURE                       R54 P20
      564 CAPTURE                          VAL R6
      565 CAPTURE                          UPVAL U25
      566 CAPTURE                          VAL R1
      567 CAPTURE                          VAL R9
      568 CAPTURE                          VAL R10
      569 NEWTABLE                         R55 0 4
      571 MOVE                             R56 R6
      572 MOVE                             R57 R1
      573 MOVE                             R58 R9
      574 MOVE                             R59 R10
      575 SETLIST                          R55 R56 4 [1]
      577 CALL                             R53 2 1
      578 GETUPVAL                         R54 1
      579 GETTABLEKS                       R54 R54 K3 ["useCallback"]
      581 NEWCLOSURE                       R55 P21
      582 CAPTURE                          VAL R9
      583 CAPTURE                          VAL R1
      584 CAPTURE                          VAL R6
      585 CAPTURE                          UPVAL U6
      586 CAPTURE                          VAL R14
      587 CAPTURE                          UPVAL U26
      588 CAPTURE                          VAL R10
      589 CAPTURE                          VAL R3
      590 CAPTURE                          UPVAL U27
      591 CAPTURE                          VAL R39
      592 CAPTURE                          VAL R38
      593 NEWTABLE                         R56 0 5
      595 MOVE                             R57 R9
      596 MOVE                             R58 R1
      597 MOVE                             R59 R10
      598 MOVE                             R60 R3
      599 MOVE                             R61 R6
      600 SETLIST                          R56 R57 5 [1]
      602 CALL                             R54 2 1
      603 GETUPVAL                         R55 28
      604 MOVE                             R56 R54
      605 GETTABLEKS                       R57 R0 K20 ["localization"]
      607 MOVE                             R58 R9
      608 CALL                             R55 3 4
      609 GETUPVAL                         R59 1
      610 GETTABLEKS                       R59 R59 K2 ["useEffect"]
      612 NEWCLOSURE                       R60 P22
      613 CAPTURE                          VAL R43
      614 CAPTURE                          VAL R58
      615 NEWTABLE                         R61 0 1
      617 MOVE                             R62 R58
      618 SETLIST                          R61 R62 1 [1]
      620 CALL                             R59 2 0
      621 GETUPVAL                         R59 1
      622 GETTABLEKS                       R59 R59 K2 ["useEffect"]
      624 NEWCLOSURE                       R60 P23
      625 CAPTURE                          VAL R12
      626 CAPTURE                          VAL R57
      627 NEWTABLE                         R61 0 1
      629 MOVE                             R62 R57
      630 SETLIST                          R61 R62 1 [1]
      632 CALL                             R59 2 0
      633 GETUPVAL                         R59 1
      634 GETTABLEKS                       R59 R59 K3 ["useCallback"]
      636 NEWCLOSURE                       R60 P24
      637 CAPTURE                          VAL R28
      638 CAPTURE                          VAL R30
      639 NEWTABLE                         R61 0 0
      641 CALL                             R59 2 1
      642 GETUPVAL                         R60 1
      643 GETTABLEKS                       R60 R60 K3 ["useCallback"]
      645 NEWCLOSURE                       R61 P25
      646 CAPTURE                          VAL R29
      647 CAPTURE                          VAL R30
      648 CAPTURE                          VAL R1
      649 CAPTURE                          VAL R28
      650 NEWTABLE                         R62 0 2
      652 MOVE                             R63 R29
      653 MOVE                             R64 R1
      654 SETLIST                          R62 R63 2 [1]
      656 CALL                             R60 2 1
      657 GETUPVAL                         R61 1
      658 GETTABLEKS                       R61 R61 K3 ["useCallback"]
      660 NEWCLOSURE                       R62 P26
      661 CAPTURE                          VAL R29
      662 CAPTURE                          VAL R30
      663 CAPTURE                          VAL R1
      664 CAPTURE                          VAL R28
      665 NEWTABLE                         R63 0 2
      667 MOVE                             R64 R29
      668 MOVE                             R65 R1
      669 SETLIST                          R63 R64 2 [1]
      671 CALL                             R61 2 1
      672 GETUPVAL                         R62 1
      673 GETTABLEKS                       R62 R62 K3 ["useCallback"]
      675 NEWCLOSURE                       R63 P27
      676 CAPTURE                          VAL R1
      677 CAPTURE                          UPVAL U29
      678 NEWTABLE                         R64 0 1
      680 MOVE                             R65 R1
      681 SETLIST                          R64 R65 1 [1]
      683 CALL                             R62 2 1
      684 GETUPVAL                         R63 1
      685 GETTABLEKS                       R63 R63 K3 ["useCallback"]
      687 NEWCLOSURE                       R64 P28
      688 CAPTURE                          VAL R1
      689 NEWTABLE                         R65 0 1
      691 MOVE                             R66 R1
      692 SETLIST                          R65 R66 1 [1]
      694 CALL                             R63 2 1
      695 GETUPVAL                         R64 1
      696 GETTABLEKS                       R64 R64 K3 ["useCallback"]
      698 NEWCLOSURE                       R65 P29
      699 CAPTURE                          VAL R16
      700 NEWTABLE                         R66 0 1
      702 MOVE                             R67 R16
      703 SETLIST                          R66 R67 1 [1]
      705 CALL                             R64 2 1
      706 GETUPVAL                         R65 1
      707 GETTABLEKS                       R65 R65 K3 ["useCallback"]
      709 NEWCLOSURE                       R66 P30
      710 CAPTURE                          VAL R17
      711 CAPTURE                          UPVAL U22
      712 NEWTABLE                         R67 0 1
      714 MOVE                             R68 R17
      715 SETLIST                          R67 R68 1 [1]
      717 CALL                             R65 2 1
      718 GETUPVAL                         R66 1
      719 GETTABLEKS                       R66 R66 K21 ["useMemo"]
      721 NEWCLOSURE                       R67 P31
      722 CAPTURE                          UPVAL U11
      723 CAPTURE                          VAL R3
      724 CAPTURE                          VAL R0
      725 CAPTURE                          UPVAL U19
      726 CAPTURE                          VAL R9
      727 CAPTURE                          UPVAL U3
      728 CAPTURE                          VAL R1
      729 CAPTURE                          UPVAL U22
      730 CAPTURE                          VAL R28
      731 CAPTURE                          VAL R5
      732 CAPTURE                          VAL R31
      733 CAPTURE                          VAL R32
      734 CAPTURE                          VAL R53
      735 CAPTURE                          VAL R55
      736 CAPTURE                          VAL R43
      737 CAPTURE                          VAL R6
      738 CAPTURE                          UPVAL U6
      739 CAPTURE                          UPVAL U29
      740 CAPTURE                          UPVAL U14
      741 NEWTABLE                         R68 0 4
      743 MOVE                             R69 R3
      744 JUMPIFNOT                        R31 ; [+2]
      745 LOADK                            R70 K22 ["y"]
      746 JUMP                             ; [+1]
      747 LOADK                            R70 K23 ["n"]
      748 MOVE                             R71 R1
      749 MOVE                             R72 R55
      750 SETLIST                          R68 R69 4 [1]
      752 CALL                             R66 2 1
      753 GETUPVAL                         R67 11
      754 CALL                             R67 0 1
      755 JUMPIF                           R67 ; [+201]
      756 GETUPVAL                         R67 1
      757 GETTABLEKS                       R67 R67 K24 ["createElement"]
      759 GETUPVAL                         R68 1
      760 GETTABLEKS                       R68 R68 K25 ["Fragment"]
      762 LOADNIL                          R69
      763 DUPTABLE                         R70 K32 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      764 MOVE                             R71 R9
      765 JUMPIFNOT                        R71 ; [+38]
      766 MOVE                             R71 R1
      767 JUMPIFNOT                        R71 ; [+36]
      768 GETUPVAL                         R71 1
      769 GETTABLEKS                       R71 R71 K24 ["createElement"]
      771 GETUPVAL                         R72 30
      772 DUPTABLE                         R73 K40 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation"}]
      773 SETTABLEKS                       R9 R73 K33 ["rigModel"]
      775 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
      777 SETTABLEKS                       R27 R73 K35 ["selectedJointInstance"]
      779 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
      781 MOVE                             R74 R51
      782 JUMP                             ; [+5]
      783 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
      785 MOVE                             R74 R52
      786 JUMP                             ; [+1]
      787 LOADNIL                          R74
      788 SETTABLEKS                       R74 R73 K36 ["onJointClicked"]
      790 LOADB                            R74 1
      791 JUMPIFEQKS                       R3 K42 ["preview"] ; [+5]
      793 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
      795 LOADB                            R74 0 +1
      796 LOADB                            R74 1
      797 SETTABLEKS                       R74 R73 K37 ["applyTposeAdjustment"]
      799 SETTABLEKS                       R38 R73 K38 ["updatePositions"]
      801 SETTABLEKS                       R11 R73 K39 ["DEPRECATED_isPlayingAnimation"]
      803 CALL                             R71 2 1
      804 SETTABLEKS                       R71 R70 K26 ["Adornments"]
      806 LOADB                            R71 0
      807 LENGTH                           R72 R66
      808 LOADN                            R73 0
      809 JUMPIFNOTLT                      R73 R72 ; [+11]
      811 GETUPVAL                         R71 1
      812 GETTABLEKS                       R71 R71 K24 ["createElement"]
      814 GETUPVAL                         R72 31
      815 GETTABLEKS                       R72 R72 K27 ["Toolbar"]
      817 DUPTABLE                         R73 K46 [{["InitialPosition"] = "Center", ["HorizontalItems"]}]
      818 SETTABLEKS                       R66 R73 K45 ["HorizontalItems"]
      820 CALL                             R71 2 1
      821 SETTABLEKS                       R71 R70 K27 ["Toolbar"]
      823 GETUPVAL                         R71 1
      824 GETTABLEKS                       R71 R71 K24 ["createElement"]
      826 GETUPVAL                         R72 32
      827 DUPTABLE                         R73 K50 [{"visible", "mode", "onSelect", "localization"}]
      828 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+2]
      830 LOADB                            R74 0 +1
      831 LOADB                            R74 1
      832 SETTABLEKS                       R74 R73 K47 ["visible"]
      834 SETTABLEKS                       R3 R73 K48 ["mode"]
      836 SETTABLEKS                       R5 R73 K49 ["onSelect"]
      838 GETTABLEKS                       R74 R0 K20 ["localization"]
      840 SETTABLEKS                       R74 R73 K20 ["localization"]
      842 CALL                             R71 2 1
      843 SETTABLEKS                       R71 R70 K28 ["ModeSwitcher"]
      845 LOADB                            R71 0
      846 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+41]
      848 MOVE                             R71 R9
      849 JUMPIFNOT                        R71 ; [+38]
      850 MOVE                             R71 R1
      851 JUMPIFNOT                        R71 ; [+36]
      852 GETUPVAL                         R71 1
      853 GETTABLEKS                       R71 R71 K24 ["createElement"]
      855 GETUPVAL                         R72 33
      856 DUPTABLE                         R73 K66 [{["model"], ["rigDescriptor"], ["selectedJoint"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["onClear"], ["onClose"], ["showMannequinImage"] = True, ["localization"], ["detectedHrd"] = , ["hasModel"] = False, ["onSelectHrd"], ["onCreateHrd"]}]
      857 SETTABLEKS                       R9 R73 K51 ["model"]
      859 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
      861 SETTABLEKS                       R27 R73 K52 ["selectedJoint"]
      863 SETTABLEKS                       R29 R73 K53 ["armedRigLabel"]
      865 SETTABLEKS                       R60 R73 K54 ["onArmJoint"]
      867 SETTABLEKS                       R49 R73 K55 ["onMapJoint"]
      869 NEWCLOSURE                       R74 P32
      870 CAPTURE                          VAL R28
      871 CAPTURE                          VAL R5
      872 SETTABLEKS                       R74 R73 K56 ["onClear"]
      874 DUPCLOSURE                       R74 K67 [PROTO_84]
      875 SETTABLEKS                       R74 R73 K57 ["onClose"]
      877 GETTABLEKS                       R74 R0 K20 ["localization"]
      879 SETTABLEKS                       R74 R73 K20 ["localization"]
      881 DUPCLOSURE                       R74 K68 [PROTO_85]
      882 SETTABLEKS                       R74 R73 K64 ["onSelectHrd"]
      884 DUPCLOSURE                       R74 K69 [PROTO_86]
      885 SETTABLEKS                       R74 R73 K65 ["onCreateHrd"]
      887 CALL                             R71 2 1
      888 SETTABLEKS                       R71 R70 K29 ["Mannequin"]
      890 LOADB                            R71 0
      891 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+47]
      893 MOVE                             R71 R9
      894 JUMPIFNOT                        R71 ; [+44]
      895 MOVE                             R71 R1
      896 JUMPIFNOT                        R71 ; [+42]
      897 GETUPVAL                         R71 1
      898 GETTABLEKS                       R71 R71 K24 ["createElement"]
      900 GETUPVAL                         R72 34
      901 DUPTABLE                         R73 K75 [{["visible"] = True, ["model"], ["localization"], ["autoAll"], ["resetAll"], ["onEdit"], ["stopPlayback"], ["onPlaybackStateChanged"]}]
      902 SETTABLEKS                       R9 R73 K51 ["model"]
      904 GETTABLEKS                       R74 R0 K20 ["localization"]
      906 SETTABLEKS                       R74 R73 K20 ["localization"]
      908 NEWCLOSURE                       R74 P36
      909 CAPTURE                          VAL R9
      910 CAPTURE                          UPVAL U26
      911 CAPTURE                          VAL R1
      912 SETTABLEKS                       R74 R73 K70 ["autoAll"]
      914 NEWCLOSURE                       R74 P37
      915 CAPTURE                          VAL R9
      916 CAPTURE                          UPVAL U26
      917 CAPTURE                          VAL R1
      918 SETTABLEKS                       R74 R73 K71 ["resetAll"]
      920 NEWCLOSURE                       R74 P38
      921 CAPTURE                          VAL R43
      922 CAPTURE                          VAL R12
      923 CAPTURE                          VAL R5
      924 SETTABLEKS                       R74 R73 K72 ["onEdit"]
      926 NEWCLOSURE                       R74 P39
      927 CAPTURE                          VAL R43
      928 SETTABLEKS                       R74 R73 K73 ["stopPlayback"]
      930 NEWCLOSURE                       R74 P40
      931 CAPTURE                          VAL R12
      932 CAPTURE                          UPVAL U3
      933 CAPTURE                          VAL R1
      934 CAPTURE                          VAL R9
      935 CAPTURE                          VAL R10
      936 SETTABLEKS                       R74 R73 K74 ["onPlaybackStateChanged"]
      938 CALL                             R71 2 1
      939 SETTABLEKS                       R71 R70 K30 ["PreviewToolbar"]
      941 LOADB                            R71 0
      942 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+9]
      944 MOVE                             R71 R48
      945 JUMPIFNOT                        R71 ; [+6]
      946 GETUPVAL                         R71 1
      947 GETTABLEKS                       R71 R71 K24 ["createElement"]
      949 GETUPVAL                         R72 35
      950 MOVE                             R73 R48
      951 CALL                             R71 2 1
      952 SETTABLEKS                       R71 R70 K31 ["Dragger"]
      954 CALL                             R67 3 -1
      955 CLOSEUPVALS                      R15
      956 RETURN                           R67 -1
      957 GETUPVAL                         R67 1
      958 GETTABLEKS                       R67 R67 K24 ["createElement"]
      960 GETUPVAL                         R68 1
      961 GETTABLEKS                       R68 R68 K25 ["Fragment"]
      963 LOADNIL                          R69
      964 DUPTABLE                         R70 K78 [{"Adornments", "Toolbar", "MannequinPortal", "PreviewPlayback", "Dragger"}]
      965 MOVE                             R71 R21
      966 JUMPIFNOT                        R71 ; [+49]
      967 MOVE                             R71 R9
      968 JUMPIFNOT                        R71 ; [+47]
      969 MOVE                             R71 R1
      970 JUMPIFNOT                        R71 ; [+45]
      971 GETUPVAL                         R71 1
      972 GETTABLEKS                       R71 R71 K24 ["createElement"]
      974 GETUPVAL                         R72 30
      975 DUPTABLE                         R73 K83 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "overrideLabels", "onHoveredJointChanged", "mannequinHoveredJointName", "isMappingMode"}]
      976 SETTABLEKS                       R9 R73 K33 ["rigModel"]
      978 SETTABLEKS                       R1 R73 K34 ["rigDescriptor"]
      980 SETTABLEKS                       R27 R73 K35 ["selectedJointInstance"]
      982 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
      984 MOVE                             R74 R51
      985 JUMP                             ; [+5]
      986 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
      988 MOVE                             R74 R52
      989 JUMP                             ; [+1]
      990 LOADNIL                          R74
      991 SETTABLEKS                       R74 R73 K36 ["onJointClicked"]
      993 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
      995 LOADB                            R74 0 +1
      996 LOADB                            R74 1
      997 SETTABLEKS                       R74 R73 K37 ["applyTposeAdjustment"]
      999 SETTABLEKS                       R38 R73 K38 ["updatePositions"]
     1001 SETTABLEKS                       R11 R73 K39 ["DEPRECATED_isPlayingAnimation"]
     1003 SETTABLEKS                       R7 R73 K79 ["overrideLabels"]
     1005 SETTABLEKS                       R34 R73 K80 ["onHoveredJointChanged"]
     1007 SETTABLEKS                       R35 R73 K81 ["mannequinHoveredJointName"]
     1009 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
     1011 LOADB                            R74 0 +1
     1012 LOADB                            R74 1
     1013 SETTABLEKS                       R74 R73 K82 ["isMappingMode"]
     1015 CALL                             R71 2 1
     1016 SETTABLEKS                       R71 R70 K26 ["Adornments"]
     1018 MOVE                             R71 R21
     1019 JUMPIFNOT                        R71 ; [+24]
     1020 MOVE                             R71 R9
     1021 JUMPIFNOT                        R71 ; [+22]
     1022 MOVE                             R71 R1
     1023 JUMPIFNOT                        R71 ; [+20]
     1024 LOADB                            R71 0
     1025 LENGTH                           R72 R66
     1026 LOADN                            R73 0
     1027 JUMPIFNOTLT                      R73 R72 ; [+16]
     1029 GETUPVAL                         R71 1
     1030 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1032 GETUPVAL                         R72 31
     1033 GETTABLEKS                       R72 R72 K27 ["Toolbar"]
     1035 DUPTABLE                         R73 K85 [{["InitialPosition"] = "Center", ["HorizontalItems"], ["DisplayOrder"]}]
     1036 SETTABLEKS                       R66 R73 K45 ["HorizontalItems"]
     1038 GETUPVAL                         R74 19
     1039 GETTABLEKS                       R74 R74 K86 ["DISPLAY_ORDER_TOOLBAR"]
     1041 SETTABLEKS                       R74 R73 K84 ["DisplayOrder"]
     1043 CALL                             R71 2 1
     1044 SETTABLEKS                       R71 R70 K27 ["Toolbar"]
     1046 GETUPVAL                         R71 1
     1047 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1049 GETUPVAL                         R72 36
     1050 DUPTABLE                         R73 K89 [{"mannequin", "handMannequin"}]
     1051 MOVE                             R74 R21
     1052 JUMPIFNOT                        R74 ; [+92]
     1053 NOT                              R74 R6
     1054 JUMPIFNOT                        R74 ; [+90]
     1055 GETUPVAL                         R74 1
     1056 GETTABLEKS                       R74 R74 K24 ["createElement"]
     1058 GETUPVAL                         R75 33
     1059 DUPTABLE                         R76 K95 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "showMannequinImage", "localization", "detectedHrd", "DEPRECATED_hasHumanoid", "hasModel", "onSelectHrd", "onCreateHrd", "onArmJoint", "onMapJoint", "onClear", "onClose", "onNavigateToHand"}]
     1060 SETTABLEKS                       R9 R76 K51 ["model"]
     1062 SETTABLEKS                       R1 R76 K34 ["rigDescriptor"]
     1064 SETTABLEKS                       R27 R76 K52 ["selectedJoint"]
     1066 SETTABLEKS                       R29 R76 K53 ["armedRigLabel"]
     1068 SETTABLEKS                       R33 R76 K90 ["counterpartHoveredJointName"]
     1070 SETTABLEKS                       R36 R76 K91 ["onDotHoverEnter"]
     1072 SETTABLEKS                       R37 R76 K92 ["onDotHoverLeave"]
     1074 GETUPVAL                         R78 6
     1075 CALL                             R78 0 1
     1076 JUMPIFNOT                        R78 ; [+8]
     1077 LOADB                            R77 1
     1078 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+10]
     1080 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
     1082 LOADB                            R77 0 +1
     1083 LOADB                            R77 1
     1084 JUMP                             ; [+4]
     1085 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
     1087 LOADB                            R77 0 +1
     1088 LOADB                            R77 1
     1089 SETTABLEKS                       R77 R76 K58 ["showMannequinImage"]
     1091 GETTABLEKS                       R77 R0 K20 ["localization"]
     1093 SETTABLEKS                       R77 R76 K20 ["localization"]
     1095 JUMPIF                           R1 ; [+2]
     1096 MOVE                             R77 R16
     1097 JUMP                             ; [+1]
     1098 LOADNIL                          R77
     1099 SETTABLEKS                       R77 R76 K60 ["detectedHrd"]
     1101 JUMPIF                           R1 ; [+2]
     1102 MOVE                             R77 R18
     1103 JUMP                             ; [+1]
     1104 LOADB                            R77 0
     1105 SETTABLEKS                       R77 R76 K93 ["DEPRECATED_hasHumanoid"]
     1107 JUMPIF                           R1 ; [+5]
     1108 JUMPIFNOTEQKNIL                  R17 ; [+2]
     1110 LOADB                            R77 0 +1
     1111 LOADB                            R77 1
     1112 JUMP                             ; [+1]
     1113 LOADB                            R77 0
     1114 SETTABLEKS                       R77 R76 K62 ["hasModel"]
     1116 SETTABLEKS                       R64 R76 K64 ["onSelectHrd"]
     1118 SETTABLEKS                       R65 R76 K65 ["onCreateHrd"]
     1120 SETTABLEKS                       R60 R76 K54 ["onArmJoint"]
     1122 GETUPVAL                         R78 6
     1123 CALL                             R78 0 1
     1124 JUMPIFNOT                        R78 ; [+4]
     1125 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1127 DUPCLOSURE                       R77 K96 [PROTO_92]
     1128 JUMP                             ; [+1]
     1129 MOVE                             R77 R49
     1130 SETTABLEKS                       R77 R76 K55 ["onMapJoint"]
     1132 SETTABLEKS                       R59 R76 K56 ["onClear"]
     1134 SETTABLEKS                       R26 R76 K57 ["onClose"]
     1136 GETUPVAL                         R78 11
     1137 CALL                             R78 0 1
     1138 JUMPIFNOT                        R78 ; [+2]
     1139 MOVE                             R77 R62
     1140 JUMP                             ; [+1]
     1141 LOADNIL                          R77
     1142 SETTABLEKS                       R77 R76 K94 ["onNavigateToHand"]
     1144 CALL                             R74 2 1
     1145 SETTABLEKS                       R74 R73 K87 ["mannequin"]
     1147 MOVE                             R74 R21
     1148 JUMPIFNOT                        R74 ; [+58]
     1149 MOVE                             R74 R6
     1150 JUMPIFNOT                        R74 ; [+56]
     1151 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+7]
     1153 GETUPVAL                         R74 6
     1154 CALL                             R74 0 1
     1155 JUMPIFNOT                        R74 ; [+51]
     1156 LOADB                            R74 0
     1157 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+49]
     1159 MOVE                             R74 R9
     1160 JUMPIFNOT                        R74 ; [+46]
     1161 MOVE                             R74 R1
     1162 JUMPIFNOT                        R74 ; [+44]
     1163 GETUPVAL                         R74 1
     1164 GETTABLEKS                       R74 R74 K24 ["createElement"]
     1166 GETUPVAL                         R75 37
     1167 DUPTABLE                         R76 K99 [{"model", "rigDescriptor", "descriptorKind", "localization", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "onNavigateToBody", "onArmJoint", "onMapJoint", "onClear", "onClose"}]
     1168 SETTABLEKS                       R9 R76 K51 ["model"]
     1170 SETTABLEKS                       R1 R76 K34 ["rigDescriptor"]
     1172 SETTABLEKS                       R2 R76 K97 ["descriptorKind"]
     1174 GETTABLEKS                       R77 R0 K20 ["localization"]
     1176 SETTABLEKS                       R77 R76 K20 ["localization"]
     1178 SETTABLEKS                       R27 R76 K52 ["selectedJoint"]
     1180 SETTABLEKS                       R29 R76 K53 ["armedRigLabel"]
     1182 SETTABLEKS                       R33 R76 K90 ["counterpartHoveredJointName"]
     1184 SETTABLEKS                       R36 R76 K91 ["onDotHoverEnter"]
     1186 SETTABLEKS                       R37 R76 K92 ["onDotHoverLeave"]
     1188 SETTABLEKS                       R63 R76 K98 ["onNavigateToBody"]
     1190 SETTABLEKS                       R61 R76 K54 ["onArmJoint"]
     1192 GETUPVAL                         R78 6
     1193 CALL                             R78 0 1
     1194 JUMPIFNOT                        R78 ; [+4]
     1195 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1197 DUPCLOSURE                       R77 K100 [PROTO_93]
     1198 JUMP                             ; [+1]
     1199 MOVE                             R77 R49
     1200 SETTABLEKS                       R77 R76 K55 ["onMapJoint"]
     1202 SETTABLEKS                       R59 R76 K56 ["onClear"]
     1204 SETTABLEKS                       R26 R76 K57 ["onClose"]
     1206 CALL                             R74 2 1
     1207 SETTABLEKS                       R74 R73 K88 ["handMannequin"]
     1209 CALL                             R71 2 1
     1210 SETTABLEKS                       R71 R70 K76 ["MannequinPortal"]
     1212 MOVE                             R71 R21
     1213 JUMPIFNOT                        R71 ; [+16]
     1214 MOVE                             R71 R9
     1215 JUMPIFNOT                        R71 ; [+14]
     1216 MOVE                             R71 R57
     1217 JUMPIFNOT                        R71 ; [+12]
     1218 GETUPVAL                         R71 1
     1219 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1221 GETUPVAL                         R72 38
     1222 DUPTABLE                         R73 K103 [{"model", "animationId", "isPlaying"}]
     1223 SETTABLEKS                       R9 R73 K51 ["model"]
     1225 SETTABLEKS                       R56 R73 K101 ["animationId"]
     1227 SETTABLEKS                       R57 R73 K102 ["isPlaying"]
     1229 CALL                             R71 2 1
     1230 SETTABLEKS                       R71 R70 K77 ["PreviewPlayback"]
     1232 MOVE                             R71 R21
     1233 JUMPIFNOT                        R71 ; [+18]
     1234 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+7]
     1236 GETUPVAL                         R71 6
     1237 CALL                             R71 0 1
     1238 JUMPIFNOT                        R71 ; [+13]
     1239 LOADB                            R71 0
     1240 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+11]
     1242 MOVE                             R71 R48
     1243 JUMPIFNOT                        R71 ; [+8]
     1244 NOT                              R71 R11
     1245 JUMPIFNOT                        R71 ; [+6]
     1246 GETUPVAL                         R71 1
     1247 GETTABLEKS                       R71 R71 K24 ["createElement"]
     1249 GETUPVAL                         R72 35
     1250 MOVE                             R73 R48
     1251 CALL                             R71 2 1
     1252 SETTABLEKS                       R71 R70 K31 ["Dragger"]
     1254 CALL                             R67 3 -1
     1255 CLOSEUPVALS                      R15
     1256 RETURN                           R67 -1

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
      273 GETTABLEKS                       R33 R33 K49 ["getFFlagAdaptiveAnimationHandRig"]
      275 CALL                             R32 1 1
      276 GETIMPORT                        R33 K5 [require]
      278 GETTABLEKS                       R34 R0 K11 ["Src"]
      280 GETTABLEKS                       R34 R34 K48 ["Flags"]
      282 GETTABLEKS                       R34 R34 K50 ["getFFlagAdaptiveAnimationHandRigQoL"]
      284 CALL                             R33 1 1
      285 GETIMPORT                        R34 K5 [require]
      287 GETTABLEKS                       R35 R0 K11 ["Src"]
      289 GETTABLEKS                       R35 R35 K48 ["Flags"]
      291 GETTABLEKS                       R35 R35 K51 ["getFFlagAdaptiveAnimationBoneSymmetry"]
      293 CALL                             R34 1 1
      294 GETIMPORT                        R35 K5 [require]
      296 GETTABLEKS                       R36 R0 K11 ["Src"]
      298 GETTABLEKS                       R36 R36 K48 ["Flags"]
      300 GETTABLEKS                       R36 R36 K52 ["getFFlagAdaptiveAnimationPreviewResetFix"]
      302 CALL                             R35 1 1
      303 GETIMPORT                        R36 K5 [require]
      305 GETTABLEKS                       R37 R0 K11 ["Src"]
      307 GETTABLEKS                       R37 R37 K48 ["Flags"]
      309 GETTABLEKS                       R37 R37 K53 ["getFFlagAdaptiveAnimationCrossDescriptorMapping"]
      311 CALL                             R36 1 1
      312 GETIMPORT                        R37 K5 [require]
      314 GETTABLEKS                       R38 R0 K11 ["Src"]
      316 GETTABLEKS                       R38 R38 K23 ["Utils"]
      318 GETTABLEKS                       R38 R38 K54 ["DigitsRigUtils"]
      320 CALL                             R37 1 1
      321 GETIMPORT                        R38 K5 [require]
      323 GETTABLEKS                       R39 R0 K11 ["Src"]
      325 GETTABLEKS                       R39 R39 K55 ["PluginMode"]
      327 CALL                             R38 1 1
      328 DUPCLOSURE                       R39 K56 [PROTO_0]
      329 DUPCLOSURE                       R40 K57 [PROTO_1]
      330 DUPCLOSURE                       R41 K58 [PROTO_2]
      331 DUPCLOSURE                       R42 K59 [PROTO_3]
      332 CAPTURE                          VAL R2
      333 DUPCLOSURE                       R43 K60 [PROTO_4]
      334 DUPCLOSURE                       R44 K61 [PROTO_6]
      335 DUPCLOSURE                       R45 K62 [PROTO_7]
      336 CAPTURE                          VAL R2
      337 DUPCLOSURE                       R46 K63 [PROTO_8]
      338 CAPTURE                          VAL R43
      339 CAPTURE                          VAL R2
      340 DUPCLOSURE                       R47 K64 [PROTO_9]
      341 CAPTURE                          VAL R1
      342 CAPTURE                          VAL R23
      343 CAPTURE                          VAL R20
      344 CAPTURE                          VAL R24
      345 CAPTURE                          VAL R21
      346 DUPCLOSURE                       R48 K65 [PROTO_94]
      347 CAPTURE                          VAL R25
      348 CAPTURE                          VAL R1
      349 CAPTURE                          VAL R38
      350 CAPTURE                          VAL R2
      351 CAPTURE                          VAL R30
      352 CAPTURE                          VAL R28
      353 CAPTURE                          VAL R33
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R27
      356 CAPTURE                          VAL R29
      357 CAPTURE                          VAL R31
      358 CAPTURE                          VAL R32
      359 CAPTURE                          VAL R22
      360 CAPTURE                          VAL R4
      361 CAPTURE                          VAL R37
      362 CAPTURE                          VAL R3
      363 CAPTURE                          VAL R34
      364 CAPTURE                          VAL R43
      365 CAPTURE                          VAL R16
      366 CAPTURE                          VAL R20
      367 CAPTURE                          VAL R41
      368 CAPTURE                          VAL R42
      369 CAPTURE                          VAL R14
      370 CAPTURE                          VAL R45
      371 CAPTURE                          VAL R36
      372 CAPTURE                          VAL R15
      373 CAPTURE                          VAL R9
      374 CAPTURE                          VAL R35
      375 CAPTURE                          VAL R7
      376 CAPTURE                          VAL R46
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R11
      379 CAPTURE                          VAL R10
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R18
      383 CAPTURE                          VAL R47
      384 CAPTURE                          VAL R13
      385 CAPTURE                          VAL R6
      386 DUPTABLE                         R49 K68 [{"AdaptiveAnimationRoot", "_test"}]
      387 SETTABLEKS                       R48 R49 K66 ["AdaptiveAnimationRoot"]
      389 DUPTABLE                         R50 K75 [{"findLabelForJoint", "computeDeprecatedCounterpartName", "clearConflictingMappings", "clearJointFromOtherDescriptors", "findExistingHandDescription", "ensureHandDescription"}]
      390 SETTABLEKS                       R39 R50 K69 ["findLabelForJoint"]
      392 SETTABLEKS                       R40 R50 K70 ["computeDeprecatedCounterpartName"]
      394 SETTABLEKS                       R41 R50 K71 ["clearConflictingMappings"]
      396 SETTABLEKS                       R42 R50 K72 ["clearJointFromOtherDescriptors"]
      398 SETTABLEKS                       R43 R50 K73 ["findExistingHandDescription"]
      400 SETTABLEKS                       R46 R50 K74 ["ensureHandDescription"]
      402 SETTABLEKS                       R50 R49 K67 ["_test"]
      404 RETURN                           R49 1
