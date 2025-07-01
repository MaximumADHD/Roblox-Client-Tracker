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
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K35 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K35 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K36 ["bodyScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K37 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K37 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K38 ["bodyScaleCustomHeight"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K39 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K39 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K40 ["bodyAppearanceSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K44 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K44 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K47 ["bodyAppearanceCustomPartsFace"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K48 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K48 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K49 ["bodyAppearanceCustomPartsHead"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K50 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K50 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K51 ["bodyAppearanceCustomPartsTorso"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K52 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K52 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K53 ["bodyAppearanceCustomPartsLeftArm"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K54 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K54 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K55 ["bodyAppearanceCustomPartsRightArm"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K56 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K56 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K57 ["bodyAppearanceCustomPartsLeftLeg"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K58 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K58 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K59 ["bodyAppearanceCustomPartsRightLeg"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K60 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K60 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K61 ["bodyBuildSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K62 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K62 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K63 ["bodyBuildCustomHeight"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K64 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K64 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K65 ["bodyBuildCustomWidth"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K66 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K66 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K67 ["bodyBuildCustomHead"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K68 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K68 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K69 ["bodyBuildCustomBodyType"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K70 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K70 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K71 ["bodyBuildCustomProportions"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K72 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K72 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K73 ["collisionSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K74 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K74 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K75 ["collisionHitAndTouchDetectionSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K76 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K76 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K77 ["collisionMethodSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K78 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K78 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K79 ["collisionSizeSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K80 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K80 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K81 ["animationPacksSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K82 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K82 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K83 ["animationClipsSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K84 ["AnimationClipsRunSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K84 ["AnimationClipsRunSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K85 ["animationClipsRunSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K86 ["AnimationClipsWalkSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K86 ["AnimationClipsWalkSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K87 ["animationClipsWalkSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K88 ["AnimationClipsFallSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K88 ["AnimationClipsFallSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K89 ["animationClipsFallSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K90 ["AnimationClipsJumpSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K90 ["AnimationClipsJumpSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K91 ["animationClipsJumpSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K92 ["AnimationClipsIdleSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K92 ["AnimationClipsIdleSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K93 ["animationClipsIdleSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K94 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K94 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K95 ["animationClipsIdleAlt1Setting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K96 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K96 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K97 ["animationClipsIdleAlt2Setting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K98 ["AnimationClipsSwimSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K98 ["AnimationClipsSwimSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K99 ["animationClipsSwimSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K100 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K100 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K101 ["animationClipsSwimIdleSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K102 ["AnimationClipsClimbSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K102 ["AnimationClipsClimbSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K103 ["animationClipsClimbSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K104 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K104 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K105 ["accessoryScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K106 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K106 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K107 ["accessoryScaleLimitMethodSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K108 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K108 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K109 ["accessoryScaleLimitBoundsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K110 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K110 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K111 ["customAccessoriesSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K112 ["CustomAccessoriesHairSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K112 ["CustomAccessoriesHairSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K113 ["customAccessoriesHairSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K114 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K114 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K115 ["customAccessoriesHeadSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K116 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K116 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K117 ["customAccessoriesFaceSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K118 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K118 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K119 ["customAccessoriesNeckSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K120 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K120 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K121 ["customAccessoriesShoulderSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K122 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K122 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K123 ["customAccessoriesFrontSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K124 ["CustomAccessoriesBackSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K124 ["CustomAccessoriesBackSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K125 ["customAccessoriesBackSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K126 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K126 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K127 ["customAccessoriesWaistSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K128 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K128 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K129 ["accessoryBehaviorEnableSoundSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K130 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K130 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K131 ["accessoryBehaviorEnableVFXSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K132 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K132 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K133 ["clothingScaleSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K134 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K134 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K135 ["clothingScaleLimitBoundsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K136 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K136 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K137 ["customClothingSetting"]
  DUPTABLE R3 K140 [{"tshirt", "shirt"}]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K141 ["CustomClothingTopsTshirt"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K141 ["CustomClothingTopsTshirt"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K138 ["tshirt"]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K142 ["CustomClothingTopsShirt"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K142 ["CustomClothingTopsShirt"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K139 ["shirt"]
  SETTABLEKS R3 R2 K143 ["customClothingTopsSetting"]
  DUPTABLE R3 K146 [{"jacket", "sweater"}]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K147 ["CustomClothingOuterwearJacket"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K147 ["CustomClothingOuterwearJacket"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K144 ["jacket"]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K148 ["CustomClothingOuterwearSweater"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K148 ["CustomClothingOuterwearSweater"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K145 ["sweater"]
  SETTABLEKS R3 R2 K149 ["customClothingOuterwearSetting"]
  DUPTABLE R3 K153 [{"pants", "shorts", "dressSkirt"}]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K154 ["CustomClothingBottomsPants"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K154 ["CustomClothingBottomsPants"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K150 ["pants"]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K155 ["CustomClothingBottomsShorts"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K155 ["CustomClothingBottomsShorts"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K151 ["shorts"]
  DUPTABLE R4 K43 [{"assetId", "enabled"}]
  LOADK R7 K156 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K45 ["AssetId"]
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
  SETTABLEKS R5 R4 K41 ["assetId"]
  LOADK R7 K156 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K46 ["Enabled"]
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
  SETTABLEKS R5 R4 K42 ["enabled"]
  SETTABLEKS R4 R3 K152 ["dressSkirt"]
  SETTABLEKS R3 R2 K157 ["customClothingBottomsSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K158 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K158 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K159 ["customClothingLeftShoesSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K160 ["CustomClothingRightShoesSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K160 ["CustomClothingRightShoesSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K161 ["customClothingRightShoesSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K162 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K162 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K163 ["customClothingClassicShirtsSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K164 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K164 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K165 ["customClothingClassicTShirtsSetting"]
  DUPTABLE R3 K43 [{"assetId", "enabled"}]
  LOADK R6 K166 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K45 ["AssetId"]
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
  SETTABLEKS R4 R3 K41 ["assetId"]
  LOADK R6 K166 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K46 ["Enabled"]
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
  SETTABLEKS R4 R3 K42 ["enabled"]
  SETTABLEKS R3 R2 K167 ["customClothingClassicPantsSetting"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K168 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K168 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K169 ["previewActivated"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K170 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K170 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K171 ["previewDeactivated"]
  DUPTABLE R3 K9 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K10 ["PluginChanged"]
  LOADK R6 K172 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K7 ["fromPlugin"]
  LOADK R5 K12 ["AssetDmChanged"]
  LOADK R6 K172 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K8 ["fromAssetDm"]
  SETTABLEKS R3 R2 K173 ["currentSettingsPageChanged"]
  LOADK R3 K174 ["OnAvatarSettingsPublish"]
  SETTABLEKS R3 R2 K175 ["onAvatarSettingsPublish"]
  LOADK R3 K176 ["OnStudioPublishHold"]
  SETTABLEKS R3 R2 K177 ["onStudioPublishHold"]
  LOADK R3 K178 ["OnStudioCloseHold"]
  SETTABLEKS R3 R2 K179 ["onStudioCloseHold"]
  LOADK R3 K180 ["ReleaseStudioPublishHold"]
  SETTABLEKS R3 R2 K181 ["releaseStudioPublishHold"]
  LOADK R3 K182 ["ReleaseStudioCloseHold"]
  SETTABLEKS R3 R2 K183 ["releaseStudioCloseHold"]
  LOADK R3 K184 ["PublishSettings"]
  SETTABLEKS R3 R2 K185 ["publishSettings"]
  LOADK R3 K186 ["OnGameFirstSuccessfulPublish"]
  SETTABLEKS R3 R2 K187 ["onGameFirstSuccessfulPublish"]
  LOADK R3 K188 ["OnSettingsPublished"]
  SETTABLEKS R3 R2 K189 ["onSettingsPublished"]
  LOADK R3 K190 ["MockGamePublishFinishedSignal"]
  SETTABLEKS R3 R2 K191 ["mockGamePublishFinishedSignal"]
  RETURN R2 1
