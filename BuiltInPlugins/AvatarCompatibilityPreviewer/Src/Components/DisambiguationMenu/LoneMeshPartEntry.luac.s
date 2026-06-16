PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DisambiguationMenu"]
        2 MOVE                             R4 R0
        3 DUPTABLE                         R5 K2 [{"name"}]
        4 GETUPVAL                         R6 0
        5 LOADK                            R8 K3 ["AssetType"]
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R9 R9 K4 ["assetType"]
        9 GETTABLEKS                       R9 R9 K5 ["Name"]
       11 NAMECALL                         R6 R6 K6 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K1 ["name"]
       16 NAMECALL                         R1 R1 K6 ["getText"]
       18 CALL                             R1 4 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R3 R0 K0 ["assetType"]
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 JUMPIFNOT                        R1 ; [+13]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["util"]
       13 GETTABLEKS                       R4 R4 K2 ["isLayeredClothingAllowed"]
       15 GETTABLEKS                       R5 R0 K0 ["assetType"]
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+4]
       19 MOVE                             R4 R3
       20 LOADK                            R5 K3 ["LoneMeshPartBadMarketplaceLayeredClothing"]
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1
       23 JUMPIF                           R1 ; [+13]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K1 ["util"]
       27 GETTABLEKS                       R4 R4 K4 ["isRigidAccessoryAllowed"]
       29 GETTABLEKS                       R5 R0 K0 ["assetType"]
       31 CALL                             R4 1 1
       32 JUMPIF                           R4 ; [+4]
       33 MOVE                             R4 R3
       34 LOADK                            R5 K5 ["LoneMeshPartBadMarketplaceRigidAccessories"]
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1
       37 LOADNIL                          R4
       38 RETURN                           R4 1

