PROTO_0:
  GETTABLEKS R2 R0 K0 ["CanManage"]
  JUMPIF R2 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  NEWTABLE R2 0 1
  DUPTABLE R3 K4 [{"Key", "Display", "Description"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["EditKey"]
  SETTABLEKS R4 R3 K1 ["Key"]
  GETTABLEKS R4 R0 K6 ["Localization"]
  LOADK R6 K7 ["AssetConfigPackagePermissions"]
  LOADK R7 K8 ["EditLabel"]
  NAMECALL R4 R4 K9 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["Display"]
  GETTABLEKS R4 R0 K6 ["Localization"]
  LOADK R6 K7 ["AssetConfigPackagePermissions"]
  LOADK R7 K10 ["EditDescription"]
  NAMECALL R4 R4 K9 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["Description"]
  SETLIST R2 R3 1 [1]
  RETURN R2 1

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
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R1 R3 K1 ["Stylizer"]
  LOADNIL R4
  GETTABLEKS R5 R3 K2 ["OwnerType"]
  GETIMPORT R6 K6 [Enum.CreatorType.User]
  JUMPIFNOTEQ R5 R6 [+68]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"LayoutOrder", "Removable", "SubjectType", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "UseMask", "Action", "Enabled", "Items", "RolePermissionChanged"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  LOADB R8 0
  SETTABLEKS R8 R7 K9 ["Removable"]
  GETIMPORT R8 K6 [Enum.CreatorType.User]
  SETTABLEKS R8 R7 K10 ["SubjectType"]
  GETTABLEKS R8 R3 K20 ["OwnerName"]
  SETTABLEKS R8 R7 K11 ["CollaboratorName"]
  GETTABLEKS R8 R3 K21 ["OwnerId"]
  SETTABLEKS R8 R7 K12 ["CollaboratorId"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K22 ["constructRBXThumbUrl"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K24 ["rbxThumbTypes"]
  GETTABLEKS R9 R10 K23 ["AvatarHeadShot"]
  GETTABLEKS R10 R3 K21 ["OwnerId"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K25 ["rbxThumbSizes"]
  GETTABLEKS R11 R12 K26 ["AvatarHeadshotImageSize"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["CollaboratorIcon"]
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["UseMask"]
  GETTABLEKS R8 R3 K27 ["Localization"]
  LOADK R10 K28 ["AssetConfigPackagePermissions"]
  LOADK R11 K29 ["OwnerLabel"]
  NAMECALL R8 R8 K30 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["Action"]
  GETTABLEKS R8 R3 K16 ["Enabled"]
  SETTABLEKS R8 R7 K16 ["Enabled"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K17 ["Items"]
  LOADNIL R8
  SETTABLEKS R8 R7 K18 ["RolePermissionChanged"]
  CALL R5 2 1
  MOVE R4 R5
  JUMP [+35]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K33 [{"LayoutOrder", "Removable", "GroupData", "Enabled", "Items", "RolePermissionChanged", "Permissions"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  LOADB R8 0
  SETTABLEKS R8 R7 K9 ["Removable"]
  GETTABLEKS R8 R3 K34 ["GroupMetadata"]
  SETTABLEKS R8 R7 K31 ["GroupData"]
  GETTABLEKS R8 R3 K16 ["Enabled"]
  SETTABLEKS R8 R7 K16 ["Enabled"]
  GETUPVAL R8 5
  MOVE R9 R3
  MOVE R10 R2
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["Items"]
  GETTABLEKS R8 R0 K35 ["rolePermissionChanged"]
  SETTABLEKS R8 R7 K18 ["RolePermissionChanged"]
  GETTABLEKS R8 R3 K32 ["Permissions"]
  SETTABLEKS R8 R7 K32 ["Permissions"]
  CALL R5 2 1
  MOVE R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  LOADK R6 K36 ["Frame"]
  DUPTABLE R7 K40 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
  GETIMPORT R8 K42 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K37 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K38 ["BackgroundTransparency"]
  GETTABLEKS R9 R3 K8 ["LayoutOrder"]
  ORK R8 R9 K43 [0]
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  GETIMPORT R8 K46 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K39 ["Size"]
  DUPTABLE R8 K50 [{"UIListLayout", "Title", "Owner"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K47 ["UIListLayout"]
  DUPTABLE R11 K52 [{"SortOrder"}]
  GETIMPORT R12 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K51 ["SortOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K47 ["UIListLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K54 ["TextLabel"]
  DUPTABLE R11 K60 [{"Font", "TextSize", "TextColor3", "LayoutOrder", "Text", "TextXAlignment", "BackgroundTransparency", "Size"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K61 ["FONT"]
  SETTABLEKS R12 R11 K55 ["Font"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K62 ["FONT_SIZE_TITLE"]
  SETTABLEKS R12 R11 K56 ["TextSize"]
  GETTABLEKS R14 R1 K63 ["assetConfig"]
  GETTABLEKS R13 R14 K64 ["packagePermissions"]
  GETTABLEKS R12 R13 K65 ["subTextColor"]
  SETTABLEKS R12 R11 K57 ["TextColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K8 ["LayoutOrder"]
  GETTABLEKS R12 R3 K27 ["Localization"]
  LOADK R14 K28 ["AssetConfigPackagePermissions"]
  LOADK R15 K66 ["PackageCreator"]
  NAMECALL R12 R12 K30 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K58 ["Text"]
  GETIMPORT R12 K68 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K59 ["TextXAlignment"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  GETIMPORT R12 K46 [UDim2.new]
  LOADN R13 1
  LOADN R14 50
  LOADN R15 0
  LOADN R16 50
  CALL R12 4 1
  SETTABLEKS R12 R11 K39 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K48 ["Title"]
  SETTABLEKS R4 R8 K49 ["Owner"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R8 R4 K12 ["ContextHelper"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K13 ["AssetConfigConstants"]
  CALL R8 1 1
  GETTABLEKS R9 R7 K14 ["withLocalization"]
  GETTABLEKS R10 R3 K15 ["ContextServices"]
  GETTABLEKS R11 R10 K16 ["withContext"]
  GETTABLEKS R15 R0 K8 ["Core"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K18 ["AssetConfiguration"]
  GETTABLEKS R12 R13 K19 ["Permissions"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K20 ["PermissionsConstants"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R12 K21 ["CollaboratorItem"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R12 K22 ["GroupCollaboratorItem"]
  CALL R15 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R1 K7 ["Framework"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K9 ["Util"]
  GETTABLEKS R17 R16 K23 ["deepJoin"]
  DUPCLOSURE R18 K24 [PROTO_0]
  CAPTURE VAL R13
  DUPCLOSURE R19 K25 [PROTO_1]
  GETTABLEKS R20 R2 K26 ["PureComponent"]
  LOADK R22 K27 ["PackageOwnerWidget"]
  NAMECALL R20 R20 K28 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K29 [PROTO_3]
  CAPTURE VAL R17
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K30 ["init"]
  DUPCLOSURE R21 K31 [PROTO_5]
  CAPTURE VAL R9
  SETTABLEKS R21 R20 K32 ["render"]
  DUPCLOSURE R21 K33 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R6
  SETTABLEKS R21 R20 K34 ["renderContent"]
  MOVE R21 R11
  DUPTABLE R22 K37 [{"Stylizer", "Localization"}]
  GETTABLEKS R23 R10 K35 ["Stylizer"]
  SETTABLEKS R23 R22 K35 ["Stylizer"]
  GETTABLEKS R23 R10 K36 ["Localization"]
  SETTABLEKS R23 R22 K36 ["Localization"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  RETURN R20 1
