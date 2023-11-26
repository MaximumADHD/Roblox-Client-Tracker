PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_recalculateContent"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K7 [{"_externalLocaleIdGetter", "_externalTranslatorGetter", "_externalFallbackTranslatorGetter", "_externalLocaleIdChangedSignal", "_externalLocaleIdChangedConnection", "_content", "_signal"}]
  GETTABLEKS R3 R0 K9 ["getLocaleId"]
  ORK R2 R3 K8 []
  SETTABLEKS R2 R1 K0 ["_externalLocaleIdGetter"]
  GETTABLEKS R3 R0 K10 ["getTranslator"]
  ORK R2 R3 K8 []
  SETTABLEKS R2 R1 K1 ["_externalTranslatorGetter"]
  GETTABLEKS R3 R0 K11 ["getFallbackTranslator"]
  ORK R2 R3 K8 []
  SETTABLEKS R2 R1 K2 ["_externalFallbackTranslatorGetter"]
  GETTABLEKS R2 R0 K12 ["localeIdChanged"]
  SETTABLEKS R2 R1 K3 ["_externalLocaleIdChangedSignal"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["_externalLocaleIdChangedConnection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["_content"]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K6 ["_signal"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K5 ["_content"]
  LOADK R4 K13 ["content"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["_content"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K15 [setmetatable]
  CALL R2 2 0
  GETTABLEKS R2 R1 K3 ["_externalLocaleIdChangedSignal"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K3 ["_externalLocaleIdChangedSignal"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K16 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K4 ["_externalLocaleIdChangedConnection"]
  NAMECALL R2 R1 K17 ["_recalculateContent"]
  CALL R2 1 0
  RETURN R1 1

PROTO_2:
  LOADK R0 K0 ["en-us"]
  RETURN R0 1

PROTO_3:
  LOADK R4 K0 ["TEST_"]
  MOVE R5 R1
  CONCAT R3 R4 R5
  JUMPIFNOT R2 [+20]
  FASTCALL1 TYPE R2 [+3]
  MOVE R5 R2
  GETIMPORT R4 K2 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K3 ["table"] [+14]
  GETIMPORT R4 K5 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  MOVE R9 R3
  LOADK R10 K6 ["_"]
  MOVE R11 R7
  LOADK R12 K7 ["="]
  MOVE R13 R8
  CONCAT R3 R9 R13
  FORGLOOP R4 2 [-7]
  RETURN R3 1

PROTO_4:
  DUPTABLE R1 K1 [{"FormatByKey"}]
  DUPCLOSURE R2 K2 [PROTO_3]
  SETTABLEKS R2 R1 K0 ["FormatByKey"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  DUPCLOSURE R2 K5 [PROTO_2]
  SETTABLEKS R2 R1 K1 ["getLocaleId"]
  DUPCLOSURE R2 K6 [PROTO_4]
  SETTABLEKS R2 R1 K2 ["getTranslator"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["localeIdChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Value"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_8:
  DUPTABLE R1 K1 [{"FormatByKey"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K0 ["FormatByKey"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  DUPTABLE R2 K4 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K1 ["getLocaleId"]
  DUPCLOSURE R3 K5 [PROTO_8]
  SETTABLEKS R3 R2 K2 ["getTranslator"]
  LOADK R5 K6 ["Value"]
  NAMECALL R3 R0 K7 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["localeIdChanged"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Value"]
  RETURN R0 1

PROTO_11:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetTranslator"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  DUPTABLE R3 K4 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K1 ["getLocaleId"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K2 ["getTranslator"]
  LOADK R6 K5 ["Value"]
  NAMECALL R4 R1 K6 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["localeIdChanged"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_13:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_signal"]
  GETVARARGS R3 4294967295
  NAMECALL R1 R1 K1 ["subscribe"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["content"]
  RETURN R1 1

PROTO_15:
  LOADK R5 K0 ["Studio.Toolbox.AssetConfigSales.Target"]
  DUPTABLE R6 K3 [{"market", "user"}]
  SETTABLEKS R1 R6 K1 ["market"]
  SETTABLEKS R2 R6 K2 ["user"]
  NAMECALL R3 R0 K4 ["_safeLocalize"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["content"]
  JUMPIFEQKN R1 K1 [1] [+6]
  GETTABLEKS R4 R2 K2 ["Voting"]
  GETTABLEKS R3 R4 K3 ["VotesText"]
  JUMPIF R3 [+4]
  GETTABLEKS R4 R2 K2 ["Voting"]
  GETTABLEKS R3 R4 K4 ["VoteText"]
  GETIMPORT R4 K7 [string.format]
  LOADK R5 K8 ["%d %s"]
  MOVE R6 R1
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_17:
  MOVE R4 R1
  LOADK R5 K0 ["Category"]
  LOADK R6 K1 ["name"]
  LOADK R7 K1 ["name"]
  NAMECALL R2 R0 K2 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_18:
  MOVE R4 R1
  LOADK R5 K0 ["Sort"]
  LOADK R6 K1 ["name"]
  LOADK R7 K2 ["sort"]
  NAMECALL R2 R0 K3 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_19:
  MOVE R4 R1
  LOADK R5 K0 ["Suggestions"]
  LOADK R6 K1 ["name"]
  LOADK R7 K2 ["search"]
  NAMECALL R2 R0 K3 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_20:
  MOVE R4 R1
  LOADK R5 K0 ["Footer"]
  LOADK R6 K1 ["name"]
  LOADK R7 K2 ["color"]
  NAMECALL R2 R0 K3 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_21:
  LOADK R4 K0 ["Studio.Toolbox.AssetConfigPackagePermissions.TooManyCollaboratorsText"]
  DUPTABLE R5 K2 [{"maxNumCollaborators"}]
  SETTABLEKS R1 R5 K1 ["maxNumCollaborators"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_22:
  LOADK R6 K0 ["Studio.Toolbox.Purchase.BuyPrompt"]
  DUPTABLE R7 K4 [{"name", "creator", "robux"}]
  SETTABLEKS R1 R7 K1 ["name"]
  SETTABLEKS R2 R7 K2 ["creator"]
  SETTABLEKS R3 R7 K3 ["robux"]
  NAMECALL R4 R0 K5 ["_safeLocalize"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_23:
  LOADK R6 K0 ["Studio.Toolbox.Purchase.InsufficientPrompt"]
  DUPTABLE R7 K4 [{"robux", "name", "creator"}]
  SETTABLEKS R1 R7 K1 ["robux"]
  SETTABLEKS R2 R7 K2 ["name"]
  SETTABLEKS R3 R7 K3 ["creator"]
  NAMECALL R4 R0 K5 ["_safeLocalize"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_24:
  LOADK R4 K0 ["Studio.Toolbox.Purchase.FailedDetails"]
  DUPTABLE R5 K2 [{"name"}]
  SETTABLEKS R1 R5 K1 ["name"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_25:
  LOADK R4 K0 ["Studio.Toolbox.Purchase.SuccessDetails"]
  DUPTABLE R5 K2 [{"name"}]
  SETTABLEKS R1 R5 K1 ["name"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_26:
  LOADK R5 K0 ["Studio.Toolbox.ScriptWarning.DetailText"]
  DUPTABLE R6 K3 [{"assetName", "numScripts"}]
  SETTABLEKS R1 R6 K1 ["assetName"]
  SETTABLEKS R2 R6 K2 ["numScripts"]
  NAMECALL R3 R0 K4 ["_safeLocalize"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_27:
  LOADK R4 K0 ["Studio.Toolbox.MaxTagsDescription"]
  DUPTABLE R5 K2 [{"max"}]
  SETTABLEKS R1 R5 K1 ["max"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_28:
  LOADK R5 K0 ["Studio.Toolbox.ThumbnailStatus."]
  MOVE R6 R1
  CONCAT R4 R5 R6
  NAMECALL R2 R0 K1 ["_safeLocalize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_29:
  LOADK R4 K0 ["Studio.Toolbox.AssetConfigFooter.UploadWithFee"]
  DUPTABLE R5 K2 [{"price"}]
  SETTABLEKS R1 R5 K1 ["price"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_30:
  LOADK R4 K0 ["Studio.Toolbox.AssetConfigPackagePermissions.LockedGroup"]
  DUPTABLE R5 K2 [{"roleName"}]
  SETTABLEKS R1 R5 K1 ["roleName"]
  NAMECALL R2 R0 K3 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_31:
  GETTABLEKS R1 R0 K0 ["_externalLocaleIdChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_externalLocaleIdChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_externalLocaleIdChangedConnection"]
  RETURN R0 0

PROTO_32:
  LOADK R1 K0 ["en-us"]
  RETURN R1 1

PROTO_33:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADK R1 K0 [""]
  JUMP [+7]
  GETIMPORT R1 K2 [settings]
  CALL R1 0 1
  LOADK R3 K3 ["StudioForceLocale"]
  NAMECALL R1 R1 K4 ["GetFVariable"]
  CALL R1 2 1
  LENGTH R2 R1
  JUMPIFEQKN R2 K5 [0] [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K6 ["_externalLocaleIdGetter"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K6 ["_externalLocaleIdGetter"]
  CALL R2 0 -1
  RETURN R2 -1
  NAMECALL R2 R0 K7 ["_getDefaultLocaleId"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_34:
  MOVE R2 R1
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K0 ["_getLocaleId"]
  CALL R2 1 1
  MOVE R1 R2
  GETTABLEKS R2 R0 K1 ["_externalTranslatorGetter"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["_externalTranslatorGetter"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_35:
  GETTABLEKS R1 R0 K0 ["_externalFallbackTranslatorGetter"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["_externalFallbackTranslatorGetter"]
  NAMECALL R2 R0 K1 ["_getDefaultLocaleId"]
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_36:
  NAMECALL R3 R0 K0 ["_getDefaultLocaleId"]
  CALL R3 1 -1
  NAMECALL R1 R0 K1 ["_getTranslator"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_37:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["_content"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_content"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K2 ["_content"]
  LOADK R4 K3 ["content"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K3 ["content"]
  GETTABLEKS R2 R0 K4 ["_signal"]
  GETTABLEKS R4 R0 K3 ["content"]
  NAMECALL R2 R2 K5 ["fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_38:
  NAMECALL R3 R0 K0 ["_getTranslator"]
  CALL R3 1 1
  JUMPIF R3 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["shouldDebugWarnings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K3 [warn]
  LOADK R5 K4 ["Toolbox Localization:_safeLocalize() translator = nil"]
  CALL R4 1 0
  RETURN R1 1
  MOVE R6 R3
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R4 R0 K5 ["_safeLocalizeInner"]
  CALL R4 4 2
  JUMPIF R4 [+112]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["shouldDebugWarnings"]
  CALL R6 0 1
  JUMPIFNOT R6 [+17]
  GETIMPORT R6 K8 [string.find]
  MOVE R7 R5
  LOADK R8 K9 ["LocalizationTable or parent tables do not contain a translation"]
  CALL R6 2 1
  JUMPIF R6 [+11]
  GETIMPORT R6 K3 [warn]
  LOADK R7 K10 ["Toolbox error in localizing key \"%s\" to locale \"%s\": %s"]
  MOVE R9 R1
  GETTABLEKS R10 R3 K11 ["LocaleId"]
  MOVE R11 R5
  NAMECALL R7 R7 K12 ["format"]
  CALL R7 4 -1
  CALL R6 -1 0
  NAMECALL R6 R0 K13 ["_getDefaultTranslator"]
  CALL R6 1 1
  JUMPIF R6 [+10]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETIMPORT R7 K3 [warn]
  LOADK R8 K14 ["Toolbox Localization:_safeLocalize() defaultTranslator = nil"]
  CALL R7 1 0
  RETURN R1 1
  MOVE R9 R6
  MOVE R10 R1
  MOVE R11 R2
  NAMECALL R7 R0 K5 ["_safeLocalizeInner"]
  CALL R7 4 2
  MOVE R4 R7
  MOVE R5 R8
  JUMPIF R4 [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+17]
  GETIMPORT R7 K8 [string.find]
  MOVE R8 R5
  LOADK R9 K9 ["LocalizationTable or parent tables do not contain a translation"]
  CALL R7 2 1
  JUMPIF R7 [+11]
  GETIMPORT R7 K3 [warn]
  LOADK R8 K15 ["	Toolbox error in localizing key \"%s\" to default locale \"%s\": %s"]
  MOVE R10 R1
  GETTABLEKS R11 R6 K11 ["LocaleId"]
  MOVE R12 R5
  NAMECALL R8 R8 K12 ["format"]
  CALL R8 4 -1
  CALL R7 -1 0
  MOVE R5 R1
  JUMP [+15]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R7 K3 [warn]
  LOADK R8 K16 ["	Toolbox falling back to default locale \"%s\" for key \"%s\""]
  GETTABLEKS R10 R6 K11 ["LocaleId"]
  MOVE R11 R1
  NAMECALL R8 R8 K12 ["format"]
  CALL R8 3 -1
  CALL R7 -1 0
  NAMECALL R7 R0 K17 ["_getFallbackTranslator"]
  CALL R7 1 1
  LOADNIL R8
  MOVE R11 R7
  MOVE R12 R1
  MOVE R13 R2
  NAMECALL R9 R0 K5 ["_safeLocalizeInner"]
  CALL R9 4 2
  MOVE R4 R9
  MOVE R8 R10
  JUMPIFNOT R4 [+2]
  MOVE R5 R8
  RETURN R5 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["shouldDebugWarnings"]
  CALL R9 0 1
  JUMPIFNOT R9 [+8]
  GETIMPORT R9 K3 [warn]
  LOADK R10 K18 ["	Toolbox error in localizing key \"%s\" using fallback table"]
  MOVE R12 R1
  NAMECALL R10 R10 K12 ["format"]
  CALL R10 2 -1
  CALL R9 -1 0
  RETURN R5 1

PROTO_39:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["FormatByKey"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_40:
  GETIMPORT R4 K1 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CALL R4 1 -1
  RETURN R4 -1

PROTO_41:
  DUPTABLE R3 K25 [{"ToolboxToolbarName", "Categorization", "Category", "Suggestions", "Sort", "Voting", "HasScripts", "Footer", "SearchBarDefaultText", "SearchBarCreatorText", "SearchBarIdVerified", "EndorseBadgeTooltipText", "InfoBannerText", "NoPluginsFound", "SearchResults", "SearchOptions", "Tabs", "RightClickMenu", "Status", "Sales", "PackagePermissions", "AssetConfig", "PurchaseFlow", "ScriptWarning", "GrantAssetPermission"}]
  LOADK R6 K26 ["Studio.Toolbox.General.ToolboxToolbarName"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["ToolboxToolbarName"]
  DUPTABLE R4 K29 [{"AllModels"}]
  LOADK R7 K30 ["Studio.Toolbox.General.AllModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["AllModels"]
  SETTABLEKS R4 R3 K1 ["Categorization"]
  NEWTABLE R4 128 0
  LOADK R7 K31 ["Studio.Toolbox.General.CategoryModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K32 ["FreeModels"]
  LOADK R7 K33 ["Studio.Toolbox.General.CategoryDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K34 ["FreeDecals"]
  LOADK R7 K35 ["Studio.Toolbox.General.CategoryMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K36 ["FreeMeshes"]
  LOADK R7 K37 ["Studio.Toolbox.General.CategoryAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K38 ["FreeAudio"]
  LOADK R7 K39 ["Studio.Toolbox.General.CategoryFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K40 ["FreeFonts"]
  LOADK R7 K41 ["Studio.Toolbox.General.CategoryPaidPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K42 ["PaidPlugins"]
  LOADK R7 K43 ["Studio.Toolbox.General.CategoryVideos"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K44 ["FreeVideo"]
  LOADK R7 K45 ["Studio.Toolbox.General.CategoryMyModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K46 ["MyModels"]
  LOADK R7 K47 ["Studio.Toolbox.General.CategoryMyDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K48 ["MyDecals"]
  LOADK R7 K49 ["Studio.Toolbox.General.CategoryMyMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K50 ["MyMeshes"]
  LOADK R7 K51 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K52 ["MyAudio"]
  LOADK R7 K53 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K54 ["MyPlugins"]
  LOADK R7 K55 ["Studio.Toolbox.General.CategoryMyPackages"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K56 ["MyPackages"]
  LOADK R7 K57 ["Studio.Toolbox.General.CategoryMyVideos"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K58 ["MyVideo"]
  LOADK R7 K59 ["Studio.Toolbox.General.CategoryMyAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K60 ["MyAnimations"]
  LOADK R7 K61 ["Studio.Toolbox.General.CategoryMyFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K62 ["MyFonts"]
  LOADK R7 K63 ["Studio.Toolbox.General.CategoryRecentModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K64 ["RecentModels"]
  LOADK R7 K65 ["Studio.Toolbox.General.CategoryRecentDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K66 ["RecentDecals"]
  LOADK R7 K67 ["Studio.Toolbox.General.CategoryRecentMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K68 ["RecentMeshes"]
  LOADK R7 K69 ["Studio.Toolbox.General.CategoryRecentAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K70 ["RecentAudio"]
  LOADK R7 K71 ["Studio.Toolbox.General.CategoryRecentVideos"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K72 ["RecentVideo"]
  LOADK R7 K73 ["Studio.Toolbox.General.CategoryRecentAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K74 ["RecentAnimations"]
  LOADK R7 K75 ["Studio.Toolbox.General.CategoryRecentFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K76 ["RecentFonts"]
  LOADK R7 K77 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K78 ["GroupModels"]
  LOADK R7 K79 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K80 ["GroupDecals"]
  LOADK R7 K81 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K82 ["GroupMeshes"]
  LOADK R7 K83 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K84 ["GroupAudio"]
  LOADK R7 K85 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K86 ["GroupPackages"]
  LOADK R7 K87 ["Studio.Toolbox.General.CategoryGroupPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K88 ["GroupPlugins"]
  LOADK R7 K89 ["Studio.Toolbox.General.CategoryCreationsDevelopmentSectionDivider"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K90 ["CreationsDevelopmentSectionDivider"]
  LOADK R7 K91 ["Studio.Toolbox.General.CategoryCreationsModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K92 ["CreationsModels"]
  LOADK R7 K93 ["Studio.Toolbox.General.CategoryCreationsDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K94 ["CreationsDecals"]
  LOADK R7 K95 ["Studio.Toolbox.General.CategoryCreationsAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K96 ["CreationsAudio"]
  LOADK R7 K97 ["Studio.Toolbox.General.CategoryCreationsMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K98 ["CreationsMeshes"]
  LOADK R7 K99 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K100 ["CreationsPlugins"]
  LOADK R7 K101 ["Studio.Toolbox.General.CategoryCreationsAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K102 ["CreationsAnimations"]
  LOADK R7 K77 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K103 ["CreationsGroupModels"]
  LOADK R7 K79 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K104 ["CreationsGroupDecals"]
  LOADK R7 K81 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K105 ["CreationsGroupMeshes"]
  LOADK R7 K83 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K106 ["CreationsGroupAudio"]
  LOADK R7 K85 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K107 ["CreationsGroupPackages"]
  LOADK R7 K87 ["Studio.Toolbox.General.CategoryGroupPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K108 ["CreationsGroupPlugins"]
  LOADK R7 K109 ["Studio.Toolbox.General.CategoryGroupAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K110 ["CreationsGroupAnimations"]
  LOADK R7 K111 ["Studio.Toolbox.General.CategoryCreationsCatalogSectionDivider"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K112 ["CreationsCatalogSectionDivider"]
  LOADK R7 K113 ["Studio.Toolbox.General.CategoryCreationsHats"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K114 ["CreationsHats"]
  LOADK R7 K115 ["Studio.Toolbox.General.CategoryCreationsTeeShirts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K116 ["CreationsTeeShirts"]
  LOADK R7 K117 ["Studio.Toolbox.General.CategoryCreationsShirts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K118 ["CreationsShirts"]
  LOADK R7 K119 ["Studio.Toolbox.General.CategoryCreationsPants"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K120 ["CreationsPants"]
  LOADK R7 K121 ["Studio.Toolbox.General.CategoryCreationsHair"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K122 ["CreationsHair"]
  LOADK R7 K123 ["Studio.Toolbox.General.CategoryCreationsFaceAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K124 ["CreationsFaceAccessories"]
  LOADK R7 K125 ["Studio.Toolbox.General.CategoryCreationsNeckAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K126 ["CreationsNeckAccessories"]
  LOADK R7 K127 ["Studio.Toolbox.General.CategoryCreationsShoulderAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K128 ["CreationsShoulderAccessories"]
  LOADK R7 K129 ["Studio.Toolbox.General.CategoryCreationsFrontAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K130 ["CreationsFrontAccessories"]
  LOADK R7 K131 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K132 ["CreationsBackAccessories"]
  LOADK R7 K133 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K134 ["CreationsWaistAccessories"]
  LOADK R7 K135 ["Studio.Toolbox.General.CategoryCreationsTShirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K136 ["CreationsTShirtAccessories"]
  LOADK R7 K137 ["Studio.Toolbox.General.CategoryCreationsShirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K138 ["CreationsShirtAccessories"]
  LOADK R7 K139 ["Studio.Toolbox.General.CategoryCreationsPantsAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K140 ["CreationsPantsAccessories"]
  LOADK R7 K141 ["Studio.Toolbox.General.CategoryCreationsJacketAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K142 ["CreationsJacketAccessories"]
  LOADK R7 K143 ["Studio.Toolbox.General.CategoryCreationsSweaterAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K144 ["CreationsSweaterAccessories"]
  LOADK R7 K145 ["Studio.Toolbox.General.CategoryCreationsShortsAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K146 ["CreationsShortsAccessories"]
  LOADK R7 K147 ["Studio.Toolbox.General.CategoryCreationsLeftShoeAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K148 ["CreationsLeftShoeAccessories"]
  LOADK R7 K149 ["Studio.Toolbox.General.CategoryCreationsRightShoeAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K150 ["CreationsRightShoeAccessories"]
  LOADK R7 K151 ["Studio.Toolbox.General.CategoryCreationsDressSkirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K152 ["CreationsDressSkirtAccessories"]
  LOADK R7 K153 ["Studio.Toolbox.General.CategoryCreationsGroupHats"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K154 ["CreationsGroupHats"]
  LOADK R7 K155 ["Studio.Toolbox.General.CategoryCreationsGroupHair"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K156 ["CreationsGroupHair"]
  LOADK R7 K157 ["Studio.Toolbox.General.CategoryCreationsGroupFaceAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K158 ["CreationsGroupFaceAccessories"]
  LOADK R7 K159 ["Studio.Toolbox.General.CategoryCreationsGroupNeckAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K160 ["CreationsGroupNeckAccessories"]
  LOADK R7 K161 ["Studio.Toolbox.General.CategoryCreationsGroupShoulderAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K162 ["CreationsGroupShoulderAccessories"]
  LOADK R7 K163 ["Studio.Toolbox.General.CategoryCreationsGroupFrontAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K164 ["CreationsGroupFrontAccessories"]
  LOADK R7 K165 ["Studio.Toolbox.General.CategoryCreationsGroupBackAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K166 ["CreationsGroupBackAccessories"]
  LOADK R7 K167 ["Studio.Toolbox.General.CategoryCreationsGroupWaistAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K168 ["CreationsGroupWaistAccessories"]
  LOADK R7 K169 ["Studio.Toolbox.General.CategoryCreationsGroupTShirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K170 ["CreationsGroupTShirtAccessories"]
  LOADK R7 K171 ["Studio.Toolbox.General.CategoryCreationsGroupShirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K172 ["CreationsGroupShirtAccessories"]
  LOADK R7 K173 ["Studio.Toolbox.General.CategoryCreationsGroupPantsAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K174 ["CreationsGroupPantsAccessories"]
  LOADK R7 K175 ["Studio.Toolbox.General.CategoryCreationsGroupJacketAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K176 ["CreationsGroupJacketAccessories"]
  LOADK R7 K177 ["Studio.Toolbox.General.CategoryCreationsGroupSweaterAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K178 ["CreationsGroupSweaterAccessories"]
  LOADK R7 K179 ["Studio.Toolbox.General.CategoryCreationsGroupShortsAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K180 ["CreationsGroupShortsAccessories"]
  LOADK R7 K181 ["Studio.Toolbox.General.CategoryCreationsGroupLeftShoeAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K182 ["CreationsGroupLeftShoeAccessories"]
  LOADK R7 K183 ["Studio.Toolbox.General.CategoryCreationsGroupRightShoeAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K184 ["CreationsGroupRightShoeAccessories"]
  LOADK R7 K185 ["Studio.Toolbox.General.CategoryCreationsGroupDressSkirtAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K186 ["CreationsGroupDressSkirtAccessories"]
  SETTABLEKS R4 R3 K2 ["Category"]
  DUPTABLE R4 K193 [{"IntroText", "NPC", "Vehicle", "Weapon", "Building", "Light"}]
  LOADK R7 K194 ["Studio.Toolbox.General.SuggestionsIntroText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K187 ["IntroText"]
  LOADK R7 K195 ["Studio.Toolbox.General.SuggestionsNPC"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K188 ["NPC"]
  LOADK R7 K196 ["Studio.Toolbox.General.SuggestionsVehicle"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K189 ["Vehicle"]
  LOADK R7 K197 ["Studio.Toolbox.General.SuggestionsWeapon"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K190 ["Weapon"]
  LOADK R7 K198 ["Studio.Toolbox.General.SuggestionsBuilding"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K191 ["Building"]
  LOADK R7 K199 ["Studio.Toolbox.General.SuggestionsLight"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K192 ["Light"]
  SETTABLEKS R4 R3 K3 ["Suggestions"]
  DUPTABLE R4 K206 [{"ByText", "Relevance", "MostTaken", "Favorites", "Updated", "Ratings"}]
  LOADK R7 K207 ["Studio.Toolbox.General.SortByText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K200 ["ByText"]
  LOADK R7 K208 ["Studio.Toolbox.General.SortByRelevance"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K201 ["Relevance"]
  LOADK R7 K209 ["Studio.Toolbox.General.SortByMostTaken"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K202 ["MostTaken"]
  LOADK R7 K210 ["Studio.Toolbox.General.SortByFavorites"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K203 ["Favorites"]
  LOADK R7 K211 ["Studio.Toolbox.General.SortByUpdated"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K204 ["Updated"]
  LOADK R7 K212 ["Studio.Toolbox.General.SortByRatings"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K205 ["Ratings"]
  SETTABLEKS R4 R3 K4 ["Sort"]
  DUPTABLE R4 K215 [{"VoteText", "VotesText"}]
  LOADK R7 K216 ["Studio.Toolbox.General.VotingVoteText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K213 ["VoteText"]
  LOADK R7 K217 ["Studio.Toolbox.General.VotingVotesText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K214 ["VotesText"]
  SETTABLEKS R4 R3 K5 ["Voting"]
  DUPTABLE R4 K218 [{"HasScripts"}]
  LOADK R7 K219 ["Studio.Toolbox.General.HasScripts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["HasScripts"]
  SETTABLEKS R4 R3 K6 ["HasScripts"]
  DUPTABLE R4 K224 [{"BGText", "White", "Black", "None"}]
  LOADK R7 K225 ["Studio.Toolbox.General.FooterBGText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K220 ["BGText"]
  LOADK R7 K226 ["Studio.Toolbox.General.FooterButtonWhiteName"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K221 ["White"]
  LOADK R7 K227 ["Studio.Toolbox.General.FooterButtonBlackName"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K222 ["Black"]
  LOADK R7 K228 ["Studio.Toolbox.General.FooterButtonNoneName"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K223 ["None"]
  SETTABLEKS R4 R3 K7 ["Footer"]
  LOADK R6 K229 ["Studio.Toolbox.General.SearchBarDefaultText"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["SearchBarDefaultText"]
  LOADK R6 K230 ["Studio.Toolbox.General.SearchBarCreatorText"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["SearchBarCreatorText"]
  LOADK R6 K231 ["Studio.Toolbox.General.SearchBarIdVerified"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["SearchBarIdVerified"]
  LOADK R6 K232 ["Studio.Toolbox.General.EndorseBadgeTooltipText"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["EndorseBadgeTooltipText"]
  LOADK R6 K233 ["Studio.Toolbox.General.InfoBannerText"]
  NAMECALL R4 R0 K27 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K12 ["InfoBannerText"]
  DUPTABLE R4 K237 [{"TextLine1", "TextLine2", "LinkText"}]
  LOADK R7 K238 ["Studio.Toolbox.General.NoPluginsFound.TextLine1"]
  DUPTABLE R8 K240 [{"link"}]
  LOADK R9 K241 ["{link}"]
  SETTABLEKS R9 R8 K239 ["link"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K234 ["TextLine1"]
  LOADK R7 K242 ["Studio.Toolbox.General.NoPluginsFound.TextLine2"]
  DUPTABLE R8 K240 [{"link"}]
  LOADK R9 K241 ["{link}"]
  SETTABLEKS R9 R8 K239 ["link"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K235 ["TextLine2"]
  LOADK R7 K243 ["Studio.Toolbox.General.NoPluginsFound.LinkText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K236 ["LinkText"]
  SETTABLEKS R4 R3 K13 ["NoPluginsFound"]
  DUPTABLE R4 K246 [{"SearchResults", "SearchResultsKeyword", "ClearAll"}]
  LOADK R7 K247 ["Studio.Toolbox.General.SearchResults"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["SearchResults"]
  LOADK R7 K248 ["Studio.Toolbox.General.SearchResultsKeyword"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K244 ["SearchResultsKeyword"]
  LOADK R7 K249 ["Studio.Toolbox.General.SearchResultsClearAll"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K245 ["ClearAll"]
  SETTABLEKS R4 R3 K14 ["SearchResults"]
  DUPTABLE R4 K254 [{"AllViews", "Creator", "Sort", "Apply", "Cancel"}]
  LOADK R7 K255 ["Studio.Toolbox.General.SearchOptionsAllViews"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K250 ["AllViews"]
  LOADK R7 K0 ["ToolboxToolbarName"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K251 ["Creator"]
  LOADK R7 K1 ["Categorization"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Sort"]
  LOADK R7 K2 ["Category"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K252 ["Apply"]
  LOADK R7 K3 ["Suggestions"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K253 ["Cancel"]
  SETTABLEKS R4 R3 K15 ["SearchOptions"]
  DUPTABLE R4 K264 [{"Marketplace", "Inventory", "Recent", "Creations"}]
  LOADK R7 K9 ["SearchBarCreatorText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K260 ["Marketplace"]
  LOADK R7 K10 ["SearchBarIdVerified"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K261 ["Inventory"]
  LOADK R7 K11 ["EndorseBadgeTooltipText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K262 ["Recent"]
  LOADK R7 K12 ["InfoBannerText"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K263 ["Creations"]
  SETTABLEKS R4 R3 K16 ["Tabs"]
  DUPTABLE R4 K276 [{"CopyAssetID", "CopyMeshID", "CopyTextureID", "ViewInBrowser", "ConfigureAsset", "EditAsset", "Report"}]
  LOADK R7 K21 ["AssetConfig"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K269 ["CopyAssetID"]
  LOADK R7 K22 ["PurchaseFlow"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K270 ["CopyMeshID"]
  LOADK R7 K23 ["ScriptWarning"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K271 ["CopyTextureID"]
  LOADK R7 K24 ["GrantAssetPermission"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K272 ["ViewInBrowser"]
  LOADK R7 K25 [{"ToolboxToolbarName", "Categorization", "Category", "Suggestions", "Sort", "Voting", "HasScripts", "Footer", "SearchBarDefaultText", "SearchBarCreatorText", "SearchBarIdVerified", "EndorseBadgeTooltipText", "InfoBannerText", "NoPluginsFound", "SearchResults", "SearchOptions", "Tabs", "RightClickMenu", "Status", "Sales", "PackagePermissions", "AssetConfig", "PurchaseFlow", "ScriptWarning", "GrantAssetPermission"}]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K273 ["ConfigureAsset"]
  LOADK R7 K26 ["Studio.Toolbox.General.ToolboxToolbarName"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K274 ["EditAsset"]
  LOADK R7 K27 ["_safeLocalize"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K275 ["Report"]
  SETTABLEKS R4 R3 K17 ["RightClickMenu"]
  NEWTABLE R4 8 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K285 ["ReviewPending"]
  LOADK R8 K30 ["Studio.Toolbox.General.AllModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K287 ["Moderated"]
  LOADK R8 K32 ["FreeModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K289 ["ReviewApproved"]
  LOADK R8 K34 ["FreeDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K291 ["OnSale"]
  LOADK R8 K36 ["FreeMeshes"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K293 ["OffSale"]
  LOADK R8 K38 ["FreeAudio"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K295 ["DelayedRelease"]
  LOADK R8 K40 ["FreeFonts"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K284 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K297 ["Free"]
  LOADK R8 K42 ["PaidPlugins"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K18 ["Status"]
  DUPTABLE R4 K305 [{"Sale", "Onsale", "Offsale", "PremiumBenefits", "CreatorDashboardLinkMessage", "CreatorDashboardName"}]
  LOADK R7 K50 ["MyMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K299 ["Sale"]
  LOADK R7 K51 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K300 ["Onsale"]
  LOADK R7 K52 ["MyAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K301 ["Offsale"]
  LOADK R7 K53 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K302 ["PremiumBenefits"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+9]
  LOADK R7 K54 ["MyPlugins"]
  DUPTABLE R8 K312 [{"creatorDashboardLink"}]
  LOADK R9 K57 ["Studio.Toolbox.General.CategoryMyVideos"]
  SETTABLEKS R9 R8 K311 ["creatorDashboardLink"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K303 ["CreatorDashboardLinkMessage"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+5]
  LOADK R7 K58 ["MyVideo"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K304 ["CreatorDashboardName"]
  SETTABLEKS R4 R3 K19 ["Sales"]
  DUPTABLE R4 K320 [{"ActionDropdown", "Collaborators", "Searchbar", "Title", "Warning", "RightClickMenu"}]
  DUPTABLE R5 K331 [{"NoAccessLabel", "UseViewLabel", "EditLabel", "OwnerLabel", "MultipleLabel", "MultipleLabelTooltip", "GroupOwnedTooltip", "NoAccessDescription", "UseViewDescription", "EditDescription"}]
  LOADK R8 K76 ["RecentFonts"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K321 ["NoAccessLabel"]
  LOADK R8 K77 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K322 ["UseViewLabel"]
  LOADK R8 K78 ["GroupModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K323 ["EditLabel"]
  LOADK R8 K79 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K324 ["OwnerLabel"]
  LOADK R8 K80 ["GroupDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K325 ["MultipleLabel"]
  LOADK R8 K81 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K326 ["MultipleLabelTooltip"]
  LOADK R8 K82 ["GroupMeshes"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K327 ["GroupOwnedTooltip"]
  LOADK R8 K83 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K328 ["NoAccessDescription"]
  LOADK R8 K84 ["GroupAudio"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K329 ["UseViewDescription"]
  LOADK R8 K85 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K330 ["EditDescription"]
  SETTABLEKS R5 R4 K315 ["ActionDropdown"]
  DUPTABLE R5 K346 [{"FriendsCollaboratorType", "UsersCollaboratorType", "GroupsCollaboratorType", "MyFriendsCollaborator"}]
  LOADK R8 K91 ["Studio.Toolbox.General.CategoryCreationsModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K342 ["FriendsCollaboratorType"]
  LOADK R8 K92 ["CreationsModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K343 ["UsersCollaboratorType"]
  LOADK R8 K93 ["Studio.Toolbox.General.CategoryCreationsDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K344 ["GroupsCollaboratorType"]
  LOADK R8 K94 ["CreationsDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K345 ["MyFriendsCollaborator"]
  SETTABLEKS R5 R4 K316 ["Collaborators"]
  DUPTABLE R5 K353 [{"Default", "NoResults"}]
  LOADK R8 K98 ["CreationsMeshes"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K351 ["Default"]
  LOADK R8 K99 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K352 ["NoResults"]
  SETTABLEKS R5 R4 K317 ["Searchbar"]
  DUPTABLE R5 K358 [{"PackageCreator", "ShareWith"}]
  LOADK R8 K103 ["CreationsGroupModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K356 ["PackageCreator"]
  LOADK R8 K104 ["CreationsGroupDecals"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K357 ["ShareWith"]
  SETTABLEKS R5 R4 K318 ["Title"]
  DUPTABLE R5 K363 [{"UserOwned", "GroupOwned"}]
  LOADK R8 K108 ["CreationsGroupPlugins"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K361 ["UserOwned"]
  LOADK R8 K109 ["Studio.Toolbox.General.CategoryGroupAnimations"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K362 ["GroupOwned"]
  SETTABLEKS R5 R4 K319 ["Warning"]
  DUPTABLE R5 K367 [{"PackageDetails"}]
  LOADK R8 K112 ["CreationsCatalogSectionDivider"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K366 ["PackageDetails"]
  SETTABLEKS R5 R4 K17 ["RightClickMenu"]
  SETTABLEKS R4 R3 K20 ["PackagePermissions"]
  NEWTABLE R4 64 0
  DUPTABLE R5 K383 [{"Title", "Description", "Ownership", "Genre", "Copy", "Package", "Comments", "DistributeOnMarketplace", "LearnMore", "Me", "AssetType", "Sharing", "Tags", "TermsOfUse", "AssetTextDisplay"}]
  LOADK R8 K128 ["CreationsShoulderAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K318 ["Title"]
  LOADK R8 K129 ["Studio.Toolbox.General.CategoryCreationsFrontAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K369 ["Description"]
  LOADK R8 K130 ["CreationsFrontAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K370 ["Ownership"]
  LOADK R8 K131 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K371 ["Genre"]
  LOADK R8 K132 ["CreationsBackAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K372 ["Copy"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+5]
  LOADK R8 K133 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K373 ["Package"]
  LOADK R8 K134 ["CreationsWaistAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K374 ["Comments"]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  LOADK R8 K135 ["Studio.Toolbox.General.CategoryCreationsTShirtAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  JUMP [+4]
  LOADK R8 K136 ["CreationsTShirtAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K375 ["DistributeOnMarketplace"]
  LOADK R8 K137 ["Studio.Toolbox.General.CategoryCreationsShirtAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K376 ["LearnMore"]
  LOADK R8 K138 ["CreationsShirtAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K377 ["Me"]
  LOADK R8 K139 ["Studio.Toolbox.General.CategoryCreationsPantsAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K378 ["AssetType"]
  LOADK R8 K140 ["CreationsPantsAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K379 ["Sharing"]
  LOADK R8 K141 ["Studio.Toolbox.General.CategoryCreationsJacketAccessory"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K380 ["Tags"]
  LOADK R8 K142 ["CreationsJacketAccessories"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K381 ["TermsOfUse"]
  NEWTABLE R6 64 0
  GETIMPORT R7 K401 [Enum.AssetType.Model]
  LOADK R10 K146 ["CreationsShortsAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K404 [Enum.AssetType.Decal]
  LOADK R10 K149 ["Studio.Toolbox.General.CategoryCreationsRightShoeAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K407 [Enum.AssetType.Mesh]
  LOADK R10 K152 ["CreationsDressSkirtAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K410 [Enum.AssetType.Audio]
  LOADK R10 K155 ["Studio.Toolbox.General.CategoryCreationsGroupHair"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K413 [Enum.AssetType.Hat]
  LOADK R10 K158 ["CreationsGroupFaceAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K416 [Enum.AssetType.TShirt]
  LOADK R10 K161 ["Studio.Toolbox.General.CategoryCreationsGroupShoulderAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K419 [Enum.AssetType.Shirt]
  LOADK R10 K164 ["CreationsGroupFrontAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K422 [Enum.AssetType.Pants]
  LOADK R10 K167 ["Studio.Toolbox.General.CategoryCreationsGroupWaistAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K425 [Enum.AssetType.Plugin]
  LOADK R10 K170 ["CreationsGroupTShirtAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K428 [Enum.AssetType.HairAccessory]
  LOADK R10 K173 ["Studio.Toolbox.General.CategoryCreationsGroupPantsAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K431 [Enum.AssetType.FaceAccessory]
  LOADK R10 K176 ["CreationsGroupJacketAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K434 [Enum.AssetType.NeckAccessory]
  LOADK R10 K179 ["Studio.Toolbox.General.CategoryCreationsGroupShortsAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K437 [Enum.AssetType.ShoulderAccessory]
  LOADK R10 K182 ["CreationsGroupLeftShoeAccessories"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K440 [Enum.AssetType.FrontAccessory]
  LOADK R10 K185 ["Studio.Toolbox.General.CategoryCreationsGroupDressSkirtAccessory"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K443 [Enum.AssetType.BackAccessory]
  LOADK R10 K188 ["NPC"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K446 [Enum.AssetType.WaistAccessory]
  LOADK R10 K191 ["Building"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K449 [Enum.AssetType.TShirtAccessory]
  LOADK R10 K194 ["Studio.Toolbox.General.SuggestionsIntroText"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K452 [Enum.AssetType.ShirtAccessory]
  LOADK R10 K197 ["Studio.Toolbox.General.SuggestionsWeapon"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K455 [Enum.AssetType.PantsAccessory]
  LOADK R10 K200 ["ByText"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K458 [Enum.AssetType.JacketAccessory]
  LOADK R10 K203 ["Favorites"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K461 [Enum.AssetType.SweaterAccessory]
  LOADK R10 K206 [{"ByText", "Relevance", "MostTaken", "Favorites", "Updated", "Ratings"}]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K464 [Enum.AssetType.ShortsAccessory]
  LOADK R10 K209 ["Studio.Toolbox.General.SortByMostTaken"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K467 [Enum.AssetType.LeftShoeAccessory]
  LOADK R10 K212 ["Studio.Toolbox.General.SortByRatings"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K470 [Enum.AssetType.RightShoeAccessory]
  LOADK R10 K215 [{"VoteText", "VotesText"}]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K473 [Enum.AssetType.DressSkirtAccessory]
  LOADK R10 K218 [{"HasScripts"}]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K476 [Enum.AssetType.Torso]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K221 ["White"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K479 [Enum.AssetType.RightArm]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K224 [{"BGText", "White", "Black", "None"}]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K482 [Enum.AssetType.LeftArm]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K227 ["Studio.Toolbox.General.FooterButtonBlackName"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K485 [Enum.AssetType.LeftLeg]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K230 ["Studio.Toolbox.General.SearchBarCreatorText"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K488 [Enum.AssetType.RightLeg]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K233 ["Studio.Toolbox.General.InfoBannerText"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K491 [Enum.AssetType.DynamicHead]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K236 ["LinkText"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K494 [Enum.AssetType.EyebrowAccessory]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K239 ["link"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K497 [Enum.AssetType.EyelashAccessory]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K242 ["Studio.Toolbox.General.NoPluginsFound.TextLine2"]
  NAMECALL R8 R0 K27 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K382 ["AssetTextDisplay"]
  SETTABLEKS R5 R4 K499 ["PublishAsset"]
  DUPTABLE R5 K502 [{"PreviewLabel", "Change"}]
  LOADK R8 K247 ["Studio.Toolbox.General.SearchResults"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K500 ["PreviewLabel"]
  LOADK R8 K248 ["Studio.Toolbox.General.SearchResultsKeyword"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K501 ["Change"]
  SETTABLEKS R5 R4 K505 ["PreviewArea"]
  DUPTABLE R5 K508 [{"Override", "NewAsset"}]
  LOADK R8 K253 ["Cancel"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K506 ["Override"]
  LOADK R8 K254 [{"AllViews", "Creator", "Sort", "Apply", "Cancel"}]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K507 ["NewAsset"]
  SETTABLEKS R5 R4 K7 ["Footer"]
  DUPTABLE R5 K514 [{"Title", "FilterID", "AnimationID", "InvalidAnimationID"}]
  LOADK R8 K3 ["Suggestions"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K318 ["Title"]
  LOADK R8 K4 ["Sort"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K511 ["FilterID"]
  LOADK R8 K5 ["Voting"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K512 ["AnimationID"]
  LOADK R8 K6 ["HasScripts"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K513 ["InvalidAnimationID"]
  SETTABLEKS R5 R4 K506 ["Override"]
  DUPTABLE R5 K519 [{"Title"}]
  LOADK R8 K8 ["SearchBarDefaultText"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K318 ["Title"]
  SETTABLEKS R5 R4 K521 ["Import"]
  DUPTABLE R5 K523 [{"IDCopied"}]
  LOADK R8 K12 ["InfoBannerText"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K522 ["IDCopied"]
  SETTABLEKS R5 R4 K525 ["Upload"]
  DUPTABLE R5 K530 [{"Success", "Failure", "Back", "CreatorDashboardMessage", "CreatorDashboardName"}]
  LOADK R8 K19 ["Sales"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K526 ["Success"]
  LOADK R8 K20 ["PackagePermissions"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K527 ["Failure"]
  LOADK R8 K21 ["AssetConfig"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K528 ["Back"]
  GETUPVAL R7 5
  JUMPIFNOT R7 [+9]
  LOADK R8 K22 ["PurchaseFlow"]
  DUPTABLE R9 K312 [{"creatorDashboardLink"}]
  LOADK R10 K57 ["Studio.Toolbox.General.CategoryMyVideos"]
  SETTABLEKS R10 R9 K311 ["creatorDashboardLink"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 3 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K529 ["CreatorDashboardMessage"]
  GETUPVAL R7 5
  JUMPIFNOT R7 [+5]
  LOADK R8 K58 ["MyVideo"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K304 ["CreatorDashboardName"]
  SETTABLEKS R5 R4 K535 ["UploadResult"]
  DUPTABLE R5 K538 [{"Current", "Restore"}]
  LOADK R8 K27 ["_safeLocalize"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K536 ["Current"]
  LOADK R8 K28 ["AllModels"]
  NAMECALL R6 R0 K27 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K537 ["Restore"]
  SETTABLEKS R5 R4 K541 ["VersionsHistory"]
  NEWTABLE R5 4 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K542 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K19 ["Sales"]
  LOADK R9 K31 ["Studio.Toolbox.General.CategoryModels"]
  NAMECALL R7 R0 K27 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K542 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K544 ["Versions"]
  LOADK R9 K33 ["Studio.Toolbox.General.CategoryDecals"]
  NAMECALL R7 R0 K27 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K542 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K546 ["General"]
  LOADK R9 K35 ["Studio.Toolbox.General.CategoryMeshes"]
  NAMECALL R7 R0 K27 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K542 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K548 ["Permissions"]
  LOADK R9 K37 ["Studio.Toolbox.General.CategoryAudio"]
  NAMECALL R7 R0 K27 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K550 ["SideTabs"]
  LOADK R7 K39 ["Studio.Toolbox.General.CategoryFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K552 ["DistributeAgreement"]
  LOADK R7 K41 ["Studio.Toolbox.General.CategoryPaidPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K554 ["Terms"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  LOADK R7 K43 ["Studio.Toolbox.General.CategoryVideos"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K556 ["Accounts"]
  LOADK R7 K45 ["Studio.Toolbox.General.CategoryMyModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K558 ["PublicSharingInformation"]
  LOADK R7 K47 ["Studio.Toolbox.General.CategoryMyDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K560 ["MustShare"]
  LOADK R7 K49 ["Studio.Toolbox.General.CategoryMyMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K562 ["AnyoneOnRoblox"]
  LOADK R7 K51 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K564 ["OnlyMe"]
  GETUPVAL R6 6
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  LOADK R7 K53 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K252 ["Apply"]
  LOADK R7 K3 ["Suggestions"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K253 ["Cancel"]
  LOADK R7 K54 ["MyPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K567 ["Error"]
  LOADK R7 K56 ["MyPackages"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K569 ["NetworkError"]
  LOADK R7 K58 ["MyVideo"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K571 ["GetAssetFailed"]
  LOADK R7 K60 ["MyAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K573 ["Discard"]
  LOADK R7 K62 ["MyFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K575 ["Close"]
  LOADK R7 K64 ["RecentModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K577 ["DiscardMessage"]
  LOADK R7 K66 ["RecentDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K579 ["Insert"]
  LOADK R7 K68 ["RecentMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K581 ["Install"]
  LOADK R7 K70 ["RecentAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K583 ["Loading"]
  LOADK R7 K72 ["RecentVideo"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K585 ["Update"]
  LOADK R7 K74 ["RecentAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K587 ["Installed"]
  LOADK R7 K76 ["RecentFonts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K589 ["InstallSuccess"]
  LOADK R7 K78 ["GroupModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K591 ["InstallFailure"]
  LOADK R7 K80 ["GroupDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K593 ["Installing"]
  LOADK R7 K82 ["GroupMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K595 ["NoTagFound"]
  SETTABLEKS R4 R3 K21 ["AssetConfig"]
  DUPTABLE R4 K607 [{"Cancel", "Retry", "Buy", "BuyRobux", "FreeTitle", "BuyTitle", "InsufficientFundsTitle", "CurrentBalance", "FailedHeader", "FreeSuccessHeader", "SuccessHeader", "Free", "OK"}]
  LOADK R7 K96 ["CreationsAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K253 ["Cancel"]
  LOADK R7 K97 ["Studio.Toolbox.General.CategoryCreationsMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K596 ["Retry"]
  LOADK R7 K98 ["CreationsMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K597 ["Buy"]
  LOADK R7 K99 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K598 ["BuyRobux"]
  LOADK R7 K100 ["CreationsPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K599 ["FreeTitle"]
  LOADK R7 K101 ["Studio.Toolbox.General.CategoryCreationsAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K600 ["BuyTitle"]
  LOADK R7 K102 ["CreationsAnimations"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K601 ["InsufficientFundsTitle"]
  LOADK R7 K103 ["CreationsGroupModels"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K602 ["CurrentBalance"]
  LOADK R7 K104 ["CreationsGroupDecals"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K603 ["FailedHeader"]
  LOADK R7 K105 ["CreationsGroupMeshes"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K604 ["FreeSuccessHeader"]
  LOADK R7 K106 ["CreationsGroupAudio"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K605 ["SuccessHeader"]
  LOADK R7 K107 ["CreationsGroupPackages"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K297 ["Free"]
  LOADK R7 K108 ["CreationsGroupPlugins"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K606 ["OK"]
  SETTABLEKS R4 R3 K22 ["PurchaseFlow"]
  DUPTABLE R4 K624 [{"DontShowAgain", "InstructionText", "InstructionText2"}]
  LOADK R7 K113 ["Studio.Toolbox.General.CategoryCreationsHats"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K621 ["DontShowAgain"]
  LOADK R7 K114 ["CreationsHats"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K622 ["InstructionText"]
  LOADK R7 K115 ["Studio.Toolbox.General.CategoryCreationsTeeShirts"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K623 ["InstructionText2"]
  SETTABLEKS R4 R3 K23 ["ScriptWarning"]
  GETUPVAL R4 7
  JUMPIFNOT R4 [+55]
  DUPTABLE R4 K632 [{"Success", "Failure", "DialogText", "Information", "CancelButton", "GrantButton"}]
  LOADK R7 K121 ["Studio.Toolbox.General.CategoryCreationsHair"]
  DUPTABLE R8 K635 [{"assetId"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K634 ["assetId"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K526 ["Success"]
  LOADK R7 K124 ["CreationsFaceAccessories"]
  DUPTABLE R8 K635 [{"assetId"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K634 ["assetId"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K527 ["Failure"]
  LOADK R7 K125 ["Studio.Toolbox.General.CategoryCreationsNeckAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K628 ["DialogText"]
  LOADK R7 K126 ["CreationsNeckAccessories"]
  DUPTABLE R8 K641 [{"assetName", "assetId", "assetType"}]
  LOADK R9 K130 ["CreationsFrontAccessories"]
  SETTABLEKS R9 R8 K639 ["assetName"]
  LOADN R9 0
  SETTABLEKS R9 R8 K634 ["assetId"]
  LOADK R9 K131 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  SETTABLEKS R9 R8 K640 ["assetType"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K629 ["Information"]
  LOADK R7 K132 ["CreationsBackAccessories"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K630 ["CancelButton"]
  LOADK R7 K133 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R5 R0 K27 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K631 ["GrantButton"]
  SETTABLEKS R4 R3 K24 ["GrantAssetPermission"]
  NAMECALL R1 R0 K646 ["_update"]
  CALL R1 2 0
  RETURN R0 0

PROTO_42:
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K0 ["content"]
  GETTABLE R7 R6 R2
  GETIMPORT R8 K2 [pairs]
  MOVE R9 R1
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R12 R4
  GETTABLE R14 R7 R13
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["Dictionary"]
  GETTABLEKS R15 R16 K4 ["join"]
  MOVE R16 R12
  NEWTABLE R17 1 0
  SETTABLE R14 R17 R3
  CALL R15 2 1
  SETTABLE R15 R5 R11
  FORGLOOP R8 2 [-14]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [game]
  LOADK R4 K7 ["ToolboxEnableAudioGrantDialog"]
  NAMECALL R2 R2 K8 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K6 [game]
  LOADK R5 K9 ["DisableSalesPageForAvatarCreations2"]
  NAMECALL R3 R3 K8 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K6 [game]
  LOADK R6 K10 ["EnableAssetUploadCreatorDashboardMessage"]
  NAMECALL R4 R4 K8 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R0 K3 ["Core"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagToolboxAddNewUGCAssetTypes"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K15 ["Packages"]
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R6 K16 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R9 R1 K17 ["createSignal"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R10 R1 K18 ["DebugFlags"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R11 R1 K19 ["wrapStrictTable"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R12 R1 K20 ["AssetConfigConstants"]
  CALL R11 1 1
  GETIMPORT R12 K12 [require]
  GETTABLEKS R13 R1 K21 ["isCli"]
  CALL R12 1 1
  NEWTABLE R13 64 0
  SETTABLEKS R13 R13 K22 ["__index"]
  GETIMPORT R14 K6 [game]
  LOADK R16 K23 ["UnifyModelPackagePublish3"]
  NAMECALL R14 R14 K8 ["GetFastFlag"]
  CALL R14 2 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R18 R0 K3 ["Core"]
  GETTABLEKS R17 R18 K13 ["Flags"]
  GETTABLEKS R16 R17 K24 ["getFFlagToolboxAddPackageVersionDescriptions"]
  CALL R15 1 1
  GETIMPORT R16 K12 [require]
  GETTABLEKS R20 R0 K3 ["Core"]
  GETTABLEKS R19 R20 K4 ["Util"]
  GETTABLEKS R18 R19 K25 ["SharedFlags"]
  GETTABLEKS R17 R18 K26 ["getFFlagToolboxStoreRename"]
  CALL R16 1 1
  DUPCLOSURE R17 K27 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R13
  SETTABLEKS R17 R13 K28 ["new"]
  DUPCLOSURE R17 K29 [PROTO_5]
  CAPTURE VAL R13
  SETTABLEKS R17 R13 K30 ["createDummyLocalization"]
  DUPCLOSURE R17 K31 [PROTO_9]
  CAPTURE VAL R13
  SETTABLEKS R17 R13 K32 ["createTestCustomLocaleLocalization"]
  DUPCLOSURE R17 K33 [PROTO_12]
  CAPTURE VAL R13
  SETTABLEKS R17 R13 K34 ["createTestRealLocaleLocalization"]
  DUPCLOSURE R17 K35 [PROTO_13]
  SETTABLEKS R17 R13 K36 ["subscribe"]
  DUPCLOSURE R17 K37 [PROTO_14]
  SETTABLEKS R17 R13 K38 ["getLocalizedContent"]
  DUPCLOSURE R17 K39 [PROTO_15]
  SETTABLEKS R17 R13 K40 ["getSalesMessage"]
  DUPCLOSURE R17 K41 [PROTO_16]
  SETTABLEKS R17 R13 K42 ["getLocalizedVoteText"]
  DUPCLOSURE R17 K43 [PROTO_17]
  SETTABLEKS R17 R13 K44 ["getLocalizedCategories"]
  DUPCLOSURE R17 K45 [PROTO_18]
  SETTABLEKS R17 R13 K46 ["getLocalizedSorts"]
  DUPCLOSURE R17 K47 [PROTO_19]
  SETTABLEKS R17 R13 K48 ["getLocalizedSuggestions"]
  DUPCLOSURE R17 K49 [PROTO_20]
  SETTABLEKS R17 R13 K50 ["getLocalizedFooter"]
  DUPCLOSURE R17 K51 [PROTO_21]
  SETTABLEKS R17 R13 K52 ["getLocalizedTooManyCollaborators"]
  DUPCLOSURE R17 K53 [PROTO_22]
  SETTABLEKS R17 R13 K54 ["getLocalizedBuyPrompt"]
  DUPCLOSURE R17 K55 [PROTO_23]
  SETTABLEKS R17 R13 K56 ["getLocalizedInsufficientFundsPrompt"]
  DUPCLOSURE R17 K57 [PROTO_24]
  SETTABLEKS R17 R13 K58 ["getPurchaseFailedDetails"]
  DUPCLOSURE R17 K59 [PROTO_25]
  SETTABLEKS R17 R13 K60 ["getPurchaseSuccessDetails"]
  DUPCLOSURE R17 K61 [PROTO_26]
  SETTABLEKS R17 R13 K62 ["getScriptConfirmation"]
  DUPCLOSURE R17 K63 [PROTO_27]
  SETTABLEKS R17 R13 K64 ["getMaxTags"]
  DUPCLOSURE R17 K65 [PROTO_28]
  SETTABLEKS R17 R13 K66 ["getThumbnailStatus"]
  DUPCLOSURE R17 K67 [PROTO_29]
  SETTABLEKS R17 R13 K68 ["getUploadWithFee"]
  DUPCLOSURE R17 K69 [PROTO_30]
  SETTABLEKS R17 R13 K70 ["getGroupPermissionLockedTooltip"]
  DUPCLOSURE R17 K71 [PROTO_31]
  SETTABLEKS R17 R13 K72 ["destroy"]
  DUPCLOSURE R17 K73 [PROTO_32]
  SETTABLEKS R17 R13 K74 ["_getDefaultLocaleId"]
  DUPCLOSURE R17 K75 [PROTO_33]
  CAPTURE VAL R12
  SETTABLEKS R17 R13 K76 ["_getLocaleId"]
  DUPCLOSURE R17 K77 [PROTO_34]
  SETTABLEKS R17 R13 K78 ["_getTranslator"]
  DUPCLOSURE R17 K79 [PROTO_35]
  SETTABLEKS R17 R13 K80 ["_getFallbackTranslator"]
  DUPCLOSURE R17 K81 [PROTO_36]
  SETTABLEKS R17 R13 K82 ["_getDefaultTranslator"]
  DUPCLOSURE R17 K83 [PROTO_37]
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R17 R13 K84 ["_update"]
  DUPCLOSURE R17 K85 [PROTO_38]
  CAPTURE VAL R9
  SETTABLEKS R17 R13 K86 ["_safeLocalize"]
  DUPCLOSURE R17 K87 [PROTO_40]
  SETTABLEKS R17 R13 K88 ["_safeLocalizeInner"]
  DUPCLOSURE R17 K89 [PROTO_41]
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R2
  SETTABLEKS R17 R13 K90 ["_recalculateContent"]
  DUPCLOSURE R17 K91 [PROTO_42]
  CAPTURE VAL R7
  SETTABLEKS R17 R13 K92 ["_localizeTable"]
  RETURN R13 1
