PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CanManage"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 1
        8 DUPTABLE                         R2 K4 [{"Key", "Display", "Description"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["EditKey"]
       12 SETTABLEKS                       R3 R2 K1 ["Key"]
       14 GETTABLEKS                       R3 R0 K6 ["Localization"]
       16 LOADK                            R5 K7 ["AssetConfigPackagePermissions"]
       17 LOADK                            R6 K8 ["EditLabel"]
       18 NAMECALL                         R3 R3 K9 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K2 ["Display"]
       23 GETTABLEKS                       R3 R0 K6 ["Localization"]
       25 LOADK                            R5 K7 ["AssetConfigPackagePermissions"]
       26 LOADK                            R6 K10 ["EditDescription"]
       27 NAMECALL                         R3 R3 K9 ["getText"]
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R3 R2 K3 ["Description"]
       32 SETLIST                          R1 R2 1 [1]
       34 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K1 ["Permissions"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["RoleSubjectKey"]
       11 NEWTABLE                         R7 1 0
       13 NEWTABLE                         R8 1 0
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R9 R9 K3 ["ActionKey"]
       18 SETTABLE                         R1 R8 R9
       19 SETTABLE                         R8 R7 R0
       20 SETTABLE                         R7 R5 R6
       21 CALL                             R3 2 1
       22 GETTABLEKS                       R4 R2 K4 ["PermissionsChanged"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["Src"]
        5 GETTABLEKS                       R4 R4 K3 ["Flags"]
        7 GETTABLEKS                       R4 R4 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R1 R0 K8 ["rolePermissionChanged"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R1 K2 ["OwnerType"]
        7 GETIMPORT                        R5 K6 [Enum.CreatorType.User]
        9 JUMPIFNOTEQ                      R4 R5 ; [+68]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["createElement"]
       14 GETUPVAL                         R5 1
       15 DUPTABLE                         R6 K19 [{"LayoutOrder", "Removable", "SubjectType", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "UseMask", "Action", "Enabled", "Items", "RolePermissionChanged"}]
       16 LOADN                            R7 1
       17 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       19 LOADB                            R7 0
       20 SETTABLEKS                       R7 R6 K9 ["Removable"]
       22 GETIMPORT                        R7 K6 [Enum.CreatorType.User]
       24 SETTABLEKS                       R7 R6 K10 ["SubjectType"]
       26 GETTABLEKS                       R7 R1 K20 ["OwnerName"]
       28 SETTABLEKS                       R7 R6 K11 ["CollaboratorName"]
       30 GETTABLEKS                       R7 R1 K21 ["OwnerId"]
       32 SETTABLEKS                       R7 R6 K12 ["CollaboratorId"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K22 ["constructRBXThumbUrl"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K24 ["rbxThumbTypes"]
       40 GETTABLEKS                       R8 R9 K23 ["AvatarHeadShot"]
       42 GETTABLEKS                       R9 R1 K21 ["OwnerId"]
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K25 ["rbxThumbSizes"]
       47 GETTABLEKS                       R10 R10 K26 ["AvatarHeadshotImageSize"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K13 ["CollaboratorIcon"]
       52 LOADB                            R7 1
       53 SETTABLEKS                       R7 R6 K14 ["UseMask"]
       55 GETTABLEKS                       R7 R1 K27 ["Localization"]
       57 LOADK                            R9 K28 ["AssetConfigPackagePermissions"]
       58 LOADK                            R10 K29 ["OwnerLabel"]
       59 NAMECALL                         R7 R7 K30 ["getText"]
       61 CALL                             R7 3 1
       62 SETTABLEKS                       R7 R6 K15 ["Action"]
       64 GETTABLEKS                       R7 R1 K16 ["Enabled"]
       66 SETTABLEKS                       R7 R6 K16 ["Enabled"]
       68 NEWTABLE                         R7 0 0
       70 SETTABLEKS                       R7 R6 K17 ["Items"]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K18 ["RolePermissionChanged"]
       75 CALL                             R4 2 1
       76 MOVE                             R3 R4
       77 JUMP                             ; [+34]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K7 ["createElement"]
       81 GETUPVAL                         R5 4
       82 DUPTABLE                         R6 K33 [{"LayoutOrder", "Removable", "GroupData", "Enabled", "Items", "RolePermissionChanged", "Permissions"}]
       83 LOADN                            R7 1
       84 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       86 LOADB                            R7 0
       87 SETTABLEKS                       R7 R6 K9 ["Removable"]
       89 GETTABLEKS                       R7 R1 K34 ["GroupMetadata"]
       91 SETTABLEKS                       R7 R6 K31 ["GroupData"]
       93 GETTABLEKS                       R7 R1 K16 ["Enabled"]
       95 SETTABLEKS                       R7 R6 K16 ["Enabled"]
       97 GETUPVAL                         R7 5
       98 MOVE                             R8 R1
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K17 ["Items"]
      102 GETTABLEKS                       R7 R0 K35 ["rolePermissionChanged"]
      104 SETTABLEKS                       R7 R6 K18 ["RolePermissionChanged"]
      106 GETTABLEKS                       R7 R1 K32 ["Permissions"]
      108 SETTABLEKS                       R7 R6 K32 ["Permissions"]
      110 CALL                             R4 2 1
      111 MOVE                             R3 R4
      112 GETUPVAL                         R4 0
      113 GETTABLEKS                       R4 R4 K7 ["createElement"]
      115 LOADK                            R5 K36 ["Frame"]
      116 DUPTABLE                         R6 K40 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
      117 GETIMPORT                        R7 K42 [Enum.AutomaticSize.XY]
      119 SETTABLEKS                       R7 R6 K37 ["AutomaticSize"]
      121 LOADN                            R7 1
      122 SETTABLEKS                       R7 R6 K38 ["BackgroundTransparency"]
      124 GETTABLEKS                       R8 R1 K8 ["LayoutOrder"]
      126 ORK                              R7 R8 K43 [0]
      127 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
      129 GETIMPORT                        R7 K46 [UDim2.new]
      131 LOADN                            R8 1
      132 LOADN                            R9 0
      133 LOADN                            R10 0
      134 LOADN                            R11 0
      135 CALL                             R7 4 1
      136 SETTABLEKS                       R7 R6 K39 ["Size"]
      138 DUPTABLE                         R7 K50 [{"UIListLayout", "Title", "Owner"}]
      139 GETUPVAL                         R8 0
      140 GETTABLEKS                       R8 R8 K7 ["createElement"]
      142 LOADK                            R9 K47 ["UIListLayout"]
      143 DUPTABLE                         R10 K52 [{"SortOrder"}]
      144 GETIMPORT                        R11 K53 [Enum.SortOrder.LayoutOrder]
      146 SETTABLEKS                       R11 R10 K51 ["SortOrder"]
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K47 ["UIListLayout"]
      151 GETUPVAL                         R8 0
      152 GETTABLEKS                       R8 R8 K7 ["createElement"]
      154 LOADK                            R9 K54 ["TextLabel"]
      155 DUPTABLE                         R10 K60 [{"Font", "TextSize", "TextColor3", "LayoutOrder", "Text", "TextXAlignment", "BackgroundTransparency", "Size"}]
      156 GETUPVAL                         R11 6
      157 GETTABLEKS                       R11 R11 K61 ["FONT"]
      159 SETTABLEKS                       R11 R10 K55 ["Font"]
      161 GETUPVAL                         R11 6
      162 GETTABLEKS                       R11 R11 K62 ["FONT_SIZE_TITLE"]
      164 SETTABLEKS                       R11 R10 K56 ["TextSize"]
      166 GETTABLEKS                       R11 R2 K63 ["assetConfig"]
      168 GETTABLEKS                       R11 R11 K64 ["packagePermissions"]
      170 GETTABLEKS                       R11 R11 K65 ["subTextColor"]
      172 SETTABLEKS                       R11 R10 K57 ["TextColor3"]
      174 LOADN                            R11 0
      175 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      177 GETTABLEKS                       R11 R1 K27 ["Localization"]
      179 LOADK                            R13 K28 ["AssetConfigPackagePermissions"]
      180 LOADK                            R14 K66 ["PackageCreator"]
      181 NAMECALL                         R11 R11 K30 ["getText"]
      183 CALL                             R11 3 1
      184 SETTABLEKS                       R11 R10 K58 ["Text"]
      186 GETIMPORT                        R11 K68 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R11 R10 K59 ["TextXAlignment"]
      190 LOADN                            R11 1
      191 SETTABLEKS                       R11 R10 K38 ["BackgroundTransparency"]
      193 GETIMPORT                        R11 K46 [UDim2.new]
      195 LOADN                            R12 1
      196 LOADN                            R13 50
      197 LOADN                            R14 0
      198 LOADN                            R15 50
      199 CALL                             R11 4 1
      200 SETTABLEKS                       R11 R10 K39 ["Size"]
      202 CALL                             R8 2 1
      203 SETTABLEKS                       R8 R7 K48 ["Title"]
      205 SETTABLEKS                       R3 R7 K49 ["Owner"]
      207 CALL                             R4 3 -1
      208 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K10 ["Urls"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K11 ["Constants"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R4 K12 ["AssetConfigConstants"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K14 ["withContext"]
       48 GETTABLEKS                       R10 R0 K8 ["Src"]
       50 GETTABLEKS                       R10 R10 K15 ["Components"]
       52 GETTABLEKS                       R10 R10 K16 ["AssetConfiguration"]
       54 GETTABLEKS                       R10 R10 K17 ["Permissions"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R10 K18 ["PermissionsConstants"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R10 K19 ["DEPRECATED_CollaboratorItem"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R10 K20 ["DEPRECATED_GroupCollaboratorItem"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R1 K7 ["Framework"]
       75 CALL                             R14 1 1
       76 GETTABLEKS                       R14 R14 K9 ["Util"]
       78 GETTABLEKS                       R15 R14 K21 ["deepJoin"]
       80 DUPCLOSURE                       R16 K22 [PROTO_0]
       81 CAPTURE                          VAL R11
       82 DUPCLOSURE                       R17 K23 [PROTO_1]
       83 GETTABLEKS                       R18 R2 K24 ["PureComponent"]
       85 LOADK                            R20 K25 ["PackageOwnerWidget"]
       86 NAMECALL                         R18 R18 K26 ["extend"]
       88 CALL                             R18 2 1
       89 DUPCLOSURE                       R19 K27 [PROTO_3]
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R11
       93 SETTABLEKS                       R19 R18 K28 ["init"]
       95 DUPCLOSURE                       R19 K29 [PROTO_4]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R19 R18 K30 ["render"]
      105 MOVE                             R19 R9
      106 DUPTABLE                         R20 K33 [{"Stylizer", "Localization"}]
      107 GETTABLEKS                       R21 R8 K31 ["Stylizer"]
      109 SETTABLEKS                       R21 R20 K31 ["Stylizer"]
      111 GETTABLEKS                       R21 R8 K32 ["Localization"]
      113 SETTABLEKS                       R21 R20 K32 ["Localization"]
      115 CALL                             R19 1 1
      116 MOVE                             R20 R18
      117 CALL                             R19 1 1
      118 MOVE                             R18 R19
      119 RETURN                           R18 1
