PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["IK_MODE"]
        3 GETTABLEKS                       R4 R4 K1 ["BodyPart"]
        5 JUMPIFEQ                         R1 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["Only Body Part IK mode is currrently supported with IK Controls"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["isR15Humanoid"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       22 LOADK                            R4 K6 ["Only R15 rigs are supported with IK Controls"]
       23 GETIMPORT                        R2 K4 [assert]
       25 CALL                             R2 2 0
       26 LOADK                            R4 K7 ["HumanoidRigDescription"]
       27 NAMECALL                         R2 R0 K8 ["FindFirstChildOfClass"]
       29 CALL                             R2 2 1
       30 JUMPIF                           R2 ; [+5]
       31 GETIMPORT                        R3 K11 [Instance.new]
       33 LOADK                            R4 K7 ["HumanoidRigDescription"]
       34 CALL                             R3 1 1
       35 MOVE                             R2 R3
       36 FASTCALL2K                       ASSERT R2 K12 ; [+5]
       38 MOVE                             R4 R2
       39 LOADK                            R5 K12 ["HumanoidRigDescription was not initialized correctly"]
       40 GETIMPORT                        R3 K4 [assert]
       42 CALL                             R3 2 0
       43 SETTABLEKS                       R0 R2 K13 ["Parent"]
       45 MOVE                             R5 R0
       46 NAMECALL                         R3 R2 K14 ["AutoRig"]
       48 CALL                             R3 2 0
       49 DUPTABLE                         R4 K21 [{["_model"], ["_ikControls"], ["_attachments"], ["_selectedPart"] = , ["_hrd"]}]
       50 SETTABLEKS                       R0 R4 K15 ["_model"]
       52 NEWTABLE                         R5 0 0
       54 SETTABLEKS                       R5 R4 K16 ["_ikControls"]
       56 NEWTABLE                         R5 0 0
       58 SETTABLEKS                       R5 R4 K17 ["_attachments"]
       60 SETTABLEKS                       R2 R4 K20 ["_hrd"]
       62 GETUPVAL                         R5 2
       63 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       65 GETIMPORT                        R3 K23 [setmetatable]
       67 CALL                             R3 2 1
       68 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_ikControls"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["Destroy"]
        8 CALL                             R6 1 0
        9 GETTABLEKS                       R6 R0 K2 ["_ikControls"]
       11 LOADNIL                          R7
       12 SETTABLE                         R7 R6 R4
       13 FORGLOOP                         R1 2 ; [-8]
       15 GETIMPORT                        R1 K1 [pairs]
       17 GETTABLEKS                       R2 R0 K4 ["_attachments"]
       19 CALL                             R1 1 3
       20 FORGPREP_NEXT                    R1
       21 NAMECALL                         R6 R5 K3 ["Destroy"]
       23 CALL                             R6 1 0
       24 GETTABLEKS                       R6 R0 K4 ["_attachments"]
       26 LOADNIL                          R7
       27 SETTABLE                         R7 R6 R4
       28 FORGLOOP                         R1 2 ; [-8]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K5 ["_selectedPart"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K6 ["_model"]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K7 ["_hrd"]
       39 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["EndEffector"]
        4 LOADK                            R5 K1 ["EndEffector not found for IKControl: "]
        5 GETTABLEKS                       R6 R0 K2 ["Name"]
        7 CONCAT                           R4 R5 R6
        8 FASTCALL2                        ASSERT R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R0 K0 ["EndEffector"]
       15 LOADK                            R4 K5 ["Motor6D"]
       16 LOADB                            R5 1
       17 NAMECALL                         R2 R2 K6 ["FindFirstChildWhichIsA"]
       19 CALL                             R2 3 1
       20 GETTABLEKS                       R3 R2 K7 ["Part1"]
       22 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 GETIMPORT                        R4 K10 [table.insert]
       28 CALL                             R4 2 0
       29 GETTABLEKS                       R5 R2 K11 ["Part0"]
       31 LOADK                            R7 K12 ["Motor6D.Part0 not found for: "]
       32 GETTABLEKS                       R8 R2 K2 ["Name"]
       34 CONCAT                           R6 R7 R8
       35 FASTCALL2                        ASSERT R5 R6 ; [+3]
       37 GETIMPORT                        R4 K4 [assert]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R4 R2 K11 ["Part0"]
       42 LOADK                            R6 K5 ["Motor6D"]
       43 LOADB                            R7 1
       44 NAMECALL                         R4 R4 K6 ["FindFirstChildWhichIsA"]
       46 CALL                             R4 3 1
       47 MOVE                             R2 R4
       48 GETTABLEKS                       R4 R0 K13 ["ChainRoot"]
       50 JUMPIFEQ                         R3 R4 ; [+2]
       52 JUMPBACK                         ; [-33]
       53 GETIMPORT                        R3 K15 [ipairs]
       55 MOVE                             R4 R1
       56 CALL                             R3 1 3
       57 FORGPREP_INEXT                   R3
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R10 R7 K2 ["Name"]
       61 GETTABLE                         R8 R9 R10
       62 LOADK                            R11 K16 ["Muscle Rest Pose not defined for joint: "]
       63 GETTABLEKS                       R12 R7 K2 ["Name"]
       65 FASTCALL3                        ASSERT R8 R11 R12
       67 MOVE                             R10 R8
       68 GETIMPORT                        R9 K4 [assert]
       70 CALL                             R9 3 0
       71 SETTABLEKS                       R8 R7 K17 ["Transform"]
       73 FORGLOOP                         R3 2 [inext] ; [-16]
       75 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["_ikControls"]
        2 GETTABLEKS                       R6 R1 K1 ["Name"]
        4 GETTABLE                         R4 R5 R6
        5 JUMPIFNOT                        R4 ; [+6]
        6 GETTABLEKS                       R5 R0 K0 ["_ikControls"]
        8 GETTABLEKS                       R6 R1 K1 ["Name"]
       10 GETTABLE                         R4 R5 R6
       11 RETURN                           R4 1
       12 GETIMPORT                        R4 K4 [Instance.new]
       14 LOADK                            R5 K5 ["Attachment"]
       15 CALL                             R4 1 1
       16 LOADK                            R6 K6 ["Target"]
       17 GETTABLEKS                       R7 R1 K1 ["Name"]
       19 CONCAT                           R5 R6 R7
       20 SETTABLEKS                       R5 R4 K1 ["Name"]
       22 GETTABLEKS                       R5 R0 K7 ["_model"]
       24 LOADK                            R7 K8 ["HumanoidRootPart"]
       25 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K10 ["Parent"]
       30 GETTABLEKS                       R5 R1 K11 ["CFrame"]
       32 SETTABLEKS                       R5 R4 K12 ["WorldCFrame"]
       34 GETTABLEKS                       R5 R0 K13 ["_attachments"]
       36 GETTABLEKS                       R6 R4 K1 ["Name"]
       38 SETTABLE                         R4 R5 R6
       39 GETIMPORT                        R5 K4 [Instance.new]
       41 LOADK                            R6 K14 ["IKControl"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R2 R5 K15 ["ChainRoot"]
       45 SETTABLEKS                       R1 R5 K16 ["EndEffector"]
       47 LOADK                            R7 K14 ["IKControl"]
       48 GETTABLEKS                       R8 R1 K1 ["Name"]
       50 CONCAT                           R6 R7 R8
       51 SETTABLEKS                       R6 R5 K1 ["Name"]
       53 SETTABLEKS                       R4 R5 K6 ["Target"]
       55 MOVE                             R6 R3
       56 JUMPIF                           R6 ; [+2]
       57 GETIMPORT                        R6 K20 [Enum.IKControlType.Transform]
       59 SETTABLEKS                       R6 R5 K21 ["Type"]
       61 LOADN                            R6 0
       62 SETTABLEKS                       R6 R5 K22 ["SmoothTime"]
       64 GETTABLEKS                       R6 R0 K7 ["_model"]
       66 LOADK                            R8 K23 ["Humanoid"]
       67 NAMECALL                         R6 R6 K24 ["FindFirstChildOfClass"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K10 ["Parent"]
       72 GETTABLEKS                       R6 R0 K0 ["_ikControls"]
       74 GETTABLEKS                       R7 R1 K1 ["Name"]
       76 SETTABLE                         R5 R6 R7
       77 RETURN                           R5 1

PROTO_4:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["UpperTorso"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["LowerTorso"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_hrd"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["PART1_TO_JOINT"]
        5 GETTABLE                         R4 R5 R1
        6 GETTABLE                         R2 R3 R4
        7 RETURN                           R2 1

PROTO_6:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["_selectedPart"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R1 K1 ["Name"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIF                           R2 ; [+8]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Selected part cannot be moved in Body Part IK mode:"]
       11 GETTABLEKS                       R4 R1 K1 ["Name"]
       13 CALL                             R2 2 0
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 LOADB                            R2 0
       17 GETTABLEKS                       R4 R1 K1 ["Name"]
       19 LOADB                            R3 1
       20 JUMPIFEQKS                       R4 K5 ["UpperTorso"] ; [+5]
       22 JUMPIFEQKS                       R4 K6 ["LowerTorso"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 JUMPIFNOT                        R3 ; [+37]
       27 GETTABLEKS                       R5 R0 K7 ["_hrd"]
       29 GETTABLEKS                       R5 R5 K8 ["LeftAnkle"]
       31 GETTABLEKS                       R5 R5 K9 ["Parent"]
       33 GETTABLEKS                       R6 R0 K7 ["_hrd"]
       35 GETTABLEKS                       R6 R6 K10 ["LeftHip"]
       37 GETTABLEKS                       R6 R6 K9 ["Parent"]
       39 NAMECALL                         R3 R0 K11 ["getOrCreateIKControl"]
       41 CALL                             R3 3 1
       42 GETTABLEKS                       R6 R0 K7 ["_hrd"]
       44 GETTABLEKS                       R6 R6 K12 ["RightAnkle"]
       46 GETTABLEKS                       R6 R6 K9 ["Parent"]
       48 GETTABLEKS                       R7 R0 K7 ["_hrd"]
       50 GETTABLEKS                       R7 R7 K13 ["RightHip"]
       52 GETTABLEKS                       R7 R7 K9 ["Parent"]
       54 NAMECALL                         R4 R0 K11 ["getOrCreateIKControl"]
       56 CALL                             R4 3 1
       57 AND                              R6 R3 R4
       58 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       60 LOADK                            R7 K14 ["Unexpected issue with Foot IK Controls setup"]
       61 GETIMPORT                        R5 K16 [assert]
       63 CALL                             R5 2 0
       64 GETTABLEKS                       R5 R1 K1 ["Name"]
       66 NAMECALL                         R3 R0 K17 ["getJoint"]
       68 CALL                             R3 2 1
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R8 R1 K1 ["Name"]
       72 GETTABLE                         R6 R7 R8
       73 NAMECALL                         R4 R0 K17 ["getJoint"]
       75 CALL                             R4 2 1
       76 GETTABLEKS                       R7 R3 K9 ["Parent"]
       78 GETTABLEKS                       R8 R4 K9 ["Parent"]
       80 NAMECALL                         R5 R0 K11 ["getOrCreateIKControl"]
       82 CALL                             R5 3 1
       83 JUMPIFNOTEQKNIL                  R5 ; [+2]
       85 LOADB                            R2 0 +1
       86 LOADB                            R2 1
       87 JUMPIFNOT                        R2 ; [+2]
       88 SETTABLEKS                       R1 R0 K0 ["_selectedPart"]
       90 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_selectedPart"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["_ikControls"]
        6 GETTABLEKS                       R4 R0 K0 ["_selectedPart"]
        8 GETTABLEKS                       R4 R4 K2 ["Name"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIF                           R2 ; [+10]
       12 GETIMPORT                        R3 K4 [warn]
       14 LOADK                            R5 K5 ["IK Control not found for end effector: "]
       15 GETTABLEKS                       R6 R0 K0 ["_selectedPart"]
       17 GETTABLEKS                       R6 R6 K2 ["Name"]
       19 CONCAT                           R4 R5 R6
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R4 R2 K6 ["Target"]
       24 FASTCALL1                        ASSERT R4 ; [+2]
       25 GETIMPORT                        R3 K8 [assert]
       27 CALL                             R3 1 0
       28 GETTABLEKS                       R4 R2 K6 ["Target"]
       30 LOADK                            R6 K9 ["Attachment"]
       31 NAMECALL                         R4 R4 K10 ["IsA"]
       33 CALL                             R4 2 -1
       34 FASTCALL                         ASSERT ; [+2]
       35 GETIMPORT                        R3 K8 [assert]
       37 CALL                             R3 -1 0
       38 GETTABLEKS                       R3 R2 K6 ["Target"]
       40 SETTABLEKS                       R1 R3 K11 ["WorldCFrame"]
       42 GETUPVAL                         R3 0
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 NAMECALL                         R3 R2 K12 ["Solve"]
       47 CALL                             R3 1 0
       48 GETTABLEKS                       R4 R0 K0 ["_selectedPart"]
       50 GETTABLEKS                       R4 R4 K2 ["Name"]
       52 LOADB                            R3 1
       53 JUMPIFEQKS                       R4 K13 ["UpperTorso"] ; [+5]
       55 JUMPIFEQKS                       R4 K14 ["LowerTorso"] ; [+2]
       57 LOADB                            R3 0 +1
       58 LOADB                            R3 1
       59 JUMPIFNOT                        R3 ; [+27]
       60 GETTABLEKS                       R4 R0 K1 ["_ikControls"]
       62 GETTABLEKS                       R3 R4 K15 ["LeftFoot"]
       64 GETTABLEKS                       R5 R0 K1 ["_ikControls"]
       66 GETTABLEKS                       R4 R5 K16 ["RightFoot"]
       68 AND                              R6 R3 R4
       69 FASTCALL2K                       ASSERT R6 K17 ; [+4]
       71 LOADK                            R7 K17 ["Foot IK Controls not found"]
       72 GETIMPORT                        R5 K8 [assert]
       74 CALL                             R5 2 0
       75 GETUPVAL                         R5 0
       76 MOVE                             R6 R3
       77 CALL                             R5 1 0
       78 GETUPVAL                         R5 0
       79 MOVE                             R6 R4
       80 CALL                             R5 1 0
       81 NAMECALL                         R5 R3 K12 ["Solve"]
       83 CALL                             R5 1 0
       84 NAMECALL                         R5 R4 K12 ["Solve"]
       86 CALL                             R5 1 0
       87 GETTABLEKS                       R3 R0 K18 ["_model"]
       89 LOADK                            R5 K19 ["Animator"]
       90 LOADB                            R6 1
       91 NAMECALL                         R3 R3 K20 ["FindFirstChildWhichIsA"]
       93 CALL                             R3 3 1
       94 JUMPIFNOT                        R3 ; [+9]
       95 GETUPVAL                         R4 1
       96 NAMECALL                         R4 R4 K21 ["IsRunning"]
       98 CALL                             R4 1 1
       99 JUMPIF                           R4 ; [+4]
      100 LOADN                            R6 0
      101 NAMECALL                         R4 R3 K22 ["StepAnimations"]
      103 CALL                             R4 2 0
      104 GETUPVAL                         R4 2
      105 GETTABLEKS                       R4 R4 K23 ["updateSimulatedAnimConstraintParts"]
      107 GETTABLEKS                       R5 R0 K18 ["_model"]
      109 CALL                             R4 1 0
      110 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R5 K0 ["Motor6D"]
        1 NAMECALL                         R3 R1 K1 ["FindFirstChildOfClass"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R3 K2 ["Part1"]
        6 GETTABLEKS                       R5 R4 K3 ["Name"]
        8 GETTABLEKS                       R6 R3 K4 ["Transform"]
       10 SETTABLE                         R6 R0 R5
       11 GETTABLEKS                       R6 R3 K5 ["Part0"]
       13 LOADK                            R8 K6 ["Motor6D.Part0 not found for: "]
       14 GETTABLEKS                       R9 R3 K3 ["Name"]
       16 CONCAT                           R7 R8 R9
       17 FASTCALL2                        ASSERT R6 R7 ; [+3]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 2 0
       22 GETTABLEKS                       R5 R3 K5 ["Part0"]
       24 LOADK                            R7 K0 ["Motor6D"]
       25 LOADB                            R8 1
       26 NAMECALL                         R5 R5 K9 ["FindFirstChildWhichIsA"]
       28 CALL                             R5 3 1
       29 MOVE                             R3 R5
       30 JUMPIFEQ                         R4 R2 ; [+2]
       32 JUMPBACK                         ; [-29]
       33 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_selectedPart"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K1 ["_ikControls"]
        8 GETTABLEKS                       R3 R0 K0 ["_selectedPart"]
       10 GETTABLEKS                       R3 R3 K2 ["Name"]
       12 GETTABLE                         R1 R2 R3
       13 LOADK                            R5 K3 ["IK Control not found for end effector: "]
       14 GETTABLEKS                       R6 R0 K0 ["_selectedPart"]
       16 GETTABLEKS                       R6 R6 K2 ["Name"]
       18 CONCAT                           R4 R5 R6
       19 FASTCALL2                        ASSERT R1 R4 ; [+4]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K5 [assert]
       24 CALL                             R2 2 0
       25 NEWTABLE                         R2 0 0
       27 GETTABLEKS                       R4 R0 K0 ["_selectedPart"]
       29 GETTABLEKS                       R4 R4 K2 ["Name"]
       31 LOADB                            R3 1
       32 JUMPIFEQKS                       R4 K6 ["UpperTorso"] ; [+5]
       34 JUMPIFEQKS                       R4 K7 ["LowerTorso"] ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+29]
       39 GETTABLEKS                       R4 R0 K1 ["_ikControls"]
       41 GETTABLEKS                       R3 R4 K8 ["LeftFoot"]
       43 GETTABLEKS                       R5 R0 K1 ["_ikControls"]
       45 GETTABLEKS                       R4 R5 K9 ["RightFoot"]
       47 AND                              R6 R3 R4
       48 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       50 LOADK                            R7 K10 ["Foot IK Controls not found"]
       51 GETIMPORT                        R5 K5 [assert]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 0
       55 MOVE                             R6 R2
       56 GETTABLEKS                       R7 R3 K11 ["EndEffector"]
       58 GETTABLEKS                       R8 R3 K12 ["ChainRoot"]
       60 CALL                             R5 3 0
       61 GETUPVAL                         R5 0
       62 MOVE                             R6 R2
       63 GETTABLEKS                       R7 R4 K11 ["EndEffector"]
       65 GETTABLEKS                       R8 R4 K12 ["ChainRoot"]
       67 CALL                             R5 3 0
       68 GETUPVAL                         R3 0
       69 MOVE                             R4 R2
       70 GETTABLEKS                       R5 R1 K11 ["EndEffector"]
       72 GETTABLEKS                       R6 R1 K12 ["ChainRoot"]
       74 CALL                             R3 3 0
       75 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_selectedPart"]
        2 JUMPIF                           R1 ; [+4]
        3 GETIMPORT                        R1 K2 [warn]
        5 LOADK                            R2 K3 ["No part selected for IK Control"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K0 ["_selectedPart"]
        9 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [script]
        7 LOADK                            R3 K3 ["AnimationClipEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Src"]
       15 GETTABLEKS                       R3 R3 K8 ["Util"]
       17 GETTABLEKS                       R3 R3 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Src"]
       24 GETTABLEKS                       R4 R4 K8 ["Util"]
       26 GETTABLEKS                       R4 R4 K10 ["RigInfo"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K7 ["Src"]
       33 GETTABLEKS                       R5 R5 K8 ["Util"]
       35 GETTABLEKS                       R5 R5 K11 ["RigUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K13 [game]
       40 LOADK                            R7 K14 ["RunService"]
       41 NAMECALL                         R5 R5 K15 ["GetService"]
       43 CALL                             R5 2 1
       44 DUPTABLE                         R6 K31 [{["Head"] = "Head", ["LeftHand"] = "LeftUpperArm", ["RightHand"] = "RightUpperArm", ["LeftLowerArm"] = "LeftUpperArm", ["RightLowerArm"] = "RightUpperArm", ["LeftUpperArm"] = "UpperTorso", ["RightUpperArm"] = "UpperTorso", ["LeftFoot"] = "LeftUpperLeg", ["RightFoot"] = "RightUpperLeg", ["LeftLowerLeg"] = "LeftUpperLeg", ["RightLowerLeg"] = "RightUpperLeg", ["LeftUpperLeg"] = "LeftUpperLeg", ["RightUpperLeg"] = "RightUpperLeg", ["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso"}]
       45 DUPTABLE                         R7 K47 [{"Root", "Waist", "Neck", "LeftWrist", "LeftAnkle", "RightWrist", "RightAnkle", "RightShoulder", "RightElbow", "LeftShoulder", "LeftElbow", "LeftKnee", "LeftHip", "RightKnee", "RightHip"}]
       46 GETIMPORT                        R8 K50 [CFrame.identity]
       48 SETTABLEKS                       R8 R7 K32 ["Root"]
       50 GETIMPORT                        R8 K50 [CFrame.identity]
       52 SETTABLEKS                       R8 R7 K33 ["Waist"]
       54 GETIMPORT                        R8 K50 [CFrame.identity]
       56 SETTABLEKS                       R8 R7 K34 ["Neck"]
       58 GETIMPORT                        R8 K50 [CFrame.identity]
       60 SETTABLEKS                       R8 R7 K35 ["LeftWrist"]
       62 GETIMPORT                        R8 K50 [CFrame.identity]
       64 SETTABLEKS                       R8 R7 K36 ["LeftAnkle"]
       66 GETIMPORT                        R8 K50 [CFrame.identity]
       68 SETTABLEKS                       R8 R7 K37 ["RightWrist"]
       70 GETIMPORT                        R8 K50 [CFrame.identity]
       72 SETTABLEKS                       R8 R7 K38 ["RightAnkle"]
       74 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
       76 LOADK                            R9 K53 [0.408]
       77 LOADK                            R10 K54 [0.326]
       78 LOADK                            R11 K55 [0.48]
       79 CALL                             R8 3 1
       80 SETTABLEKS                       R8 R7 K39 ["RightShoulder"]
       82 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
       84 LOADK                            R9 K56 [1.165]
       85 LOADK                            R10 K57 [-0.111]
       86 LOADK                            R11 K58 [-0.342]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K40 ["RightElbow"]
       90 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
       92 LOADK                            R9 K53 [0.408]
       93 LOADK                            R10 K59 [-0.326]
       94 LOADK                            R11 K60 [-0.48]
       95 CALL                             R8 3 1
       96 SETTABLEKS                       R8 R7 K41 ["LeftShoulder"]
       98 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
      100 LOADK                            R9 K56 [1.165]
      101 LOADK                            R10 K61 [0.111]
      102 LOADK                            R11 K62 [0.342]
      103 CALL                             R8 3 1
      104 SETTABLEKS                       R8 R7 K42 ["LeftElbow"]
      106 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
      108 LOADK                            R9 K63 [-1.398]
      109 LOADK                            R10 K64 [-0.098]
      110 LOADK                            R11 K65 [0.119]
      111 CALL                             R8 3 1
      112 SETTABLEKS                       R8 R7 K43 ["LeftKnee"]
      114 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
      116 LOADK                            R9 K66 [0.561]
      117 LOADK                            R10 K67 [-0.018]
      118 LOADK                            R11 K68 [0.031]
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K44 ["LeftHip"]
      122 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
      124 LOADK                            R9 K69 [-1.399]
      125 LOADK                            R10 K70 [0.055]
      126 LOADK                            R11 K71 [-0.066]
      127 CALL                             R8 3 1
      128 SETTABLEKS                       R8 R7 K45 ["RightKnee"]
      130 GETIMPORT                        R8 K52 [CFrame.fromOrientation]
      132 LOADK                            R9 K66 [0.561]
      133 LOADK                            R10 K72 [0.018]
      134 LOADK                            R11 K73 [-0.031]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K46 ["RightHip"]
      138 DUPCLOSURE                       R8 K74 [PROTO_0]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R8 R0 K75 ["new"]
      144 DUPCLOSURE                       R8 K76 [PROTO_1]
      145 SETTABLEKS                       R8 R0 K77 ["cleanUp"]
      147 DUPCLOSURE                       R8 K78 [PROTO_2]
      148 CAPTURE                          VAL R7
      149 DUPCLOSURE                       R9 K79 [PROTO_3]
      150 SETTABLEKS                       R9 R0 K80 ["getOrCreateIKControl"]
      152 DUPCLOSURE                       R9 K81 [PROTO_4]
      153 DUPCLOSURE                       R10 K82 [PROTO_5]
      154 CAPTURE                          VAL R2
      155 SETTABLEKS                       R10 R0 K83 ["getJoint"]
      157 DUPCLOSURE                       R10 K84 [PROTO_6]
      158 CAPTURE                          VAL R6
      159 SETTABLEKS                       R10 R0 K85 ["setupIKControl"]
      161 DUPCLOSURE                       R10 K86 [PROTO_7]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R4
      165 SETTABLEKS                       R10 R0 K87 ["solve"]
      167 DUPCLOSURE                       R10 K88 [PROTO_8]
      168 DUPCLOSURE                       R11 K89 [PROTO_9]
      169 CAPTURE                          VAL R10
      170 SETTABLEKS                       R11 R0 K90 ["getTransforms"]
      172 DUPCLOSURE                       R11 K91 [PROTO_10]
      173 SETTABLEKS                       R11 R0 K92 ["getSelectedPart"]
      175 DUPCLOSURE                       R11 K93 [PROTO_11]
      176 SETTABLEKS                       R11 R0 K94 ["getModel"]
      178 RETURN                           R0 1
