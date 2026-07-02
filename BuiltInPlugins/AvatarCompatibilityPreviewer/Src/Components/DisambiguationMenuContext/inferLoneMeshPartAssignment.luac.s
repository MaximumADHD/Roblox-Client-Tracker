PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETIMPORT                        R3 K2 [table.find]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["LIMBS"]
        8 GETTABLEKS                       R5 R0 K4 ["Name"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETIMPORT                        R3 K7 [string.lower]
       16 GETTABLEKS                       R4 R0 K4 ["Name"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K8 [string.find]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K9 ["_att"]
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADNIL                          R4
       26 RETURN                           R4 1
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 GETUPVAL                         R6 0
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+15]
       32 LOADK                            R8 K10 ["Attachment"]
       33 NAMECALL                         R6 R0 K11 ["FindFirstChildWhichIsA"]
       35 CALL                             R6 2 1
       36 MOVE                             R4 R6
       37 JUMPIFEQKNIL                     R4 ; [+8]
       39 GETIMPORT                        R6 K7 [string.lower]
       41 GETTABLEKS                       R7 R4 K4 ["Name"]
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 MOVE                             R6 R1
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 GETIMPORT                        R12 K14 [Enum.AssetType]
       53 GETTABLEKS                       R13 R10 K15 ["Id"]
       55 GETTABLE                         R11 R12 R13
       56 GETTABLE                         R12 R2 R11
       57 JUMPIFEQKNIL                     R12 ; [+43]
       59 GETIMPORT                        R13 K7 [string.lower]
       61 GETUPVAL                         R14 2
       62 GETTABLEKS                       R14 R14 K16 ["removePostfix"]
       64 GETTABLEKS                       R15 R10 K15 ["Id"]
       66 LOADK                            R16 K17 ["Accessory"]
       67 CALL                             R14 2 -1
       68 CALL                             R13 -1 1
       69 GETIMPORT                        R14 K8 [string.find]
       71 MOVE                             R15 R3
       72 MOVE                             R16 R13
       73 CALL                             R14 2 1
       74 JUMPIF                           R14 ; [+10]
       75 GETUPVAL                         R14 0
       76 CALL                             R14 0 1
       77 JUMPIFNOT                        R14 ; [+23]
       78 JUMPIFNOT                        R5 ; [+22]
       79 GETIMPORT                        R14 K8 [string.find]
       81 MOVE                             R15 R5
       82 MOVE                             R16 R13
       83 CALL                             R14 2 1
       84 JUMPIFNOT                        R14 ; [+16]
       85 MOVE                             R14 R12
       86 LOADNIL                          R15
       87 LOADNIL                          R16
       88 FORGPREP                         R14
       89 DUPTABLE                         R19 K21 [{"assetType", "meshPart", "attachmentName"}]
       90 SETTABLEKS                       R11 R19 K18 ["assetType"]
       92 SETTABLEKS                       R0 R19 K19 ["meshPart"]
       94 GETTABLEKS                       R20 R18 K20 ["attachmentName"]
       96 SETTABLEKS                       R20 R19 K20 ["attachmentName"]
       98 RETURN                           R19 1
       99 FORGLOOP                         R14 2 ; [-11]
      101 FORGLOOP                         R6 2 ; [-51]
      103 GETUPVAL                         R6 0
      104 CALL                             R6 0 1
      105 JUMPIFNOT                        R6 ; [+49]
      106 GETUPVAL                         R6 3
      107 LOADNIL                          R7
      108 LOADNIL                          R8
      109 FORGPREP                         R6
      110 GETIMPORT                        R11 K23 [Enum.AssetType.Gear]
      112 GETUPVAL                         R13 4
      113 GETTABLE                         R12 R13 R9
      114 GETIMPORT                        R13 K7 [string.lower]
      116 GETUPVAL                         R14 2
      117 GETTABLEKS                       R14 R14 K16 ["removePostfix"]
      119 GETTABLEKS                       R15 R10 K15 ["Id"]
      121 LOADK                            R16 K17 ["Accessory"]
      122 CALL                             R14 2 -1
      123 CALL                             R13 -1 1
      124 GETIMPORT                        R14 K8 [string.find]
      126 MOVE                             R15 R3
      127 MOVE                             R16 R13
      128 CALL                             R14 2 1
      129 JUMPIF                           R14 ; [+7]
      130 JUMPIFNOT                        R5 ; [+22]
      131 GETIMPORT                        R14 K8 [string.find]
      133 MOVE                             R15 R5
      134 MOVE                             R16 R13
      135 CALL                             R14 2 1
      136 JUMPIFNOT                        R14 ; [+16]
      137 MOVE                             R14 R12
      138 LOADNIL                          R15
      139 LOADNIL                          R16
      140 FORGPREP                         R14
      141 DUPTABLE                         R19 K21 [{"assetType", "meshPart", "attachmentName"}]
      142 SETTABLEKS                       R11 R19 K18 ["assetType"]
      144 SETTABLEKS                       R0 R19 K19 ["meshPart"]
      146 GETTABLEKS                       R20 R18 K20 ["attachmentName"]
      148 SETTABLEKS                       R20 R19 K20 ["attachmentName"]
      150 RETURN                           R19 1
      151 FORGLOOP                         R14 2 ; [-11]
      153 FORGLOOP                         R6 2 ; [-44]
      155 LOADNIL                          R6
      156 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["DisambiguationMenu"]
       31 GETTABLEKS                       R4 R4 K12 ["getChoosableAssetTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["StringUtil"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Flags"]
       49 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarPreviewerProcessRigidOnly"]
       51 CALL                             R5 1 1
       52 NEWTABLE                         R6 0 2
       54 DUPTABLE                         R7 K19 [{["Id"] = "LeftGripAccessory", ["Label"] = "LeftGripAccessory"}]
       55 DUPTABLE                         R8 K21 [{["Id"] = "RightGripAccessory", ["Label"] = "RightGripAccessory"}]
       56 SETLIST                          R6 R7 2 [1]
       58 NEWTABLE                         R7 0 2
       60 NEWTABLE                         R8 0 1
       62 DUPTABLE                         R9 K26 [{["attachmentName"] = "LeftGripAttachment", ["label"] = "Left"}]
       63 SETLIST                          R8 R9 1 [1]
       65 NEWTABLE                         R9 0 1
       67 DUPTABLE                         R10 K29 [{["attachmentName"] = "RightGripAttachment", ["label"] = "Right"}]
       68 SETLIST                          R9 R10 1 [1]
       70 SETLIST                          R7 R8 2 [1]
       72 DUPCLOSURE                       R8 K30 [PROTO_0]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 RETURN                           R8 1
