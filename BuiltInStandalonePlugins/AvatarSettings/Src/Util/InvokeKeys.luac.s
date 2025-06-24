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
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K6 ["OnInitialization"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K6 ["OnInitialization"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K8 ["onInitialization"]
  LOADK R3 K9 ["OnInitializationStarted"]
  SETTABLEKS R3 R2 K10 ["onInitializationStarted"]
  LOADK R3 K11 ["DatabaseLoaded"]
  SETTABLEKS R3 R2 K12 ["databaseLoaded"]
  LOADK R3 K13 ["HasUnpublishedChanges"]
  SETTABLEKS R3 R2 K14 ["hasUnpublishedChanges"]
  LOADK R3 K15 ["HasUnpublishedAvatarTypeChanges"]
  SETTABLEKS R3 R2 K16 ["hasUnpublishedAvatarTypeChanges"]
  LOADK R3 K17 ["RequestUnpublishedChangesStatus"]
  SETTABLEKS R3 R2 K18 ["requestUnpublishedChangesStatus"]
  LOADK R3 K19 ["OnPluginClosed"]
  SETTABLEKS R3 R2 K19 ["OnPluginClosed"]
  LOADK R3 K20 ["OnPluginEnabledToggled"]
  SETTABLEKS R3 R2 K20 ["OnPluginEnabledToggled"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K21 ["CreateAvatarRules"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K21 ["CreateAvatarRules"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K21 ["CreateAvatarRules"]
  LOADK R3 K22 ["CurrentSettingsPage"]
  SETTABLEKS R3 R2 K23 ["currentSettingsPage"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K24 ["AvatarType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K24 ["AvatarType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K25 ["avatarType"]
  LOADK R3 K26 ["SyncAvatarSettings"]
  SETTABLEKS R3 R2 K27 ["syncAvatarSettings"]
  LOADK R3 K28 ["WorkspaceGravitySetting"]
  SETTABLEKS R3 R2 K29 ["workspaceGravitySetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K30 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K30 ["BodyScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K31 ["bodyScaleSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K32 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K32 ["BodyScaleCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K33 ["bodyScaleCustomHeight"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K34 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K34 ["BodyAppearanceSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K35 ["bodyAppearanceSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K39 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K39 ["BodyAppearanceCustomPartsFace"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K42 ["bodyAppearanceCustomPartsFace"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K43 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K43 ["BodyAppearanceCustomPartsHead"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K44 ["bodyAppearanceCustomPartsHead"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K45 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K45 ["BodyAppearanceCustomPartsTorso"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K46 ["bodyAppearanceCustomPartsTorso"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K47 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K47 ["BodyAppearanceCustomPartsLeftArm"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K48 ["bodyAppearanceCustomPartsLeftArm"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K49 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K49 ["BodyAppearanceCustomPartsRightArm"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K50 ["bodyAppearanceCustomPartsRightArm"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K51 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K51 ["BodyAppearanceCustomPartsLeftLeg"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K52 ["bodyAppearanceCustomPartsLeftLeg"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K53 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K53 ["BodyAppearanceCustomPartsRightLeg"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K54 ["bodyAppearanceCustomPartsRightLeg"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K55 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K55 ["BodyBuildSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K56 ["bodyBuildSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K57 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K57 ["BodyBuildCustomHeight"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K58 ["bodyBuildCustomHeight"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K59 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K59 ["BodyBuildCustomWidth"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K60 ["bodyBuildCustomWidth"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K61 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K61 ["BodyBuildCustomHead"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K62 ["bodyBuildCustomHead"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K63 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K63 ["BodyBuildCustomBodyType"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K64 ["bodyBuildCustomBodyType"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K65 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K65 ["BodyBuildCustomProportions"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K66 ["bodyBuildCustomProportions"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K67 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K67 ["CollisionModeSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K68 ["collisionSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K69 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K69 ["HitAndTouchDetectionSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K70 ["collisionHitAndTouchDetectionSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K71 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K71 ["CollisionMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K72 ["collisionMethodSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K73 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K73 ["SingleColliderSize"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K74 ["collisionSizeSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K75 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K75 ["AnimationPacksSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K76 ["animationPacksSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K77 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K77 ["AnimationClipsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K78 ["animationClipsSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K79 ["AnimationClipsRunSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K79 ["AnimationClipsRunSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K80 ["animationClipsRunSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K81 ["AnimationClipsWalkSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K81 ["AnimationClipsWalkSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K82 ["animationClipsWalkSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K83 ["AnimationClipsFallSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K83 ["AnimationClipsFallSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K84 ["animationClipsFallSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K85 ["AnimationClipsJumpSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K85 ["AnimationClipsJumpSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K86 ["animationClipsJumpSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K87 ["AnimationClipsIdleSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K87 ["AnimationClipsIdleSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K88 ["animationClipsIdleSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K89 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K89 ["AnimationClipsIdleAlt1Setting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K90 ["animationClipsIdleAlt1Setting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K91 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K91 ["AnimationClipsIdleAlt2Setting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K92 ["animationClipsIdleAlt2Setting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K93 ["AnimationClipsSwimSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K93 ["AnimationClipsSwimSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K94 ["animationClipsSwimSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K95 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K95 ["AnimationClipsSwimIdleSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K96 ["animationClipsSwimIdleSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K97 ["AnimationClipsClimbSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K97 ["AnimationClipsClimbSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K98 ["animationClipsClimbSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K99 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K99 ["AccessoryScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K100 ["accessoryScaleSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K101 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K101 ["AccessoryScaleLimitMethodSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K102 ["accessoryScaleLimitMethodSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K103 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K103 ["AccessoryScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K104 ["accessoryScaleLimitBoundsSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K105 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K105 ["CustomAccessoriesSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K106 ["customAccessoriesSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K107 ["CustomAccessoriesHairSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K107 ["CustomAccessoriesHairSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K108 ["customAccessoriesHairSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K109 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K109 ["CustomAccessoriesHeadSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K110 ["customAccessoriesHeadSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K111 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K111 ["CustomAccessoriesFaceSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K112 ["customAccessoriesFaceSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K113 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K113 ["CustomAccessoriesNeckSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K114 ["customAccessoriesNeckSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K115 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K115 ["CustomAccessoriesShoulderSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K116 ["customAccessoriesShoulderSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K117 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K117 ["CustomAccessoriesFrontSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K118 ["customAccessoriesFrontSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K119 ["CustomAccessoriesBackSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K119 ["CustomAccessoriesBackSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K120 ["customAccessoriesBackSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K121 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K121 ["CustomAccessoriesWaistSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K122 ["customAccessoriesWaistSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K123 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K123 ["AccessoryBehaviorEnableSoundSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K124 ["accessoryBehaviorEnableSoundSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K125 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K125 ["AccessoryBehaviorEnableVFXSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K126 ["accessoryBehaviorEnableVFXSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K127 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K127 ["ClothingScaleSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K128 ["clothingScaleSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K129 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K129 ["ClothingScaleLimitBoundsSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K130 ["clothingScaleLimitBoundsSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K131 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K131 ["CustomClothingSetting"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K132 ["customClothingSetting"]
  DUPTABLE R3 K135 [{"tshirt", "shirt"}]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K136 ["CustomClothingTopsTshirt"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K136 ["CustomClothingTopsTshirt"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K133 ["tshirt"]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K137 ["CustomClothingTopsShirt"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K137 ["CustomClothingTopsShirt"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K134 ["shirt"]
  SETTABLEKS R3 R2 K138 ["customClothingTopsSetting"]
  DUPTABLE R3 K141 [{"jacket", "sweater"}]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K142 ["CustomClothingOuterwearJacket"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K142 ["CustomClothingOuterwearJacket"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K139 ["jacket"]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K143 ["CustomClothingOuterwearSweater"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K143 ["CustomClothingOuterwearSweater"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K140 ["sweater"]
  SETTABLEKS R3 R2 K144 ["customClothingOuterwearSetting"]
  DUPTABLE R3 K148 [{"pants", "shorts", "dressSkirt"}]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K149 ["CustomClothingBottomsPants"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K149 ["CustomClothingBottomsPants"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K145 ["pants"]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K150 ["CustomClothingBottomsShorts"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K150 ["CustomClothingBottomsShorts"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K146 ["shorts"]
  DUPTABLE R4 K38 [{"assetId", "enabled"}]
  LOADK R7 K151 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K40 ["AssetId"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K36 ["assetId"]
  LOADK R7 K151 ["CustomClothingBottomsDressSkirt"]
  LOADK R8 K41 ["Enabled"]
  CONCAT R6 R7 R8
  DUPTABLE R5 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R8 K5 ["PluginChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K2 ["fromPlugin"]
  LOADK R8 K7 ["AssetDmChanged"]
  MOVE R9 R6
  CONCAT R7 R8 R9
  SETTABLEKS R7 R5 K3 ["fromAssetDm"]
  SETTABLEKS R5 R4 K37 ["enabled"]
  SETTABLEKS R4 R3 K147 ["dressSkirt"]
  SETTABLEKS R3 R2 K152 ["customClothingBottomsSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K153 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K153 ["CustomClothingLeftShoesSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K154 ["customClothingLeftShoesSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K155 ["CustomClothingRightShoesSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K155 ["CustomClothingRightShoesSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K156 ["customClothingRightShoesSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K157 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K157 ["CustomClothingClassicShirtsSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K158 ["customClothingClassicShirtsSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K159 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K159 ["CustomClothingClassicTShirtsSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K160 ["customClothingClassicTShirtsSetting"]
  DUPTABLE R3 K38 [{"assetId", "enabled"}]
  LOADK R6 K161 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K40 ["AssetId"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K36 ["assetId"]
  LOADK R6 K161 ["CustomClothingClassicPantsSetting"]
  LOADK R7 K41 ["Enabled"]
  CONCAT R5 R6 R7
  DUPTABLE R4 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R7 K5 ["PluginChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["fromPlugin"]
  LOADK R7 K7 ["AssetDmChanged"]
  MOVE R8 R5
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K3 ["fromAssetDm"]
  SETTABLEKS R4 R3 K37 ["enabled"]
  SETTABLEKS R3 R2 K162 ["customClothingClassicPantsSetting"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K163 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K163 ["PreviewActivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K164 ["previewActivated"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K165 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K165 ["PreviewDeactivated"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K166 ["previewDeactivated"]
  DUPTABLE R3 K4 [{"fromPlugin", "fromAssetDm"}]
  LOADK R5 K5 ["PluginChanged"]
  LOADK R6 K167 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["fromPlugin"]
  LOADK R5 K7 ["AssetDmChanged"]
  LOADK R6 K167 ["CurrentSettingsPageChanged"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["fromAssetDm"]
  SETTABLEKS R3 R2 K168 ["currentSettingsPageChanged"]
  LOADK R3 K169 ["OnAvatarSettingsPublish"]
  SETTABLEKS R3 R2 K170 ["onAvatarSettingsPublish"]
  LOADK R3 K171 ["OnStudioPublishHold"]
  SETTABLEKS R3 R2 K172 ["onStudioPublishHold"]
  LOADK R3 K173 ["OnStudioCloseHold"]
  SETTABLEKS R3 R2 K174 ["onStudioCloseHold"]
  LOADK R3 K175 ["ReleaseStudioPublishHold"]
  SETTABLEKS R3 R2 K176 ["releaseStudioPublishHold"]
  LOADK R3 K177 ["ReleaseStudioCloseHold"]
  SETTABLEKS R3 R2 K178 ["releaseStudioCloseHold"]
  LOADK R3 K179 ["PublishSettings"]
  SETTABLEKS R3 R2 K180 ["publishSettings"]
  LOADK R3 K181 ["OnGameFirstSuccessfulPublish"]
  SETTABLEKS R3 R2 K182 ["onGameFirstSuccessfulPublish"]
  LOADK R3 K183 ["OnSettingsPublished"]
  SETTABLEKS R3 R2 K184 ["onSettingsPublished"]
  LOADK R3 K185 ["MockGamePublishFinishedSignal"]
  SETTABLEKS R3 R2 K186 ["mockGamePublishFinishedSignal"]
  RETURN R2 1