PROTO_2:
        0 LOADB                            R3 0
        1 JUMPIFEQKNIL                     R0 ; [+21]
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R0 K0 ["assetType"]
        6 JUMPIFEQKNIL                     R4 ; [+16]
        8 LOADB                            R3 0
        9 GETTABLEKS                       R5 R0 K0 ["assetType"]
       11 GETTABLE                         R4 R1 R5
       12 JUMPIFEQKNIL                     R4 ; [+10]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R6 R0 K0 ["assetType"]
       17 GETTABLE                         R5 R1 R6
       18 LENGTH                           R4 R5
       19 LOADN                            R5 1
       20 JUMPIFNOTLT                      R5 R4 ; [+2]
       22 NOT                              R3 R2
       23 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MeshPart"]
        3 LOADK                            R3 K1 ["WrapLayer"]
        4 NAMECALL                         R1 R1 K2 ["FindFirstChildWhichIsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K3 ["AssetType"]
        7 GETTABLEKS                       R5 R0 K1 ["Label"]
        9 NAMECALL                         R2 R2 K4 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["Label"]
       14 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 GETTABLEKS                       R2 R0 K3 ["Id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K4 ["Label"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["map"]
        5 MOVE                             R3 R0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 1
        9 GETIMPORT                        R3 K3 [table.sort]
       11 MOVE                             R4 R2
       12 DUPCLOSURE                       R5 K4 [PROTO_5]
       13 CALL                             R3 2 0
       14 LOADN                            R5 1
       15 DUPTABLE                         R6 K7 [{"Id", "Label"}]
       16 LOADK                            R7 K8 ["Ignore"]
       17 SETTABLEKS                       R7 R6 K5 ["Id"]
       19 GETUPVAL                         R7 2
       20 LOADK                            R9 K9 ["DisambiguationMenu"]
       21 LOADK                            R10 K8 ["Ignore"]
       22 NAMECALL                         R7 R7 K10 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K6 ["Label"]
       27 FASTCALL3                        TABLE_INSERT R2 R5 R6
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K12 [table.insert]
       32 CALL                             R3 3 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K0 ["map"]
       36 MOVE                             R4 R2
       37 DUPCLOSURE                       R5 K13 [PROTO_6]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R5 3
       40 JUMPIFNOTEQKNIL                  R5 ; [+3]
       42 LOADNIL                          R4
       43 JUMP                             ; [+12]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K14 ["assetType"]
       47 JUMPIFNOTEQKNIL                  R5 ; [+3]
       49 LOADK                            R4 K8 ["Ignore"]
       50 JUMP                             ; [+5]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K14 ["assetType"]
       54 GETTABLEKS                       R4 R4 K15 ["Name"]
       56 GETUPVAL                         R6 3
       57 GETUPVAL                         R7 4
       58 LOADB                            R5 0
       59 JUMPIFEQKNIL                     R6 ; [+21]
       61 LOADB                            R5 0
       62 GETTABLEKS                       R8 R6 K14 ["assetType"]
       64 JUMPIFEQKNIL                     R8 ; [+16]
       66 LOADB                            R5 0
       67 GETTABLEKS                       R9 R6 K14 ["assetType"]
       69 GETTABLE                         R8 R1 R9
       70 JUMPIFEQKNIL                     R8 ; [+10]
       72 LOADB                            R5 0
       73 GETTABLEKS                       R10 R6 K14 ["assetType"]
       75 GETTABLE                         R9 R1 R10
       76 LENGTH                           R8 R9
       77 LOADN                            R9 1
       78 JUMPIFNOTLT                      R9 R8 ; [+2]
       80 NOT                              R5 R7
       81 GETUPVAL                         R6 5
       82 GETUPVAL                         R7 3
       83 GETUPVAL                         R8 4
       84 GETUPVAL                         R9 2
       85 CALL                             R6 3 1
       86 MOVE                             R7 R3
       87 MOVE                             R8 R1
       88 MOVE                             R9 R4
       89 MOVE                             R10 R5
       90 MOVE                             R11 R6
       91 RETURN                           R7 5

PROTO_8:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Ignore"] ; [+3]
        7 LOADNIL                          R2
        8 JUMP                             ; [+3]
        9 GETIMPORT                        R3 K5 [Enum.AssetType]
       11 GETTABLE                         R2 R3 R1
       12 JUMPIFNOTEQKS                    R1 K2 ["Ignore"] ; [+3]
       14 LOADK                            R3 K2 ["Ignore"]
       15 JUMP                             ; [+8]
       16 GETUPVAL                         R5 0
       17 GETIMPORT                        R7 K5 [Enum.AssetType]
       19 GETTABLE                         R6 R7 R1
       20 GETTABLE                         R4 R5 R6
       21 GETTABLEN                        R3 R4 1
       22 GETTABLEKS                       R3 R3 K6 ["attachmentName"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["SetAssignment"]
       27 DUPTABLE                         R5 K10 [{"meshPart", "assetType", "attachmentName"}]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K11 ["MeshPart"]
       31 SETTABLEKS                       R6 R5 K8 ["meshPart"]
       33 SETTABLEKS                       R2 R5 K9 ["assetType"]
       35 SETTABLEKS                       R3 R5 K6 ["attachmentName"]
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 GETTABLEKS                       R2 R0 K3 ["attachmentName"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K4 ["AccessoryAttachment"]
        7 GETTABLEKS                       R5 R0 K5 ["label"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K4 [tostring]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K5 ["attachmentName"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K6 ["SetAssignment"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K1 [{"AssetTypeDropdown"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K6 [{"tag", "Size", "LayoutOrder"}]
        6 LOADK                            R4 K7 ["col gap-small auto-y"]
        7 SETTABLEKS                       R4 R3 K3 ["tag"]
        9 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       11 LOADN                            R5 130
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K4 ["Size"]
       16 GETUPVAL                         R5 2
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+2]
       19 LOADN                            R4 2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       24 DUPTABLE                         R4 K12 [{"Dropdown"}]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K2 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K23 [{"testId", "label", "placeholder", "value", "items", "maxHeight", "onItemChanged", "isDisabled", "width", "size"}]
       30 LOADK                            R8 K24 ["lone-mesh-part-asset-type"]
       31 SETTABLEKS                       R8 R7 K13 ["testId"]
       33 LOADK                            R8 K25 [""]
       34 SETTABLEKS                       R8 R7 K14 ["label"]
       36 GETUPVAL                         R8 4
       37 LOADK                            R10 K26 ["DisambiguationMenu"]
       38 LOADK                            R11 K27 ["AssetTypeDropdownPlaceholder"]
       39 NAMECALL                         R8 R8 K28 ["getText"]
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K15 ["placeholder"]
       44 GETUPVAL                         R8 5
       45 SETTABLEKS                       R8 R7 K16 ["value"]
       47 GETUPVAL                         R8 6
       48 SETTABLEKS                       R8 R7 K17 ["items"]
       50 LOADN                            R8 200
       51 SETTABLEKS                       R8 R7 K18 ["maxHeight"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 SETTABLEKS                       R8 R7 K19 ["onItemChanged"]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K20 ["isDisabled"]
       61 GETIMPORT                        R8 K31 [UDim.new]
       63 LOADN                            R9 0
       64 LOADN                            R10 130
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K21 ["width"]
       68 GETUPVAL                         R8 9
       69 GETTABLEKS                       R8 R8 K32 ["Small"]
       71 SETTABLEKS                       R8 R7 K22 ["size"]
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K11 ["Dropdown"]
       76 CALL                             R1 3 1
       77 SETTABLEKS                       R1 R0 K0 ["AssetTypeDropdown"]
       79 GETUPVAL                         R1 10
       80 JUMPIFNOT                        R1 ; [+96]
       81 GETUPVAL                         R1 11
       82 JUMPIFNOT                        R1 ; [+94]
       83 GETUPVAL                         R1 11
       84 GETTABLEKS                       R1 R1 K33 ["assetType"]
       86 JUMPIFNOT                        R1 ; [+90]
       87 GETUPVAL                         R1 11
       88 GETTABLEKS                       R1 R1 K33 ["assetType"]
       90 GETUPVAL                         R2 12
       91 GETTABLEKS                       R2 R2 K34 ["map"]
       93 GETUPVAL                         R4 7
       94 GETTABLE                         R3 R4 R1
       95 NEWCLOSURE                       R4 P1
       96 CAPTURE                          UPVAL U4
       97 CALL                             R2 2 1
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R3 R3 K2 ["createElement"]
      101 GETUPVAL                         R4 1
      102 DUPTABLE                         R5 K6 [{"tag", "Size", "LayoutOrder"}]
      103 LOADK                            R6 K7 ["col gap-small auto-y"]
      104 SETTABLEKS                       R6 R5 K3 ["tag"]
      106 GETIMPORT                        R6 K10 [UDim2.fromOffset]
      108 LOADN                            R7 130
      109 LOADN                            R8 0
      110 CALL                             R6 2 1
      111 SETTABLEKS                       R6 R5 K4 ["Size"]
      113 GETUPVAL                         R7 2
      114 CALL                             R7 0 1
      115 JUMPIFNOT                        R7 ; [+2]
      116 LOADN                            R6 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R6
      119 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
      121 DUPTABLE                         R6 K12 [{"Dropdown"}]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K2 ["createElement"]
      125 GETUPVAL                         R8 3
      126 DUPTABLE                         R9 K23 [{"testId", "label", "placeholder", "value", "items", "maxHeight", "onItemChanged", "isDisabled", "width", "size"}]
      127 LOADK                            R10 K35 ["lone-mesh-part-attachment"]
      128 SETTABLEKS                       R10 R9 K13 ["testId"]
      130 LOADK                            R10 K25 [""]
      131 SETTABLEKS                       R10 R9 K14 ["label"]
      133 GETUPVAL                         R10 4
      134 LOADK                            R12 K26 ["DisambiguationMenu"]
      135 LOADK                            R13 K36 ["Category"]
      136 NAMECALL                         R10 R10 K28 ["getText"]
      138 CALL                             R10 3 1
      139 SETTABLEKS                       R10 R9 K15 ["placeholder"]
      141 GETUPVAL                         R10 11
      142 GETTABLEKS                       R10 R10 K37 ["attachmentName"]
      144 SETTABLEKS                       R10 R9 K16 ["value"]
      146 SETTABLEKS                       R2 R9 K17 ["items"]
      148 LOADN                            R10 200
      149 SETTABLEKS                       R10 R9 K18 ["maxHeight"]
      151 NEWCLOSURE                       R10 P2
      152 CAPTURE                          UPVAL U11
      153 CAPTURE                          UPVAL U8
      154 SETTABLEKS                       R10 R9 K19 ["onItemChanged"]
      156 LOADB                            R10 0
      157 SETTABLEKS                       R10 R9 K20 ["isDisabled"]
      159 GETIMPORT                        R10 K31 [UDim.new]
      161 LOADN                            R11 0
      162 LOADN                            R12 130
      163 CALL                             R10 2 1
      164 SETTABLEKS                       R10 R9 K21 ["width"]
      166 GETUPVAL                         R10 9
      167 GETTABLEKS                       R10 R10 K32 ["Small"]
      169 SETTABLEKS                       R10 R9 K22 ["size"]
      171 CALL                             R7 2 1
      172 SETTABLEKS                       R7 R6 K11 ["Dropdown"]
      174 CALL                             R3 3 1
      175 SETTABLEKS                       R3 R0 K38 ["AttachmentDropdown"]
      177 GETUPVAL                         R1 0
      178 GETTABLEKS                       R1 R1 K2 ["createElement"]
      180 GETUPVAL                         R2 1
      181 DUPTABLE                         R3 K39 [{"tag"}]
      182 LOADK                            R4 K40 ["row gap-small align-y-center auto-y"]
      183 SETTABLEKS                       R4 R3 K3 ["tag"]
      185 MOVE                             R4 R0
      186 CALL                             R1 3 -1
      187 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 1
        7 LOADK                            R9 K0 ["AssetType"]
        8 GETTABLEKS                       R10 R6 K1 ["Label"]
       10 NAMECALL                         R7 R7 K2 ["getText"]
       12 CALL                             R7 3 1
       13 SETTABLEKS                       R7 R6 K1 ["Label"]
       15 FORGLOOP                         R2 2 ; [-10]
       17 GETIMPORT                        R2 K5 [table.sort]
       19 MOVE                             R3 R0
       20 DUPCLOSURE                       R4 K6 [PROTO_12]
       21 CALL                             R2 2 0
       22 LOADN                            R4 1
       23 DUPTABLE                         R5 K8 [{"Id", "Label"}]
       24 LOADK                            R6 K9 ["Ignore"]
       25 SETTABLEKS                       R6 R5 K7 ["Id"]
       27 GETUPVAL                         R6 1
       28 LOADK                            R8 K10 ["DisambiguationMenu"]
       29 LOADK                            R9 K9 ["Ignore"]
       30 NAMECALL                         R6 R6 K2 ["getText"]
       32 CALL                             R6 3 1
       33 SETTABLEKS                       R6 R5 K1 ["Label"]
       35 FASTCALL3                        TABLE_INSERT R0 R4 R5
       37 MOVE                             R3 R0
       38 GETIMPORT                        R2 K12 [table.insert]
       40 CALL                             R2 3 0
       41 RETURN                           R0 2

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 GETTABLEKS                       R2 R0 K3 ["attachmentName"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K4 ["AccessoryAttachment"]
        7 GETTABLEKS                       R5 R0 K5 ["label"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["Label"]
       14 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Assignment"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K4 ["Id"]
        8 SETTABLEKS                       R2 R1 K5 ["attachmentName"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["SetAssignment"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetAssignment"]
        3 DUPTABLE                         R2 K4 [{"meshPart", "assetType", "attachmentName"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["MeshPart"]
        7 SETTABLEKS                       R3 R2 K1 ["meshPart"]
        9 GETTABLEKS                       R4 R0 K6 ["Id"]
       11 JUMPIFNOTEQKS                    R4 K7 ["Ignore"] ; [+3]
       13 LOADNIL                          R3
       14 JUMP                             ; [+5]
       15 GETIMPORT                        R4 K10 [Enum.AssetType]
       17 GETTABLEKS                       R5 R0 K6 ["Id"]
       19 GETTABLE                         R3 R4 R5
       20 SETTABLEKS                       R3 R2 K2 ["assetType"]
       22 GETTABLEKS                       R4 R0 K6 ["Id"]
       24 JUMPIFNOTEQKS                    R4 K7 ["Ignore"] ; [+3]
       26 LOADK                            R3 K7 ["Ignore"]
       27 JUMP                             ; [+10]
       28 GETUPVAL                         R5 1
       29 GETIMPORT                        R7 K10 [Enum.AssetType]
       31 GETTABLEKS                       R8 R0 K6 ["Id"]
       33 GETTABLE                         R6 R7 R8
       34 GETTABLE                         R4 R5 R6
       35 GETTABLEN                        R3 R4 1
       36 GETTABLEKS                       R3 R3 K3 ["attachmentName"]
       38 SETTABLEKS                       R3 R2 K3 ["attachmentName"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+98]
       12 GETTABLEKS                       R3 R0 K2 ["Assignment"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R6 0 1
       21 GETTABLEKS                       R7 R0 K4 ["MeshPart"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U6
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R10 R3
       39 MOVE                             R11 R4
       40 SETLIST                          R7 R10 2 [1]
       42 CALL                             R5 2 5
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R10 R10 K3 ["useMemo"]
       46 NEWCLOSURE                       R11 P2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U5
       60 NEWTABLE                         R12 0 7
       62 MOVE                             R13 R7
       63 MOVE                             R14 R5
       64 MOVE                             R15 R6
       65 GETTABLEKS                       R16 R0 K5 ["SetAssignment"]
       67 GETTABLEKS                       R17 R0 K4 ["MeshPart"]
       69 MOVE                             R18 R8
       70 MOVE                             R19 R3
       71 SETLIST                          R12 R13 7 [1]
       73 CALL                             R10 2 1
       74 GETUPVAL                         R11 3
       75 GETTABLEKS                       R11 R11 K6 ["createElement"]
       77 GETUPVAL                         R12 11
       78 DUPTABLE                         R13 K13 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder", "hasSecondaryDropdown"}]
       79 GETTABLEKS                       R14 R0 K4 ["MeshPart"]
       81 SETTABLEKS                       R14 R13 K7 ["Instance"]
       83 GETTABLEKS                       R14 R0 K4 ["MeshPart"]
       85 GETTABLEKS                       R14 R14 K8 ["Name"]
       87 SETTABLEKS                       R14 R13 K8 ["Name"]
       89 LOADK                            R16 K1 ["DisambiguationMenu"]
       90 JUMPIFNOT                        R4 ; [+2]
       91 LOADK                            R17 K14 ["LayeredClothing"]
       92 JUMP                             ; [+1]
       93 LOADK                            R17 K15 ["RigidAccessory"]
       94 NAMECALL                         R14 R1 K16 ["getText"]
       96 CALL                             R14 3 1
       97 SETTABLEKS                       R14 R13 K9 ["Subtitle"]
       99 SETTABLEKS                       R9 R13 K10 ["WarningText"]
      101 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
      103 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      105 SETTABLEKS                       R8 R13 K12 ["hasSecondaryDropdown"]
      107 MOVE                             R14 R10
      108 CALL                             R11 3 -1
      109 RETURN                           R11 -1
      110 GETUPVAL                         R3 12
      111 GETTABLEKS                       R3 R3 K17 ["new"]
      113 CALL                             R3 0 1
      114 GETTABLEKS                       R5 R0 K4 ["MeshPart"]
      116 LOADK                            R7 K18 ["WrapLayer"]
      117 NAMECALL                         R5 R5 K19 ["FindFirstChildWhichIsA"]
      119 CALL                             R5 2 1
      120 JUMPIFNOTEQKNIL                  R5 ; [+2]
      122 LOADB                            R4 0 +1
      123 LOADB                            R4 1
      124 GETUPVAL                         R5 3
      125 GETTABLEKS                       R5 R5 K3 ["useMemo"]
      127 NEWCLOSURE                       R6 P3
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          VAL R1
      130 NEWTABLE                         R7 0 0
      132 CALL                             R5 2 2
      133 GETUPVAL                         R7 6
      134 GETTABLEKS                       R8 R0 K2 ["Assignment"]
      136 MOVE                             R9 R4
      137 MOVE                             R10 R1
      138 CALL                             R7 3 1
      139 GETUPVAL                         R8 3
      140 GETTABLEKS                       R8 R8 K6 ["createElement"]
      142 GETUPVAL                         R9 11
      143 DUPTABLE                         R10 K20 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder"}]
      144 GETTABLEKS                       R11 R0 K4 ["MeshPart"]
      146 SETTABLEKS                       R11 R10 K7 ["Instance"]
      148 GETTABLEKS                       R11 R0 K4 ["MeshPart"]
      150 GETTABLEKS                       R11 R11 K8 ["Name"]
      152 SETTABLEKS                       R11 R10 K8 ["Name"]
      154 JUMPIFNOT                        R4 ; [+6]
      155 LOADK                            R13 K1 ["DisambiguationMenu"]
      156 LOADK                            R14 K14 ["LayeredClothing"]
      157 NAMECALL                         R11 R1 K16 ["getText"]
      159 CALL                             R11 3 1
      160 JUMP                             ; [+5]
      161 LOADK                            R13 K1 ["DisambiguationMenu"]
      162 LOADK                            R14 K15 ["RigidAccessory"]
      163 NAMECALL                         R11 R1 K16 ["getText"]
      165 CALL                             R11 3 1
      166 SETTABLEKS                       R11 R10 K9 ["Subtitle"]
      168 SETTABLEKS                       R7 R10 K10 ["WarningText"]
      170 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
      172 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      174 GETUPVAL                         R11 3
      175 GETTABLEKS                       R11 R11 K6 ["createElement"]
      177 GETUPVAL                         R12 13
      178 DUPTABLE                         R13 K24 [{"AutomaticSize", "Layout", "Spacing"}]
      179 GETIMPORT                        R14 K27 [Enum.AutomaticSize.XY]
      181 SETTABLEKS                       R14 R13 K21 ["AutomaticSize"]
      183 GETIMPORT                        R14 K30 [Enum.FillDirection.Horizontal]
      185 SETTABLEKS                       R14 R13 K22 ["Layout"]
      187 GETTABLEKS                       R14 R2 K31 ["HorizontalSpacing"]
      189 SETTABLEKS                       R14 R13 K23 ["Spacing"]
      191 DUPTABLE                         R14 K34 [{"AttachmentDropdown", "AssetTypeDropdown"}]
      192 GETTABLEKS                       R15 R0 K2 ["Assignment"]
      194 JUMPIFNOT                        R15 ; [+57]
      195 LOADB                            R15 0
      196 GETTABLEKS                       R16 R0 K2 ["Assignment"]
      198 GETTABLEKS                       R16 R16 K35 ["assetType"]
      200 JUMPIFEQKNIL                     R16 ; [+51]
      202 LOADB                            R15 0
      203 GETTABLEKS                       R18 R0 K2 ["Assignment"]
      205 GETTABLEKS                       R18 R18 K35 ["assetType"]
      207 GETTABLE                         R17 R6 R18
      208 LENGTH                           R16 R17
      209 LOADN                            R17 1
      210 JUMPIFNOTLT                      R17 R16 ; [+41]
      212 NOT                              R15 R4
      213 JUMPIFNOT                        R15 ; [+38]
      214 GETUPVAL                         R15 3
      215 GETTABLEKS                       R15 R15 K6 ["createElement"]
      217 GETUPVAL                         R16 14
      218 DUPTABLE                         R17 K40 [{"LayoutOrder", "Width", "SelectedId", "Items", "OnItemActivated"}]
      219 NAMECALL                         R18 R3 K41 ["getNextOrder"]
      221 CALL                             R18 1 1
      222 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      224 GETTABLEKS                       R18 R2 K42 ["AttachmentDropdownWidth"]
      226 SETTABLEKS                       R18 R17 K36 ["Width"]
      228 GETTABLEKS                       R18 R0 K2 ["Assignment"]
      230 GETTABLEKS                       R18 R18 K43 ["attachmentName"]
      232 SETTABLEKS                       R18 R17 K37 ["SelectedId"]
      234 GETUPVAL                         R18 5
      235 GETTABLEKS                       R18 R18 K44 ["map"]
      237 GETTABLEKS                       R20 R0 K2 ["Assignment"]
      239 GETTABLEKS                       R20 R20 K35 ["assetType"]
      241 GETTABLE                         R19 R6 R20
      242 NEWCLOSURE                       R20 P4
      243 CAPTURE                          VAL R1
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K38 ["Items"]
      247 NEWCLOSURE                       R18 P5
      248 CAPTURE                          VAL R0
      249 SETTABLEKS                       R18 R17 K39 ["OnItemActivated"]
      251 CALL                             R15 2 1
      252 SETTABLEKS                       R15 R14 K32 ["AttachmentDropdown"]
      254 GETUPVAL                         R15 3
      255 GETTABLEKS                       R15 R15 K6 ["createElement"]
      257 GETUPVAL                         R16 14
      258 DUPTABLE                         R17 K46 [{"LayoutOrder", "PlaceholderText", "Width", "SelectedId", "Items", "OnItemActivated"}]
      259 NAMECALL                         R18 R3 K41 ["getNextOrder"]
      261 CALL                             R18 1 1
      262 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      264 LOADK                            R20 K1 ["DisambiguationMenu"]
      265 LOADK                            R21 K47 ["AssetTypeDropdownPlaceholder"]
      266 NAMECALL                         R18 R1 K16 ["getText"]
      268 CALL                             R18 3 1
      269 SETTABLEKS                       R18 R17 K45 ["PlaceholderText"]
      271 GETTABLEKS                       R18 R2 K48 ["DropdownWidth"]
      273 SETTABLEKS                       R18 R17 K36 ["Width"]
      275 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      277 JUMPIFEQKNIL                     R19 ; [+9]
      279 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      281 GETTABLEKS                       R19 R19 K35 ["assetType"]
      283 JUMPIFNOTEQKNIL                  R19 ; [+3]
      285 LOADK                            R18 K49 ["Ignore"]
      286 JUMP                             ; [+18]
      287 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      289 JUMPIFEQKNIL                     R19 ; [+14]
      291 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      293 GETTABLEKS                       R19 R19 K35 ["assetType"]
      295 JUMPIFEQKNIL                     R19 ; [+8]
      297 GETTABLEKS                       R18 R0 K2 ["Assignment"]
      299 GETTABLEKS                       R18 R18 K35 ["assetType"]
      301 GETTABLEKS                       R18 R18 K8 ["Name"]
      303 JUMP                             ; [+1]
      304 LOADNIL                          R18
      305 SETTABLEKS                       R18 R17 K37 ["SelectedId"]
      307 SETTABLEKS                       R5 R17 K38 ["Items"]
      309 NEWCLOSURE                       R18 P6
      310 CAPTURE                          VAL R0
      311 CAPTURE                          VAL R6
      312 SETTABLEKS                       R18 R17 K39 ["OnItemActivated"]
      314 CALL                             R15 2 1
      315 SETTABLEKS                       R15 R14 K33 ["AssetTypeDropdown"]
      317 CALL                             R11 3 -1
      318 CALL                             R8 -1 -1
      319 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["DisambiguationMenu"]
       22 GETTABLEKS                       R3 R3 K11 ["DisambiguationMenuEntry"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Resources"]
       45 GETTABLEKS                       R6 R6 K15 ["Theme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Packages"]
       59 GETTABLEKS                       R8 R8 K17 ["UGCValidation"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Src"]
       66 GETTABLEKS                       R9 R9 K9 ["Components"]
       68 GETTABLEKS                       R9 R9 K10 ["DisambiguationMenu"]
       70 GETTABLEKS                       R9 R9 K18 ["getChoosableAssetTypes"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K8 ["Src"]
       77 GETTABLEKS                       R10 R10 K19 ["Flags"]
       79 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K8 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Flags"]
       88 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R11 R3 K22 ["UI"]
       93 GETTABLEKS                       R12 R11 K23 ["Pane"]
       95 GETTABLEKS                       R13 R11 K24 ["SelectInput"]
       97 GETTABLEKS                       R14 R3 K25 ["Util"]
       99 GETTABLEKS                       R14 R14 K26 ["LayoutOrderIterator"]
      101 GETTABLEKS                       R15 R3 K27 ["ContextServices"]
      103 GETTABLEKS                       R15 R15 K28 ["Localization"]
      105 GETTABLEKS                       R16 R3 K27 ["ContextServices"]
      107 GETTABLEKS                       R16 R16 K29 ["Stylizer"]
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R18 R0 K6 ["Packages"]
      113 GETTABLEKS                       R18 R18 K30 ["Foundation"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R18 R17 K31 ["Dropdown"]
      118 GETTABLEKS                       R18 R18 K32 ["Root"]
      120 GETTABLEKS                       R19 R17 K33 ["Enums"]
      122 GETTABLEKS                       R19 R19 K34 ["InputSize"]
      124 GETTABLEKS                       R20 R17 K35 ["View"]
      126 DUPCLOSURE                       R21 K36 [PROTO_1]
      127 CAPTURE                          VAL R7
      128 DUPCLOSURE                       R22 K37 [PROTO_2]
      129 DUPCLOSURE                       R23 K38 [PROTO_17]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R13
      145 RETURN                           R23 1
