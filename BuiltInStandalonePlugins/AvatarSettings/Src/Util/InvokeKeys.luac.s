PROTO_0:
  DUPTABLE R1 K2 [{"fromPlugin", "fromAssetDm"}]
  LOADK R3 K3 ["PluginChanged"]
  MOVE R4 R0
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K0 ["fromPlugin"]
  LOADK R3 K4 ["AssetDmChanged"]
  MOVE R4 R0
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K1 ["fromAssetDm"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K2 [{"assetId", "enabled"}]
  MOVE R4 R0
  LOADK R5 K3 ["AssetId"]
  CONCAT R3 R4 R5
  DUPTABLE R2 K6 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K7 ["PluginChanged"]
  MOVE R6 R3
  CONCAT R4 R5 R6
  SETTABLEKS R4 R2 K4 ["fromPlugin"]
  LOADK R5 K8 ["AssetDmChanged"]
  MOVE R6 R3
  CONCAT R4 R5 R6
  SETTABLEKS R4 R2 K5 ["fromAssetDm"]
  SETTABLEKS R2 R1 K0 ["assetId"]
  MOVE R4 R0
  LOADK R5 K9 ["Enabled"]
  CONCAT R3 R4 R5
  DUPTABLE R2 K6 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K7 ["PluginChanged"]
  MOVE R6 R3
  CONCAT R4 R5 R6
  SETTABLEKS R4 R2 K4 ["fromPlugin"]
  LOADK R5 K8 ["AssetDmChanged"]
  MOVE R6 R3
  CONCAT R4 R5 R6
  SETTABLEKS R4 R2 K5 ["fromAssetDm"]
  SETTABLEKS R2 R1 K1 ["enabled"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  NEWTABLE R2 128 0
  LOADK R3 K2 ["RequestLatestGameId"]
  SETTABLEKS R3 R2 K3 ["requestLatestGameId"]
  LOADK R3 K4 ["RequestSaveToRoblox"]
  SETTABLEKS R3 R2 K5 ["requestSaveToRoblox"]
  LOADK R3 K6 ["gameIdChanged"]
  SETTABLEKS R3 R2 K6 ["gameIdChanged"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K11 ["OnInitialization"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K11 ["OnInitialization"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K13 ["onInitialization"]
  LOADK R3 K14 ["OnInitializationStarted"]
  SETTABLEKS R3 R2 K15 ["onInitializationStarted"]
  LOADK R3 K16 ["DatabaseLoaded"]
  SETTABLEKS R3 R2 K17 ["databaseLoaded"]
  LOADK R3 K18 ["HasUnpublishedChanges"]
  SETTABLEKS R3 R2 K19 ["hasUnpublishedChanges"]
  LOADK R3 K20 ["HasUnpublishedAvatarTypeChanges"]
  SETTABLEKS R3 R2 K21 ["hasUnpublishedAvatarTypeChanges"]
  LOADK R3 K22 ["RequestUnpublishedChangesStatus"]
  SETTABLEKS R3 R2 K23 ["requestUnpublishedChangesStatus"]
  LOADK R3 K24 ["OnPluginClosed"]
  SETTABLEKS R3 R2 K24 ["OnPluginClosed"]
  LOADK R3 K25 ["OnPluginEnabledToggled"]
  SETTABLEKS R3 R2 K25 ["OnPluginEnabledToggled"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K26 ["CreateAvatarRules"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K26 ["CreateAvatarRules"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K26 ["CreateAvatarRules"]
  LOADK R3 K27 ["CurrentSettingsPage"]
  SETTABLEKS R3 R2 K28 ["currentSettingsPage"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K29 ["AvatarType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K29 ["AvatarType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K30 ["avatarType"]
  LOADK R3 K31 ["SyncAvatarSettings"]
  SETTABLEKS R3 R2 K32 ["syncAvatarSettings"]
  LOADK R3 K33 ["WorkspaceGravitySetting"]
  SETTABLEKS R3 R2 K34 ["workspaceGravitySetting"]
  LOADK R3 K35 ["ShowBoundingBoxes"]
  SETTABLEKS R3 R2 K36 ["showBoundingBoxes"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K37 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K37 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K38 ["bodyScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K39 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K39 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K40 ["bodyScaleCustomHeight"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K41 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K41 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K42 ["bodyAppearanceSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K46 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K46 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K49 ["bodyAppearanceCustomPartsFace"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K50 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K50 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K51 ["bodyAppearanceCustomPartsHead"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K52 ["BodyAppearanceCustomPartsMood"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K52 ["BodyAppearanceCustomPartsMood"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K53 ["bodyAppearanceCustomPartsMood"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K54 ["BodyAppearanceCustomPartsEyebrow"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K54 ["BodyAppearanceCustomPartsEyebrow"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K55 ["bodyAppearanceCustomPartsEyebrow"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K56 ["BodyAppearanceCustomPartsEyelash"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K56 ["BodyAppearanceCustomPartsEyelash"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K57 ["bodyAppearanceCustomPartsEyelash"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K58 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K58 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K59 ["bodyAppearanceCustomPartsTorso"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K60 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K60 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K61 ["bodyAppearanceCustomPartsLeftArm"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K62 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K62 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K63 ["bodyAppearanceCustomPartsRightArm"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K64 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K64 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K65 ["bodyAppearanceCustomPartsLeftLeg"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K66 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K66 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K67 ["bodyAppearanceCustomPartsRightLeg"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K68 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K68 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K69 ["bodyBuildSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K70 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K70 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K71 ["bodyBuildCustomHeight"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K72 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K72 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K73 ["bodyBuildCustomWidth"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K74 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K74 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K75 ["bodyBuildCustomHead"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K76 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K76 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K77 ["bodyBuildCustomBodyType"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K78 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K78 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K79 ["bodyBuildCustomProportions"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K80 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K80 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K81 ["collisionSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K82 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K82 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K83 ["collisionHitAndTouchDetectionSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K84 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K84 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K85 ["collisionMethodSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K86 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K86 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K87 ["collisionSizeSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K88 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K88 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K89 ["animationPacksSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K90 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K90 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K91 ["animationClipsSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K92 ["AnimationClipsRunSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K92 ["AnimationClipsRunSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K93 ["animationClipsRunSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K94 ["AnimationClipsWalkSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K94 ["AnimationClipsWalkSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K95 ["animationClipsWalkSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K96 ["AnimationClipsFallSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K96 ["AnimationClipsFallSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K97 ["animationClipsFallSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K98 ["AnimationClipsJumpSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K98 ["AnimationClipsJumpSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K99 ["animationClipsJumpSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K100 ["AnimationClipsIdleSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K100 ["AnimationClipsIdleSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K101 ["animationClipsIdleSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K102 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K102 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K103 ["animationClipsIdleAlt1Setting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K104 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K104 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K105 ["animationClipsIdleAlt2Setting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K106 ["AnimationClipsSwimSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K106 ["AnimationClipsSwimSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K107 ["animationClipsSwimSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K108 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K108 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K109 ["animationClipsSwimIdleSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K110 ["AnimationClipsClimbSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K110 ["AnimationClipsClimbSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K111 ["animationClipsClimbSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K112 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K112 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K113 ["accessoryScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K114 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K114 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K115 ["accessoryScaleLimitMethodSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K116 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K116 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K117 ["accessoryScaleLimitBoundsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K118 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K118 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K119 ["customAccessoriesSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K120 ["CustomAccessoriesHairSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K120 ["CustomAccessoriesHairSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K121 ["customAccessoriesHairSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K122 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K122 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K123 ["customAccessoriesHeadSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K124 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K124 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K125 ["customAccessoriesFaceSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K126 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K126 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K127 ["customAccessoriesNeckSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K128 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K128 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K129 ["customAccessoriesShoulderSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K130 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K130 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K131 ["customAccessoriesFrontSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K132 ["CustomAccessoriesBackSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K132 ["CustomAccessoriesBackSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K133 ["customAccessoriesBackSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K134 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K134 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K135 ["customAccessoriesWaistSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K136 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K136 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K137 ["accessoryBehaviorEnableSoundSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K138 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K138 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K139 ["accessoryBehaviorEnableVFXSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K140 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K140 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K141 ["clothingScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K142 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K142 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K143 ["clothingScaleLimitBoundsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K144 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K144 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K145 ["customClothingSetting"]
  DUPTABLE R3 K148 [{"tshirt", "shirt"}]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K149 ["CustomClothingTopsTshirt"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K149 ["CustomClothingTopsTshirt"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K146 ["tshirt"]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K150 ["CustomClothingTopsShirt"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K150 ["CustomClothingTopsShirt"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K147 ["shirt"]
  SETTABLEKS R3 R2 K151 ["customClothingTopsSetting"]
  DUPTABLE R3 K154 [{"jacket", "sweater"}]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K155 ["CustomClothingOuterwearJacket"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K155 ["CustomClothingOuterwearJacket"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K152 ["jacket"]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K156 ["CustomClothingOuterwearSweater"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K156 ["CustomClothingOuterwearSweater"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K153 ["sweater"]
  SETTABLEKS R3 R2 K157 ["customClothingOuterwearSetting"]
  DUPTABLE R3 K161 [{"pants", "shorts", "dressSkirt"}]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K162 ["CustomClothingBottomsPants"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K162 ["CustomClothingBottomsPants"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K158 ["pants"]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K163 ["CustomClothingBottomsShorts"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K163 ["CustomClothingBottomsShorts"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K159 ["shorts"]
  DUPTABLE R4 K45 [{"assetId", "enabled"}]
  LOADK R7 K164 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K47 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K43 ["assetId"]
  LOADK R7 K164 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K48 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K10 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K7 ["fromPlugin"]
  LOADK R8 K12 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K8 ["fromAssetDm"]
  SETTABLEKS R5 R4 K44 ["enabled"]
  SETTABLEKS R4 R3 K160 ["dressSkirt"]
  SETTABLEKS R3 R2 K165 ["customClothingBottomsSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K166 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K166 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K167 ["customClothingLeftShoesSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K168 ["CustomClothingRightShoesSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K168 ["CustomClothingRightShoesSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K169 ["customClothingRightShoesSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K170 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K170 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K171 ["customClothingClassicShirtsSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K172 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K172 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K173 ["customClothingClassicTShirtsSetting"]
  DUPTABLE R3 K45 [{"assetId", "enabled"}]
  LOADK R6 K174 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K47 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K43 ["assetId"]
  LOADK R6 K174 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K48 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K10 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K7 ["fromPlugin"]
  LOADK R7 K12 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K8 ["fromAssetDm"]
  SETTABLEKS R4 R3 K44 ["enabled"]
  SETTABLEKS R3 R2 K175 ["customClothingClassicPantsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K176 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K176 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K177 ["previewActivated"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K178 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K178 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K179 ["previewDeactivated"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K180 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K180 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K181 ["currentSettingsPageChanged"]
  LOADK R3 K182 ["OnAvatarSettingsPublish"]
  SETTABLEKS R3 R2 K183 ["onAvatarSettingsPublish"]
  LOADK R3 K184 ["OnStudioPublishHold"]
  SETTABLEKS R3 R2 K185 ["onStudioPublishHold"]
  LOADK R3 K186 ["OnStudioCloseHold"]
  SETTABLEKS R3 R2 K187 ["onStudioCloseHold"]
  LOADK R3 K188 ["ReleaseStudioPublishHold"]
  SETTABLEKS R3 R2 K189 ["releaseStudioPublishHold"]
  LOADK R3 K190 ["ReleaseStudioCloseHold"]
  SETTABLEKS R3 R2 K191 ["releaseStudioCloseHold"]
  LOADK R3 K192 ["PublishSettings"]
  SETTABLEKS R3 R2 K193 ["publishSettings"]
  LOADK R3 K194 ["DiscardSettings"]
  SETTABLEKS R3 R2 K195 ["discardSettings"]
  LOADK R3 K196 ["OnSettingsPublished"]
  SETTABLEKS R3 R2 K197 ["onSettingsPublished"]
  LOADK R3 K198 ["MockGamePublishFinishedSignal"]
  SETTABLEKS R3 R2 K199 ["mockGamePublishFinishedSignal"]
  LOADK R3 K200 ["RefreshPluginState"]
  SETTABLEKS R3 R2 K201 ["refreshPluginState"]
  RETURN R2 1
