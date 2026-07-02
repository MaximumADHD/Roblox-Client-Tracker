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
       96 JUMPIFEQKS                       R0 K7 ["tpose"] ; [+22]
       98 GETUPVAL                         R0 12
       99 GETTABLEKS                       R0 R0 K14 ["clearTransforms"]
      101 GETUPVAL                         R1 10
      102 GETUPVAL                         R2 2
      103 CALL                             R0 2 0
      104 GETUPVAL                         R0 7
      105 JUMPIFNOT                        R0 ; [+5]
      106 GETUPVAL                         R0 7
      107 LOADN                            R2 0
      108 NAMECALL                         R0 R0 K11 ["StepAnimations"]
      110 CALL                             R0 2 0
      111 GETUPVAL                         R0 8
      112 GETUPVAL                         R2 9
      113 NAMECALL                         R2 R2 K13 ["getValue"]
      115 CALL                             R2 1 1
      116 ADDK                             R1 R2 K12 [1]
      117 CALL                             R0 1 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R0 10
      120 GETTABLEKS                       R0 R0 K9 ["Changed"]
      122 NEWCLOSURE                       R2 P2
      123 CAPTURE                          UPVAL U5
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          UPVAL U9
      130 NAMECALL                         R0 R0 K10 ["Connect"]
      132 CALL                             R0 2 1
      133 GETUPVAL                         R1 4
      134 GETTABLEKS                       R1 R1 K8 ["applyTposeAdjustment"]
      136 GETUPVAL                         R2 10
      137 CALL                             R1 1 0
      138 GETUPVAL                         R1 7
      139 JUMPIFNOT                        R1 ; [+5]
      140 GETUPVAL                         R1 7
      141 LOADN                            R3 0
      142 NAMECALL                         R1 R1 K11 ["StepAnimations"]
      144 CALL                             R1 2 0
      145 GETUPVAL                         R1 8
      146 GETUPVAL                         R3 9
      147 NAMECALL                         R3 R3 K13 ["getValue"]
      149 CALL                             R3 1 1
      150 ADDK                             R2 R3 K12 [1]
      151 CALL                             R1 1 0
      152 NEWCLOSURE                       R1 P3
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U12
      155 CAPTURE                          UPVAL U10
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          UPVAL U8
      159 CAPTURE                          UPVAL U9
      160 RETURN                           R1 1

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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_47]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_53:
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
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K0 ["GetJoint"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 RETURN                           R0 0

PROTO_65:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_65]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_69:
        0 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_77]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_81:
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
      165 DUPCLOSURE                       R4 K30 [PROTO_64]
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
      243 DUPCLOSURE                       R8 K42 [PROTO_69]
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

PROTO_82:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_83:
        0 RETURN                           R0 0

PROTO_84:
        0 RETURN                           R0 0

PROTO_85:
        0 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_90:
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

PROTO_91:
        0 RETURN                           R0 0

PROTO_92:
        0 RETURN                           R0 0

