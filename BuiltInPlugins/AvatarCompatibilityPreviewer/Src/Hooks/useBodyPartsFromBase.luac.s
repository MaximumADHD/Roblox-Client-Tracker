PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       11 LOADK                            R2 K0 ["Luau"]
       12 GETIMPORT                        R0 K2 [assert]
       14 CALL                             R0 2 0
       15 NEWTABLE                         R0 0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["equippedItems"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETTABLEKS                       R6 R5 K4 ["isHidden"]
       25 JUMPIF                           R6 ; [+6]
       26 GETTABLEKS                       R6 R5 K5 ["palette"]
       28 GETTABLEKS                       R6 R6 K6 ["Key"]
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R0 R6
       32 FORGLOOP                         R1 2 ; [-10]
       34 GETUPVAL                         R1 2
       35 LOADNIL                          R2
       36 LOADNIL                          R3
       37 FORGPREP                         R1
       38 GETTABLE                         R6 R0 R4
       39 JUMPIF                           R6 ; [+54]
       40 MOVE                             R6 R5
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 FORGPREP                         R6
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K7 ["isLimbOriginal"]
       47 GETUPVAL                         R12 0
       48 MOVE                             R14 R10
       49 NAMECALL                         R12 R12 K8 ["FindFirstChild"]
       51 CALL                             R12 2 -1
       52 CALL                             R11 -1 1
       53 JUMPIF                           R11 ; [+38]
       54 GETUPVAL                         R11 4
       55 MOVE                             R13 R10
       56 NAMECALL                         R11 R11 K8 ["FindFirstChild"]
       58 CALL                             R11 2 1
       59 JUMPIFEQKNIL                     R11 ; [+32]
       61 LOADK                            R14 K9 ["BasePart"]
       62 NAMECALL                         R12 R11 K10 ["IsA"]
       64 CALL                             R12 2 1
       65 JUMPIFNOT                        R12 ; [+26]
       66 LOADK                            R15 K9 ["BasePart"]
       67 NAMECALL                         R13 R11 K10 ["IsA"]
       69 CALL                             R13 2 1
       70 FASTCALL2K                       ASSERT R13 K0 ; [+4]
       72 LOADK                            R14 K0 ["Luau"]
       73 GETIMPORT                        R12 K2 [assert]
       75 CALL                             R12 2 0
       76 NAMECALL                         R12 R11 K11 ["Clone"]
       78 CALL                             R12 1 1
       79 GETUPVAL                         R13 5
       80 MOVE                             R14 R12
       81 CALL                             R13 1 0
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K12 ["Humanoid"]
       85 GETIMPORT                        R16 K15 [Enum.BodyPartR15]
       87 GETTABLE                         R15 R16 R10
       88 MOVE                             R16 R12
       89 NAMECALL                         R13 R13 K16 ["ReplaceBodyPartR15"]
       91 CALL                             R13 3 0
       92 FORGLOOP                         R6 2 ; [-49]
       94 FORGLOOP                         R1 2 ; [-57]
       96 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useContext"]
        8 GETUPVAL                         R4 2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R6 0 3
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 GETTABLEKS                       R9 R2 K2 ["equippedItems"]
       26 SETLIST                          R6 R7 3 [1]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["EquipmentStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["OriginalLimbContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["filterDescendants"]
       47 CALL                             R5 1 1
       48 DUPTABLE                         R6 K20 [{"HeadBodyPart", "Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
       49 NEWTABLE                         R7 0 1
       51 LOADK                            R8 K21 ["Head"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K14 ["HeadBodyPart"]
       56 NEWTABLE                         R7 0 2
       58 LOADK                            R8 K22 ["UpperTorso"]
       59 LOADK                            R9 K23 ["LowerTorso"]
       60 SETLIST                          R7 R8 2 [1]
       62 SETTABLEKS                       R7 R6 K15 ["Torso"]
       64 NEWTABLE                         R7 0 3
       66 LOADK                            R8 K24 ["LeftUpperArm"]
       67 LOADK                            R9 K25 ["LeftLowerArm"]
       68 LOADK                            R10 K26 ["LeftHand"]
       69 SETLIST                          R7 R8 3 [1]
       71 SETTABLEKS                       R7 R6 K16 ["LeftArm"]
       73 NEWTABLE                         R7 0 3
       75 LOADK                            R8 K27 ["RightUpperArm"]
       76 LOADK                            R9 K28 ["RightLowerArm"]
       77 LOADK                            R10 K29 ["RightHand"]
       78 SETLIST                          R7 R8 3 [1]
       80 SETTABLEKS                       R7 R6 K17 ["RightArm"]
       82 NEWTABLE                         R7 0 3
       84 LOADK                            R8 K30 ["LeftUpperLeg"]
       85 LOADK                            R9 K31 ["LeftLowerLeg"]
       86 LOADK                            R10 K32 ["LeftFoot"]
       87 SETLIST                          R7 R8 3 [1]
       89 SETTABLEKS                       R7 R6 K18 ["LeftLeg"]
       91 NEWTABLE                         R7 0 3
       93 LOADK                            R8 K33 ["RightUpperLeg"]
       94 LOADK                            R9 K34 ["RightLowerLeg"]
       95 LOADK                            R10 K35 ["RightFoot"]
       96 SETLIST                          R7 R8 3 [1]
       98 SETTABLEKS                       R7 R6 K19 ["RightLeg"]
      100 DUPCLOSURE                       R7 K36 [PROTO_1]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 RETURN                           R7 1
