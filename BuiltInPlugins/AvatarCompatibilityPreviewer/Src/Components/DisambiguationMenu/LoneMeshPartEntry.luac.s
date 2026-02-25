PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
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
       20 DUPCLOSURE                       R4 K6 [PROTO_0]
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

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DisambiguationMenu"]
        2 MOVE                             R4 R0
        3 DUPTABLE                         R5 K2 [{"name"}]
        4 GETUPVAL                         R6 0
        5 LOADK                            R8 K3 ["AssetType"]
        6 GETUPVAL                         R12 1
        7 GETTABLEKS                       R11 R12 K4 ["Assignment"]
        9 GETTABLEKS                       R10 R11 K5 ["assetType"]
       11 GETTABLEKS                       R9 R10 K6 ["Name"]
       13 NAMECALL                         R6 R6 K7 ["getText"]
       15 CALL                             R6 3 1
       16 SETTABLEKS                       R6 R5 K1 ["name"]
       18 NAMECALL                         R1 R1 K7 ["getText"]
       20 CALL                             R1 4 -1
       21 RETURN                           R1 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R5 R0 K3 ["MeshPart"]
       15 LOADK                            R7 K4 ["WrapLayer"]
       16 NAMECALL                         R5 R5 K5 ["FindFirstChildWhichIsA"]
       18 CALL                             R5 2 1
       19 JUMPIFNOTEQKNIL                  R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 GETUPVAL                         R7 3
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+15]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R9 0 1
       36 MOVE                             R10 R1
       37 SETLIST                          R9 R10 1 [1]
       39 CALL                             R7 2 2
       40 MOVE                             R5 R7
       41 MOVE                             R6 R8
       42 JUMP                             ; [+41]
       43 GETUPVAL                         R7 5
       44 CALL                             R7 0 2
       45 MOVE                             R5 R7
       46 MOVE                             R6 R8
       47 MOVE                             R7 R5
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 LOADK                            R14 K7 ["AssetType"]
       52 GETTABLEKS                       R15 R11 K8 ["Label"]
       54 NAMECALL                         R12 R1 K9 ["getText"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K8 ["Label"]
       59 FORGLOOP                         R7 2 ; [-9]
       61 GETIMPORT                        R7 K12 [table.sort]
       63 MOVE                             R8 R5
       64 DUPCLOSURE                       R9 K13 [PROTO_2]
       65 CALL                             R7 2 0
       66 LOADN                            R9 1
       67 DUPTABLE                         R10 K15 [{"Id", "Label"}]
       68 LOADK                            R11 K16 ["Ignore"]
       69 SETTABLEKS                       R11 R10 K14 ["Id"]
       71 LOADK                            R13 K1 ["DisambiguationMenu"]
       72 LOADK                            R14 K16 ["Ignore"]
       73 NAMECALL                         R11 R1 K9 ["getText"]
       75 CALL                             R11 3 1
       76 SETTABLEKS                       R11 R10 K8 ["Label"]
       78 FASTCALL3                        TABLE_INSERT R5 R9 R10
       80 MOVE                             R8 R5
       81 GETIMPORT                        R7 K18 [table.insert]
       83 CALL                             R7 3 0
       84 LOADNIL                          R7
       85 GETTABLEKS                       R8 R0 K19 ["Assignment"]
       87 JUMPIFEQKNIL                     R8 ; [+73]
       89 GETTABLEKS                       R9 R0 K19 ["Assignment"]
       91 GETTABLEKS                       R8 R9 K20 ["assetType"]
       93 JUMPIFEQKNIL                     R8 ; [+67]
       95 NEWCLOSURE                       R8 P2
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R0
       98 JUMPIFNOT                        R4 ; [+31]
       99 GETUPVAL                         R11 6
      100 GETTABLEKS                       R10 R11 K21 ["util"]
      102 GETTABLEKS                       R9 R10 K22 ["isLayeredClothingAllowed"]
      104 GETTABLEKS                       R11 R0 K19 ["Assignment"]
      106 GETTABLEKS                       R10 R11 K20 ["assetType"]
      108 CALL                             R9 1 1
      109 JUMPIF                           R9 ; [+20]
      110 LOADK                            R11 K1 ["DisambiguationMenu"]
      111 LOADK                            R12 K23 ["LoneMeshPartBadMarketplaceLayeredClothing"]
      112 DUPTABLE                         R13 K25 [{"name"}]
      113 LOADK                            R16 K7 ["AssetType"]
      114 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      116 GETTABLEKS                       R18 R19 K20 ["assetType"]
      118 GETTABLEKS                       R17 R18 K26 ["Name"]
      120 NAMECALL                         R14 R1 K9 ["getText"]
      122 CALL                             R14 3 1
      123 SETTABLEKS                       R14 R13 K24 ["name"]
      125 NAMECALL                         R9 R1 K9 ["getText"]
      127 CALL                             R9 4 1
      128 MOVE                             R7 R9
      129 JUMP                             ; [+31]
      130 JUMPIF                           R4 ; [+30]
      131 GETUPVAL                         R11 6
      132 GETTABLEKS                       R10 R11 K21 ["util"]
      134 GETTABLEKS                       R9 R10 K27 ["isRigidAccessoryAllowed"]
      136 GETTABLEKS                       R11 R0 K19 ["Assignment"]
      138 GETTABLEKS                       R10 R11 K20 ["assetType"]
      140 CALL                             R9 1 1
      141 JUMPIF                           R9 ; [+19]
      142 LOADK                            R11 K1 ["DisambiguationMenu"]
      143 LOADK                            R12 K28 ["LoneMeshPartBadMarketplaceRigidAccessories"]
      144 DUPTABLE                         R13 K25 [{"name"}]
      145 LOADK                            R16 K7 ["AssetType"]
      146 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      148 GETTABLEKS                       R18 R19 K20 ["assetType"]
      150 GETTABLEKS                       R17 R18 K26 ["Name"]
      152 NAMECALL                         R14 R1 K9 ["getText"]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K24 ["name"]
      157 NAMECALL                         R9 R1 K9 ["getText"]
      159 CALL                             R9 4 1
      160 MOVE                             R7 R9
      161 GETUPVAL                         R9 4
      162 GETTABLEKS                       R8 R9 K29 ["createElement"]
      164 GETUPVAL                         R9 7
      165 DUPTABLE                         R10 K34 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder"}]
      166 GETTABLEKS                       R11 R0 K3 ["MeshPart"]
      168 SETTABLEKS                       R11 R10 K30 ["Instance"]
      170 GETTABLEKS                       R12 R0 K3 ["MeshPart"]
      172 GETTABLEKS                       R11 R12 K26 ["Name"]
      174 SETTABLEKS                       R11 R10 K26 ["Name"]
      176 JUMPIFNOT                        R4 ; [+6]
      177 LOADK                            R13 K1 ["DisambiguationMenu"]
      178 LOADK                            R14 K35 ["LayeredClothing"]
      179 NAMECALL                         R11 R1 K9 ["getText"]
      181 CALL                             R11 3 1
      182 JUMP                             ; [+5]
      183 LOADK                            R13 K1 ["DisambiguationMenu"]
      184 LOADK                            R14 K36 ["RigidAccessory"]
      185 NAMECALL                         R11 R1 K9 ["getText"]
      187 CALL                             R11 3 1
      188 SETTABLEKS                       R11 R10 K31 ["Subtitle"]
      190 SETTABLEKS                       R7 R10 K32 ["WarningText"]
      192 GETTABLEKS                       R11 R0 K33 ["LayoutOrder"]
      194 SETTABLEKS                       R11 R10 K33 ["LayoutOrder"]
      196 GETUPVAL                         R12 4
      197 GETTABLEKS                       R11 R12 K29 ["createElement"]
      199 GETUPVAL                         R12 8
      200 DUPTABLE                         R13 K40 [{"AutomaticSize", "Layout", "Spacing"}]
      201 GETIMPORT                        R14 K43 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R14 R13 K37 ["AutomaticSize"]
      205 GETIMPORT                        R14 K46 [Enum.FillDirection.Horizontal]
      207 SETTABLEKS                       R14 R13 K38 ["Layout"]
      209 GETTABLEKS                       R14 R2 K47 ["HorizontalSpacing"]
      211 SETTABLEKS                       R14 R13 K39 ["Spacing"]
      213 DUPTABLE                         R14 K50 [{"AttachmentDropdown", "AssetTypeDropdown"}]
      214 GETTABLEKS                       R15 R0 K19 ["Assignment"]
      216 JUMPIFNOT                        R15 ; [+57]
      217 LOADB                            R15 0
      218 GETTABLEKS                       R17 R0 K19 ["Assignment"]
      220 GETTABLEKS                       R16 R17 K20 ["assetType"]
      222 JUMPIFEQKNIL                     R16 ; [+51]
      224 LOADB                            R15 0
      225 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      227 GETTABLEKS                       R18 R19 K20 ["assetType"]
      229 GETTABLE                         R17 R6 R18
      230 LENGTH                           R16 R17
      231 LOADN                            R17 1
      232 JUMPIFNOTLT                      R17 R16 ; [+41]
      234 NOT                              R15 R4
      235 JUMPIFNOT                        R15 ; [+38]
      236 GETUPVAL                         R16 4
      237 GETTABLEKS                       R15 R16 K29 ["createElement"]
      239 GETUPVAL                         R16 9
      240 DUPTABLE                         R17 K55 [{"LayoutOrder", "Width", "SelectedId", "Items", "OnItemActivated"}]
      241 NAMECALL                         R18 R3 K56 ["getNextOrder"]
      243 CALL                             R18 1 1
      244 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      246 GETTABLEKS                       R18 R2 K57 ["AttachmentDropdownWidth"]
      248 SETTABLEKS                       R18 R17 K51 ["Width"]
      250 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      252 GETTABLEKS                       R18 R19 K58 ["attachmentName"]
      254 SETTABLEKS                       R18 R17 K52 ["SelectedId"]
      256 GETUPVAL                         R19 10
      257 GETTABLEKS                       R18 R19 K59 ["map"]
      259 GETTABLEKS                       R21 R0 K19 ["Assignment"]
      261 GETTABLEKS                       R20 R21 K20 ["assetType"]
      263 GETTABLE                         R19 R6 R20
      264 NEWCLOSURE                       R20 P3
      265 CAPTURE                          VAL R1
      266 CALL                             R18 2 1
      267 SETTABLEKS                       R18 R17 K53 ["Items"]
      269 NEWCLOSURE                       R18 P4
      270 CAPTURE                          VAL R0
      271 SETTABLEKS                       R18 R17 K54 ["OnItemActivated"]
      273 CALL                             R15 2 1
      274 SETTABLEKS                       R15 R14 K48 ["AttachmentDropdown"]
      276 GETUPVAL                         R16 4
      277 GETTABLEKS                       R15 R16 K29 ["createElement"]
      279 GETUPVAL                         R16 9
      280 DUPTABLE                         R17 K61 [{"LayoutOrder", "PlaceholderText", "Width", "SelectedId", "Items", "OnItemActivated"}]
      281 NAMECALL                         R18 R3 K56 ["getNextOrder"]
      283 CALL                             R18 1 1
      284 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      286 LOADK                            R20 K1 ["DisambiguationMenu"]
      287 LOADK                            R21 K62 ["AssetTypeDropdownPlaceholder"]
      288 NAMECALL                         R18 R1 K9 ["getText"]
      290 CALL                             R18 3 1
      291 SETTABLEKS                       R18 R17 K60 ["PlaceholderText"]
      293 GETTABLEKS                       R18 R2 K63 ["DropdownWidth"]
      295 SETTABLEKS                       R18 R17 K51 ["Width"]
      297 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      299 JUMPIFEQKNIL                     R19 ; [+9]
      301 GETTABLEKS                       R20 R0 K19 ["Assignment"]
      303 GETTABLEKS                       R19 R20 K20 ["assetType"]
      305 JUMPIFNOTEQKNIL                  R19 ; [+3]
      307 LOADK                            R18 K16 ["Ignore"]
      308 JUMP                             ; [+18]
      309 GETTABLEKS                       R19 R0 K19 ["Assignment"]
      311 JUMPIFEQKNIL                     R19 ; [+14]
      313 GETTABLEKS                       R20 R0 K19 ["Assignment"]
      315 GETTABLEKS                       R19 R20 K20 ["assetType"]
      317 JUMPIFEQKNIL                     R19 ; [+8]
      319 GETTABLEKS                       R20 R0 K19 ["Assignment"]
      321 GETTABLEKS                       R19 R20 K20 ["assetType"]
      323 GETTABLEKS                       R18 R19 K26 ["Name"]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R18
      327 SETTABLEKS                       R18 R17 K52 ["SelectedId"]
      329 SETTABLEKS                       R5 R17 K53 ["Items"]
      331 NEWCLOSURE                       R18 P5
      332 CAPTURE                          VAL R0
      333 CAPTURE                          REF R6
      334 SETTABLEKS                       R18 R17 K54 ["OnItemActivated"]
      336 CALL                             R15 2 1
      337 SETTABLEKS                       R15 R14 K49 ["AssetTypeDropdown"]
      339 CALL                             R11 3 -1
      340 CALL                             R8 -1 -1
      341 CLOSEUPVALS                      R6
      342 RETURN                           R8 -1

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
       79 GETTABLEKS                       R10 R11 K20 ["getFFlagFixLayeredClothingAssignment"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R3 K21 ["UI"]
       84 GETTABLEKS                       R11 R10 K22 ["Pane"]
       86 GETTABLEKS                       R12 R10 K23 ["SelectInput"]
       88 GETTABLEKS                       R14 R3 K24 ["Util"]
       90 GETTABLEKS                       R13 R14 K25 ["LayoutOrderIterator"]
       92 GETTABLEKS                       R15 R3 K26 ["ContextServices"]
       94 GETTABLEKS                       R14 R15 K27 ["Localization"]
       96 GETTABLEKS                       R16 R3 K26 ["ContextServices"]
       98 GETTABLEKS                       R15 R16 K28 ["Stylizer"]
      100 DUPCLOSURE                       R16 K29 [PROTO_7]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R1
      112 RETURN                           R16 1
