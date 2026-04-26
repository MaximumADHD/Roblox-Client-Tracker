PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["BasePart"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+4]
        9 GETTABLEKS                       R7 R0 K3 ["markLimbAsOriginal"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 0
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["Animate"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R5 K0 ["Animate"]
        7 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+3]
       11 NAMECALL                         R4 R3 K2 ["Remove"]
       13 CALL                             R4 1 0
       14 NAMECALL                         R4 R2 K3 ["Clone"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R0 R4 K4 ["Parent"]
       19 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 LOADK                            R5 K0 ["Humanoid"]
        8 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 LOADB                            R4 0
       15 GETUPVAL                         R5 0
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R12 R9
       20 NAMECALL                         R10 R2 K2 ["FindFirstChild"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+26]
       24 LOADK                            R13 K3 ["NumberValue"]
       25 NAMECALL                         R11 R10 K4 ["IsA"]
       27 CALL                             R11 2 1
       28 JUMPIFNOT                        R11 ; [+21]
       29 MOVE                             R13 R9
       30 NAMECALL                         R11 R3 K2 ["FindFirstChild"]
       32 CALL                             R11 2 1
       33 JUMPIFNOT                        R11 ; [+16]
       34 LOADK                            R14 K3 ["NumberValue"]
       35 NAMECALL                         R12 R11 K4 ["IsA"]
       37 CALL                             R12 2 1
       38 JUMPIFNOT                        R12 ; [+11]
       39 GETTABLEKS                       R12 R11 K5 ["Value"]
       41 GETTABLEKS                       R13 R10 K5 ["Value"]
       43 JUMPIFEQ                         R12 R13 ; [+6]
       45 GETTABLEKS                       R12 R10 K5 ["Value"]
       47 SETTABLEKS                       R12 R11 K5 ["Value"]
       49 LOADB                            R4 1
       50 FORGLOOP                         R5 2 ; [-32]
       52 JUMPIFNOT                        R4 ; [+3]
       53 NAMECALL                         R5 R3 K6 ["BuildRigFromAttachments"]
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+55]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K3 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K1 [game]
       13 LOADK                            R2 K4 ["AsyncRenamesUsedInLuaApps"]
       14 NAMECALL                         R0 R0 K5 ["GetEngineFeature"]
       16 CALL                             R0 2 1
       17 JUMPIFNOT                        R0 ; [+8]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K6 ["Humanoid"]
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R0 R0 K7 ["ApplyDescriptionAsync"]
       24 CALL                             R0 2 0
       25 JUMP                             ; [+7]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R0 R1 K6 ["Humanoid"]
       29 GETUPVAL                         R2 2
       30 NAMECALL                         R0 R0 K8 ["ApplyDescription"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 0
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R1 R2 K9 ["WorldModel"]
       37 LOADK                            R4 K10 ["Animate"]
       38 NAMECALL                         R2 R1 K11 ["FindFirstChild"]
       40 CALL                             R2 2 1
       41 JUMPIF                           R2 ; [+1]
       42 JUMP                             ; [+13]
       43 LOADK                            R5 K10 ["Animate"]
       44 NAMECALL                         R3 R0 K11 ["FindFirstChild"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+3]
       48 NAMECALL                         R4 R3 K12 ["Remove"]
       50 CALL                             R4 1 0
       51 NAMECALL                         R4 R2 K13 ["Clone"]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R0 R4 K14 ["Parent"]
       56 GETUPVAL                         R0 4
       57 GETUPVAL                         R1 0
       58 GETUPVAL                         R3 3
       59 GETTABLEKS                       R2 R3 K9 ["WorldModel"]
       61 CALL                             R0 2 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WorldModel"]
        3 NAMECALL                         R0 R0 K1 ["Clone"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+75]
       13 GETUPVAL                         R1 4
       14 MOVE                             R2 R0
       15 GETUPVAL                         R4 5
       16 GETTABLEKS                       R3 R4 K2 ["ALL_ALLOWED_PART_NAMES"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R2 6
       20 GETTABLEKS                       R1 R2 K3 ["AvatarJointUpgrade"]
       22 GETIMPORT                        R2 K7 [Enum.RolloutState.Enabled]
       24 JUMPIFEQ                         R1 R2 ; [+63]
       26 LOADK                            R3 K8 ["HumanoidRigDescription"]
       27 NAMECALL                         R1 R0 K9 ["FindFirstChildOfClass"]
       29 CALL                             R1 2 1
       30 MOVE                             R2 R1
       31 JUMPIFNOT                        R2 ; [+11]
       32 GETIMPORT                        R4 K12 [Enum.RigLabel.HeadBase]
       34 NAMECALL                         R2 R1 K13 ["GetJoint"]
       36 CALL                             R2 2 1
       37 JUMPIF                           R2 ; [+5]
       38 GETIMPORT                        R4 K15 [Enum.RigLabel.Spine]
       40 NAMECALL                         R2 R1 K13 ["GetJoint"]
       42 CALL                             R2 2 1
       43 JUMPIF                           R2 ; [+44]
       44 GETTABLEKS                       R3 R0 K16 ["Head"]
       46 LOADK                            R5 K11 ["HeadBase"]
       47 NAMECALL                         R3 R3 K17 ["FindFirstChild"]
       49 CALL                             R3 2 1
       50 GETTABLEKS                       R4 R0 K18 ["UpperTorso"]
       52 LOADK                            R6 K14 ["Spine"]
       53 NAMECALL                         R4 R4 K17 ["FindFirstChild"]
       55 CALL                             R4 2 1
       56 JUMPIF                           R3 ; [+1]
       57 JUMPIFNOT                        R4 ; [+30]
       58 MOVE                             R5 R1
       59 JUMPIF                           R5 ; [+4]
       60 GETIMPORT                        R5 K21 [Instance.new]
       62 LOADK                            R6 K8 ["HumanoidRigDescription"]
       63 CALL                             R5 1 1
       64 SETTABLEKS                       R0 R5 K22 ["Parent"]
       66 JUMPIFNOT                        R3 ; [+6]
       67 GETIMPORT                        R8 K12 [Enum.RigLabel.HeadBase]
       69 MOVE                             R9 R3
       70 NAMECALL                         R6 R5 K23 ["SetJoint"]
       72 CALL                             R6 3 0
       73 JUMPIFNOT                        R4 ; [+6]
       74 GETIMPORT                        R8 K15 [Enum.RigLabel.Spine]
       76 MOVE                             R9 R4
       77 NAMECALL                         R6 R5 K23 ["SetJoint"]
       79 CALL                             R6 3 0
       80 GETTABLEKS                       R6 R0 K24 ["Humanoid"]
       82 NAMECALL                         R6 R6 K25 ["BuildRigFromAttachments"]
       84 CALL                             R6 1 0
       85 NAMECALL                         R6 R5 K26 ["Destroy"]
       87 CALL                             R6 1 0
       88 GETUPVAL                         R1 4
       89 MOVE                             R2 R0
       90 GETUPVAL                         R4 5
       91 GETTABLEKS                       R3 R4 K2 ["ALL_ALLOWED_PART_NAMES"]
       93 CALL                             R1 2 0
       94 GETUPVAL                         R2 0
       95 GETTABLEKS                       R1 R2 K0 ["WorldModel"]
       97 LOADK                            R4 K27 ["Animate"]
       98 NAMECALL                         R2 R1 K17 ["FindFirstChild"]
      100 CALL                             R2 2 1
      101 JUMPIF                           R2 ; [+1]
      102 JUMP                             ; [+13]
      103 LOADK                            R5 K27 ["Animate"]
      104 NAMECALL                         R3 R0 K17 ["FindFirstChild"]
      106 CALL                             R3 2 1
      107 JUMPIFNOT                        R3 ; [+3]
      108 NAMECALL                         R4 R3 K28 ["Remove"]
      110 CALL                             R4 1 0
      111 NAMECALL                         R4 R2 K1 ["Clone"]
      113 CALL                             R4 1 1
      114 SETTABLEKS                       R0 R4 K22 ["Parent"]
      116 GETUPVAL                         R1 7
      117 DUPTABLE                         R2 K32 [{"dummy", "initialProportionScale", "initialWorldModelScale"}]
      118 SETTABLEKS                       R0 R2 K29 ["dummy"]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R3 R4 K33 ["ProportionalScale"]
      123 SETTABLEKS                       R3 R2 K30 ["initialProportionScale"]
      125 GETUPVAL                         R4 0
      126 GETTABLEKS                       R3 R4 K34 ["WorldModelScale"]
      128 SETTABLEKS                       R3 R2 K31 ["initialWorldModelScale"]
      130 CALL                             R1 1 0
      131 LOADNIL                          R1
      132 GETTABLEKS                       R2 R0 K35 ["AncestryChanged"]
      134 NEWCLOSURE                       R4 P0
      135 CAPTURE                          VAL R0
      136 CAPTURE                          REF R1
      137 CAPTURE                          UPVAL U8
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          UPVAL U9
      140 NAMECALL                         R2 R2 K36 ["Connect"]
      142 CALL                             R2 2 1
      143 MOVE                             R1 R2
      144 NEWCLOSURE                       R2 P1
      145 CAPTURE                          REF R1
      146 CLOSEUPVALS                      R1
      147 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AsyncRenamesUsedInLuaApps"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+10]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K4 ["dummy"]
       10 GETTABLEKS                       R0 R1 K5 ["Humanoid"]
       12 GETUPVAL                         R2 1
       13 NAMECALL                         R0 R0 K6 ["ApplyDescriptionAsync"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K4 ["dummy"]
       20 GETTABLEKS                       R0 R1 K5 ["Humanoid"]
       22 GETUPVAL                         R2 1
       23 NAMECALL                         R0 R0 K7 ["ApplyDescription"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+15]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["dummy"]
       10 GETIMPORT                        R4 K4 [game]
       12 NAMECALL                         R2 R2 K5 ["IsDescendantOf"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K7 [error]
       19 LOADK                            R3 K8 ["Failed to apply description to dummy"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K2 ["dummy"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K9 ["WorldModel"]
       28 LOADK                            R6 K10 ["Animate"]
       29 NAMECALL                         R4 R3 K11 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 JUMPIF                           R4 ; [+1]
       33 JUMP                             ; [+13]
       34 LOADK                            R7 K10 ["Animate"]
       35 NAMECALL                         R5 R2 K11 ["FindFirstChild"]
       37 CALL                             R5 2 1
       38 JUMPIFNOT                        R5 ; [+3]
       39 NAMECALL                         R6 R5 K12 ["Remove"]
       41 CALL                             R6 1 0
       42 NAMECALL                         R6 R4 K13 ["Clone"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R2 R6 K14 ["Parent"]
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K2 ["dummy"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K9 ["WorldModel"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dummy"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["dummy"]
        8 GETIMPORT                        R2 K2 [game]
       10 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       12 CALL                             R0 2 1
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETIMPORT                        R0 K6 [task.spawn]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CALL                             R0 1 1
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dummy"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["initialProportionScale"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["initialWorldModelScale"]
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 JUMPIFEQKNIL                     R1 ; [+3]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K3 ["ProportionalScale"]
       19 DIV                              R4 R5 R1
       20 MUL                              R3 R2 R4
       21 NAMECALL                         R6 R0 K4 ["GetScale"]
       23 CALL                             R6 1 1
       24 SUB                              R5 R6 R3
       25 FASTCALL1                        MATH_ABS R5 ; [+2]
       26 GETIMPORT                        R4 K7 [math.abs]
       28 CALL                             R4 1 1
       29 LOADK                            R5 K8 [0.001]
       30 JUMPIFNOTLE                      R5 R4 ; [+10]
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R0 K9 ["ScaleTo"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R0 K10 ["Humanoid"]
       38 NAMECALL                         R4 R4 K11 ["BuildRigFromAttachments"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R0 K3 ["LatestWorldModelHash"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U7
       37 NEWTABLE                         R7 0 2
       39 GETTABLEKS                       R8 R0 K4 ["WorldModel"]
       41 GETTABLEKS                       R9 R0 K3 ["LatestWorldModelHash"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 0
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       49 NEWCLOSURE                       R6 P2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U7
       54 NEWTABLE                         R7 0 3
       56 GETTABLEKS                       R8 R3 K5 ["dummy"]
       58 MOVE                             R9 R1
       59 GETTABLEKS                       R10 R0 K4 ["WorldModel"]
       61 SETLIST                          R7 R8 3 [1]
       63 CALL                             R5 2 0
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       67 NEWCLOSURE                       R6 P3
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R7 0 4
       72 GETTABLEKS                       R8 R3 K5 ["dummy"]
       74 GETTABLEKS                       R9 R3 K6 ["initialProportionScale"]
       76 GETTABLEKS                       R10 R3 K7 ["initialWorldModelScale"]
       78 GETTABLEKS                       R11 R0 K8 ["ProportionalScale"]
       80 SETLIST                          R7 R8 4 [1]
       82 CALL                             R5 2 0
       83 GETTABLEKS                       R5 R3 K5 ["dummy"]
       85 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["OriginalLimbContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["filterDescendants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Flags"]
       38 GETTABLEKS                       R5 R6 K13 ["getFFlagAvatarPreviewerDetachedDummyFix"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K9 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["Constants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R8 K15 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K17 [game]
       59 LOADK                            R9 K18 ["StarterPlayer"]
       60 NAMECALL                         R7 R7 K19 ["GetService"]
       62 CALL                             R7 2 1
       63 DUPCLOSURE                       R8 K20 [PROTO_0]
       64 DUPCLOSURE                       R9 K21 [PROTO_1]
       65 NEWTABLE                         R10 0 6
       67 LOADK                            R11 K22 ["BodyDepthScale"]
       68 LOADK                            R12 K23 ["BodyWidthScale"]
       69 LOADK                            R13 K24 ["BodyHeightScale"]
       70 LOADK                            R14 K25 ["HeadScale"]
       71 LOADK                            R15 K26 ["BodyTypeScale"]
       72 LOADK                            R16 K27 ["BodyProportionScale"]
       73 SETLIST                          R10 R11 6 [1]
       75 DUPCLOSURE                       R11 K28 [PROTO_2]
       76 CAPTURE                          VAL R10
       77 DUPCLOSURE                       R12 K29 [PROTO_12]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R11
       86 RETURN                           R12 1
