PROTO_0:
        0 LOADK                            R3 K0 ["KeyframeSequence"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 NAMECALL                         R1 R0 K2 ["GetDescendants"]
        9 CALL                             R1 1 3
       10 FORGPREP                         R1
       11 LOADK                            R8 K3 ["Pose"]
       12 NAMECALL                         R6 R5 K1 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+6]
       16 GETTABLEKS                       R6 R5 K4 ["Name"]
       18 JUMPIFEQKS                       R6 K5 ["HumanoidRootPart"] ; [+3]
       20 LOADB                            R6 1
       21 RETURN                           R6 1
       22 FORGLOOP                         R1 2 ; [-12]
       24 LOADB                            R1 0
       25 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 RETURN                           R1 1
        7 GETIMPORT                        R2 K4 [Instance.new]
        9 LOADK                            R3 K0 ["Animator"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R0 R2 K5 ["Parent"]
       13 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["rigType"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFEQKS                       R2 K1 ["R6"] ; [+3]
        7 JUMPIFNOTEQKS                    R2 K2 ["R15"] ; [+2]
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 RETURN                           R3 -1

PROTO_3:
        0 LOADN                            R3 0
        1 JUMPIFNOTLE                      R1 R3 ; [+2]
        3 RETURN                           R0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOD                              R3 R0 R1
        6 RETURN                           R3 1
        7 FASTCALL2                        MATH_MIN R0 R1 ; [+5]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 GETIMPORT                        R3 K2 [math.min]
       13 CALL                             R3 2 1
       14 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 [4990637247331259]
        2 NAMECALL                         R0 R0 K1 ["GetHumanoidDescriptionFromOutfitIdAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 GETIMPORT                        R4 K5 [Enum.HumanoidRigType.R15]
        9 NAMECALL                         R1 R1 K6 ["CreateHumanoidModelFromDescriptionAsync"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [pcall]
        7 DUPCLOSURE                       R1 K2 [PROTO_4]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 2
       10 JUMPIF                           R0 ; [+15]
       11 GETIMPORT                        R2 K4 [warn]
       13 LOADK                            R3 K5 ["[ClipSampling] failed to create mannequin rig from outfit %*: %*"]
       14 LOADK                            R5 K6 [4990637247331259]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K8 [tostring]
       19 CALL                             R6 1 1
       20 NAMECALL                         R3 R3 K9 ["format"]
       22 CALL                             R3 3 1
       23 CALL                             R2 1 0
       24 LOADNIL                          R2
       25 RETURN                           R2 1
       26 LOADK                            R4 K10 ["HumanoidRigDescription"]
       27 LOADB                            R5 1
       28 NAMECALL                         R2 R1 K11 ["FindFirstChildWhichIsA"]
       30 CALL                             R2 3 1
       31 JUMPIFEQKNIL                     R2 ; [+4]
       33 NAMECALL                         R3 R2 K12 ["Destroy"]
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 0
       37 JUMPIFEQKNIL                     R3 ; [+6]
       39 NAMECALL                         R3 R1 K12 ["Destroy"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 0
       43 RETURN                           R3 1
       44 SETUPVAL                         R1 0
       45 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["CreateHumanoidModelFromDescriptionAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["R15"] ; [+15]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 NAMECALL                         R2 R1 K1 ["Clone"]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K2 ["ClipSampleSessionChar"]
       10 SETTABLEKS                       R3 R2 K3 ["Name"]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K4 ["Archivable"]
       15 RETURN                           R2 1
       16 GETIMPORT                        R1 K7 [Instance.new]
       18 LOADK                            R2 K8 ["HumanoidDescription"]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R0 K9 ["R6"] ; [+4]
       22 GETIMPORT                        R2 K12 [Enum.HumanoidRigType.R6]
       24 JUMP                             ; [+2]
       25 GETIMPORT                        R2 K13 [Enum.HumanoidRigType.R15]
       27 GETIMPORT                        R3 K15 [pcall]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CALL                             R3 1 2
       34 NAMECALL                         R5 R1 K16 ["Destroy"]
       36 CALL                             R5 1 0
       37 JUMPIFNOT                        R3 ; [+2]
       38 JUMPIFNOTEQKNIL                  R4 ; [+15]
       40 GETIMPORT                        R5 K18 [warn]
       42 LOADK                            R6 K19 ["[ClipSampling] CreateHumanoidModelFromDescriptionAsync failed: %*"]
       43 FASTCALL1                        TOSTRING R4 ; [+3]
       44 MOVE                             R9 R4
       45 GETIMPORT                        R8 K21 [tostring]
       47 CALL                             R8 1 1
       48 NAMECALL                         R6 R6 K22 ["format"]
       50 CALL                             R6 2 1
       51 CALL                             R5 1 0
       52 LOADNIL                          R5
       53 RETURN                           R5 1
       54 LOADK                            R5 K2 ["ClipSampleSessionChar"]
       55 SETTABLEKS                       R5 R4 K3 ["Name"]
       57 LOADB                            R5 0
       58 SETTABLEKS                       R5 R4 K4 ["Archivable"]
       60 RETURN                           R4 1

PROTO_8:
        0 LOADK                            R3 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+9]
        6 LOADK                            R4 K2 ["BasePart"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETUPVAL                         R2 0
       12 SETTABLEKS                       R2 R1 K4 ["CFrame"]
       14 NAMECALL                         R2 R0 K5 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K6 ["Motor6D"]
       19 NAMECALL                         R7 R6 K3 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+10]
       23 LOADK                            R9 K7 ["AnimationConstraint"]
       24 NAMECALL                         R7 R6 K3 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIF                           R7 ; [+5]
       28 LOADK                            R9 K8 ["Bone"]
       29 NAMECALL                         R7 R6 K3 ["IsA"]
       31 CALL                             R7 2 1
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETIMPORT                        R7 K10 [CFrame.identity]
       35 SETTABLEKS                       R7 R6 K11 ["Transform"]
       37 FORGLOOP                         R2 2 ; [-20]
       39 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R10 K1 ["AnimationConstraint"]
        7 NAMECALL                         R8 R7 K2 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+16]
       11 GETTABLEKS                       R8 R7 K3 ["Attachment1"]
       13 JUMPIFNOT                        R8 ; [+35]
       14 GETTABLEKS                       R8 R7 K3 ["Attachment1"]
       16 GETTABLEKS                       R8 R8 K4 ["Parent"]
       18 JUMPIFNOT                        R8 ; [+30]
       19 GETTABLEKS                       R8 R7 K3 ["Attachment1"]
       21 GETTABLEKS                       R8 R8 K4 ["Parent"]
       23 GETTABLEKS                       R8 R8 K5 ["Name"]
       25 SETTABLE                         R7 R2 R8
       26 JUMP                             ; [+22]
       27 LOADK                            R10 K6 ["Motor6D"]
       28 NAMECALL                         R8 R7 K2 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+9]
       32 GETTABLEKS                       R8 R7 K7 ["Part1"]
       34 JUMPIFNOT                        R8 ; [+14]
       35 GETTABLEKS                       R8 R7 K7 ["Part1"]
       37 GETTABLEKS                       R8 R8 K5 ["Name"]
       39 SETTABLE                         R7 R2 R8
       40 JUMP                             ; [+8]
       41 LOADK                            R10 K8 ["Bone"]
       42 NAMECALL                         R8 R7 K2 ["IsA"]
       44 CALL                             R8 2 1
       45 JUMPIFNOT                        R8 ; [+3]
       46 GETTABLEKS                       R8 R7 K5 ["Name"]
       48 SETTABLE                         R7 R2 R8
       49 FORGLOOP                         R3 2 ; [-44]
       51 NAMECALL                         R3 R1 K0 ["GetDescendants"]
       53 CALL                             R3 1 3
       54 FORGPREP                         R3
       55 LOADK                            R10 K9 ["Pose"]
       56 NAMECALL                         R8 R7 K2 ["IsA"]
       58 CALL                             R8 2 1
       59 JUMPIFNOT                        R8 ; [+27]
       60 GETTABLEKS                       R8 R7 K10 ["Weight"]
       62 LOADN                            R9 0
       63 JUMPIFNOTLT                      R9 R8 ; [+23]
       65 GETTABLEKS                       R9 R7 K5 ["Name"]
       67 GETTABLE                         R8 R2 R9
       68 JUMPIFNOT                        R8 ; [+18]
       69 GETTABLEKS                       R9 R7 K10 ["Weight"]
       71 LOADN                            R11 1
       72 JUMPIFNOTLE                      R11 R9 ; [+4]
       74 GETTABLEKS                       R10 R7 K11 ["CFrame"]
       76 JUMP                             ; [+8]
       77 GETIMPORT                        R10 K13 [CFrame.identity]
       79 GETTABLEKS                       R12 R7 K11 ["CFrame"]
       81 MOVE                             R13 R9
       82 NAMECALL                         R10 R10 K14 ["Lerp"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R8 K15 ["Transform"]
       87 FORGLOOP                         R3 2 ; [-33]
       89 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 ADD                              R14 R4 R8
        4 ADD                              R13 R14 R12
        5 LOADNIL                          R14
        6 LOADNIL                          R15
        7 LOADNIL                          R16
        8 LOADNIL                          R17
        9 LOADN                            R18 0
       10 JUMPIFNOTLT                      R18 R13 ; [+15]
       12 ADDK                             R20 R13 K2 [1]
       13 FASTCALL1                        MATH_SQRT R20 ; [+2]
       14 GETIMPORT                        R19 K5 [math.sqrt]
       16 CALL                             R19 1 1
       17 MULK                             R18 R19 K1 [2]
       18 MULK                             R17 R18 K6 [0.25]
       19 SUB                              R19 R11 R9
       20 DIV                              R14 R19 R18
       21 SUB                              R19 R6 R10
       22 DIV                              R15 R19 R18
       23 SUB                              R19 R7 R5
       24 DIV                              R16 R19 R18
       25 JUMP                             ; [+56]
       26 JUMPIFNOTLT                      R8 R4 ; [+20]
       28 JUMPIFNOTLT                      R12 R4 ; [+18]
       30 LOADN                            R23 1
       31 ADD                              R22 R23 R4
       32 SUB                              R21 R22 R8
       33 SUB                              R20 R21 R12
       34 FASTCALL1                        MATH_SQRT R20 ; [+2]
       35 GETIMPORT                        R19 K5 [math.sqrt]
       37 CALL                             R19 1 1
       38 MULK                             R18 R19 K1 [2]
       39 SUB                              R19 R11 R9
       40 DIV                              R17 R19 R18
       41 MULK                             R14 R18 K6 [0.25]
       42 ADD                              R19 R5 R7
       43 DIV                              R15 R19 R18
       44 ADD                              R19 R6 R10
       45 DIV                              R16 R19 R18
       46 JUMP                             ; [+35]
       47 JUMPIFNOTLT                      R12 R8 ; [+18]
       49 LOADN                            R23 1
       50 ADD                              R22 R23 R8
       51 SUB                              R21 R22 R4
       52 SUB                              R20 R21 R12
       53 FASTCALL1                        MATH_SQRT R20 ; [+2]
       54 GETIMPORT                        R19 K5 [math.sqrt]
       56 CALL                             R19 1 1
       57 MULK                             R18 R19 K1 [2]
       58 SUB                              R19 R6 R10
       59 DIV                              R17 R19 R18
       60 ADD                              R19 R5 R7
       61 DIV                              R14 R19 R18
       62 MULK                             R15 R18 K6 [0.25]
       63 ADD                              R19 R9 R11
       64 DIV                              R16 R19 R18
       65 JUMP                             ; [+16]
       66 LOADN                            R23 1
       67 ADD                              R22 R23 R12
       68 SUB                              R21 R22 R4
       69 SUB                              R20 R21 R8
       70 FASTCALL1                        MATH_SQRT R20 ; [+2]
       71 GETIMPORT                        R19 K5 [math.sqrt]
       73 CALL                             R19 1 1
       74 MULK                             R18 R19 K1 [2]
       75 SUB                              R19 R7 R5
       76 DIV                              R17 R19 R18
       77 ADD                              R19 R6 R10
       78 DIV                              R14 R19 R18
       79 ADD                              R19 R9 R11
       80 DIV                              R15 R19 R18
       81 MULK                             R16 R18 K6 [0.25]
       82 MUL                              R22 R14 R14
       83 MUL                              R23 R15 R15
       84 ADD                              R21 R22 R23
       85 MUL                              R22 R16 R16
       86 ADD                              R20 R21 R22
       87 MUL                              R21 R17 R17
       88 ADD                              R19 R20 R21
       89 FASTCALL1                        MATH_SQRT R19 ; [+2]
       90 GETIMPORT                        R18 K5 [math.sqrt]
       92 CALL                             R18 1 1
       93 LOADK                            R19 K7 [1E-09]
       94 JUMPIFNOTLT                      R18 R19 ; [+6]
       96 LOADN                            R19 0
       97 LOADN                            R20 0
       98 LOADN                            R21 0
       99 LOADN                            R22 1
      100 RETURN                           R19 4
      101 DIV                              R19 R14 R18
      102 DIV                              R20 R15 R18
      103 DIV                              R21 R16 R18
      104 DIV                              R22 R17 R18
      105 RETURN                           R19 4

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 4
        5 DUPTABLE                         R6 K3 [{"position", "rotation"}]
        6 NEWTABLE                         R7 0 3
        8 GETTABLEKS                       R8 R1 K4 ["X"]
       10 GETTABLEKS                       R9 R1 K5 ["Y"]
       12 GETTABLEKS                       R10 R1 K6 ["Z"]
       14 SETLIST                          R7 R8 3 [1]
       16 SETTABLEKS                       R7 R6 K1 ["position"]
       18 NEWTABLE                         R7 0 4
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 MOVE                             R11 R5
       24 SETLIST                          R7 R8 4 [1]
       26 SETTABLEKS                       R7 R6 K2 ["rotation"]
       28 RETURN                           R6 1

PROTO_13:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 MOVE                             R4 R2
        5 JUMPIFNOT                        R4 ; [+4]
        6 LOADK                            R6 K1 ["BasePart"]
        7 NAMECALL                         R4 R2 K2 ["IsA"]
        9 CALL                             R4 2 1
       10 LOADK                            R6 K3 ["missing BasePart "]
       11 MOVE                             R7 R1
       12 CONCAT                           R5 R6 R7
       13 FASTCALL2                        ASSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TransformedWorldCFrame"]
        3 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toRigName"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 MOVE                             R6 R3
        7 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
        9 CALL                             R4 2 1
       10 JUMPIFNOTEQKNIL                  R4 ; [+11]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantAnimationGenCustomRigPosing"]
       15 JUMPIFNOT                        R5 ; [+6]
       16 MOVE                             R7 R3
       17 LOADB                            R8 1
       18 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
       20 CALL                             R5 3 1
       21 MOVE                             R4 R5
       22 JUMPIFEQKNIL                     R4 ; [+10]
       24 LOADK                            R7 K3 ["BasePart"]
       25 NAMECALL                         R5 R4 K4 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R5 ; [+4]
       29 MOVE                             R5 R4
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R5
       32 RETURN                           R6 1
       33 JUMPIFEQKNIL                     R4 ; [+14]
       35 LOADK                            R7 K5 ["Bone"]
       36 NAMECALL                         R5 R4 K4 ["IsA"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+8]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantAnimationGenCustomRigPosing"]
       43 JUMPIFNOT                        R5 ; [+4]
       44 MOVE                             R5 R4
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
       48 GETIMPORT                        R5 K7 [error]
       50 LOADK                            R7 K8 ["missing BasePart or Bone "]
       51 MOVE                             R8 R3
       52 CONCAT                           R6 R7 R8
       53 CALL                             R5 1 0
       54 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 MUL                              R0 R1 R2
        5 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 RETURN                           R0 1

PROTO_26:
        0 NEWTABLE                         R2 8 0
        2 NEWTABLE                         R3 8 0
        4 JUMPIFNOTEQKS                    R1 K0 ["R15"] ; [+54]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["fromRig"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R0
       13 MOVE                             R7 R4
       14 LOADK                            R8 K2 ["LeftHand"]
       15 CALL                             R5 3 1
       16 SETTABLEKS                       R5 R2 K3 ["left_hand"]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R0
       20 MOVE                             R7 R4
       21 LOADK                            R8 K4 ["RightHand"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R2 K5 ["right_hand"]
       25 GETUPVAL                         R5 1
       26 MOVE                             R6 R0
       27 MOVE                             R7 R4
       28 LOADK                            R8 K6 ["LeftFoot"]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R2 K7 ["left_foot"]
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R0
       34 MOVE                             R7 R4
       35 LOADK                            R8 K8 ["RightFoot"]
       36 CALL                             R5 3 1
       37 SETTABLEKS                       R5 R2 K9 ["right_foot"]
       39 GETUPVAL                         R5 1
       40 MOVE                             R6 R0
       41 MOVE                             R7 R4
       42 LOADK                            R8 K10 ["Head"]
       43 CALL                             R5 3 1
       44 SETTABLEKS                       R5 R2 K11 ["spine"]
       46 GETUPVAL                         R5 2
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETUPVAL                         R10 1
       51 MOVE                             R11 R0
       52 MOVE                             R12 R4
       53 MOVE                             R13 R9
       54 CALL                             R10 3 1
       55 SETTABLE                         R10 R3 R8
       56 FORGLOOP                         R5 2 ; [-7]
       58 RETURN                           R2 2
       59 LOADK                            R7 K12 ["Left Arm"]
       60 NAMECALL                         R5 R0 K13 ["FindFirstChild"]
       62 CALL                             R5 2 1
       63 MOVE                             R7 R5
       64 JUMPIFNOT                        R7 ; [+4]
       65 LOADK                            R9 K14 ["BasePart"]
       66 NAMECALL                         R7 R5 K15 ["IsA"]
       68 CALL                             R7 2 1
       69 FASTCALL2K                       ASSERT R7 K16 ; [+4]
       71 LOADK                            R8 K16 ["missing BasePart Left Arm"]
       72 GETIMPORT                        R6 K18 [assert]
       74 CALL                             R6 2 0
       75 MOVE                             R4 R5
       76 LOADK                            R8 K19 ["Right Arm"]
       77 NAMECALL                         R6 R0 K13 ["FindFirstChild"]
       79 CALL                             R6 2 1
       80 MOVE                             R8 R6
       81 JUMPIFNOT                        R8 ; [+4]
       82 LOADK                            R10 K14 ["BasePart"]
       83 NAMECALL                         R8 R6 K15 ["IsA"]
       85 CALL                             R8 2 1
       86 FASTCALL2K                       ASSERT R8 K20 ; [+4]
       88 LOADK                            R9 K20 ["missing BasePart Right Arm"]
       89 GETIMPORT                        R7 K18 [assert]
       91 CALL                             R7 2 0
       92 MOVE                             R5 R6
       93 LOADK                            R9 K21 ["Left Leg"]
       94 NAMECALL                         R7 R0 K13 ["FindFirstChild"]
       96 CALL                             R7 2 1
       97 MOVE                             R9 R7
       98 JUMPIFNOT                        R9 ; [+4]
       99 LOADK                            R11 K14 ["BasePart"]
      100 NAMECALL                         R9 R7 K15 ["IsA"]
      102 CALL                             R9 2 1
      103 FASTCALL2K                       ASSERT R9 K22 ; [+4]
      105 LOADK                            R10 K22 ["missing BasePart Left Leg"]
      106 GETIMPORT                        R8 K18 [assert]
      108 CALL                             R8 2 0
      109 MOVE                             R6 R7
      110 LOADK                            R10 K23 ["Right Leg"]
      111 NAMECALL                         R8 R0 K13 ["FindFirstChild"]
      113 CALL                             R8 2 1
      114 MOVE                             R10 R8
      115 JUMPIFNOT                        R10 ; [+4]
      116 LOADK                            R12 K14 ["BasePart"]
      117 NAMECALL                         R10 R8 K15 ["IsA"]
      119 CALL                             R10 2 1
      120 FASTCALL2K                       ASSERT R10 K24 ; [+4]
      122 LOADK                            R11 K24 ["missing BasePart Right Leg"]
      123 GETIMPORT                        R9 K18 [assert]
      125 CALL                             R9 2 0
      126 MOVE                             R7 R8
      127 LOADK                            R11 K25 ["Torso"]
      128 NAMECALL                         R9 R0 K13 ["FindFirstChild"]
      130 CALL                             R9 2 1
      131 MOVE                             R11 R9
      132 JUMPIFNOT                        R11 ; [+4]
      133 LOADK                            R13 K14 ["BasePart"]
      134 NAMECALL                         R11 R9 K15 ["IsA"]
      136 CALL                             R11 2 1
      137 FASTCALL2K                       ASSERT R11 K26 ; [+4]
      139 LOADK                            R12 K26 ["missing BasePart Torso"]
      140 GETIMPORT                        R10 K18 [assert]
      142 CALL                             R10 2 0
      143 MOVE                             R8 R9
      144 NEWCLOSURE                       R9 P0
      145 CAPTURE                          VAL R4
      146 CAPTURE                          UPVAL U3
      147 SETTABLEKS                       R9 R2 K3 ["left_hand"]
      149 NEWCLOSURE                       R9 P1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          UPVAL U3
      152 SETTABLEKS                       R9 R2 K5 ["right_hand"]
      154 NEWCLOSURE                       R9 P2
      155 CAPTURE                          VAL R6
      156 CAPTURE                          UPVAL U3
      157 SETTABLEKS                       R9 R2 K7 ["left_foot"]
      159 NEWCLOSURE                       R9 P3
      160 CAPTURE                          VAL R7
      161 CAPTURE                          UPVAL U3
      162 SETTABLEKS                       R9 R2 K9 ["right_foot"]
      164 NEWCLOSURE                       R9 P4
      165 CAPTURE                          VAL R8
      166 SETTABLEKS                       R9 R3 K27 ["torso"]
      168 NEWCLOSURE                       R9 P5
      169 CAPTURE                          VAL R4
      170 SETTABLEKS                       R9 R3 K28 ["left_arm"]
      172 NEWCLOSURE                       R9 P6
      173 CAPTURE                          VAL R5
      174 SETTABLEKS                       R9 R3 K29 ["right_arm"]
      176 NEWCLOSURE                       R9 P7
      177 CAPTURE                          VAL R6
      178 SETTABLEKS                       R9 R3 K30 ["left_leg"]
      180 NEWCLOSURE                       R9 P8
      181 CAPTURE                          VAL R7
      182 SETTABLEKS                       R9 R3 K31 ["right_leg"]
      184 RETURN                           R2 2

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RegisterKeyframeSequence"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Play"]
        4 CALL                             R0 2 0
        5 LOADN                            R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["Length"]
        9 JUMPIFNOTEQKN                    R1 K2 [0] ; [+12]
       11 LOADN                            R1 5
       12 JUMPIFNOTLT                      R0 R1 ; [+9]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["RenderStepped"]
       17 NAMECALL                         R1 R1 K4 ["Wait"]
       19 CALL                             R1 1 0
       20 ADDK                             R0 R0 K5 [0.016666666666666666]
       21 JUMPBACK                         ; [-16]
       22 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resetSampleCharacter"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["playbackSourceTime"]
        8 MOVE                             R4 R1
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 4
       13 SETTABLEKS                       R3 R4 K2 ["TimePosition"]
       15 GETUPVAL                         R4 5
       16 GETUPVAL                         R5 6
       17 LOADN                            R6 0
       18 LOADB                            R7 0
       19 LOADB                            R8 0
       20 CALL                             R4 4 0
       21 JUMPIFEQKNIL                     R2 ; [+7]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["applyKeyframePoseToCharacter"]
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R2
       28 CALL                             R4 2 0
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R5 7
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 FORGPREP                         R5
       35 GETUPVAL                         R10 8
       36 MOVE                             R11 R9
       37 CALL                             R11 0 -1
       38 CALL                             R10 -1 1
       39 SETTABLE                         R10 R4 R8
       40 FORGLOOP                         R5 2 ; [-6]
       42 GETUPVAL                         R6 1
       43 LOADK                            R9 K4 ["HumanoidRootPart"]
       44 NAMECALL                         R7 R6 K5 ["FindFirstChild"]
       46 CALL                             R7 2 1
       47 MOVE                             R9 R7
       48 JUMPIFNOT                        R9 ; [+4]
       49 LOADK                            R11 K6 ["BasePart"]
       50 NAMECALL                         R9 R7 K7 ["IsA"]
       52 CALL                             R9 2 1
       53 FASTCALL2K                       ASSERT R9 K8 ; [+4]
       55 LOADK                            R10 K8 ["missing BasePart HumanoidRootPart"]
       56 GETIMPORT                        R8 K10 [assert]
       58 CALL                             R8 2 0
       59 MOVE                             R5 R7
       60 DUPTABLE                         R6 K18 [{"humanoidRootPart", "left_hand", "right_hand", "left_foot", "right_foot", "spine", "chain"}]
       61 GETUPVAL                         R7 8
       62 GETTABLEKS                       R8 R5 K19 ["CFrame"]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K11 ["humanoidRootPart"]
       67 GETUPVAL                         R7 8
       68 GETUPVAL                         R8 9
       69 GETTABLEKS                       R8 R8 K12 ["left_hand"]
       71 CALL                             R8 0 -1
       72 CALL                             R7 -1 1
       73 SETTABLEKS                       R7 R6 K12 ["left_hand"]
       75 GETUPVAL                         R7 8
       76 GETUPVAL                         R8 9
       77 GETTABLEKS                       R8 R8 K13 ["right_hand"]
       79 CALL                             R8 0 -1
       80 CALL                             R7 -1 1
       81 SETTABLEKS                       R7 R6 K13 ["right_hand"]
       83 GETUPVAL                         R7 8
       84 GETUPVAL                         R8 9
       85 GETTABLEKS                       R8 R8 K14 ["left_foot"]
       87 CALL                             R8 0 -1
       88 CALL                             R7 -1 1
       89 SETTABLEKS                       R7 R6 K14 ["left_foot"]
       91 GETUPVAL                         R7 8
       92 GETUPVAL                         R8 9
       93 GETTABLEKS                       R8 R8 K15 ["right_foot"]
       95 CALL                             R8 0 -1
       96 CALL                             R7 -1 1
       97 SETTABLEKS                       R7 R6 K15 ["right_foot"]
       99 GETUPVAL                         R8 9
      100 GETTABLEKS                       R8 R8 K16 ["spine"]
      102 JUMPIFEQKNIL                     R8 ; [+8]
      104 GETUPVAL                         R7 8
      105 GETUPVAL                         R8 9
      106 GETTABLEKS                       R8 R8 K16 ["spine"]
      108 CALL                             R8 0 -1
      109 CALL                             R7 -1 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R7
      112 SETTABLEKS                       R7 R6 K16 ["spine"]
      114 SETTABLEKS                       R4 R6 K17 ["chain"]
      116 RETURN                           R6 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 0
        2 NAMECALL                         R1 R1 K0 ["Stop"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K1 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 NAMECALL                         R1 R1 K1 ["Destroy"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R3 R1 K0 ["rigType"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 JUMPIFEQKS                       R3 K1 ["R6"] ; [+3]
       13 JUMPIFNOTEQKS                    R3 K2 ["R15"] ; [+3]
       15 MOVE                             R2 R3
       16 JUMP                             ; [+4]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 MOVE                             R2 R4
       21 GETTABLEKS                       R4 R0 K4 ["Loop"]
       23 ORK                              R3 R4 K3 [False]
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKNIL                  R4 ; [+7]
       29 GETIMPORT                        R5 K6 [warn]
       31 LOADK                            R6 K7 ["[ClipSampling] openClipSampleSession: failed to spawn sample character"]
       32 CALL                             R5 1 0
       33 LOADNIL                          R5
       34 RETURN                           R5 1
       35 GETIMPORT                        R5 K9 [workspace]
       37 SETTABLEKS                       R5 R4 K10 ["Parent"]
       39 LOADK                            R7 K11 ["HumanoidRootPart"]
       40 NAMECALL                         R5 R4 K12 ["FindFirstChild"]
       42 CALL                             R5 2 1
       43 JUMPIFEQKNIL                     R5 ; [+6]
       45 LOADK                            R8 K13 ["BasePart"]
       46 NAMECALL                         R6 R5 K14 ["IsA"]
       48 CALL                             R6 2 1
       49 JUMPIF                           R6 ; [+9]
       50 NAMECALL                         R6 R4 K15 ["Destroy"]
       52 CALL                             R6 1 0
       53 GETIMPORT                        R6 K6 [warn]
       55 LOADK                            R7 K16 ["[ClipSampling] openClipSampleSession: spawned character has no HumanoidRootPart"]
       56 CALL                             R6 1 0
       57 LOADNIL                          R6
       58 RETURN                           R6 1
       59 GETUPVAL                         R6 3
       60 SETTABLEKS                       R6 R5 K17 ["CFrame"]
       62 LOADK                            R8 K18 ["Humanoid"]
       63 NAMECALL                         R6 R4 K19 ["FindFirstChildOfClass"]
       65 CALL                             R6 2 1
       66 LOADK                            R9 K20 ["AnimationController"]
       67 NAMECALL                         R7 R4 K19 ["FindFirstChildOfClass"]
       69 CALL                             R7 2 1
       70 OR                               R8 R6 R7
       71 JUMPIFNOTEQKNIL                  R8 ; [+10]
       73 NAMECALL                         R9 R4 K15 ["Destroy"]
       75 CALL                             R9 1 0
       76 GETIMPORT                        R9 K6 [warn]
       78 LOADK                            R10 K21 ["[ClipSampling] openClipSampleSession: spawned character has no Humanoid or AnimationController"]
       79 CALL                             R9 1 0
       80 LOADNIL                          R9
       81 RETURN                           R9 1
       82 LOADK                            R12 K22 ["Animator"]
       83 NAMECALL                         R10 R8 K19 ["FindFirstChildOfClass"]
       85 CALL                             R10 2 1
       86 JUMPIFEQKNIL                     R10 ; [+3]
       88 MOVE                             R9 R10
       89 JUMP                             ; [+7]
       90 GETIMPORT                        R11 K25 [Instance.new]
       92 LOADK                            R12 K22 ["Animator"]
       93 CALL                             R11 1 1
       94 SETTABLEKS                       R8 R11 K10 ["Parent"]
       96 MOVE                             R9 R11
       97 GETIMPORT                        R10 K27 [pcall]
       99 NEWCLOSURE                       R11 P0
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          VAL R0
      102 CALL                             R10 1 2
      103 JUMPIFNOT                        R10 ; [+4]
      104 JUMPIFEQKNIL                     R11 ; [+3]
      106 JUMPIFNOTEQKS                    R11 K28 [""] ; [+16]
      108 NAMECALL                         R12 R4 K15 ["Destroy"]
      110 CALL                             R12 1 0
      111 GETIMPORT                        R12 K6 [warn]
      113 LOADK                            R14 K29 ["[ClipSampling] openClipSampleSession: RegisterKeyframeSequence failed: "]
      114 FASTCALL1                        TOSTRING R11 ; [+3]
      115 MOVE                             R16 R11
      116 GETIMPORT                        R15 K31 [tostring]
      118 CALL                             R15 1 1
      119 CONCAT                           R13 R14 R15
      120 CALL                             R12 1 0
      121 LOADNIL                          R12
      122 RETURN                           R12 1
      123 GETIMPORT                        R12 K25 [Instance.new]
      125 LOADK                            R13 K32 ["Animation"]
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R11 R12 K33 ["AnimationId"]
      129 GETIMPORT                        R13 K27 [pcall]
      131 NEWCLOSURE                       R14 P1
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R12
      134 CALL                             R13 1 2
      135 JUMPIFNOT                        R13 ; [+2]
      136 JUMPIFNOTEQKNIL                  R14 ; [+19]
      138 NAMECALL                         R15 R12 K15 ["Destroy"]
      140 CALL                             R15 1 0
      141 NAMECALL                         R15 R4 K15 ["Destroy"]
      143 CALL                             R15 1 0
      144 GETIMPORT                        R15 K6 [warn]
      146 LOADK                            R17 K34 ["[ClipSampling] openClipSampleSession: LoadAnimation failed: "]
      147 FASTCALL1                        TOSTRING R14 ; [+3]
      148 MOVE                             R19 R14
      149 GETIMPORT                        R18 K31 [tostring]
      151 CALL                             R18 1 1
      152 CONCAT                           R16 R17 R18
      153 CALL                             R15 1 0
      154 LOADNIL                          R15
      155 RETURN                           R15 1
      156 LOADB                            R15 0
      157 SETTABLEKS                       R15 R14 K35 ["Looped"]
      159 GETIMPORT                        R15 K27 [pcall]
      161 NEWCLOSURE                       R16 P2
      162 CAPTURE                          VAL R14
      163 CAPTURE                          UPVAL U5
      164 CALL                             R15 1 2
      165 JUMPIF                           R15 ; [+25]
      166 LOADN                            R19 0
      167 NAMECALL                         R17 R14 K36 ["Stop"]
      169 CALL                             R17 2 0
      170 NAMECALL                         R17 R14 K15 ["Destroy"]
      172 CALL                             R17 1 0
      173 NAMECALL                         R17 R12 K15 ["Destroy"]
      175 CALL                             R17 1 0
      176 NAMECALL                         R17 R4 K15 ["Destroy"]
      178 CALL                             R17 1 0
      179 GETIMPORT                        R17 K6 [warn]
      181 LOADK                            R19 K37 ["[ClipSampling] openClipSampleSession: playback setup failed: "]
      182 FASTCALL1                        TOSTRING R16 ; [+3]
      183 MOVE                             R21 R16
      184 GETIMPORT                        R20 K31 [tostring]
      186 CALL                             R20 1 1
      187 CONCAT                           R18 R19 R20
      188 CALL                             R17 1 0
      189 LOADNIL                          R17
      190 RETURN                           R17 1
      191 GETTABLEKS                       R17 R14 K38 ["Length"]
      193 LOADN                            R18 0
      194 JUMPIFNOTLE                      R17 R18 ; [+20]
      196 LOADN                            R20 0
      197 NAMECALL                         R18 R14 K36 ["Stop"]
      199 CALL                             R18 2 0
      200 NAMECALL                         R18 R14 K15 ["Destroy"]
      202 CALL                             R18 1 0
      203 NAMECALL                         R18 R12 K15 ["Destroy"]
      205 CALL                             R18 1 0
      206 NAMECALL                         R18 R4 K15 ["Destroy"]
      208 CALL                             R18 1 0
      209 GETIMPORT                        R18 K6 [warn]
      211 LOADK                            R19 K39 ["[ClipSampling] openClipSampleSession: clip has zero duration"]
      212 CALL                             R18 1 0
      213 LOADNIL                          R18
      214 RETURN                           R18 1
      215 GETUPVAL                         R18 6
      216 MOVE                             R19 R4
      217 MOVE                             R20 R2
      218 CALL                             R18 2 2
      219 DUPTABLE                         R20 K46 [{"character", "animator", "track", "rigType", "duration", "sampleAt", "destroy"}]
      220 SETTABLEKS                       R4 R20 K40 ["character"]
      222 SETTABLEKS                       R9 R20 K41 ["animator"]
      224 SETTABLEKS                       R14 R20 K42 ["track"]
      226 SETTABLEKS                       R2 R20 K0 ["rigType"]
      228 SETTABLEKS                       R17 R20 K43 ["duration"]
      230 NEWCLOSURE                       R21 P3
      231 CAPTURE                          UPVAL U7
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R14
      236 CAPTURE                          UPVAL U8
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R19
      239 CAPTURE                          UPVAL U9
      240 CAPTURE                          VAL R18
      241 SETTABLEKS                       R21 R20 K44 ["sampleAt"]
      243 NEWCLOSURE                       R21 P4
      244 CAPTURE                          VAL R14
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R4
      247 SETTABLEKS                       R21 R20 K45 ["destroy"]
      249 RETURN                           R20 1

PROTO_33:
        0 LOADK                            R5 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 MOVE                             R5 R3
        5 JUMPIFNOT                        R5 ; [+4]
        6 LOADK                            R7 K2 ["BasePart"]
        7 NAMECALL                         R5 R3 K3 ["IsA"]
        9 CALL                             R5 2 1
       10 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       12 LOADK                            R6 K4 ["missing BasePart HumanoidRootPart"]
       13 GETIMPORT                        R4 K6 [assert]
       15 CALL                             R4 2 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 2
       21 NEWTABLE                         R5 0 0
       23 MOVE                             R6 R4
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETUPVAL                         R11 1
       28 MOVE                             R12 R10
       29 CALL                             R12 0 -1
       30 CALL                             R11 -1 1
       31 SETTABLE                         R11 R5 R9
       32 FORGLOOP                         R6 2 ; [-6]
       34 DUPTABLE                         R6 K14 [{"humanoidRootPart", "left_hand", "right_hand", "left_foot", "right_foot", "spine", "chain"}]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R8 R2 K15 ["CFrame"]
       38 CALL                             R7 1 1
       39 SETTABLEKS                       R7 R6 K7 ["humanoidRootPart"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R8 R3 K8 ["left_hand"]
       44 CALL                             R8 0 -1
       45 CALL                             R7 -1 1
       46 SETTABLEKS                       R7 R6 K8 ["left_hand"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R8 R3 K9 ["right_hand"]
       51 CALL                             R8 0 -1
       52 CALL                             R7 -1 1
       53 SETTABLEKS                       R7 R6 K9 ["right_hand"]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R8 R3 K10 ["left_foot"]
       58 CALL                             R8 0 -1
       59 CALL                             R7 -1 1
       60 SETTABLEKS                       R7 R6 K10 ["left_foot"]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R8 R3 K11 ["right_foot"]
       65 CALL                             R8 0 -1
       66 CALL                             R7 -1 1
       67 SETTABLEKS                       R7 R6 K11 ["right_foot"]
       69 GETTABLEKS                       R8 R3 K12 ["spine"]
       71 JUMPIFEQKNIL                     R8 ; [+7]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R8 R3 K12 ["spine"]
       76 CALL                             R8 0 -1
       77 CALL                             R7 -1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R7
       80 SETTABLEKS                       R7 R6 K12 ["spine"]
       82 SETTABLEKS                       R5 R6 K13 ["chain"]
       84 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["KeyframeSequenceProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AssistantUI"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Flags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K11 [require]
       32 GETTABLEKS                       R6 R3 K13 ["Util"]
       34 GETTABLEKS                       R6 R6 K14 ["AnimationGen"]
       36 GETTABLEKS                       R6 R6 K15 ["Posing"]
       38 GETTABLEKS                       R6 R6 K16 ["RigPoseNames"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R3 K13 ["Util"]
       45 GETTABLEKS                       R7 R7 K14 ["AnimationGen"]
       47 GETTABLEKS                       R7 R7 K17 ["detectRigType"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K11 [require]
       52 GETTABLEKS                       R8 R3 K13 ["Util"]
       54 GETTABLEKS                       R8 R8 K14 ["AnimationGen"]
       56 GETTABLEKS                       R8 R8 K18 ["stepAnimations"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K21 [CFrame.new]
       61 LOADN                            R9 0
       62 LOADN                            R10 -1
       63 LOADN                            R11 0
       64 CALL                             R8 3 1
       65 GETIMPORT                        R9 K21 [CFrame.new]
       67 LOADN                            R10 0
       68 LOADN                            R11 5
       69 LOADN                            R12 0
       70 CALL                             R9 3 1
       71 DUPTABLE                         R10 K52 [{["lower_torso"] = "LowerTorso", ["upper_torso"] = "UpperTorso", ["head"] = "Head", ["left_upper_arm"] = "LeftUpperArm", ["left_lower_arm"] = "LeftLowerArm", ["left_hand"] = "LeftHand", ["right_upper_arm"] = "RightUpperArm", ["right_lower_arm"] = "RightLowerArm", ["right_hand"] = "RightHand", ["left_upper_leg"] = "LeftUpperLeg", ["left_lower_leg"] = "LeftLowerLeg", ["left_foot"] = "LeftFoot", ["right_upper_leg"] = "RightUpperLeg", ["right_lower_leg"] = "RightLowerLeg", ["right_foot"] = "RightFoot"}]
       72 LOADNIL                          R11
       73 NEWTABLE                         R12 8 0
       75 DUPCLOSURE                       R13 K53 [PROTO_0]
       76 DUPCLOSURE                       R14 K54 [PROTO_1]
       77 DUPCLOSURE                       R15 K55 [PROTO_2]
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R16 K56 [PROTO_3]
       80 SETTABLEKS                       R16 R12 K57 ["playbackSourceTime"]
       82 NEWCLOSURE                       R16 P4
       83 CAPTURE                          REF R11
       84 CAPTURE                          VAL R1
       85 DUPCLOSURE                       R17 K58 [PROTO_7]
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R1
       88 DUPCLOSURE                       R18 K59 [PROTO_8]
       89 CAPTURE                          VAL R9
       90 SETTABLEKS                       R18 R12 K60 ["resetSampleCharacter"]
       92 DUPCLOSURE                       R18 K61 [PROTO_9]
       93 SETTABLEKS                       R18 R12 K62 ["applyKeyframePoseToCharacter"]
       95 DUPCLOSURE                       R18 K63 [PROTO_10]
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R18 R12 K17 ["detectRigType"]
       99 DUPCLOSURE                       R18 K64 [PROTO_11]
      100 DUPCLOSURE                       R19 K65 [PROTO_12]
      101 CAPTURE                          VAL R18
      102 DUPCLOSURE                       R20 K66 [PROTO_13]
      103 DUPCLOSURE                       R21 K67 [PROTO_16]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 DUPCLOSURE                       R22 K68 [PROTO_26]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R21
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R8
      111 DUPCLOSURE                       R23 K69 [PROTO_32]
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R22
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R19
      122 SETTABLEKS                       R23 R12 K70 ["openClipSampleSession"]
      124 DUPCLOSURE                       R23 K71 [PROTO_33]
      125 CAPTURE                          VAL R22
      126 CAPTURE                          VAL R19
      127 SETTABLEKS                       R23 R12 K72 ["sampleWorldFromCharacter"]
      129 CLOSEUPVALS                      R11
      130 RETURN                           R12 1
