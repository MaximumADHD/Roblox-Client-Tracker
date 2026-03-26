PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DisambiguationMenu"]
        2 MOVE                             R4 R0
        3 DUPTABLE                         R5 K2 [{"name"}]
        4 GETUPVAL                         R6 0
        5 LOADK                            R8 K3 ["AssetType"]
        6 GETUPVAL                         R11 1
        7 GETTABLEKS                       R10 R11 K4 ["assetType"]
        9 GETTABLEKS                       R9 R10 K5 ["Name"]
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
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K1 ["util"]
       13 GETTABLEKS                       R4 R5 K2 ["isLayeredClothingAllowed"]
       15 GETTABLEKS                       R5 R0 K0 ["assetType"]
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+4]
       19 MOVE                             R4 R3
       20 LOADK                            R5 K3 ["LoneMeshPartBadMarketplaceLayeredClothing"]
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1
       23 JUMPIF                           R1 ; [+13]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K1 ["util"]
       27 GETTABLEKS                       R4 R5 K4 ["isRigidAccessoryAllowed"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MeshPart"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["map"]
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
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K0 ["map"]
       36 MOVE                             R4 R2
       37 DUPCLOSURE                       R5 K13 [PROTO_6]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R5 3
       40 JUMPIFNOTEQKNIL                  R5 ; [+3]
       42 LOADNIL                          R4
       43 JUMP                             ; [+12]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K14 ["assetType"]
       47 JUMPIFNOTEQKNIL                  R5 ; [+3]
       49 LOADK                            R4 K8 ["Ignore"]
       50 JUMP                             ; [+5]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R5 R6 K14 ["assetType"]
       54 GETTABLEKS                       R4 R5 K15 ["Name"]
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
       16 GETUPVAL                         R6 0
       17 GETIMPORT                        R8 K5 [Enum.AssetType]
       19 GETTABLE                         R7 R8 R1
       20 GETTABLE                         R5 R6 R7
       21 GETTABLEN                        R4 R5 1
       22 GETTABLEKS                       R3 R4 K6 ["attachmentName"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K7 ["SetAssignment"]
       27 DUPTABLE                         R5 K10 [{"meshPart", "assetType", "attachmentName"}]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K11 ["MeshPart"]
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
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K6 ["SetAssignment"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K1 [{"AssetTypeDropdown"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K5 [{"tag", "Size"}]
        6 LOADK                            R4 K6 ["col gap-small auto-y"]
        7 SETTABLEKS                       R4 R3 K3 ["tag"]
        9 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       11 LOADN                            R5 130
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K4 ["Size"]
       16 DUPTABLE                         R4 K11 [{"Dropdown"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K2 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K21 [{"label", "placeholder", "value", "items", "maxHeight", "onItemChanged", "isDisabled", "width", "size"}]
       22 LOADK                            R8 K22 [""]
       23 SETTABLEKS                       R8 R7 K12 ["label"]
       25 GETUPVAL                         R8 3
       26 LOADK                            R10 K23 ["DisambiguationMenu"]
       27 LOADK                            R11 K24 ["AssetTypeDropdownPlaceholder"]
       28 NAMECALL                         R8 R8 K25 ["getText"]
       30 CALL                             R8 3 1
       31 SETTABLEKS                       R8 R7 K13 ["placeholder"]
       33 GETUPVAL                         R8 4
       34 SETTABLEKS                       R8 R7 K14 ["value"]
       36 GETUPVAL                         R8 5
       37 SETTABLEKS                       R8 R7 K15 ["items"]
       39 LOADN                            R8 200
       40 SETTABLEKS                       R8 R7 K16 ["maxHeight"]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 SETTABLEKS                       R8 R7 K17 ["onItemChanged"]
       47 LOADB                            R8 0
       48 SETTABLEKS                       R8 R7 K18 ["isDisabled"]
       50 GETIMPORT                        R8 K28 [UDim.new]
       52 LOADN                            R9 0
       53 LOADN                            R10 130
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K19 ["width"]
       57 GETUPVAL                         R9 8
       58 GETTABLEKS                       R8 R9 K29 ["Small"]
       60 SETTABLEKS                       R8 R7 K20 ["size"]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K10 ["Dropdown"]
       65 CALL                             R1 3 1
       66 SETTABLEKS                       R1 R0 K0 ["AssetTypeDropdown"]
       68 GETUPVAL                         R1 9
       69 JUMPIFNOT                        R1 ; [+85]
       70 GETUPVAL                         R1 10
       71 JUMPIFNOT                        R1 ; [+83]
       72 GETUPVAL                         R2 10
       73 GETTABLEKS                       R1 R2 K30 ["assetType"]
       75 JUMPIFNOT                        R1 ; [+79]
       76 GETUPVAL                         R2 10
       77 GETTABLEKS                       R1 R2 K30 ["assetType"]
       79 GETUPVAL                         R3 11
       80 GETTABLEKS                       R2 R3 K31 ["map"]
       82 GETUPVAL                         R4 6
       83 GETTABLE                         R3 R4 R1
       84 NEWCLOSURE                       R4 P1
       85 CAPTURE                          UPVAL U3
       86 CALL                             R2 2 1
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K2 ["createElement"]
       90 GETUPVAL                         R4 1
       91 DUPTABLE                         R5 K5 [{"tag", "Size"}]
       92 LOADK                            R6 K6 ["col gap-small auto-y"]
       93 SETTABLEKS                       R6 R5 K3 ["tag"]
       95 GETIMPORT                        R6 K9 [UDim2.fromOffset]
       97 LOADN                            R7 130
       98 LOADN                            R8 0
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K4 ["Size"]
      102 DUPTABLE                         R6 K11 [{"Dropdown"}]
      103 GETUPVAL                         R8 0
      104 GETTABLEKS                       R7 R8 K2 ["createElement"]
      106 GETUPVAL                         R8 2
      107 DUPTABLE                         R9 K21 [{"label", "placeholder", "value", "items", "maxHeight", "onItemChanged", "isDisabled", "width", "size"}]
      108 LOADK                            R10 K22 [""]
      109 SETTABLEKS                       R10 R9 K12 ["label"]
      111 GETUPVAL                         R10 3
      112 LOADK                            R12 K23 ["DisambiguationMenu"]
      113 LOADK                            R13 K32 ["Category"]
      114 NAMECALL                         R10 R10 K25 ["getText"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K13 ["placeholder"]
      119 GETUPVAL                         R11 10
      120 GETTABLEKS                       R10 R11 K33 ["attachmentName"]
      122 SETTABLEKS                       R10 R9 K14 ["value"]
      124 SETTABLEKS                       R2 R9 K15 ["items"]
      126 LOADN                            R10 200
      127 SETTABLEKS                       R10 R9 K16 ["maxHeight"]
      129 NEWCLOSURE                       R10 P2
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U7
      132 SETTABLEKS                       R10 R9 K17 ["onItemChanged"]
      134 LOADB                            R10 0
      135 SETTABLEKS                       R10 R9 K18 ["isDisabled"]
      137 GETIMPORT                        R10 K28 [UDim.new]
      139 LOADN                            R11 0
      140 LOADN                            R12 130
      141 CALL                             R10 2 1
      142 SETTABLEKS                       R10 R9 K19 ["width"]
      144 GETUPVAL                         R11 8
      145 GETTABLEKS                       R10 R11 K29 ["Small"]
      147 SETTABLEKS                       R10 R9 K20 ["size"]
      149 CALL                             R7 2 1
      150 SETTABLEKS                       R7 R6 K10 ["Dropdown"]
      152 CALL                             R3 3 1
      153 SETTABLEKS                       R3 R0 K34 ["AttachmentDropdown"]
      155 GETUPVAL                         R2 0
      156 GETTABLEKS                       R1 R2 K2 ["createElement"]
      158 GETUPVAL                         R2 1
      159 DUPTABLE                         R3 K35 [{"tag"}]
      160 LOADK                            R4 K36 ["row gap-small align-y-center auto-y"]
      161 SETTABLEKS                       R4 R3 K3 ["tag"]
      163 MOVE                             R4 R0
      164 CALL                             R1 3 -1
      165 RETURN                           R1 -1

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
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_15:
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

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["Assignment"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K4 ["Id"]
        8 SETTABLEKS                       R2 R1 K5 ["attachmentName"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K6 ["SetAssignment"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetAssignment"]
        3 DUPTABLE                         R2 K4 [{"meshPart", "assetType", "attachmentName"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K5 ["MeshPart"]
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
       28 GETUPVAL                         R6 1
       29 GETIMPORT                        R8 K10 [Enum.AssetType]
       31 GETTABLEKS                       R9 R0 K6 ["Id"]
       33 GETTABLE                         R7 R8 R9
       34 GETTABLE                         R5 R6 R7
       35 GETTABLEN                        R4 R5 1
       36 GETTABLEKS                       R3 R4 K3 ["attachmentName"]
       38 SETTABLEKS                       R3 R2 K3 ["attachmentName"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+95]
       12 GETTABLEKS                       R3 R0 K2 ["Assignment"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R6 0 1
       21 GETTABLEKS                       R7 R0 K4 ["MeshPart"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K3 ["useMemo"]
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
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R10 R11 K3 ["useMemo"]
       46 NEWCLOSURE                       R11 P2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U5
       59 NEWTABLE                         R12 0 7
       61 MOVE                             R13 R7
       62 MOVE                             R14 R5
       63 MOVE                             R15 R6
       64 GETTABLEKS                       R16 R0 K5 ["SetAssignment"]
       66 GETTABLEKS                       R17 R0 K4 ["MeshPart"]
       68 MOVE                             R18 R8
       69 MOVE                             R19 R3
       70 SETLIST                          R12 R13 7 [1]
       72 CALL                             R10 2 1
       73 GETUPVAL                         R12 3
       74 GETTABLEKS                       R11 R12 K6 ["createElement"]
       76 GETUPVAL                         R12 10
       77 DUPTABLE                         R13 K12 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder"}]
       78 GETTABLEKS                       R14 R0 K4 ["MeshPart"]
       80 SETTABLEKS                       R14 R13 K7 ["Instance"]
       82 GETTABLEKS                       R15 R0 K4 ["MeshPart"]
       84 GETTABLEKS                       R14 R15 K8 ["Name"]
       86 SETTABLEKS                       R14 R13 K8 ["Name"]
       88 LOADK                            R16 K1 ["DisambiguationMenu"]
       89 JUMPIFNOT                        R4 ; [+2]
       90 LOADK                            R17 K13 ["LayeredClothing"]
       91 JUMP                             ; [+1]
       92 LOADK                            R17 K14 ["RigidAccessory"]
       93 NAMECALL                         R14 R1 K15 ["getText"]
       95 CALL                             R14 3 1
       96 SETTABLEKS                       R14 R13 K9 ["Subtitle"]
       98 SETTABLEKS                       R9 R13 K10 ["WarningText"]
      100 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
      102 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      104 MOVE                             R14 R10
      105 CALL                             R11 3 -1
      106 RETURN                           R11 -1
      107 GETUPVAL                         R4 11
      108 GETTABLEKS                       R3 R4 K16 ["new"]
      110 CALL                             R3 0 1
      111 GETTABLEKS                       R5 R0 K4 ["MeshPart"]
      113 LOADK                            R7 K17 ["WrapLayer"]
      114 NAMECALL                         R5 R5 K18 ["FindFirstChildWhichIsA"]
      116 CALL                             R5 2 1
      117 JUMPIFNOTEQKNIL                  R5 ; [+2]
      119 LOADB                            R4 0 +1
      120 LOADB                            R4 1
      121 LOADNIL                          R5
      122 LOADNIL                          R6
      123 GETUPVAL                         R7 12
      124 CALL                             R7 0 1
      125 JUMPIFNOT                        R7 ; [+12]
      126 GETUPVAL                         R8 3
      127 GETTABLEKS                       R7 R8 K3 ["useMemo"]
      129 NEWCLOSURE                       R8 P3
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          VAL R1
      132 NEWTABLE                         R9 0 0
      134 CALL                             R7 2 2
      135 MOVE                             R5 R7
      136 MOVE                             R6 R8
      137 JUMP                             ; [+41]
      138 GETUPVAL                         R7 4
      139 CALL                             R7 0 2
      140 MOVE                             R5 R7
      141 MOVE                             R6 R8
      142 MOVE                             R7 R5
      143 LOADNIL                          R8
      144 LOADNIL                          R9
      145 FORGPREP                         R7
      146 LOADK                            R14 K19 ["AssetType"]
      147 GETTABLEKS                       R15 R11 K20 ["Label"]
      149 NAMECALL                         R12 R1 K15 ["getText"]
      151 CALL                             R12 3 1
      152 SETTABLEKS                       R12 R11 K20 ["Label"]
      154 FORGLOOP                         R7 2 ; [-9]
      156 GETIMPORT                        R7 K23 [table.sort]
      158 MOVE                             R8 R5
      159 DUPCLOSURE                       R9 K24 [PROTO_14]
      160 CALL                             R7 2 0
      161 LOADN                            R9 1
      162 DUPTABLE                         R10 K26 [{"Id", "Label"}]
      163 LOADK                            R11 K27 ["Ignore"]
      164 SETTABLEKS                       R11 R10 K25 ["Id"]
      166 LOADK                            R13 K1 ["DisambiguationMenu"]
      167 LOADK                            R14 K27 ["Ignore"]
      168 NAMECALL                         R11 R1 K15 ["getText"]
      170 CALL                             R11 3 1
      171 SETTABLEKS                       R11 R10 K20 ["Label"]
      173 FASTCALL3                        TABLE_INSERT R5 R9 R10
      175 MOVE                             R8 R5
      176 GETIMPORT                        R7 K29 [table.insert]
      178 CALL                             R7 3 0
      179 GETUPVAL                         R7 6
      180 GETTABLEKS                       R8 R0 K2 ["Assignment"]
      182 MOVE                             R9 R4
      183 MOVE                             R10 R1
      184 CALL                             R7 3 1
      185 GETUPVAL                         R9 3
      186 GETTABLEKS                       R8 R9 K6 ["createElement"]
      188 GETUPVAL                         R9 10
      189 DUPTABLE                         R10 K12 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder"}]
      190 GETTABLEKS                       R11 R0 K4 ["MeshPart"]
      192 SETTABLEKS                       R11 R10 K7 ["Instance"]
      194 GETTABLEKS                       R12 R0 K4 ["MeshPart"]
      196 GETTABLEKS                       R11 R12 K8 ["Name"]
      198 SETTABLEKS                       R11 R10 K8 ["Name"]
      200 JUMPIFNOT                        R4 ; [+6]
      201 LOADK                            R13 K1 ["DisambiguationMenu"]
      202 LOADK                            R14 K13 ["LayeredClothing"]
      203 NAMECALL                         R11 R1 K15 ["getText"]
      205 CALL                             R11 3 1
      206 JUMP                             ; [+5]
      207 LOADK                            R13 K1 ["DisambiguationMenu"]
      208 LOADK                            R14 K14 ["RigidAccessory"]
      209 NAMECALL                         R11 R1 K15 ["getText"]
      211 CALL                             R11 3 1
      212 SETTABLEKS                       R11 R10 K9 ["Subtitle"]
      214 SETTABLEKS                       R7 R10 K10 ["WarningText"]
      216 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
      218 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      220 GETUPVAL                         R12 3
      221 GETTABLEKS                       R11 R12 K6 ["createElement"]
      223 GETUPVAL                         R12 13
      224 DUPTABLE                         R13 K33 [{"AutomaticSize", "Layout", "Spacing"}]
      225 GETIMPORT                        R14 K36 [Enum.AutomaticSize.XY]
      227 SETTABLEKS                       R14 R13 K30 ["AutomaticSize"]
      229 GETIMPORT                        R14 K39 [Enum.FillDirection.Horizontal]
      231 SETTABLEKS                       R14 R13 K31 ["Layout"]
      233 GETTABLEKS                       R14 R2 K40 ["HorizontalSpacing"]
      235 SETTABLEKS                       R14 R13 K32 ["Spacing"]
      237 DUPTABLE                         R14 K43 [{"AttachmentDropdown", "AssetTypeDropdown"}]
      238 GETTABLEKS                       R15 R0 K2 ["Assignment"]
      240 JUMPIFNOT                        R15 ; [+57]
      241 LOADB                            R15 0
      242 GETTABLEKS                       R17 R0 K2 ["Assignment"]
      244 GETTABLEKS                       R16 R17 K44 ["assetType"]
      246 JUMPIFEQKNIL                     R16 ; [+51]
      248 LOADB                            R15 0
      249 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      251 GETTABLEKS                       R18 R19 K44 ["assetType"]
      253 GETTABLE                         R17 R6 R18
      254 LENGTH                           R16 R17
      255 LOADN                            R17 1
      256 JUMPIFNOTLT                      R17 R16 ; [+41]
      258 NOT                              R15 R4
      259 JUMPIFNOT                        R15 ; [+38]
      260 GETUPVAL                         R16 3
      261 GETTABLEKS                       R15 R16 K6 ["createElement"]
      263 GETUPVAL                         R16 14
      264 DUPTABLE                         R17 K49 [{"LayoutOrder", "Width", "SelectedId", "Items", "OnItemActivated"}]
      265 NAMECALL                         R18 R3 K50 ["getNextOrder"]
      267 CALL                             R18 1 1
      268 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      270 GETTABLEKS                       R18 R2 K51 ["AttachmentDropdownWidth"]
      272 SETTABLEKS                       R18 R17 K45 ["Width"]
      274 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      276 GETTABLEKS                       R18 R19 K52 ["attachmentName"]
      278 SETTABLEKS                       R18 R17 K46 ["SelectedId"]
      280 GETUPVAL                         R19 5
      281 GETTABLEKS                       R18 R19 K53 ["map"]
      283 GETTABLEKS                       R21 R0 K2 ["Assignment"]
      285 GETTABLEKS                       R20 R21 K44 ["assetType"]
      287 GETTABLE                         R19 R6 R20
      288 NEWCLOSURE                       R20 P5
      289 CAPTURE                          VAL R1
      290 CALL                             R18 2 1
      291 SETTABLEKS                       R18 R17 K47 ["Items"]
      293 NEWCLOSURE                       R18 P6
      294 CAPTURE                          VAL R0
      295 SETTABLEKS                       R18 R17 K48 ["OnItemActivated"]
      297 CALL                             R15 2 1
      298 SETTABLEKS                       R15 R14 K41 ["AttachmentDropdown"]
      300 GETUPVAL                         R16 3
      301 GETTABLEKS                       R15 R16 K6 ["createElement"]
      303 GETUPVAL                         R16 14
      304 DUPTABLE                         R17 K55 [{"LayoutOrder", "PlaceholderText", "Width", "SelectedId", "Items", "OnItemActivated"}]
      305 NAMECALL                         R18 R3 K50 ["getNextOrder"]
      307 CALL                             R18 1 1
      308 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      310 LOADK                            R20 K1 ["DisambiguationMenu"]
      311 LOADK                            R21 K56 ["AssetTypeDropdownPlaceholder"]
      312 NAMECALL                         R18 R1 K15 ["getText"]
      314 CALL                             R18 3 1
      315 SETTABLEKS                       R18 R17 K54 ["PlaceholderText"]
      317 GETTABLEKS                       R18 R2 K57 ["DropdownWidth"]
      319 SETTABLEKS                       R18 R17 K45 ["Width"]
      321 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      323 JUMPIFEQKNIL                     R19 ; [+9]
      325 GETTABLEKS                       R20 R0 K2 ["Assignment"]
      327 GETTABLEKS                       R19 R20 K44 ["assetType"]
      329 JUMPIFNOTEQKNIL                  R19 ; [+3]
      331 LOADK                            R18 K27 ["Ignore"]
      332 JUMP                             ; [+18]
      333 GETTABLEKS                       R19 R0 K2 ["Assignment"]
      335 JUMPIFEQKNIL                     R19 ; [+14]
      337 GETTABLEKS                       R20 R0 K2 ["Assignment"]
      339 GETTABLEKS                       R19 R20 K44 ["assetType"]
      341 JUMPIFEQKNIL                     R19 ; [+8]
      343 GETTABLEKS                       R20 R0 K2 ["Assignment"]
      345 GETTABLEKS                       R19 R20 K44 ["assetType"]
      347 GETTABLEKS                       R18 R19 K8 ["Name"]
      349 JUMP                             ; [+1]
      350 LOADNIL                          R18
      351 SETTABLEKS                       R18 R17 K46 ["SelectedId"]
      353 SETTABLEKS                       R5 R17 K47 ["Items"]
      355 NEWCLOSURE                       R18 P7
      356 CAPTURE                          VAL R0
      357 CAPTURE                          REF R6
      358 SETTABLEKS                       R18 R17 K48 ["OnItemActivated"]
      360 CALL                             R15 2 1
      361 SETTABLEKS                       R15 R14 K42 ["AssetTypeDropdown"]
      363 CALL                             R11 3 -1
      364 CALL                             R8 -1 -1
      365 CLOSEUPVALS                      R6
      366 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["DisambiguationMenu"]
       22 GETTABLEKS                       R3 R4 K11 ["DisambiguationMenuEntry"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Resources"]
       45 GETTABLEKS                       R6 R7 K15 ["Theme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R8 K16 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K6 ["Packages"]
       59 GETTABLEKS                       R8 R9 K17 ["UGCValidation"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R12 R0 K8 ["Src"]
       66 GETTABLEKS                       R11 R12 K9 ["Components"]
       68 GETTABLEKS                       R10 R11 K10 ["DisambiguationMenu"]
       70 GETTABLEKS                       R9 R10 K18 ["getChoosableAssetTypes"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K8 ["Src"]
       77 GETTABLEKS                       R11 R12 K19 ["Flags"]
       79 GETTABLEKS                       R10 R11 K20 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R12 R13 K19 ["Flags"]
       88 GETTABLEKS                       R11 R12 K21 ["getFFlagFixLayeredClothingAssignment"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R11 R3 K22 ["UI"]
       93 GETTABLEKS                       R12 R11 K23 ["Pane"]
       95 GETTABLEKS                       R13 R11 K24 ["SelectInput"]
       97 GETTABLEKS                       R15 R3 K25 ["Util"]
       99 GETTABLEKS                       R14 R15 K26 ["LayoutOrderIterator"]
      101 GETTABLEKS                       R16 R3 K27 ["ContextServices"]
      103 GETTABLEKS                       R15 R16 K28 ["Localization"]
      105 GETTABLEKS                       R17 R3 K27 ["ContextServices"]
      107 GETTABLEKS                       R16 R17 K29 ["Stylizer"]
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R19 R0 K6 ["Packages"]
      113 GETTABLEKS                       R18 R19 K30 ["Foundation"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R19 R17 K31 ["Dropdown"]
      118 GETTABLEKS                       R18 R19 K32 ["Root"]
      120 GETTABLEKS                       R20 R17 K33 ["Enums"]
      122 GETTABLEKS                       R19 R20 K34 ["InputSize"]
      124 GETTABLEKS                       R20 R17 K35 ["View"]
      126 DUPCLOSURE                       R21 K36 [PROTO_1]
      127 CAPTURE                          VAL R7
      128 DUPCLOSURE                       R22 K37 [PROTO_2]
      129 DUPCLOSURE                       R23 K38 [PROTO_18]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R13
      145 RETURN                           R23 1