PROTO_93:
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
      439 CAPTURE                          VAL R3
      440 CAPTURE                          UPVAL U14
      441 CAPTURE                          UPVAL U19
      442 CAPTURE                          VAL R40
      443 CAPTURE                          VAL R10
      444 CAPTURE                          VAL R39
      445 CAPTURE                          VAL R38
      446 CAPTURE                          VAL R1
      447 CAPTURE                          VAL R6
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
      509 CAPTURE                          VAL R29
      510 CAPTURE                          VAL R49
      511 CAPTURE                          VAL R28
      512 NEWTABLE                         R52 0 2
      514 MOVE                             R53 R29
      515 MOVE                             R54 R49
      516 SETLIST                          R52 R53 2 [1]
      518 CALL                             R50 2 1
      519 GETUPVAL                         R51 1
      520 GETTABLEKS                       R51 R51 K3 ["useCallback"]
      522 NEWCLOSURE                       R52 P18
      523 CAPTURE                          VAL R1
      524 CAPTURE                          VAL R8
      525 CAPTURE                          VAL R28
      526 CAPTURE                          UPVAL U6
      527 CAPTURE                          VAL R6
      528 CAPTURE                          UPVAL U23
      529 CAPTURE                          VAL R45
      530 CAPTURE                          UPVAL U12
      531 CAPTURE                          UPVAL U3
      532 NEWTABLE                         R53 0 3
      534 MOVE                             R54 R1
      535 MOVE                             R55 R8
      536 MOVE                             R56 R6
      537 SETLIST                          R53 R54 3 [1]
      539 CALL                             R51 2 1
      540 GETUPVAL                         R52 1
      541 GETTABLEKS                       R52 R52 K3 ["useCallback"]
      543 NEWCLOSURE                       R53 P19
      544 CAPTURE                          VAL R6
      545 CAPTURE                          UPVAL U24
      546 CAPTURE                          VAL R1
      547 CAPTURE                          VAL R9
      548 CAPTURE                          VAL R10
      549 NEWTABLE                         R54 0 4
      551 MOVE                             R55 R6
      552 MOVE                             R56 R1
      553 MOVE                             R57 R9
      554 MOVE                             R58 R10
      555 SETLIST                          R54 R55 4 [1]
      557 CALL                             R52 2 1
      558 GETUPVAL                         R53 1
      559 GETTABLEKS                       R53 R53 K3 ["useCallback"]
      561 NEWCLOSURE                       R54 P20
      562 CAPTURE                          VAL R9
      563 CAPTURE                          VAL R1
      564 CAPTURE                          VAL R6
      565 CAPTURE                          UPVAL U6
      566 CAPTURE                          VAL R14
      567 CAPTURE                          UPVAL U25
      568 CAPTURE                          VAL R10
      569 CAPTURE                          VAL R3
      570 CAPTURE                          UPVAL U26
      571 CAPTURE                          VAL R39
      572 CAPTURE                          VAL R38
      573 NEWTABLE                         R55 0 5
      575 MOVE                             R56 R9
      576 MOVE                             R57 R1
      577 MOVE                             R58 R10
      578 MOVE                             R59 R3
      579 MOVE                             R60 R6
      580 SETLIST                          R55 R56 5 [1]
      582 CALL                             R53 2 1
      583 GETUPVAL                         R54 27
      584 MOVE                             R55 R53
      585 GETTABLEKS                       R56 R0 K20 ["localization"]
      587 MOVE                             R57 R9
      588 CALL                             R54 3 4
      589 GETUPVAL                         R58 1
      590 GETTABLEKS                       R58 R58 K2 ["useEffect"]
      592 NEWCLOSURE                       R59 P21
      593 CAPTURE                          VAL R43
      594 CAPTURE                          VAL R57
      595 NEWTABLE                         R60 0 1
      597 MOVE                             R61 R57
      598 SETLIST                          R60 R61 1 [1]
      600 CALL                             R58 2 0
      601 GETUPVAL                         R58 1
      602 GETTABLEKS                       R58 R58 K2 ["useEffect"]
      604 NEWCLOSURE                       R59 P22
      605 CAPTURE                          VAL R12
      606 CAPTURE                          VAL R56
      607 NEWTABLE                         R60 0 1
      609 MOVE                             R61 R56
      610 SETLIST                          R60 R61 1 [1]
      612 CALL                             R58 2 0
      613 GETUPVAL                         R58 1
      614 GETTABLEKS                       R58 R58 K3 ["useCallback"]
      616 NEWCLOSURE                       R59 P23
      617 CAPTURE                          VAL R28
      618 CAPTURE                          VAL R30
      619 NEWTABLE                         R60 0 0
      621 CALL                             R58 2 1
      622 GETUPVAL                         R59 1
      623 GETTABLEKS                       R59 R59 K3 ["useCallback"]
      625 NEWCLOSURE                       R60 P24
      626 CAPTURE                          VAL R29
      627 CAPTURE                          VAL R30
      628 CAPTURE                          VAL R1
      629 CAPTURE                          VAL R28
      630 NEWTABLE                         R61 0 2
      632 MOVE                             R62 R29
      633 MOVE                             R63 R1
      634 SETLIST                          R61 R62 2 [1]
      636 CALL                             R59 2 1
      637 GETUPVAL                         R60 1
      638 GETTABLEKS                       R60 R60 K3 ["useCallback"]
      640 NEWCLOSURE                       R61 P25
      641 CAPTURE                          VAL R29
      642 CAPTURE                          VAL R30
      643 CAPTURE                          VAL R1
      644 CAPTURE                          VAL R28
      645 NEWTABLE                         R62 0 2
      647 MOVE                             R63 R29
      648 MOVE                             R64 R1
      649 SETLIST                          R62 R63 2 [1]
      651 CALL                             R60 2 1
      652 GETUPVAL                         R61 1
      653 GETTABLEKS                       R61 R61 K3 ["useCallback"]
      655 NEWCLOSURE                       R62 P26
      656 CAPTURE                          VAL R1
      657 CAPTURE                          UPVAL U28
      658 NEWTABLE                         R63 0 1
      660 MOVE                             R64 R1
      661 SETLIST                          R63 R64 1 [1]
      663 CALL                             R61 2 1
      664 GETUPVAL                         R62 1
      665 GETTABLEKS                       R62 R62 K3 ["useCallback"]
      667 NEWCLOSURE                       R63 P27
      668 CAPTURE                          VAL R1
      669 NEWTABLE                         R64 0 1
      671 MOVE                             R65 R1
      672 SETLIST                          R64 R65 1 [1]
      674 CALL                             R62 2 1
      675 GETUPVAL                         R63 1
      676 GETTABLEKS                       R63 R63 K3 ["useCallback"]
      678 NEWCLOSURE                       R64 P28
      679 CAPTURE                          VAL R16
      680 NEWTABLE                         R65 0 1
      682 MOVE                             R66 R16
      683 SETLIST                          R65 R66 1 [1]
      685 CALL                             R63 2 1
      686 GETUPVAL                         R64 1
      687 GETTABLEKS                       R64 R64 K3 ["useCallback"]
      689 NEWCLOSURE                       R65 P29
      690 CAPTURE                          VAL R17
      691 CAPTURE                          UPVAL U22
      692 NEWTABLE                         R66 0 1
      694 MOVE                             R67 R17
      695 SETLIST                          R66 R67 1 [1]
      697 CALL                             R64 2 1
      698 GETUPVAL                         R65 1
      699 GETTABLEKS                       R65 R65 K21 ["useMemo"]
      701 NEWCLOSURE                       R66 P30
      702 CAPTURE                          UPVAL U11
      703 CAPTURE                          VAL R3
      704 CAPTURE                          VAL R0
      705 CAPTURE                          UPVAL U19
      706 CAPTURE                          VAL R9
      707 CAPTURE                          UPVAL U3
      708 CAPTURE                          VAL R1
      709 CAPTURE                          UPVAL U22
      710 CAPTURE                          VAL R28
      711 CAPTURE                          VAL R5
      712 CAPTURE                          VAL R31
      713 CAPTURE                          VAL R32
      714 CAPTURE                          VAL R52
      715 CAPTURE                          VAL R54
      716 CAPTURE                          VAL R43
      717 CAPTURE                          VAL R6
      718 CAPTURE                          UPVAL U6
      719 CAPTURE                          UPVAL U28
      720 CAPTURE                          UPVAL U14
      721 NEWTABLE                         R67 0 4
      723 MOVE                             R68 R3
      724 JUMPIFNOT                        R31 ; [+2]
      725 LOADK                            R69 K22 ["y"]
      726 JUMP                             ; [+1]
      727 LOADK                            R69 K23 ["n"]
      728 MOVE                             R70 R1
      729 MOVE                             R71 R54
      730 SETLIST                          R67 R68 4 [1]
      732 CALL                             R65 2 1
      733 GETUPVAL                         R66 11
      734 CALL                             R66 0 1
      735 JUMPIF                           R66 ; [+201]
      736 GETUPVAL                         R66 1
      737 GETTABLEKS                       R66 R66 K24 ["createElement"]
      739 GETUPVAL                         R67 1
      740 GETTABLEKS                       R67 R67 K25 ["Fragment"]
      742 LOADNIL                          R68
      743 DUPTABLE                         R69 K32 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      744 MOVE                             R70 R9
      745 JUMPIFNOT                        R70 ; [+38]
      746 MOVE                             R70 R1
      747 JUMPIFNOT                        R70 ; [+36]
      748 GETUPVAL                         R70 1
      749 GETTABLEKS                       R70 R70 K24 ["createElement"]
      751 GETUPVAL                         R71 29
      752 DUPTABLE                         R72 K40 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation"}]
      753 SETTABLEKS                       R9 R72 K33 ["rigModel"]
      755 SETTABLEKS                       R1 R72 K34 ["rigDescriptor"]
      757 SETTABLEKS                       R27 R72 K35 ["selectedJointInstance"]
      759 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
      761 MOVE                             R73 R50
      762 JUMP                             ; [+5]
      763 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
      765 MOVE                             R73 R51
      766 JUMP                             ; [+1]
      767 LOADNIL                          R73
      768 SETTABLEKS                       R73 R72 K36 ["onJointClicked"]
      770 LOADB                            R73 1
      771 JUMPIFEQKS                       R3 K42 ["preview"] ; [+5]
      773 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
      775 LOADB                            R73 0 +1
      776 LOADB                            R73 1
      777 SETTABLEKS                       R73 R72 K37 ["applyTposeAdjustment"]
      779 SETTABLEKS                       R38 R72 K38 ["updatePositions"]
      781 SETTABLEKS                       R11 R72 K39 ["DEPRECATED_isPlayingAnimation"]
      783 CALL                             R70 2 1
      784 SETTABLEKS                       R70 R69 K26 ["Adornments"]
      786 LOADB                            R70 0
      787 LENGTH                           R71 R65
      788 LOADN                            R72 0
      789 JUMPIFNOTLT                      R72 R71 ; [+11]
      791 GETUPVAL                         R70 1
      792 GETTABLEKS                       R70 R70 K24 ["createElement"]
      794 GETUPVAL                         R71 30
      795 GETTABLEKS                       R71 R71 K27 ["Toolbar"]
      797 DUPTABLE                         R72 K46 [{["InitialPosition"] = "Center", ["HorizontalItems"]}]
      798 SETTABLEKS                       R65 R72 K45 ["HorizontalItems"]
      800 CALL                             R70 2 1
      801 SETTABLEKS                       R70 R69 K27 ["Toolbar"]
      803 GETUPVAL                         R70 1
      804 GETTABLEKS                       R70 R70 K24 ["createElement"]
      806 GETUPVAL                         R71 31
      807 DUPTABLE                         R72 K50 [{"visible", "mode", "onSelect", "localization"}]
      808 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+2]
      810 LOADB                            R73 0 +1
      811 LOADB                            R73 1
      812 SETTABLEKS                       R73 R72 K47 ["visible"]
      814 SETTABLEKS                       R3 R72 K48 ["mode"]
      816 SETTABLEKS                       R5 R72 K49 ["onSelect"]
      818 GETTABLEKS                       R73 R0 K20 ["localization"]
      820 SETTABLEKS                       R73 R72 K20 ["localization"]
      822 CALL                             R70 2 1
      823 SETTABLEKS                       R70 R69 K28 ["ModeSwitcher"]
      825 LOADB                            R70 0
      826 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+41]
      828 MOVE                             R70 R9
      829 JUMPIFNOT                        R70 ; [+38]
      830 MOVE                             R70 R1
      831 JUMPIFNOT                        R70 ; [+36]
      832 GETUPVAL                         R70 1
      833 GETTABLEKS                       R70 R70 K24 ["createElement"]
      835 GETUPVAL                         R71 32
      836 DUPTABLE                         R72 K66 [{["model"], ["rigDescriptor"], ["selectedJoint"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["onClear"], ["onClose"], ["showMannequinImage"] = True, ["localization"], ["detectedHrd"] = , ["hasModel"] = False, ["onSelectHrd"], ["onCreateHrd"]}]
      837 SETTABLEKS                       R9 R72 K51 ["model"]
      839 SETTABLEKS                       R1 R72 K34 ["rigDescriptor"]
      841 SETTABLEKS                       R27 R72 K52 ["selectedJoint"]
      843 SETTABLEKS                       R29 R72 K53 ["armedRigLabel"]
      845 SETTABLEKS                       R59 R72 K54 ["onArmJoint"]
      847 SETTABLEKS                       R49 R72 K55 ["onMapJoint"]
      849 NEWCLOSURE                       R73 P31
      850 CAPTURE                          VAL R28
      851 CAPTURE                          VAL R5
      852 SETTABLEKS                       R73 R72 K56 ["onClear"]
      854 DUPCLOSURE                       R73 K67 [PROTO_83]
      855 SETTABLEKS                       R73 R72 K57 ["onClose"]
      857 GETTABLEKS                       R73 R0 K20 ["localization"]
      859 SETTABLEKS                       R73 R72 K20 ["localization"]
      861 DUPCLOSURE                       R73 K68 [PROTO_84]
      862 SETTABLEKS                       R73 R72 K64 ["onSelectHrd"]
      864 DUPCLOSURE                       R73 K69 [PROTO_85]
      865 SETTABLEKS                       R73 R72 K65 ["onCreateHrd"]
      867 CALL                             R70 2 1
      868 SETTABLEKS                       R70 R69 K29 ["Mannequin"]
      870 LOADB                            R70 0
      871 JUMPIFNOTEQKS                    R3 K42 ["preview"] ; [+47]
      873 MOVE                             R70 R9
      874 JUMPIFNOT                        R70 ; [+44]
      875 MOVE                             R70 R1
      876 JUMPIFNOT                        R70 ; [+42]
      877 GETUPVAL                         R70 1
      878 GETTABLEKS                       R70 R70 K24 ["createElement"]
      880 GETUPVAL                         R71 33
      881 DUPTABLE                         R72 K75 [{["visible"] = True, ["model"], ["localization"], ["autoAll"], ["resetAll"], ["onEdit"], ["stopPlayback"], ["onPlaybackStateChanged"]}]
      882 SETTABLEKS                       R9 R72 K51 ["model"]
      884 GETTABLEKS                       R73 R0 K20 ["localization"]
      886 SETTABLEKS                       R73 R72 K20 ["localization"]
      888 NEWCLOSURE                       R73 P35
      889 CAPTURE                          VAL R9
      890 CAPTURE                          UPVAL U25
      891 CAPTURE                          VAL R1
      892 SETTABLEKS                       R73 R72 K70 ["autoAll"]
      894 NEWCLOSURE                       R73 P36
      895 CAPTURE                          VAL R9
      896 CAPTURE                          UPVAL U25
      897 CAPTURE                          VAL R1
      898 SETTABLEKS                       R73 R72 K71 ["resetAll"]
      900 NEWCLOSURE                       R73 P37
      901 CAPTURE                          VAL R43
      902 CAPTURE                          VAL R12
      903 CAPTURE                          VAL R5
      904 SETTABLEKS                       R73 R72 K72 ["onEdit"]
      906 NEWCLOSURE                       R73 P38
      907 CAPTURE                          VAL R43
      908 SETTABLEKS                       R73 R72 K73 ["stopPlayback"]
      910 NEWCLOSURE                       R73 P39
      911 CAPTURE                          VAL R12
      912 CAPTURE                          UPVAL U3
      913 CAPTURE                          VAL R1
      914 CAPTURE                          VAL R9
      915 CAPTURE                          VAL R10
      916 SETTABLEKS                       R73 R72 K74 ["onPlaybackStateChanged"]
      918 CALL                             R70 2 1
      919 SETTABLEKS                       R70 R69 K30 ["PreviewToolbar"]
      921 LOADB                            R70 0
      922 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+9]
      924 MOVE                             R70 R48
      925 JUMPIFNOT                        R70 ; [+6]
      926 GETUPVAL                         R70 1
      927 GETTABLEKS                       R70 R70 K24 ["createElement"]
      929 GETUPVAL                         R71 34
      930 MOVE                             R72 R48
      931 CALL                             R70 2 1
      932 SETTABLEKS                       R70 R69 K31 ["Dragger"]
      934 CALL                             R66 3 -1
      935 CLOSEUPVALS                      R15
      936 RETURN                           R66 -1
      937 GETUPVAL                         R66 1
      938 GETTABLEKS                       R66 R66 K24 ["createElement"]
      940 GETUPVAL                         R67 1
      941 GETTABLEKS                       R67 R67 K25 ["Fragment"]
      943 LOADNIL                          R68
      944 DUPTABLE                         R69 K78 [{"Adornments", "Toolbar", "MannequinPortal", "PreviewPlayback", "Dragger"}]
      945 MOVE                             R70 R21
      946 JUMPIFNOT                        R70 ; [+49]
      947 MOVE                             R70 R9
      948 JUMPIFNOT                        R70 ; [+47]
      949 MOVE                             R70 R1
      950 JUMPIFNOT                        R70 ; [+45]
      951 GETUPVAL                         R70 1
      952 GETTABLEKS                       R70 R70 K24 ["createElement"]
      954 GETUPVAL                         R71 29
      955 DUPTABLE                         R72 K83 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "overrideLabels", "onHoveredJointChanged", "mannequinHoveredJointName", "isMappingMode"}]
      956 SETTABLEKS                       R9 R72 K33 ["rigModel"]
      958 SETTABLEKS                       R1 R72 K34 ["rigDescriptor"]
      960 SETTABLEKS                       R27 R72 K35 ["selectedJointInstance"]
      962 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+3]
      964 MOVE                             R73 R50
      965 JUMP                             ; [+5]
      966 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
      968 MOVE                             R73 R51
      969 JUMP                             ; [+1]
      970 LOADNIL                          R73
      971 SETTABLEKS                       R73 R72 K36 ["onJointClicked"]
      973 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
      975 LOADB                            R73 0 +1
      976 LOADB                            R73 1
      977 SETTABLEKS                       R73 R72 K37 ["applyTposeAdjustment"]
      979 SETTABLEKS                       R38 R72 K38 ["updatePositions"]
      981 SETTABLEKS                       R11 R72 K39 ["DEPRECATED_isPlayingAnimation"]
      983 SETTABLEKS                       R7 R72 K79 ["overrideLabels"]
      985 SETTABLEKS                       R34 R72 K80 ["onHoveredJointChanged"]
      987 SETTABLEKS                       R35 R72 K81 ["mannequinHoveredJointName"]
      989 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
      991 LOADB                            R73 0 +1
      992 LOADB                            R73 1
      993 SETTABLEKS                       R73 R72 K82 ["isMappingMode"]
      995 CALL                             R70 2 1
      996 SETTABLEKS                       R70 R69 K26 ["Adornments"]
      998 MOVE                             R70 R21
      999 JUMPIFNOT                        R70 ; [+24]
     1000 MOVE                             R70 R9
     1001 JUMPIFNOT                        R70 ; [+22]
     1002 MOVE                             R70 R1
     1003 JUMPIFNOT                        R70 ; [+20]
     1004 LOADB                            R70 0
     1005 LENGTH                           R71 R65
     1006 LOADN                            R72 0
     1007 JUMPIFNOTLT                      R72 R71 ; [+16]
     1009 GETUPVAL                         R70 1
     1010 GETTABLEKS                       R70 R70 K24 ["createElement"]
     1012 GETUPVAL                         R71 30
     1013 GETTABLEKS                       R71 R71 K27 ["Toolbar"]
     1015 DUPTABLE                         R72 K85 [{["InitialPosition"] = "Center", ["HorizontalItems"], ["DisplayOrder"]}]
     1016 SETTABLEKS                       R65 R72 K45 ["HorizontalItems"]
     1018 GETUPVAL                         R73 19
     1019 GETTABLEKS                       R73 R73 K86 ["DISPLAY_ORDER_TOOLBAR"]
     1021 SETTABLEKS                       R73 R72 K84 ["DisplayOrder"]
     1023 CALL                             R70 2 1
     1024 SETTABLEKS                       R70 R69 K27 ["Toolbar"]
     1026 GETUPVAL                         R70 1
     1027 GETTABLEKS                       R70 R70 K24 ["createElement"]
     1029 GETUPVAL                         R71 35
     1030 DUPTABLE                         R72 K89 [{"mannequin", "handMannequin"}]
     1031 MOVE                             R73 R21
     1032 JUMPIFNOT                        R73 ; [+92]
     1033 NOT                              R73 R6
     1034 JUMPIFNOT                        R73 ; [+90]
     1035 GETUPVAL                         R73 1
     1036 GETTABLEKS                       R73 R73 K24 ["createElement"]
     1038 GETUPVAL                         R74 32
     1039 DUPTABLE                         R75 K95 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "showMannequinImage", "localization", "detectedHrd", "DEPRECATED_hasHumanoid", "hasModel", "onSelectHrd", "onCreateHrd", "onArmJoint", "onMapJoint", "onClear", "onClose", "onNavigateToHand"}]
     1040 SETTABLEKS                       R9 R75 K51 ["model"]
     1042 SETTABLEKS                       R1 R75 K34 ["rigDescriptor"]
     1044 SETTABLEKS                       R27 R75 K52 ["selectedJoint"]
     1046 SETTABLEKS                       R29 R75 K53 ["armedRigLabel"]
     1048 SETTABLEKS                       R33 R75 K90 ["counterpartHoveredJointName"]
     1050 SETTABLEKS                       R36 R75 K91 ["onDotHoverEnter"]
     1052 SETTABLEKS                       R37 R75 K92 ["onDotHoverLeave"]
     1054 GETUPVAL                         R77 6
     1055 CALL                             R77 0 1
     1056 JUMPIFNOT                        R77 ; [+8]
     1057 LOADB                            R76 1
     1058 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+10]
     1060 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+2]
     1062 LOADB                            R76 0 +1
     1063 LOADB                            R76 1
     1064 JUMP                             ; [+4]
     1065 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+2]
     1067 LOADB                            R76 0 +1
     1068 LOADB                            R76 1
     1069 SETTABLEKS                       R76 R75 K58 ["showMannequinImage"]
     1071 GETTABLEKS                       R76 R0 K20 ["localization"]
     1073 SETTABLEKS                       R76 R75 K20 ["localization"]
     1075 JUMPIF                           R1 ; [+2]
     1076 MOVE                             R76 R16
     1077 JUMP                             ; [+1]
     1078 LOADNIL                          R76
     1079 SETTABLEKS                       R76 R75 K60 ["detectedHrd"]
     1081 JUMPIF                           R1 ; [+2]
     1082 MOVE                             R76 R18
     1083 JUMP                             ; [+1]
     1084 LOADB                            R76 0
     1085 SETTABLEKS                       R76 R75 K93 ["DEPRECATED_hasHumanoid"]
     1087 JUMPIF                           R1 ; [+5]
     1088 JUMPIFNOTEQKNIL                  R17 ; [+2]
     1090 LOADB                            R76 0 +1
     1091 LOADB                            R76 1
     1092 JUMP                             ; [+1]
     1093 LOADB                            R76 0
     1094 SETTABLEKS                       R76 R75 K62 ["hasModel"]
     1096 SETTABLEKS                       R63 R75 K64 ["onSelectHrd"]
     1098 SETTABLEKS                       R64 R75 K65 ["onCreateHrd"]
     1100 SETTABLEKS                       R59 R75 K54 ["onArmJoint"]
     1102 GETUPVAL                         R77 6
     1103 CALL                             R77 0 1
     1104 JUMPIFNOT                        R77 ; [+4]
     1105 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1107 DUPCLOSURE                       R76 K96 [PROTO_91]
     1108 JUMP                             ; [+1]
     1109 MOVE                             R76 R49
     1110 SETTABLEKS                       R76 R75 K55 ["onMapJoint"]
     1112 SETTABLEKS                       R58 R75 K56 ["onClear"]
     1114 SETTABLEKS                       R26 R75 K57 ["onClose"]
     1116 GETUPVAL                         R77 11
     1117 CALL                             R77 0 1
     1118 JUMPIFNOT                        R77 ; [+2]
     1119 MOVE                             R76 R61
     1120 JUMP                             ; [+1]
     1121 LOADNIL                          R76
     1122 SETTABLEKS                       R76 R75 K94 ["onNavigateToHand"]
     1124 CALL                             R73 2 1
     1125 SETTABLEKS                       R73 R72 K87 ["mannequin"]
     1127 MOVE                             R73 R21
     1128 JUMPIFNOT                        R73 ; [+58]
     1129 MOVE                             R73 R6
     1130 JUMPIFNOT                        R73 ; [+56]
     1131 JUMPIFEQKS                       R3 K19 ["mapping"] ; [+7]
     1133 GETUPVAL                         R73 6
     1134 CALL                             R73 0 1
     1135 JUMPIFNOT                        R73 ; [+51]
     1136 LOADB                            R73 0
     1137 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+49]
     1139 MOVE                             R73 R9
     1140 JUMPIFNOT                        R73 ; [+46]
     1141 MOVE                             R73 R1
     1142 JUMPIFNOT                        R73 ; [+44]
     1143 GETUPVAL                         R73 1
     1144 GETTABLEKS                       R73 R73 K24 ["createElement"]
     1146 GETUPVAL                         R74 36
     1147 DUPTABLE                         R75 K99 [{"model", "rigDescriptor", "descriptorKind", "localization", "selectedJoint", "armedRigLabel", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave", "onNavigateToBody", "onArmJoint", "onMapJoint", "onClear", "onClose"}]
     1148 SETTABLEKS                       R9 R75 K51 ["model"]
     1150 SETTABLEKS                       R1 R75 K34 ["rigDescriptor"]
     1152 SETTABLEKS                       R2 R75 K97 ["descriptorKind"]
     1154 GETTABLEKS                       R76 R0 K20 ["localization"]
     1156 SETTABLEKS                       R76 R75 K20 ["localization"]
     1158 SETTABLEKS                       R27 R75 K52 ["selectedJoint"]
     1160 SETTABLEKS                       R29 R75 K53 ["armedRigLabel"]
     1162 SETTABLEKS                       R33 R75 K90 ["counterpartHoveredJointName"]
     1164 SETTABLEKS                       R36 R75 K91 ["onDotHoverEnter"]
     1166 SETTABLEKS                       R37 R75 K92 ["onDotHoverLeave"]
     1168 SETTABLEKS                       R62 R75 K98 ["onNavigateToBody"]
     1170 SETTABLEKS                       R60 R75 K54 ["onArmJoint"]
     1172 GETUPVAL                         R77 6
     1173 CALL                             R77 0 1
     1174 JUMPIFNOT                        R77 ; [+4]
     1175 JUMPIFNOTEQKS                    R3 K41 ["tpose"] ; [+3]
     1177 DUPCLOSURE                       R76 K100 [PROTO_92]
     1178 JUMP                             ; [+1]
     1179 MOVE                             R76 R49
     1180 SETTABLEKS                       R76 R75 K55 ["onMapJoint"]
     1182 SETTABLEKS                       R58 R75 K56 ["onClear"]
     1184 SETTABLEKS                       R26 R75 K57 ["onClose"]
     1186 CALL                             R73 2 1
     1187 SETTABLEKS                       R73 R72 K88 ["handMannequin"]
     1189 CALL                             R70 2 1
     1190 SETTABLEKS                       R70 R69 K76 ["MannequinPortal"]
     1192 MOVE                             R70 R21
     1193 JUMPIFNOT                        R70 ; [+16]
     1194 MOVE                             R70 R9
     1195 JUMPIFNOT                        R70 ; [+14]
     1196 MOVE                             R70 R56
     1197 JUMPIFNOT                        R70 ; [+12]
     1198 GETUPVAL                         R70 1
     1199 GETTABLEKS                       R70 R70 K24 ["createElement"]
     1201 GETUPVAL                         R71 37
     1202 DUPTABLE                         R72 K103 [{"model", "animationId", "isPlaying"}]
     1203 SETTABLEKS                       R9 R72 K51 ["model"]
     1205 SETTABLEKS                       R55 R72 K101 ["animationId"]
     1207 SETTABLEKS                       R56 R72 K102 ["isPlaying"]
     1209 CALL                             R70 2 1
     1210 SETTABLEKS                       R70 R69 K77 ["PreviewPlayback"]
     1212 MOVE                             R70 R21
     1213 JUMPIFNOT                        R70 ; [+18]
     1214 JUMPIFEQKS                       R3 K41 ["tpose"] ; [+7]
     1216 GETUPVAL                         R70 6
     1217 CALL                             R70 0 1
     1218 JUMPIFNOT                        R70 ; [+13]
     1219 LOADB                            R70 0
     1220 JUMPIFNOTEQKS                    R3 K19 ["mapping"] ; [+11]
     1222 MOVE                             R70 R48
     1223 JUMPIFNOT                        R70 ; [+8]
     1224 NOT                              R70 R11
     1225 JUMPIFNOT                        R70 ; [+6]
     1226 GETUPVAL                         R70 1
     1227 GETTABLEKS                       R70 R70 K24 ["createElement"]
     1229 GETUPVAL                         R71 34
     1230 MOVE                             R72 R48
     1231 CALL                             R70 2 1
     1232 SETTABLEKS                       R70 R69 K31 ["Dragger"]
     1234 CALL                             R66 3 -1
     1235 CLOSEUPVALS                      R15
     1236 RETURN                           R66 -1

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
      307 GETTABLEKS                       R37 R37 K23 ["Utils"]
      309 GETTABLEKS                       R37 R37 K53 ["DigitsRigUtils"]
      311 CALL                             R36 1 1
      312 GETIMPORT                        R37 K5 [require]
      314 GETTABLEKS                       R38 R0 K11 ["Src"]
      316 GETTABLEKS                       R38 R38 K54 ["PluginMode"]
      318 CALL                             R37 1 1
      319 DUPCLOSURE                       R38 K55 [PROTO_0]
      320 DUPCLOSURE                       R39 K56 [PROTO_1]
      321 DUPCLOSURE                       R40 K57 [PROTO_2]
      322 DUPCLOSURE                       R41 K58 [PROTO_3]
      323 CAPTURE                          VAL R2
      324 DUPCLOSURE                       R42 K59 [PROTO_4]
      325 DUPCLOSURE                       R43 K60 [PROTO_6]
      326 DUPCLOSURE                       R44 K61 [PROTO_7]
      327 CAPTURE                          VAL R2
      328 DUPCLOSURE                       R45 K62 [PROTO_8]
      329 CAPTURE                          VAL R42
      330 CAPTURE                          VAL R2
      331 DUPCLOSURE                       R46 K63 [PROTO_9]
      332 CAPTURE                          VAL R1
      333 CAPTURE                          VAL R23
      334 CAPTURE                          VAL R20
      335 CAPTURE                          VAL R24
      336 CAPTURE                          VAL R21
      337 DUPCLOSURE                       R47 K64 [PROTO_93]
      338 CAPTURE                          VAL R25
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R37
      341 CAPTURE                          VAL R2
      342 CAPTURE                          VAL R30
      343 CAPTURE                          VAL R28
      344 CAPTURE                          VAL R33
      345 CAPTURE                          VAL R26
      346 CAPTURE                          VAL R27
      347 CAPTURE                          VAL R29
      348 CAPTURE                          VAL R31
      349 CAPTURE                          VAL R32
      350 CAPTURE                          VAL R22
      351 CAPTURE                          VAL R4
      352 CAPTURE                          VAL R36
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R34
      355 CAPTURE                          VAL R42
      356 CAPTURE                          VAL R16
      357 CAPTURE                          VAL R20
      358 CAPTURE                          VAL R40
      359 CAPTURE                          VAL R41
      360 CAPTURE                          VAL R14
      361 CAPTURE                          VAL R44
      362 CAPTURE                          VAL R15
      363 CAPTURE                          VAL R9
      364 CAPTURE                          VAL R35
      365 CAPTURE                          VAL R7
      366 CAPTURE                          VAL R45
      367 CAPTURE                          VAL R5
      368 CAPTURE                          VAL R11
      369 CAPTURE                          VAL R10
      370 CAPTURE                          VAL R12
      371 CAPTURE                          VAL R8
      372 CAPTURE                          VAL R18
      373 CAPTURE                          VAL R46
      374 CAPTURE                          VAL R13
      375 CAPTURE                          VAL R6
      376 DUPTABLE                         R48 K67 [{"AdaptiveAnimationRoot", "_test"}]
      377 SETTABLEKS                       R47 R48 K65 ["AdaptiveAnimationRoot"]
      379 DUPTABLE                         R49 K74 [{"findLabelForJoint", "computeDeprecatedCounterpartName", "clearConflictingMappings", "clearJointFromOtherDescriptors", "findExistingHandDescription", "ensureHandDescription"}]
      380 SETTABLEKS                       R38 R49 K68 ["findLabelForJoint"]
      382 SETTABLEKS                       R39 R49 K69 ["computeDeprecatedCounterpartName"]
      384 SETTABLEKS                       R40 R49 K70 ["clearConflictingMappings"]
      386 SETTABLEKS                       R41 R49 K71 ["clearJointFromOtherDescriptors"]
      388 SETTABLEKS                       R42 R49 K72 ["findExistingHandDescription"]
      390 SETTABLEKS                       R45 R49 K73 ["ensureHandDescription"]
      392 SETTABLEKS                       R49 R48 K66 ["_test"]
      394 RETURN                           R48 1
