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
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R1 R4 K3 ["equippedItems"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R6 2
       24 CALL                             R6 0 1
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R6 R5 K4 ["isHidden"]
       28 JUMPIF                           R6 ; [+6]
       29 GETTABLEKS                       R7 R5 K5 ["palette"]
       31 GETTABLEKS                       R6 R7 K6 ["Key"]
       33 LOADB                            R7 1
       34 SETTABLE                         R7 R0 R6
       35 FORGLOOP                         R1 2 ; [-13]
       37 GETUPVAL                         R1 3
       38 LOADNIL                          R2
       39 LOADNIL                          R3
       40 FORGPREP                         R1
       41 GETTABLE                         R6 R0 R4
       42 JUMPIF                           R6 ; [+54]
       43 MOVE                             R6 R5
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R11 R12 K7 ["isLimbOriginal"]
       50 GETUPVAL                         R12 0
       51 MOVE                             R14 R10
       52 NAMECALL                         R12 R12 K8 ["FindFirstChild"]
       54 CALL                             R12 2 -1
       55 CALL                             R11 -1 1
       56 JUMPIF                           R11 ; [+38]
       57 GETUPVAL                         R11 5
       58 MOVE                             R13 R10
       59 NAMECALL                         R11 R11 K8 ["FindFirstChild"]
       61 CALL                             R11 2 1
       62 JUMPIFEQKNIL                     R11 ; [+32]
       64 LOADK                            R14 K9 ["BasePart"]
       65 NAMECALL                         R12 R11 K10 ["IsA"]
       67 CALL                             R12 2 1
       68 JUMPIFNOT                        R12 ; [+26]
       69 LOADK                            R15 K9 ["BasePart"]
       70 NAMECALL                         R13 R11 K10 ["IsA"]
       72 CALL                             R13 2 1
       73 FASTCALL2K                       ASSERT R13 K0 ; [+4]
       75 LOADK                            R14 K0 ["Luau"]
       76 GETIMPORT                        R12 K2 [assert]
       78 CALL                             R12 2 0
       79 NAMECALL                         R12 R11 K11 ["Clone"]
       81 CALL                             R12 1 1
       82 GETUPVAL                         R13 6
       83 MOVE                             R14 R12
       84 CALL                             R13 1 0
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R13 R14 K12 ["Humanoid"]
       88 GETIMPORT                        R16 K15 [Enum.BodyPartR15]
       90 GETTABLE                         R15 R16 R10
       91 MOVE                             R16 R12
       92 NAMECALL                         R13 R13 K16 ["ReplaceBodyPartR15"]
       94 CALL                             R13 3 0
       95 FORGLOOP                         R6 2 ; [-49]
       97 FORGLOOP                         R1 2 ; [-57]
       99 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useContext"]
        8 GETUPVAL                         R4 2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U5
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R0
       24 MOVE                             R8 R1
       25 GETTABLEKS                       R9 R2 K2 ["equippedItems"]
       27 SETLIST                          R6 R7 3 [1]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["EquipmentStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["OriginalLimbContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K10 ["Util"]
       45 GETTABLEKS                       R6 R7 K13 ["filterDescendants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Flags"]
       54 GETTABLEKS                       R7 R8 K15 ["getFFlagAvatarPreviewerMakeupDescription"]
       56 CALL                             R6 1 1
       57 DUPTABLE                         R7 K22 [{"HeadBodyPart", "Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
       58 NEWTABLE                         R8 0 1
       60 LOADK                            R9 K23 ["Head"]
       61 SETLIST                          R8 R9 1 [1]
       63 SETTABLEKS                       R8 R7 K16 ["HeadBodyPart"]
       65 NEWTABLE                         R8 0 2
       67 LOADK                            R9 K24 ["UpperTorso"]
       68 LOADK                            R10 K25 ["LowerTorso"]
       69 SETLIST                          R8 R9 2 [1]
       71 SETTABLEKS                       R8 R7 K17 ["Torso"]
       73 NEWTABLE                         R8 0 3
       75 LOADK                            R9 K26 ["LeftUpperArm"]
       76 LOADK                            R10 K27 ["LeftLowerArm"]
       77 LOADK                            R11 K28 ["LeftHand"]
       78 SETLIST                          R8 R9 3 [1]
       80 SETTABLEKS                       R8 R7 K18 ["LeftArm"]
       82 NEWTABLE                         R8 0 3
       84 LOADK                            R9 K29 ["RightUpperArm"]
       85 LOADK                            R10 K30 ["RightLowerArm"]
       86 LOADK                            R11 K31 ["RightHand"]
       87 SETLIST                          R8 R9 3 [1]
       89 SETTABLEKS                       R8 R7 K19 ["RightArm"]
       91 NEWTABLE                         R8 0 3
       93 LOADK                            R9 K32 ["LeftUpperLeg"]
       94 LOADK                            R10 K33 ["LeftLowerLeg"]
       95 LOADK                            R11 K34 ["LeftFoot"]
       96 SETLIST                          R8 R9 3 [1]
       98 SETTABLEKS                       R8 R7 K20 ["LeftLeg"]
      100 NEWTABLE                         R8 0 3
      102 LOADK                            R9 K35 ["RightUpperLeg"]
      103 LOADK                            R10 K36 ["RightLowerLeg"]
      104 LOADK                            R11 K37 ["RightFoot"]
      105 SETLIST                          R8 R9 3 [1]
      107 SETTABLEKS                       R8 R7 K21 ["RightLeg"]
      109 DUPCLOSURE                       R8 K38 [PROTO_1]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R5
      116 RETURN                           R8 1
