PROTO_0:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["ClimbAnimation"]
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["FallAnimation"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["IdleAnimation"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["JumpAnimation"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K4 ["MoodAnimation"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K5 ["RunAnimation"]
       18 LOADN                            R1 0
       19 SETTABLEKS                       R1 R0 K6 ["SwimAnimation"]
       21 LOADN                            R1 0
       22 SETTABLEKS                       R1 R0 K7 ["WalkAnimation"]
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["HeadColor"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K1 ["LeftArmColor"]
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R1 R0 K2 ["LeftLegColor"]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K3 ["RightArmColor"]
       12 GETUPVAL                         R1 0
       13 SETTABLEKS                       R1 R0 K4 ["RightLegColor"]
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R1 R0 K5 ["TorsoColor"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["BodyTypeScale"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K5 ["ProportionScale"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K6 ["ClimbAnimation"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K7 ["FallAnimation"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K8 ["IdleAnimation"]
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K9 ["JumpAnimation"]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K10 ["MoodAnimation"]
       25 LOADN                            R1 0
       26 SETTABLEKS                       R1 R0 K11 ["RunAnimation"]
       28 LOADN                            R1 0
       29 SETTABLEKS                       R1 R0 K12 ["SwimAnimation"]
       31 LOADN                            R1 0
       32 SETTABLEKS                       R1 R0 K13 ["WalkAnimation"]
       34 GETUPVAL                         R1 0
       35 SETTABLEKS                       R1 R0 K14 ["HeadColor"]
       37 GETUPVAL                         R1 0
       38 SETTABLEKS                       R1 R0 K15 ["LeftArmColor"]
       40 GETUPVAL                         R1 0
       41 SETTABLEKS                       R1 R0 K16 ["LeftLegColor"]
       43 GETUPVAL                         R1 0
       44 SETTABLEKS                       R1 R0 K17 ["RightArmColor"]
       46 GETUPVAL                         R1 0
       47 SETTABLEKS                       R1 R0 K18 ["RightLegColor"]
       49 GETUPVAL                         R1 0
       50 SETTABLEKS                       R1 R0 K19 ["TorsoColor"]
       52 RETURN                           R0 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["Locked"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADK                            R4 K1 ["Humanoid"]
        5 NAMECALL                         R2 R0 K2 ["FindFirstChildOfClass"]
        7 CALL                             R2 2 1
        8 MOVE                             R3 R2
        9 JUMPIFNOT                        R3 ; [+4]
       10 LOADK                            R5 K3 ["HumanoidDescription"]
       11 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
       13 CALL                             R3 2 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 RETURN                           R0 0
       17 GETIMPORT                        R4 K6 [Instance.new]
       19 LOADK                            R5 K7 ["StringValue"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["MARKETPLACE_ITEMS_VALUE_NAME"]
       24 SETTABLEKS                       R5 R4 K9 ["Name"]
       26 SETTABLEKS                       R3 R4 K10 ["Parent"]
       28 MOVE                             R5 R1
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETIMPORT                        R10 K6 [Instance.new]
       34 LOADK                            R11 K7 ["StringValue"]
       35 CALL                             R10 1 1
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K11 ["encodeMarketplaceItem"]
       39 MOVE                             R12 R9
       40 CALL                             R11 1 1
       41 SETTABLEKS                       R11 R10 K12 ["Value"]
       43 SETTABLEKS                       R4 R10 K10 ["Parent"]
       45 FORGLOOP                         R5 2 ; [-14]
       47 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["HumanoidDescription"]
        3 CALL                             R2 1 1
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K4 ["BodyTypeScale"]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K5 ["ProportionScale"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K6 ["ClimbAnimation"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K7 ["FallAnimation"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K8 ["IdleAnimation"]
       19 LOADN                            R3 0
       20 SETTABLEKS                       R3 R2 K9 ["JumpAnimation"]
       22 LOADN                            R3 0
       23 SETTABLEKS                       R3 R2 K10 ["MoodAnimation"]
       25 LOADN                            R3 0
       26 SETTABLEKS                       R3 R2 K11 ["RunAnimation"]
       28 LOADN                            R3 0
       29 SETTABLEKS                       R3 R2 K12 ["SwimAnimation"]
       31 LOADN                            R3 0
       32 SETTABLEKS                       R3 R2 K13 ["WalkAnimation"]
       34 GETUPVAL                         R3 0
       35 SETTABLEKS                       R3 R2 K14 ["HeadColor"]
       37 GETUPVAL                         R3 0
       38 SETTABLEKS                       R3 R2 K15 ["LeftArmColor"]
       40 GETUPVAL                         R3 0
       41 SETTABLEKS                       R3 R2 K16 ["LeftLegColor"]
       43 GETUPVAL                         R3 0
       44 SETTABLEKS                       R3 R2 K17 ["RightArmColor"]
       46 GETUPVAL                         R3 0
       47 SETTABLEKS                       R3 R2 K18 ["RightLegColor"]
       49 GETUPVAL                         R3 0
       50 SETTABLEKS                       R3 R2 K19 ["TorsoColor"]
       52 GETUPVAL                         R3 1
       53 MOVE                             R5 R2
       54 GETIMPORT                        R6 K23 [Enum.HumanoidRigType.R15]
       56 NAMECALL                         R3 R3 K24 ["CreateHumanoidModelFromDescription"]
       58 CALL                             R3 3 1
       59 GETUPVAL                         R4 2
       60 MOVE                             R5 R3
       61 CALL                             R4 1 0
       62 LOADK                            R4 K25 ["Rig"]
       63 SETTABLEKS                       R4 R3 K26 ["Name"]
       65 LOADK                            R6 K27 ["Humanoid"]
       66 NAMECALL                         R4 R3 K28 ["FindFirstChildWhichIsA"]
       68 CALL                             R4 2 1
       69 LOADK                            R7 K29 ["HumanoidRootPart"]
       70 NAMECALL                         R5 R3 K30 ["FindFirstChild"]
       72 CALL                             R5 2 1
       73 FASTCALL2K                       ASSERT R4 K31 ; [+5]
       75 MOVE                             R7 R4
       76 LOADK                            R8 K31 ["Generated rig did not have Humanoid"]
       77 GETIMPORT                        R6 K33 [assert]
       79 CALL                             R6 2 0
       80 FASTCALL2K                       ASSERT R5 K34 ; [+5]
       82 MOVE                             R7 R5
       83 LOADK                            R8 K34 ["Generated rig did not have HumanoidRootPart"]
       84 GETIMPORT                        R6 K33 [assert]
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R7 R3 K35 ["PrimaryPart"]
       89 FASTCALL2K                       ASSERT R7 K36 ; [+4]
       91 LOADK                            R8 K36 ["Generated rig does not have PrimaryPart"]
       92 GETIMPORT                        R6 K33 [assert]
       94 CALL                             R6 2 0
       95 GETUPVAL                         R6 3
       96 GETTABLEKS                       R6 R6 K37 ["CurrentCamera"]
       98 FASTCALL2K                       ASSERT R6 K38 ; [+5]
      100 MOVE                             R8 R6
      101 LOADK                            R9 K38 ["Workspace.CurrentCamera was nil while inserting default body"]
      102 GETIMPORT                        R7 K33 [assert]
      104 CALL                             R7 2 0
      105 GETTABLEKS                       R7 R3 K35 ["PrimaryPart"]
      107 GETIMPORT                        R8 K40 [CFrame.new]
      109 LOADN                            R9 0
      110 GETTABLEKS                       R13 R3 K35 ["PrimaryPart"]
      112 GETTABLEKS                       R13 R13 K42 ["Size"]
      114 GETTABLEKS                       R13 R13 K43 ["Y"]
      116 MINUS                            R12 R13
      117 DIVK                             R11 R12 K41 [2]
      118 GETTABLEKS                       R12 R4 K44 ["HipHeight"]
      120 SUB                              R10 R11 R12
      121 LOADN                            R11 0
      122 CALL                             R8 3 1
      123 SETTABLEKS                       R8 R7 K45 ["PivotOffset"]
      125 GETIMPORT                        R9 K40 [CFrame.new]
      127 GETUPVAL                         R10 4
      128 GETTABLEKS                       R10 R10 K46 ["getViewTargetPosition"]
      130 MOVE                             R11 R6
      131 CALL                             R10 1 -1
      132 CALL                             R9 -1 -1
      133 NAMECALL                         R7 R3 K47 ["PivotTo"]
      135 CALL                             R7 -1 0
      136 GETUPVAL                         R7 5
      137 MOVE                             R8 R3
      138 MOVE                             R9 R1
      139 CALL                             R7 2 0
      140 GETUPVAL                         R7 6
      141 LOADK                            R9 K48 ["Insert Default Body"]
      142 LOADK                            R10 K49 ["Inserting Default Body"]
      143 NAMECALL                         R7 R7 K50 ["TryBeginRecording"]
      145 CALL                             R7 3 1
      146 GETUPVAL                         R8 3
      147 SETTABLEKS                       R8 R3 K51 ["Parent"]
      149 NEWTABLE                         R10 0 1
      151 MOVE                             R11 R3
      152 SETLIST                          R10 R11 1 [1]
      154 NAMECALL                         R8 R0 K52 ["Set"]
      156 CALL                             R8 2 0
      157 JUMPIFEQKNIL                     R7 ; [+8]
      159 GETUPVAL                         R8 6
      160 MOVE                             R10 R7
      161 GETIMPORT                        R11 K55 [Enum.FinishRecordingOperation.Commit]
      163 NAMECALL                         R8 R8 K56 ["FinishRecording"]
      165 CALL                             R8 3 0
      166 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Workspace"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AvatarCompatibilityPreviewer"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["CameraUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K11 [require]
       36 GETTABLEKS                       R6 R3 K12 ["Src"]
       38 GETTABLEKS                       R6 R6 K13 ["Util"]
       40 GETTABLEKS                       R6 R6 K15 ["MarketplaceCatalogUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R3 K12 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K19 [Color3.new]
       52 LOADK                            R8 K20 [0.5]
       53 LOADK                            R9 K20 [0.5]
       54 LOADK                            R10 K20 [0.5]
       55 CALL                             R7 3 1
       56 DUPCLOSURE                       R8 K21 [PROTO_0]
       57 DUPCLOSURE                       R9 K22 [PROTO_1]
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R10 K23 [PROTO_2]
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R11 K24 [PROTO_3]
       62 DUPCLOSURE                       R12 K25 [PROTO_4]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R13 K26 [PROTO_5]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R0
       72 RETURN                           R13 1
