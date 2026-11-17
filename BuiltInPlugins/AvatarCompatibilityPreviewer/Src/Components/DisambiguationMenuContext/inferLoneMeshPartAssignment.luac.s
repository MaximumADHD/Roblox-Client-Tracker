PROTO_0:
        0 GETIMPORT                        R3 K2 [table.find]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["LIMBS"]
        5 GETTABLEKS                       R5 R0 K4 ["Name"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K7 [string.lower]
       13 GETTABLEKS                       R4 R0 K4 ["Name"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K8 [string.find]
       18 MOVE                             R5 R3
       19 LOADK                            R6 K9 ["_att"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 LOADK                            R6 K10 ["Attachment"]
       25 NAMECALL                         R4 R0 K11 ["FindFirstChildWhichIsA"]
       27 CALL                             R4 2 1
       28 JUMPIFEQKNIL                     R4 ; [+7]
       30 GETIMPORT                        R5 K7 [string.lower]
       32 GETTABLEKS                       R6 R4 K4 ["Name"]
       34 CALL                             R5 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R5
       37 MOVE                             R6 R1
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETIMPORT                        R12 K14 [Enum.AssetType]
       43 GETTABLEKS                       R13 R10 K15 ["Id"]
       45 GETTABLE                         R11 R12 R13
       46 GETTABLE                         R12 R2 R11
       47 JUMPIFEQKNIL                     R12 ; [+40]
       49 GETIMPORT                        R13 K7 [string.lower]
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K16 ["removePostfix"]
       54 GETTABLEKS                       R15 R10 K15 ["Id"]
       56 LOADK                            R16 K17 ["Accessory"]
       57 CALL                             R14 2 -1
       58 CALL                             R13 -1 1
       59 GETIMPORT                        R14 K8 [string.find]
       61 MOVE                             R15 R3
       62 MOVE                             R16 R13
       63 CALL                             R14 2 1
       64 JUMPIF                           R14 ; [+7]
       65 JUMPIFNOT                        R5 ; [+22]
       66 GETIMPORT                        R14 K8 [string.find]
       68 MOVE                             R15 R5
       69 MOVE                             R16 R13
       70 CALL                             R14 2 1
       71 JUMPIFNOT                        R14 ; [+16]
       72 MOVE                             R14 R12
       73 LOADNIL                          R15
       74 LOADNIL                          R16
       75 FORGPREP                         R14
       76 DUPTABLE                         R19 K21 [{"assetType", "meshPart", "attachmentName"}]
       77 SETTABLEKS                       R11 R19 K18 ["assetType"]
       79 SETTABLEKS                       R0 R19 K19 ["meshPart"]
       81 GETTABLEKS                       R20 R18 K20 ["attachmentName"]
       83 SETTABLEKS                       R20 R19 K20 ["attachmentName"]
       85 RETURN                           R19 1
       86 FORGLOOP                         R14 2 ; [-11]
       88 FORGLOOP                         R6 2 ; [-48]
       90 GETUPVAL                         R6 2
       91 LOADNIL                          R7
       92 LOADNIL                          R8
       93 FORGPREP                         R6
       94 GETIMPORT                        R11 K23 [Enum.AssetType.Gear]
       96 GETUPVAL                         R13 3
       97 GETTABLE                         R12 R13 R9
       98 GETIMPORT                        R13 K7 [string.lower]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R14 R14 K16 ["removePostfix"]
      103 GETTABLEKS                       R15 R10 K15 ["Id"]
      105 LOADK                            R16 K17 ["Accessory"]
      106 CALL                             R14 2 -1
      107 CALL                             R13 -1 1
      108 GETIMPORT                        R14 K8 [string.find]
      110 MOVE                             R15 R3
      111 MOVE                             R16 R13
      112 CALL                             R14 2 1
      113 JUMPIF                           R14 ; [+7]
      114 JUMPIFNOT                        R5 ; [+22]
      115 GETIMPORT                        R14 K8 [string.find]
      117 MOVE                             R15 R5
      118 MOVE                             R16 R13
      119 CALL                             R14 2 1
      120 JUMPIFNOT                        R14 ; [+16]
      121 MOVE                             R14 R12
      122 LOADNIL                          R15
      123 LOADNIL                          R16
      124 FORGPREP                         R14
      125 DUPTABLE                         R19 K21 [{"assetType", "meshPart", "attachmentName"}]
      126 SETTABLEKS                       R11 R19 K18 ["assetType"]
      128 SETTABLEKS                       R0 R19 K19 ["meshPart"]
      130 GETTABLEKS                       R20 R18 K20 ["attachmentName"]
      132 SETTABLEKS                       R20 R19 K20 ["attachmentName"]
      134 RETURN                           R19 1
      135 FORGLOOP                         R14 2 ; [-11]
      137 FORGLOOP                         R6 2 ; [-44]
      139 LOADNIL                          R6
      140 RETURN                           R6 1

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
       43 NEWTABLE                         R5 0 2
       45 DUPTABLE                         R6 K17 [{["Id"] = "LeftGripAccessory", ["Label"] = "LeftGripAccessory"}]
       46 DUPTABLE                         R7 K19 [{["Id"] = "RightGripAccessory", ["Label"] = "RightGripAccessory"}]
       47 SETLIST                          R5 R6 2 [1]
       49 NEWTABLE                         R6 0 2
       51 NEWTABLE                         R7 0 1
       53 DUPTABLE                         R8 K24 [{["attachmentName"] = "LeftGripAttachment", ["label"] = "Left"}]
       54 SETLIST                          R7 R8 1 [1]
       56 NEWTABLE                         R8 0 1
       58 DUPTABLE                         R9 K27 [{["attachmentName"] = "RightGripAttachment", ["label"] = "Right"}]
       59 SETLIST                          R8 R9 1 [1]
       61 SETLIST                          R6 R7 2 [1]
       63 DUPCLOSURE                       R7 K28 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 RETURN                           R7 1
