PROTO_0:
  GETTABLEKS R1 R0 K0 ["CanManage"]
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 0 1
  DUPTABLE R2 K4 [{"Key", "Display", "Description"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["EditKey"]
  SETTABLEKS R3 R2 K1 ["Key"]
  GETTABLEKS R3 R0 K6 ["Localization"]
  LOADK R5 K7 ["AssetConfigPackagePermissions"]
  LOADK R6 K8 ["EditLabel"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["Display"]
  GETTABLEKS R3 R0 K6 ["Localization"]
  LOADK R5 K7 ["AssetConfigPackagePermissions"]
  LOADK R6 K10 ["EditDescription"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["Description"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K1 ["Permissions"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["RoleSubjectKey"]
  NEWTABLE R7 1 0
  NEWTABLE R8 1 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K3 ["ActionKey"]
  SETTABLE R1 R8 R9
  SETTABLE R8 R7 R0
  SETTABLE R7 R5 R6
  CALL R3 2 1
  GETTABLEKS R4 R2 K4 ["PermissionsChanged"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["rolePermissionChanged"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  LOADNIL R3
  GETTABLEKS R4 R1 K2 ["OwnerType"]
  GETIMPORT R5 K6 [Enum.CreatorType.User]
  JUMPIFNOTEQ R4 R5 [+68]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K19 [{"LayoutOrder", "Removable", "SubjectType", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "UseMask", "Action", "Enabled", "Items", "RolePermissionChanged"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Removable"]
  GETIMPORT R7 K6 [Enum.CreatorType.User]
  SETTABLEKS R7 R6 K10 ["SubjectType"]
  GETTABLEKS R7 R1 K20 ["OwnerName"]
  SETTABLEKS R7 R6 K11 ["CollaboratorName"]
  GETTABLEKS R7 R1 K21 ["OwnerId"]
  SETTABLEKS R7 R6 K12 ["CollaboratorId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K22 ["constructRBXThumbUrl"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K24 ["rbxThumbTypes"]
  GETTABLEKS R8 R9 K23 ["AvatarHeadShot"]
  GETTABLEKS R9 R1 K21 ["OwnerId"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K25 ["rbxThumbSizes"]
  GETTABLEKS R10 R11 K26 ["AvatarHeadshotImageSize"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K13 ["CollaboratorIcon"]
  LOADB R7 1
  SETTABLEKS R7 R6 K14 ["UseMask"]
  GETTABLEKS R7 R1 K27 ["Localization"]
  LOADK R9 K28 ["AssetConfigPackagePermissions"]
  LOADK R10 K29 ["OwnerLabel"]
  NAMECALL R7 R7 K30 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Action"]
  GETTABLEKS R7 R1 K16 ["Enabled"]
  SETTABLEKS R7 R6 K16 ["Enabled"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K17 ["Items"]
  LOADNIL R7
  SETTABLEKS R7 R6 K18 ["RolePermissionChanged"]
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+34]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K33 [{"LayoutOrder", "Removable", "GroupData", "Enabled", "Items", "RolePermissionChanged", "Permissions"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Removable"]
  GETTABLEKS R7 R1 K34 ["GroupMetadata"]
  SETTABLEKS R7 R6 K31 ["GroupData"]
  GETTABLEKS R7 R1 K16 ["Enabled"]
  SETTABLEKS R7 R6 K16 ["Enabled"]
  GETUPVAL R7 5
  MOVE R8 R1
  CALL R7 1 1
  SETTABLEKS R7 R6 K17 ["Items"]
  GETTABLEKS R7 R0 K35 ["rolePermissionChanged"]
  SETTABLEKS R7 R6 K18 ["RolePermissionChanged"]
  GETTABLEKS R7 R1 K32 ["Permissions"]
  SETTABLEKS R7 R6 K32 ["Permissions"]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  LOADK R5 K36 ["Frame"]
  DUPTABLE R6 K40 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
  GETIMPORT R7 K42 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K37 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K38 ["BackgroundTransparency"]
  GETTABLEKS R8 R1 K8 ["LayoutOrder"]
  ORK R7 R8 K43 [0]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  GETIMPORT R7 K46 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K39 ["Size"]
  DUPTABLE R7 K50 [{"UIListLayout", "Title", "Owner"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K47 ["UIListLayout"]
  DUPTABLE R10 K52 [{"SortOrder"}]
  GETIMPORT R11 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K51 ["SortOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K47 ["UIListLayout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K54 ["TextLabel"]
  DUPTABLE R10 K60 [{"Font", "TextSize", "TextColor3", "LayoutOrder", "Text", "TextXAlignment", "BackgroundTransparency", "Size"}]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K61 ["FONT"]
  SETTABLEKS R11 R10 K55 ["Font"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K62 ["FONT_SIZE_TITLE"]
  SETTABLEKS R11 R10 K56 ["TextSize"]
  GETTABLEKS R13 R2 K63 ["assetConfig"]
  GETTABLEKS R12 R13 K64 ["packagePermissions"]
  GETTABLEKS R11 R12 K65 ["subTextColor"]
  SETTABLEKS R11 R10 K57 ["TextColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETTABLEKS R11 R1 K27 ["Localization"]
  LOADK R13 K28 ["AssetConfigPackagePermissions"]
  LOADK R14 K66 ["PackageCreator"]
  NAMECALL R11 R11 K30 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K58 ["Text"]
  GETIMPORT R11 K68 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K59 ["TextXAlignment"]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["BackgroundTransparency"]
  GETIMPORT R11 K46 [UDim2.new]
  LOADN R12 1
  LOADN R13 50
  LOADN R14 0
  LOADN R15 50
  CALL R11 4 1
  SETTABLEKS R11 R10 K39 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K48 ["Title"]
  SETTABLEKS R3 R7 K49 ["Owner"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["Urls"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K12 ["AssetConfigConstants"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["withContext"]
  GETTABLEKS R13 R0 K8 ["Core"]
  GETTABLEKS R12 R13 K15 ["Components"]
  GETTABLEKS R11 R12 K16 ["AssetConfiguration"]
  GETTABLEKS R10 R11 K17 ["Permissions"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K18 ["PermissionsConstants"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K19 ["CollaboratorItem"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R10 K20 ["GroupCollaboratorItem"]
  CALL R13 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R1 K7 ["Framework"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K9 ["Util"]
  GETTABLEKS R15 R14 K21 ["deepJoin"]
  DUPCLOSURE R16 K22 [PROTO_0]
  CAPTURE VAL R11
  DUPCLOSURE R17 K23 [PROTO_1]
  GETTABLEKS R18 R2 K24 ["PureComponent"]
  LOADK R20 K25 ["PackageOwnerWidget"]
  NAMECALL R18 R18 K26 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K27 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K28 ["init"]
  DUPCLOSURE R19 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K30 ["render"]
  MOVE R19 R9
  DUPTABLE R20 K33 [{"Stylizer", "Localization"}]
  GETTABLEKS R21 R8 K31 ["Stylizer"]
  SETTABLEKS R21 R20 K31 ["Stylizer"]
  GETTABLEKS R21 R8 K32 ["Localization"]
  SETTABLEKS R21 R20 K32 ["Localization"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
