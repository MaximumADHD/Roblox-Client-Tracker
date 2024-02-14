PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_recalculateContent"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  DUPTABLE R1 K14 [{"_externalLocaleIdGetter", "_externalTranslatorGetter", "_externalFallbackTranslatorGetter", "_externalLocaleIdChangedSignal", "_externalLocaleIdChangedConnection", "_content", "_signal"}]
  GETTABLEKS R3 R0 K16 ["getLocaleId"]
  ORK R2 R3 K15 []
  SETTABLEKS R2 R1 K7 ["_externalLocaleIdGetter"]
  GETTABLEKS R3 R0 K17 ["getTranslator"]
  ORK R2 R3 K15 []
  SETTABLEKS R2 R1 K8 ["_externalTranslatorGetter"]
  GETTABLEKS R3 R0 K18 ["getFallbackTranslator"]
  ORK R2 R3 K15 []
  SETTABLEKS R2 R1 K9 ["_externalFallbackTranslatorGetter"]
  GETTABLEKS R2 R0 K19 ["localeIdChanged"]
  SETTABLEKS R2 R1 K10 ["_externalLocaleIdChangedSignal"]
  LOADNIL R2
  SETTABLEKS R2 R1 K11 ["_externalLocaleIdChangedConnection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K12 ["_content"]
  GETUPVAL R2 1
  CALL R2 0 1
  SETTABLEKS R2 R1 K13 ["_signal"]
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K12 ["_content"]
  LOADK R4 K20 ["content"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K12 ["_content"]
  GETUPVAL R4 3
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K22 [setmetatable]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["_externalLocaleIdChangedSignal"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K10 ["_externalLocaleIdChangedSignal"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K23 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K11 ["_externalLocaleIdChangedConnection"]
  NAMECALL R2 R1 K24 ["_recalculateContent"]
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
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  LOADK R3 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R6 K2 [script]
  GETTABLEKS R5 R6 K3 ["Name"]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K6 [assert]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K7 ["new"]
  DUPTABLE R1 K11 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  DUPCLOSURE R2 K12 [PROTO_2]
  SETTABLEKS R2 R1 K8 ["getLocaleId"]
  DUPCLOSURE R2 K13 [PROTO_4]
  SETTABLEKS R2 R1 K9 ["getTranslator"]
  LOADNIL R2
  SETTABLEKS R2 R1 K10 ["localeIdChanged"]
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
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["new"]
  DUPTABLE R2 K11 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K8 ["getLocaleId"]
  DUPCLOSURE R3 K12 [PROTO_8]
  SETTABLEKS R3 R2 K9 ["getTranslator"]
  LOADK R5 K13 ["Value"]
  NAMECALL R3 R0 K14 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["localeIdChanged"]
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
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["new"]
  DUPTABLE R3 K11 [{"getLocaleId", "getTranslator", "localeIdChanged"}]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K8 ["getLocaleId"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K9 ["getTranslator"]
  LOADK R6 K12 ["Value"]
  NAMECALL R4 R1 K13 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["localeIdChanged"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_13:
  PREPVARARGS 1
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["_signal"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K8 ["subscribe"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["content"]
  RETURN R1 1

PROTO_15:
  GETUPVAL R5 0
  CALL R5 0 1
  NOT R4 R5
  LOADK R6 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R9 K2 [script]
  GETTABLEKS R8 R9 K3 ["Name"]
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 0
  LOADK R5 K7 ["Studio.Toolbox.AssetConfigSales.Target"]
  DUPTABLE R6 K10 [{"market", "user"}]
  SETTABLEKS R1 R6 K8 ["market"]
  SETTABLEKS R2 R6 K9 ["user"]
  NAMECALL R3 R0 K11 ["_safeLocalize"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_16:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K7 ["content"]
  JUMPIFEQKN R1 K8 [1] [+6]
  GETTABLEKS R4 R2 K9 ["Voting"]
  GETTABLEKS R3 R4 K10 ["VotesText"]
  JUMPIF R3 [+4]
  GETTABLEKS R4 R2 K9 ["Voting"]
  GETTABLEKS R3 R4 K11 ["VoteText"]
  GETIMPORT R4 K13 [string.format]
  LOADK R5 K14 ["%d %s"]
  MOVE R6 R1
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_17:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  MOVE R4 R1
  LOADK R5 K7 ["Category"]
  LOADK R6 K8 ["name"]
  LOADK R7 K8 ["name"]
  NAMECALL R2 R0 K9 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_18:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  MOVE R4 R1
  LOADK R5 K7 ["Sort"]
  LOADK R6 K8 ["name"]
  LOADK R7 K9 ["sort"]
  NAMECALL R2 R0 K10 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_19:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  MOVE R4 R1
  LOADK R5 K7 ["Suggestions"]
  LOADK R6 K8 ["name"]
  LOADK R7 K9 ["search"]
  NAMECALL R2 R0 K10 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_20:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  MOVE R4 R1
  LOADK R5 K7 ["Footer"]
  LOADK R6 K8 ["name"]
  LOADK R7 K9 ["color"]
  NAMECALL R2 R0 K10 ["_localizeTable"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_21:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.AssetConfigPackagePermissions.TooManyCollaboratorsText"]
  DUPTABLE R5 K9 [{"maxNumCollaborators"}]
  SETTABLEKS R1 R5 K8 ["maxNumCollaborators"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_22:
  GETUPVAL R6 0
  CALL R6 0 1
  NOT R5 R6
  LOADK R7 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R10 K2 [script]
  GETTABLEKS R9 R10 K3 ["Name"]
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  LOADK R6 K7 ["Studio.Toolbox.Purchase.BuyPrompt"]
  DUPTABLE R7 K11 [{"name", "creator", "robux"}]
  SETTABLEKS R1 R7 K8 ["name"]
  SETTABLEKS R2 R7 K9 ["creator"]
  SETTABLEKS R3 R7 K10 ["robux"]
  NAMECALL R4 R0 K12 ["_safeLocalize"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_23:
  GETUPVAL R6 0
  CALL R6 0 1
  NOT R5 R6
  LOADK R7 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R10 K2 [script]
  GETTABLEKS R9 R10 K3 ["Name"]
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  LOADK R6 K7 ["Studio.Toolbox.Purchase.InsufficientPrompt"]
  DUPTABLE R7 K11 [{"robux", "name", "creator"}]
  SETTABLEKS R1 R7 K8 ["robux"]
  SETTABLEKS R2 R7 K9 ["name"]
  SETTABLEKS R3 R7 K10 ["creator"]
  NAMECALL R4 R0 K12 ["_safeLocalize"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_24:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.Purchase.FailedDetails"]
  DUPTABLE R5 K9 [{"name"}]
  SETTABLEKS R1 R5 K8 ["name"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_25:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.Purchase.SuccessDetails"]
  DUPTABLE R5 K9 [{"name"}]
  SETTABLEKS R1 R5 K8 ["name"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_26:
  GETUPVAL R5 0
  CALL R5 0 1
  NOT R4 R5
  LOADK R6 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R9 K2 [script]
  GETTABLEKS R8 R9 K3 ["Name"]
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 0
  LOADK R5 K7 ["Studio.Toolbox.ScriptWarning.DetailText"]
  DUPTABLE R6 K10 [{"assetName", "numScripts"}]
  SETTABLEKS R1 R6 K8 ["assetName"]
  SETTABLEKS R2 R6 K9 ["numScripts"]
  NAMECALL R3 R0 K11 ["_safeLocalize"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_27:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.MaxTagsDescription"]
  DUPTABLE R5 K9 [{"max"}]
  SETTABLEKS R1 R5 K8 ["max"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_28:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R5 K7 ["Studio.Toolbox.ThumbnailStatus."]
  MOVE R6 R1
  CONCAT R4 R5 R6
  NAMECALL R2 R0 K8 ["_safeLocalize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_29:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.AssetConfigFooter.UploadWithFee"]
  DUPTABLE R5 K9 [{"price"}]
  SETTABLEKS R1 R5 K8 ["price"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_30:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Studio.Toolbox.AssetConfigPackagePermissions.LockedGroup"]
  DUPTABLE R5 K9 [{"roleName"}]
  SETTABLEKS R1 R5 K8 ["roleName"]
  NAMECALL R2 R0 K10 ["_safeLocalize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_31:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["_externalLocaleIdChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["_externalLocaleIdChangedConnection"]
  NAMECALL R1 R1 K8 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_externalLocaleIdChangedConnection"]
  RETURN R0 0

PROTO_32:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  LOADK R1 K7 ["en-us"]
  RETURN R1 1

PROTO_33:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADK R1 K7 [""]
  JUMP [+7]
  GETIMPORT R1 K9 [settings]
  CALL R1 0 1
  LOADK R3 K10 ["StudioForceLocale"]
  NAMECALL R1 R1 K11 ["GetFVariable"]
  CALL R1 2 1
  LENGTH R2 R1
  JUMPIFEQKN R2 K12 [0] [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K13 ["_externalLocaleIdGetter"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K13 ["_externalLocaleIdGetter"]
  CALL R2 0 -1
  RETURN R2 -1
  NAMECALL R2 R0 K14 ["_getDefaultLocaleId"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_34:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  MOVE R2 R1
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K7 ["_getLocaleId"]
  CALL R2 1 1
  MOVE R1 R2
  GETTABLEKS R2 R0 K8 ["_externalTranslatorGetter"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K8 ["_externalTranslatorGetter"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_35:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["_externalFallbackTranslatorGetter"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K7 ["_externalFallbackTranslatorGetter"]
  NAMECALL R2 R0 K8 ["_getDefaultLocaleId"]
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_36:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  NAMECALL R3 R0 K7 ["_getDefaultLocaleId"]
  CALL R3 1 -1
  NAMECALL R1 R0 K8 ["_getTranslator"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_37:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Dictionary"]
  GETTABLEKS R2 R3 K8 ["join"]
  GETTABLEKS R3 R0 K9 ["_content"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K9 ["_content"]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K9 ["_content"]
  LOADK R4 K10 ["content"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["content"]
  GETTABLEKS R2 R0 K11 ["_signal"]
  GETTABLEKS R4 R0 K10 ["content"]
  NAMECALL R2 R2 K12 ["fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R5 0
  CALL R5 0 1
  NOT R4 R5
  LOADK R6 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R9 K2 [script]
  GETTABLEKS R8 R9 K3 ["Name"]
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 0
  NAMECALL R3 R0 K7 ["_getTranslator"]
  CALL R3 1 1
  JUMPIF R3 [+10]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["shouldDebugWarnings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K10 [warn]
  LOADK R5 K11 ["Toolbox Localization:_safeLocalize() translator = nil"]
  CALL R4 1 0
  RETURN R1 1
  MOVE R6 R3
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R4 R0 K12 ["_safeLocalizeInner"]
  CALL R4 4 2
  JUMPIF R4 [+112]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["shouldDebugWarnings"]
  CALL R6 0 1
  JUMPIFNOT R6 [+17]
  GETIMPORT R6 K15 [string.find]
  MOVE R7 R5
  LOADK R8 K16 ["LocalizationTable or parent tables do not contain a translation"]
  CALL R6 2 1
  JUMPIF R6 [+11]
  GETIMPORT R6 K10 [warn]
  LOADK R7 K17 ["Toolbox error in localizing key \"%s\" to locale \"%s\": %s"]
  MOVE R9 R1
  GETTABLEKS R10 R3 K18 ["LocaleId"]
  MOVE R11 R5
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 4 -1
  CALL R6 -1 0
  NAMECALL R6 R0 K19 ["_getDefaultTranslator"]
  CALL R6 1 1
  JUMPIF R6 [+10]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETIMPORT R7 K10 [warn]
  LOADK R8 K20 ["Toolbox Localization:_safeLocalize() defaultTranslator = nil"]
  CALL R7 1 0
  RETURN R1 1
  MOVE R9 R6
  MOVE R10 R1
  MOVE R11 R2
  NAMECALL R7 R0 K12 ["_safeLocalizeInner"]
  CALL R7 4 2
  MOVE R4 R7
  MOVE R5 R8
  JUMPIF R4 [+24]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+17]
  GETIMPORT R7 K15 [string.find]
  MOVE R8 R5
  LOADK R9 K16 ["LocalizationTable or parent tables do not contain a translation"]
  CALL R7 2 1
  JUMPIF R7 [+11]
  GETIMPORT R7 K10 [warn]
  LOADK R8 K21 ["	Toolbox error in localizing key \"%s\" to default locale \"%s\": %s"]
  MOVE R10 R1
  GETTABLEKS R11 R6 K18 ["LocaleId"]
  MOVE R12 R5
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 4 -1
  CALL R7 -1 0
  MOVE R5 R1
  JUMP [+15]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["shouldDebugWarnings"]
  CALL R7 0 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R7 K10 [warn]
  LOADK R8 K22 ["	Toolbox falling back to default locale \"%s\" for key \"%s\""]
  GETTABLEKS R10 R6 K18 ["LocaleId"]
  MOVE R11 R1
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 3 -1
  CALL R7 -1 0
  NAMECALL R7 R0 K23 ["_getFallbackTranslator"]
  CALL R7 1 1
  LOADNIL R8
  MOVE R11 R7
  MOVE R12 R1
  MOVE R13 R2
  NAMECALL R9 R0 K12 ["_safeLocalizeInner"]
  CALL R9 4 2
  MOVE R4 R9
  MOVE R8 R10
  JUMPIFNOT R4 [+2]
  MOVE R5 R8
  RETURN R5 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["shouldDebugWarnings"]
  CALL R9 0 1
  JUMPIFNOT R9 [+8]
  GETIMPORT R9 K10 [warn]
  LOADK R10 K24 ["	Toolbox error in localizing key \"%s\" using fallback table"]
  MOVE R12 R1
  NAMECALL R10 R10 K4 ["format"]
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
  GETUPVAL R6 0
  CALL R6 0 1
  NOT R5 R6
  LOADK R7 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R10 K2 [script]
  GETTABLEKS R9 R10 K3 ["Name"]
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  GETIMPORT R4 K8 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CALL R4 1 -1
  RETURN R4 -1

PROTO_41:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  DUPTABLE R3 K32 [{"ToolboxToolbarName", "Categorization", "Category", "Suggestions", "Sort", "Voting", "HasScripts", "Footer", "SearchBarDefaultText", "SearchBarCreatorText", "SearchBarIdVerified", "EndorseBadgeTooltipText", "InfoBannerText", "NoPluginsFound", "SearchResults", "SearchOptions", "Tabs", "RightClickMenu", "Status", "Sales", "PackagePermissions", "AssetConfig", "PurchaseFlow", "ScriptWarning", "GrantAssetPermission"}]
  LOADK R6 K33 ["Studio.Toolbox.General.ToolboxToolbarName"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["ToolboxToolbarName"]
  DUPTABLE R4 K36 [{"AllModels"}]
  LOADK R7 K37 ["Studio.Toolbox.General.AllModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K35 ["AllModels"]
  SETTABLEKS R4 R3 K8 ["Categorization"]
  NEWTABLE R4 128 0
  LOADK R7 K38 ["Studio.Toolbox.General.CategoryModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K39 ["FreeModels"]
  LOADK R7 K40 ["Studio.Toolbox.General.CategoryDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K41 ["FreeDecals"]
  LOADK R7 K42 ["Studio.Toolbox.General.CategoryMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K43 ["FreeMeshes"]
  LOADK R7 K44 ["Studio.Toolbox.General.CategoryAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K45 ["FreeAudio"]
  LOADK R7 K46 ["Studio.Toolbox.General.CategoryFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K47 ["FreeFonts"]
  LOADK R7 K48 ["Studio.Toolbox.General.CategoryPaidPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K49 ["PaidPlugins"]
  LOADK R7 K50 ["Studio.Toolbox.General.CategoryVideos"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K51 ["FreeVideo"]
  LOADK R7 K52 ["Studio.Toolbox.General.CategoryMyModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K53 ["MyModels"]
  LOADK R7 K54 ["Studio.Toolbox.General.CategoryMyDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K55 ["MyDecals"]
  LOADK R7 K56 ["Studio.Toolbox.General.CategoryMyMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K57 ["MyMeshes"]
  LOADK R7 K58 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K59 ["MyAudio"]
  LOADK R7 K60 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K61 ["MyPlugins"]
  LOADK R7 K62 ["Studio.Toolbox.General.CategoryMyPackages"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K63 ["MyPackages"]
  LOADK R7 K64 ["Studio.Toolbox.General.CategoryMyVideos"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K65 ["MyVideo"]
  LOADK R7 K66 ["Studio.Toolbox.General.CategoryMyAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K67 ["MyAnimations"]
  LOADK R7 K68 ["Studio.Toolbox.General.CategoryMyFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K69 ["MyFonts"]
  LOADK R7 K70 ["Studio.Toolbox.General.CategoryRecentModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K71 ["RecentModels"]
  LOADK R7 K72 ["Studio.Toolbox.General.CategoryRecentDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K73 ["RecentDecals"]
  LOADK R7 K74 ["Studio.Toolbox.General.CategoryRecentMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K75 ["RecentMeshes"]
  LOADK R7 K76 ["Studio.Toolbox.General.CategoryRecentAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K77 ["RecentAudio"]
  LOADK R7 K78 ["Studio.Toolbox.General.CategoryRecentVideos"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K79 ["RecentVideo"]
  LOADK R7 K80 ["Studio.Toolbox.General.CategoryRecentAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K81 ["RecentAnimations"]
  LOADK R7 K82 ["Studio.Toolbox.General.CategoryRecentFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K83 ["RecentFonts"]
  LOADK R7 K84 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K85 ["GroupModels"]
  LOADK R7 K86 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K87 ["GroupDecals"]
  LOADK R7 K88 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K89 ["GroupMeshes"]
  LOADK R7 K90 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K91 ["GroupAudio"]
  LOADK R7 K92 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K93 ["GroupPackages"]
  LOADK R7 K94 ["Studio.Toolbox.General.CategoryGroupPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K95 ["GroupPlugins"]
  LOADK R7 K96 ["Studio.Toolbox.General.CategoryCreationsDevelopmentSectionDivider"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K97 ["CreationsDevelopmentSectionDivider"]
  LOADK R7 K98 ["Studio.Toolbox.General.CategoryCreationsModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K99 ["CreationsModels"]
  LOADK R7 K100 ["Studio.Toolbox.General.CategoryCreationsDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K101 ["CreationsDecals"]
  LOADK R7 K102 ["Studio.Toolbox.General.CategoryCreationsAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K103 ["CreationsAudio"]
  LOADK R7 K104 ["Studio.Toolbox.General.CategoryCreationsMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K105 ["CreationsMeshes"]
  LOADK R7 K106 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K107 ["CreationsPlugins"]
  LOADK R7 K108 ["Studio.Toolbox.General.CategoryCreationsAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K109 ["CreationsAnimations"]
  LOADK R7 K84 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K110 ["CreationsGroupModels"]
  LOADK R7 K86 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K111 ["CreationsGroupDecals"]
  LOADK R7 K88 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K112 ["CreationsGroupMeshes"]
  LOADK R7 K90 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K113 ["CreationsGroupAudio"]
  LOADK R7 K92 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K114 ["CreationsGroupPackages"]
  LOADK R7 K94 ["Studio.Toolbox.General.CategoryGroupPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K115 ["CreationsGroupPlugins"]
  LOADK R7 K116 ["Studio.Toolbox.General.CategoryGroupAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K117 ["CreationsGroupAnimations"]
  LOADK R7 K118 ["Studio.Toolbox.General.CategoryCreationsCatalogSectionDivider"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K119 ["CreationsCatalogSectionDivider"]
  LOADK R7 K120 ["Studio.Toolbox.General.CategoryCreationsHats"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K121 ["CreationsHats"]
  LOADK R7 K122 ["Studio.Toolbox.General.CategoryCreationsTeeShirts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K123 ["CreationsTeeShirts"]
  LOADK R7 K124 ["Studio.Toolbox.General.CategoryCreationsShirts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K125 ["CreationsShirts"]
  LOADK R7 K126 ["Studio.Toolbox.General.CategoryCreationsPants"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K127 ["CreationsPants"]
  LOADK R7 K128 ["Studio.Toolbox.General.CategoryCreationsHair"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K129 ["CreationsHair"]
  LOADK R7 K130 ["Studio.Toolbox.General.CategoryCreationsFaceAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K131 ["CreationsFaceAccessories"]
  LOADK R7 K132 ["Studio.Toolbox.General.CategoryCreationsNeckAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K133 ["CreationsNeckAccessories"]
  LOADK R7 K134 ["Studio.Toolbox.General.CategoryCreationsShoulderAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K135 ["CreationsShoulderAccessories"]
  LOADK R7 K136 ["Studio.Toolbox.General.CategoryCreationsFrontAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K137 ["CreationsFrontAccessories"]
  LOADK R7 K138 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K139 ["CreationsBackAccessories"]
  LOADK R7 K140 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K141 ["CreationsWaistAccessories"]
  LOADK R7 K142 ["Studio.Toolbox.General.CategoryCreationsTShirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K143 ["CreationsTShirtAccessories"]
  LOADK R7 K144 ["Studio.Toolbox.General.CategoryCreationsShirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K145 ["CreationsShirtAccessories"]
  LOADK R7 K146 ["Studio.Toolbox.General.CategoryCreationsPantsAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K147 ["CreationsPantsAccessories"]
  LOADK R7 K148 ["Studio.Toolbox.General.CategoryCreationsJacketAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K149 ["CreationsJacketAccessories"]
  LOADK R7 K150 ["Studio.Toolbox.General.CategoryCreationsSweaterAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K151 ["CreationsSweaterAccessories"]
  LOADK R7 K152 ["Studio.Toolbox.General.CategoryCreationsShortsAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K153 ["CreationsShortsAccessories"]
  LOADK R7 K154 ["Studio.Toolbox.General.CategoryCreationsLeftShoeAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K155 ["CreationsLeftShoeAccessories"]
  LOADK R7 K156 ["Studio.Toolbox.General.CategoryCreationsRightShoeAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K157 ["CreationsRightShoeAccessories"]
  LOADK R7 K158 ["Studio.Toolbox.General.CategoryCreationsDressSkirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K159 ["CreationsDressSkirtAccessories"]
  LOADK R7 K160 ["Studio.Toolbox.General.CategoryCreationsGroupHats"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K161 ["CreationsGroupHats"]
  LOADK R7 K162 ["Studio.Toolbox.General.CategoryCreationsGroupHair"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K163 ["CreationsGroupHair"]
  LOADK R7 K164 ["Studio.Toolbox.General.CategoryCreationsGroupFaceAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K165 ["CreationsGroupFaceAccessories"]
  LOADK R7 K166 ["Studio.Toolbox.General.CategoryCreationsGroupNeckAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K167 ["CreationsGroupNeckAccessories"]
  LOADK R7 K168 ["Studio.Toolbox.General.CategoryCreationsGroupShoulderAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K169 ["CreationsGroupShoulderAccessories"]
  LOADK R7 K170 ["Studio.Toolbox.General.CategoryCreationsGroupFrontAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K171 ["CreationsGroupFrontAccessories"]
  LOADK R7 K172 ["Studio.Toolbox.General.CategoryCreationsGroupBackAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K173 ["CreationsGroupBackAccessories"]
  LOADK R7 K174 ["Studio.Toolbox.General.CategoryCreationsGroupWaistAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K175 ["CreationsGroupWaistAccessories"]
  LOADK R7 K176 ["Studio.Toolbox.General.CategoryCreationsGroupTShirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K177 ["CreationsGroupTShirtAccessories"]
  LOADK R7 K178 ["Studio.Toolbox.General.CategoryCreationsGroupShirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K179 ["CreationsGroupShirtAccessories"]
  LOADK R7 K180 ["Studio.Toolbox.General.CategoryCreationsGroupPantsAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K181 ["CreationsGroupPantsAccessories"]
  LOADK R7 K182 ["Studio.Toolbox.General.CategoryCreationsGroupJacketAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K183 ["CreationsGroupJacketAccessories"]
  LOADK R7 K184 ["Studio.Toolbox.General.CategoryCreationsGroupSweaterAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K185 ["CreationsGroupSweaterAccessories"]
  LOADK R7 K186 ["Studio.Toolbox.General.CategoryCreationsGroupShortsAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K187 ["CreationsGroupShortsAccessories"]
  LOADK R7 K188 ["Studio.Toolbox.General.CategoryCreationsGroupLeftShoeAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K189 ["CreationsGroupLeftShoeAccessories"]
  LOADK R7 K190 ["Studio.Toolbox.General.CategoryCreationsGroupRightShoeAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K191 ["CreationsGroupRightShoeAccessories"]
  LOADK R7 K192 ["Studio.Toolbox.General.CategoryCreationsGroupDressSkirtAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K193 ["CreationsGroupDressSkirtAccessories"]
  SETTABLEKS R4 R3 K9 ["Category"]
  DUPTABLE R4 K200 [{"IntroText", "NPC", "Vehicle", "Weapon", "Building", "Light"}]
  LOADK R7 K201 ["Studio.Toolbox.General.SuggestionsIntroText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K194 ["IntroText"]
  LOADK R7 K202 ["Studio.Toolbox.General.SuggestionsNPC"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K195 ["NPC"]
  LOADK R7 K203 ["Studio.Toolbox.General.SuggestionsVehicle"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K196 ["Vehicle"]
  LOADK R7 K204 ["Studio.Toolbox.General.SuggestionsWeapon"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K197 ["Weapon"]
  LOADK R7 K205 ["Studio.Toolbox.General.SuggestionsBuilding"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K198 ["Building"]
  LOADK R7 K206 ["Studio.Toolbox.General.SuggestionsLight"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K199 ["Light"]
  SETTABLEKS R4 R3 K10 ["Suggestions"]
  DUPTABLE R4 K213 [{"ByText", "Relevance", "MostTaken", "Favorites", "Updated", "Ratings"}]
  LOADK R7 K214 ["Studio.Toolbox.General.SortByText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K207 ["ByText"]
  LOADK R7 K215 ["Studio.Toolbox.General.SortByRelevance"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K208 ["Relevance"]
  LOADK R7 K216 ["Studio.Toolbox.General.SortByMostTaken"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K209 ["MostTaken"]
  LOADK R7 K217 ["Studio.Toolbox.General.SortByFavorites"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K210 ["Favorites"]
  LOADK R7 K218 ["Studio.Toolbox.General.SortByUpdated"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K211 ["Updated"]
  LOADK R7 K219 ["Studio.Toolbox.General.SortByRatings"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K212 ["Ratings"]
  SETTABLEKS R4 R3 K11 ["Sort"]
  DUPTABLE R4 K222 [{"VoteText", "VotesText"}]
  LOADK R7 K223 ["Studio.Toolbox.General.VotingVoteText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K220 ["VoteText"]
  LOADK R7 K224 ["Studio.Toolbox.General.VotingVotesText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K221 ["VotesText"]
  SETTABLEKS R4 R3 K12 ["Voting"]
  DUPTABLE R4 K225 [{"HasScripts"}]
  LOADK R7 K226 ["Studio.Toolbox.General.HasScripts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["HasScripts"]
  SETTABLEKS R4 R3 K13 ["HasScripts"]
  DUPTABLE R4 K231 [{"BGText", "White", "Black", "None"}]
  LOADK R7 K232 ["Studio.Toolbox.General.FooterBGText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K227 ["BGText"]
  LOADK R7 K233 ["Studio.Toolbox.General.FooterButtonWhiteName"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K228 ["White"]
  LOADK R7 K234 ["Studio.Toolbox.General.FooterButtonBlackName"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K229 ["Black"]
  LOADK R7 K235 ["Studio.Toolbox.General.FooterButtonNoneName"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K230 ["None"]
  SETTABLEKS R4 R3 K14 ["Footer"]
  LOADK R6 K236 ["Studio.Toolbox.General.SearchBarDefaultText"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["SearchBarDefaultText"]
  LOADK R6 K237 ["Studio.Toolbox.General.SearchBarCreatorText"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["SearchBarCreatorText"]
  LOADK R6 K238 ["Studio.Toolbox.General.SearchBarIdVerified"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["SearchBarIdVerified"]
  LOADK R6 K239 ["Studio.Toolbox.General.EndorseBadgeTooltipText"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["EndorseBadgeTooltipText"]
  LOADK R6 K240 ["Studio.Toolbox.General.InfoBannerText"]
  NAMECALL R4 R0 K34 ["_safeLocalize"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K19 ["InfoBannerText"]
  DUPTABLE R4 K244 [{"TextLine1", "TextLine2", "LinkText"}]
  LOADK R7 K245 ["Studio.Toolbox.General.NoPluginsFound.TextLine1"]
  DUPTABLE R8 K247 [{"link"}]
  LOADK R9 K248 ["{link}"]
  SETTABLEKS R9 R8 K246 ["link"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K241 ["TextLine1"]
  LOADK R7 K249 ["Studio.Toolbox.General.NoPluginsFound.TextLine2"]
  DUPTABLE R8 K247 [{"link"}]
  LOADK R9 K248 ["{link}"]
  SETTABLEKS R9 R8 K246 ["link"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K242 ["TextLine2"]
  LOADK R7 K250 ["Studio.Toolbox.General.NoPluginsFound.LinkText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K243 ["LinkText"]
  SETTABLEKS R4 R3 K20 ["NoPluginsFound"]
  DUPTABLE R4 K253 [{"SearchResults", "SearchResultsKeyword", "ClearAll"}]
  LOADK R7 K254 ["Studio.Toolbox.General.SearchResults"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["SearchResults"]
  LOADK R7 K255 ["Studio.Toolbox.General.SearchResultsKeyword"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K251 ["SearchResultsKeyword"]
  LOADK R7 K0 ["%* is marked for removal and cannot be used"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K252 ["ClearAll"]
  SETTABLEKS R4 R3 K21 ["SearchResults"]
  DUPTABLE R4 K261 [{"AllViews", "Creator", "Sort", "Apply", "Cancel"}]
  LOADK R7 K6 [assert]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K257 ["AllViews"]
  LOADK R7 K7 ["ToolboxToolbarName"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K258 ["Creator"]
  LOADK R7 K8 ["Categorization"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Sort"]
  LOADK R7 K9 ["Category"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K259 ["Apply"]
  LOADK R7 K10 ["Suggestions"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K260 ["Cancel"]
  SETTABLEKS R4 R3 K22 ["SearchOptions"]
  DUPTABLE R4 K271 [{"Marketplace", "Inventory", "Recent", "Creations"}]
  LOADK R7 K16 ["SearchBarCreatorText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K267 ["Marketplace"]
  LOADK R7 K17 ["SearchBarIdVerified"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K268 ["Inventory"]
  LOADK R7 K18 ["EndorseBadgeTooltipText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K269 ["Recent"]
  LOADK R7 K19 ["InfoBannerText"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K270 ["Creations"]
  SETTABLEKS R4 R3 K23 ["Tabs"]
  DUPTABLE R4 K283 [{"CopyAssetID", "CopyMeshID", "CopyTextureID", "ViewInBrowser", "ConfigureAsset", "EditAsset", "Report"}]
  LOADK R7 K28 ["AssetConfig"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K276 ["CopyAssetID"]
  LOADK R7 K29 ["PurchaseFlow"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K277 ["CopyMeshID"]
  LOADK R7 K30 ["ScriptWarning"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K278 ["CopyTextureID"]
  LOADK R7 K31 ["GrantAssetPermission"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K279 ["ViewInBrowser"]
  LOADK R7 K32 [{"ToolboxToolbarName", "Categorization", "Category", "Suggestions", "Sort", "Voting", "HasScripts", "Footer", "SearchBarDefaultText", "SearchBarCreatorText", "SearchBarIdVerified", "EndorseBadgeTooltipText", "InfoBannerText", "NoPluginsFound", "SearchResults", "SearchOptions", "Tabs", "RightClickMenu", "Status", "Sales", "PackagePermissions", "AssetConfig", "PurchaseFlow", "ScriptWarning", "GrantAssetPermission"}]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K280 ["ConfigureAsset"]
  LOADK R7 K33 ["Studio.Toolbox.General.ToolboxToolbarName"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K281 ["EditAsset"]
  LOADK R7 K34 ["_safeLocalize"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K282 ["Report"]
  SETTABLEKS R4 R3 K24 ["RightClickMenu"]
  NEWTABLE R4 8 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K292 ["ReviewPending"]
  LOADK R8 K37 ["Studio.Toolbox.General.AllModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K294 ["Moderated"]
  LOADK R8 K39 ["FreeModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K296 ["ReviewApproved"]
  LOADK R8 K41 ["FreeDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K298 ["OnSale"]
  LOADK R8 K43 ["FreeMeshes"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K300 ["OffSale"]
  LOADK R8 K45 ["FreeAudio"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K302 ["DelayedRelease"]
  LOADK R8 K47 ["FreeFonts"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K291 ["ASSET_STATUS"]
  GETTABLEKS R5 R6 K304 ["Free"]
  LOADK R8 K49 ["PaidPlugins"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K25 ["Status"]
  DUPTABLE R4 K312 [{"Sale", "Onsale", "Offsale", "PremiumBenefits", "CreatorDashboardLinkMessage", "CreatorDashboardName"}]
  LOADK R7 K57 ["MyMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K306 ["Sale"]
  LOADK R7 K58 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K307 ["Onsale"]
  LOADK R7 K59 ["MyAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K308 ["Offsale"]
  LOADK R7 K60 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K309 ["PremiumBenefits"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+9]
  LOADK R7 K61 ["MyPlugins"]
  DUPTABLE R8 K319 [{"creatorDashboardLink"}]
  LOADK R9 K64 ["Studio.Toolbox.General.CategoryMyVideos"]
  SETTABLEKS R9 R8 K318 ["creatorDashboardLink"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K310 ["CreatorDashboardLinkMessage"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+5]
  LOADK R7 K65 ["MyVideo"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K311 ["CreatorDashboardName"]
  SETTABLEKS R4 R3 K26 ["Sales"]
  DUPTABLE R4 K327 [{"ActionDropdown", "Collaborators", "Searchbar", "Title", "Warning", "RightClickMenu"}]
  DUPTABLE R5 K338 [{"NoAccessLabel", "UseViewLabel", "EditLabel", "OwnerLabel", "MultipleLabel", "MultipleLabelTooltip", "GroupOwnedTooltip", "NoAccessDescription", "UseViewDescription", "EditDescription"}]
  LOADK R8 K83 ["RecentFonts"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K328 ["NoAccessLabel"]
  LOADK R8 K84 ["Studio.Toolbox.General.CategoryGroupModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K329 ["UseViewLabel"]
  LOADK R8 K85 ["GroupModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K330 ["EditLabel"]
  LOADK R8 K86 ["Studio.Toolbox.General.CategoryGroupDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K331 ["OwnerLabel"]
  LOADK R8 K87 ["GroupDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K332 ["MultipleLabel"]
  LOADK R8 K88 ["Studio.Toolbox.General.CategoryGroupMeshes"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K333 ["MultipleLabelTooltip"]
  LOADK R8 K89 ["GroupMeshes"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K334 ["GroupOwnedTooltip"]
  LOADK R8 K90 ["Studio.Toolbox.General.CategoryGroupAudio"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K335 ["NoAccessDescription"]
  LOADK R8 K91 ["GroupAudio"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K336 ["UseViewDescription"]
  LOADK R8 K92 ["Studio.Toolbox.General.CategoryGroupPackages"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K337 ["EditDescription"]
  SETTABLEKS R5 R4 K322 ["ActionDropdown"]
  DUPTABLE R5 K353 [{"FriendsCollaboratorType", "UsersCollaboratorType", "GroupsCollaboratorType", "MyFriendsCollaborator"}]
  LOADK R8 K98 ["Studio.Toolbox.General.CategoryCreationsModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K349 ["FriendsCollaboratorType"]
  LOADK R8 K99 ["CreationsModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K350 ["UsersCollaboratorType"]
  LOADK R8 K100 ["Studio.Toolbox.General.CategoryCreationsDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K351 ["GroupsCollaboratorType"]
  LOADK R8 K101 ["CreationsDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K352 ["MyFriendsCollaborator"]
  SETTABLEKS R5 R4 K323 ["Collaborators"]
  DUPTABLE R5 K360 [{"Default", "NoResults"}]
  LOADK R8 K105 ["CreationsMeshes"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K358 ["Default"]
  LOADK R8 K106 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K359 ["NoResults"]
  SETTABLEKS R5 R4 K324 ["Searchbar"]
  DUPTABLE R5 K365 [{"PackageCreator", "ShareWith"}]
  LOADK R8 K110 ["CreationsGroupModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K363 ["PackageCreator"]
  LOADK R8 K111 ["CreationsGroupDecals"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K364 ["ShareWith"]
  SETTABLEKS R5 R4 K325 ["Title"]
  DUPTABLE R5 K370 [{"UserOwned", "GroupOwned"}]
  LOADK R8 K115 ["CreationsGroupPlugins"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K368 ["UserOwned"]
  LOADK R8 K116 ["Studio.Toolbox.General.CategoryGroupAnimations"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K369 ["GroupOwned"]
  SETTABLEKS R5 R4 K326 ["Warning"]
  DUPTABLE R5 K374 [{"PackageDetails"}]
  LOADK R8 K119 ["CreationsCatalogSectionDivider"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K373 ["PackageDetails"]
  SETTABLEKS R5 R4 K24 ["RightClickMenu"]
  SETTABLEKS R4 R3 K27 ["PackagePermissions"]
  NEWTABLE R4 64 0
  DUPTABLE R5 K390 [{"Title", "Description", "Ownership", "Genre", "Copy", "Package", "Comments", "DistributeOnMarketplace", "LearnMore", "Me", "AssetType", "Sharing", "Tags", "TermsOfUse", "AssetTextDisplay"}]
  LOADK R8 K135 ["CreationsShoulderAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K325 ["Title"]
  LOADK R8 K136 ["Studio.Toolbox.General.CategoryCreationsFrontAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K376 ["Description"]
  LOADK R8 K137 ["CreationsFrontAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K377 ["Ownership"]
  LOADK R8 K138 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K378 ["Genre"]
  LOADK R8 K139 ["CreationsBackAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K379 ["Copy"]
  GETUPVAL R7 3
  JUMPIFNOT R7 [+5]
  LOADK R8 K140 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K380 ["Package"]
  LOADK R8 K141 ["CreationsWaistAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K381 ["Comments"]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  LOADK R8 K142 ["Studio.Toolbox.General.CategoryCreationsTShirtAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  JUMP [+4]
  LOADK R8 K143 ["CreationsTShirtAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K382 ["DistributeOnMarketplace"]
  LOADK R8 K144 ["Studio.Toolbox.General.CategoryCreationsShirtAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K383 ["LearnMore"]
  LOADK R8 K145 ["CreationsShirtAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K384 ["Me"]
  LOADK R8 K146 ["Studio.Toolbox.General.CategoryCreationsPantsAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K385 ["AssetType"]
  LOADK R8 K147 ["CreationsPantsAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K386 ["Sharing"]
  LOADK R8 K148 ["Studio.Toolbox.General.CategoryCreationsJacketAccessory"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K387 ["Tags"]
  LOADK R8 K149 ["CreationsJacketAccessories"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K388 ["TermsOfUse"]
  NEWTABLE R6 64 0
  GETIMPORT R7 K408 [Enum.AssetType.Model]
  LOADK R10 K153 ["CreationsShortsAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K411 [Enum.AssetType.Decal]
  LOADK R10 K156 ["Studio.Toolbox.General.CategoryCreationsRightShoeAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K414 [Enum.AssetType.Mesh]
  LOADK R10 K159 ["CreationsDressSkirtAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K417 [Enum.AssetType.Audio]
  LOADK R10 K162 ["Studio.Toolbox.General.CategoryCreationsGroupHair"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K420 [Enum.AssetType.Hat]
  LOADK R10 K165 ["CreationsGroupFaceAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K423 [Enum.AssetType.TShirt]
  LOADK R10 K168 ["Studio.Toolbox.General.CategoryCreationsGroupShoulderAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K426 [Enum.AssetType.Shirt]
  LOADK R10 K171 ["CreationsGroupFrontAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K429 [Enum.AssetType.Pants]
  LOADK R10 K174 ["Studio.Toolbox.General.CategoryCreationsGroupWaistAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K432 [Enum.AssetType.Plugin]
  LOADK R10 K177 ["CreationsGroupTShirtAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K435 [Enum.AssetType.HairAccessory]
  LOADK R10 K180 ["Studio.Toolbox.General.CategoryCreationsGroupPantsAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K438 [Enum.AssetType.FaceAccessory]
  LOADK R10 K183 ["CreationsGroupJacketAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K441 [Enum.AssetType.NeckAccessory]
  LOADK R10 K186 ["Studio.Toolbox.General.CategoryCreationsGroupShortsAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K444 [Enum.AssetType.ShoulderAccessory]
  LOADK R10 K189 ["CreationsGroupLeftShoeAccessories"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K447 [Enum.AssetType.FrontAccessory]
  LOADK R10 K192 ["Studio.Toolbox.General.CategoryCreationsGroupDressSkirtAccessory"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K450 [Enum.AssetType.BackAccessory]
  LOADK R10 K195 ["NPC"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K453 [Enum.AssetType.WaistAccessory]
  LOADK R10 K198 ["Building"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K456 [Enum.AssetType.TShirtAccessory]
  LOADK R10 K201 ["Studio.Toolbox.General.SuggestionsIntroText"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K459 [Enum.AssetType.ShirtAccessory]
  LOADK R10 K204 ["Studio.Toolbox.General.SuggestionsWeapon"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K462 [Enum.AssetType.PantsAccessory]
  LOADK R10 K207 ["ByText"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K465 [Enum.AssetType.JacketAccessory]
  LOADK R10 K210 ["Favorites"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K468 [Enum.AssetType.SweaterAccessory]
  LOADK R10 K213 [{"ByText", "Relevance", "MostTaken", "Favorites", "Updated", "Ratings"}]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K471 [Enum.AssetType.ShortsAccessory]
  LOADK R10 K216 ["Studio.Toolbox.General.SortByMostTaken"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K474 [Enum.AssetType.LeftShoeAccessory]
  LOADK R10 K219 ["Studio.Toolbox.General.SortByRatings"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K477 [Enum.AssetType.RightShoeAccessory]
  LOADK R10 K222 [{"VoteText", "VotesText"}]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K480 [Enum.AssetType.DressSkirtAccessory]
  LOADK R10 K225 [{"HasScripts"}]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K483 [Enum.AssetType.Torso]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K228 ["White"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K486 [Enum.AssetType.RightArm]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K231 [{"BGText", "White", "Black", "None"}]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K489 [Enum.AssetType.LeftArm]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K234 ["Studio.Toolbox.General.FooterButtonBlackName"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K492 [Enum.AssetType.LeftLeg]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K237 ["Studio.Toolbox.General.SearchBarCreatorText"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K495 [Enum.AssetType.RightLeg]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K240 ["Studio.Toolbox.General.InfoBannerText"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K498 [Enum.AssetType.DynamicHead]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K243 ["LinkText"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K501 [Enum.AssetType.EyebrowAccessory]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K246 ["link"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R7 K504 [Enum.AssetType.EyelashAccessory]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  LOADK R10 K249 ["Studio.Toolbox.General.NoPluginsFound.TextLine2"]
  NAMECALL R8 R0 K34 ["_safeLocalize"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K389 ["AssetTextDisplay"]
  SETTABLEKS R5 R4 K506 ["PublishAsset"]
  DUPTABLE R5 K509 [{"PreviewLabel", "Change"}]
  LOADK R8 K254 ["Studio.Toolbox.General.SearchResults"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K507 ["PreviewLabel"]
  LOADK R8 K255 ["Studio.Toolbox.General.SearchResultsKeyword"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K508 ["Change"]
  SETTABLEKS R5 R4 K512 ["PreviewArea"]
  DUPTABLE R5 K515 [{"Override", "NewAsset"}]
  LOADK R8 K4 ["format"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K513 ["Override"]
  LOADK R8 K5 ["assert"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K514 ["NewAsset"]
  SETTABLEKS R5 R4 K14 ["Footer"]
  DUPTABLE R5 K521 [{"Title", "FilterID", "AnimationID", "InvalidAnimationID"}]
  LOADK R8 K10 ["Suggestions"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K325 ["Title"]
  LOADK R8 K11 ["Sort"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K518 ["FilterID"]
  LOADK R8 K12 ["Voting"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K519 ["AnimationID"]
  LOADK R8 K13 ["HasScripts"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K520 ["InvalidAnimationID"]
  SETTABLEKS R5 R4 K513 ["Override"]
  DUPTABLE R5 K526 [{"Title"}]
  LOADK R8 K15 ["SearchBarDefaultText"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K325 ["Title"]
  SETTABLEKS R5 R4 K528 ["Import"]
  DUPTABLE R5 K530 [{"IDCopied"}]
  LOADK R8 K19 ["InfoBannerText"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K529 ["IDCopied"]
  SETTABLEKS R5 R4 K532 ["Upload"]
  DUPTABLE R5 K537 [{"Success", "Failure", "Back", "CreatorDashboardMessage", "CreatorDashboardName"}]
  LOADK R8 K26 ["Sales"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K533 ["Success"]
  LOADK R8 K27 ["PackagePermissions"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K534 ["Failure"]
  LOADK R8 K28 ["AssetConfig"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K535 ["Back"]
  GETUPVAL R7 6
  JUMPIFNOT R7 [+9]
  LOADK R8 K29 ["PurchaseFlow"]
  DUPTABLE R9 K319 [{"creatorDashboardLink"}]
  LOADK R10 K64 ["Studio.Toolbox.General.CategoryMyVideos"]
  SETTABLEKS R10 R9 K318 ["creatorDashboardLink"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 3 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K536 ["CreatorDashboardMessage"]
  GETUPVAL R7 6
  JUMPIFNOT R7 [+5]
  LOADK R8 K65 ["MyVideo"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K311 ["CreatorDashboardName"]
  SETTABLEKS R5 R4 K542 ["UploadResult"]
  DUPTABLE R5 K545 [{"Current", "Restore"}]
  LOADK R8 K34 ["_safeLocalize"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K543 ["Current"]
  LOADK R8 K35 ["AllModels"]
  NAMECALL R6 R0 K34 ["_safeLocalize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K544 ["Restore"]
  SETTABLEKS R5 R4 K548 ["VersionsHistory"]
  NEWTABLE R5 4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K549 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K26 ["Sales"]
  LOADK R9 K38 ["Studio.Toolbox.General.CategoryModels"]
  NAMECALL R7 R0 K34 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K549 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K551 ["Versions"]
  LOADK R9 K40 ["Studio.Toolbox.General.CategoryDecals"]
  NAMECALL R7 R0 K34 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K549 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K553 ["General"]
  LOADK R9 K42 ["Studio.Toolbox.General.CategoryMeshes"]
  NAMECALL R7 R0 K34 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K549 ["SIDE_TABS"]
  GETTABLEKS R6 R7 K555 ["Permissions"]
  LOADK R9 K44 ["Studio.Toolbox.General.CategoryAudio"]
  NAMECALL R7 R0 K34 ["_safeLocalize"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K557 ["SideTabs"]
  LOADK R7 K46 ["Studio.Toolbox.General.CategoryFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K559 ["DistributeAgreement"]
  LOADK R7 K48 ["Studio.Toolbox.General.CategoryPaidPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K561 ["Terms"]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  LOADK R7 K50 ["Studio.Toolbox.General.CategoryVideos"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K563 ["Accounts"]
  LOADK R7 K52 ["Studio.Toolbox.General.CategoryMyModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K565 ["PublicSharingInformation"]
  LOADK R7 K54 ["Studio.Toolbox.General.CategoryMyDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K567 ["MustShare"]
  LOADK R7 K56 ["Studio.Toolbox.General.CategoryMyMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K569 ["AnyoneOnRoblox"]
  LOADK R7 K58 ["Studio.Toolbox.General.CategoryMyAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K571 ["OnlyMe"]
  GETUPVAL R6 7
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  LOADK R7 K60 ["Studio.Toolbox.General.CategoryMyPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K259 ["Apply"]
  LOADK R7 K10 ["Suggestions"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K260 ["Cancel"]
  LOADK R7 K61 ["MyPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K574 ["Error"]
  LOADK R7 K63 ["MyPackages"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K576 ["NetworkError"]
  LOADK R7 K65 ["MyVideo"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K578 ["GetAssetFailed"]
  LOADK R7 K67 ["MyAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K580 ["Discard"]
  LOADK R7 K69 ["MyFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K582 ["Close"]
  LOADK R7 K71 ["RecentModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K584 ["DiscardMessage"]
  LOADK R7 K73 ["RecentDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K586 ["Insert"]
  LOADK R7 K75 ["RecentMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K588 ["Install"]
  LOADK R7 K77 ["RecentAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K590 ["Loading"]
  LOADK R7 K79 ["RecentVideo"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K592 ["Update"]
  LOADK R7 K81 ["RecentAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K594 ["Installed"]
  LOADK R7 K83 ["RecentFonts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K596 ["InstallSuccess"]
  LOADK R7 K85 ["GroupModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K598 ["InstallFailure"]
  LOADK R7 K87 ["GroupDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K600 ["Installing"]
  LOADK R7 K89 ["GroupMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K602 ["NoTagFound"]
  SETTABLEKS R4 R3 K28 ["AssetConfig"]
  DUPTABLE R4 K614 [{"Cancel", "Retry", "Buy", "BuyRobux", "FreeTitle", "BuyTitle", "InsufficientFundsTitle", "CurrentBalance", "FailedHeader", "FreeSuccessHeader", "SuccessHeader", "Free", "OK"}]
  LOADK R7 K103 ["CreationsAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K260 ["Cancel"]
  LOADK R7 K104 ["Studio.Toolbox.General.CategoryCreationsMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K603 ["Retry"]
  LOADK R7 K105 ["CreationsMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K604 ["Buy"]
  LOADK R7 K106 ["Studio.Toolbox.General.CategoryCreationsPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K605 ["BuyRobux"]
  LOADK R7 K107 ["CreationsPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K606 ["FreeTitle"]
  LOADK R7 K108 ["Studio.Toolbox.General.CategoryCreationsAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K607 ["BuyTitle"]
  LOADK R7 K109 ["CreationsAnimations"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K608 ["InsufficientFundsTitle"]
  LOADK R7 K110 ["CreationsGroupModels"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K609 ["CurrentBalance"]
  LOADK R7 K111 ["CreationsGroupDecals"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K610 ["FailedHeader"]
  LOADK R7 K112 ["CreationsGroupMeshes"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K611 ["FreeSuccessHeader"]
  LOADK R7 K113 ["CreationsGroupAudio"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K612 ["SuccessHeader"]
  LOADK R7 K114 ["CreationsGroupPackages"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K304 ["Free"]
  LOADK R7 K115 ["CreationsGroupPlugins"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K613 ["OK"]
  SETTABLEKS R4 R3 K29 ["PurchaseFlow"]
  DUPTABLE R4 K631 [{"DontShowAgain", "InstructionText", "InstructionText2"}]
  LOADK R7 K120 ["Studio.Toolbox.General.CategoryCreationsHats"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K628 ["DontShowAgain"]
  LOADK R7 K121 ["CreationsHats"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K629 ["InstructionText"]
  LOADK R7 K122 ["Studio.Toolbox.General.CategoryCreationsTeeShirts"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K630 ["InstructionText2"]
  SETTABLEKS R4 R3 K30 ["ScriptWarning"]
  GETUPVAL R4 8
  JUMPIFNOT R4 [+55]
  DUPTABLE R4 K639 [{"Success", "Failure", "DialogText", "Information", "CancelButton", "GrantButton"}]
  LOADK R7 K128 ["Studio.Toolbox.General.CategoryCreationsHair"]
  DUPTABLE R8 K642 [{"assetId"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K641 ["assetId"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K533 ["Success"]
  LOADK R7 K131 ["CreationsFaceAccessories"]
  DUPTABLE R8 K642 [{"assetId"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K641 ["assetId"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K534 ["Failure"]
  LOADK R7 K132 ["Studio.Toolbox.General.CategoryCreationsNeckAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K635 ["DialogText"]
  LOADK R7 K133 ["CreationsNeckAccessories"]
  DUPTABLE R8 K648 [{"assetName", "assetId", "assetType"}]
  LOADK R9 K137 ["CreationsFrontAccessories"]
  SETTABLEKS R9 R8 K646 ["assetName"]
  LOADN R9 0
  SETTABLEKS R9 R8 K641 ["assetId"]
  LOADK R9 K138 ["Studio.Toolbox.General.CategoryCreationsBackAccessory"]
  SETTABLEKS R9 R8 K647 ["assetType"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K636 ["Information"]
  LOADK R7 K139 ["CreationsBackAccessories"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K637 ["CancelButton"]
  LOADK R7 K140 ["Studio.Toolbox.General.CategoryCreationsWaistAccessory"]
  NAMECALL R5 R0 K34 ["_safeLocalize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K638 ["GrantButton"]
  SETTABLEKS R4 R3 K31 ["GrantAssetPermission"]
  NAMECALL R1 R0 K653 ["_update"]
  CALL R1 2 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R7 0
  CALL R7 0 1
  NOT R6 R7
  LOADK R8 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R11 K2 [script]
  GETTABLEKS R10 R11 K3 ["Name"]
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  FASTCALL2 ASSERT R6 R7 [+3]
  GETIMPORT R5 K6 [assert]
  CALL R5 2 0
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K7 ["content"]
  GETTABLE R7 R6 R2
  GETIMPORT R8 K9 [pairs]
  MOVE R9 R1
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R12 R4
  GETTABLE R14 R7 R13
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["Dictionary"]
  GETTABLEKS R15 R16 K11 ["join"]
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
  GETIMPORT R6 K12 [require]
  GETTABLEKS R10 R0 K3 ["Core"]
  GETTABLEKS R9 R10 K4 ["Util"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K16 ["getFFlagToolboxFinallyRemoveLegacyContext"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K17 ["Packages"]
  GETIMPORT R8 K12 [require]
  GETTABLEKS R9 R7 K18 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R10 R1 K19 ["createSignal"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R11 R1 K20 ["DebugFlags"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R12 R1 K21 ["wrapStrictTable"]
  CALL R11 1 1
  GETIMPORT R12 K12 [require]
  GETTABLEKS R13 R1 K22 ["AssetConfigConstants"]
  CALL R12 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R14 R1 K23 ["isCli"]
  CALL R13 1 1
  NEWTABLE R14 64 0
  SETTABLEKS R14 R14 K24 ["__index"]
  GETIMPORT R15 K6 [game]
  LOADK R17 K25 ["UnifyModelPackagePublish3"]
  NAMECALL R15 R15 K8 ["GetFastFlag"]
  CALL R15 2 1
  GETIMPORT R16 K12 [require]
  GETTABLEKS R19 R0 K3 ["Core"]
  GETTABLEKS R18 R19 K13 ["Flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagToolboxAddPackageVersionDescriptions"]
  CALL R16 1 1
  GETIMPORT R17 K12 [require]
  GETTABLEKS R21 R0 K3 ["Core"]
  GETTABLEKS R20 R21 K4 ["Util"]
  GETTABLEKS R19 R20 K15 ["SharedFlags"]
  GETTABLEKS R18 R19 K27 ["getFFlagToolboxStoreRename"]
  CALL R17 1 1
  DUPCLOSURE R18 K28 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R18 R14 K29 ["new"]
  DUPCLOSURE R18 K30 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R14
  SETTABLEKS R18 R14 K31 ["createDummyLocalization"]
  DUPCLOSURE R18 K32 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R14
  SETTABLEKS R18 R14 K33 ["createTestCustomLocaleLocalization"]
  DUPCLOSURE R18 K34 [PROTO_12]
  CAPTURE VAL R6
  CAPTURE VAL R14
  SETTABLEKS R18 R14 K35 ["createTestRealLocaleLocalization"]
  DUPCLOSURE R18 K36 [PROTO_13]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K37 ["subscribe"]
  DUPCLOSURE R18 K38 [PROTO_14]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K39 ["getLocalizedContent"]
  DUPCLOSURE R18 K40 [PROTO_15]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K41 ["getSalesMessage"]
  DUPCLOSURE R18 K42 [PROTO_16]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K43 ["getLocalizedVoteText"]
  DUPCLOSURE R18 K44 [PROTO_17]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K45 ["getLocalizedCategories"]
  DUPCLOSURE R18 K46 [PROTO_18]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K47 ["getLocalizedSorts"]
  DUPCLOSURE R18 K48 [PROTO_19]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K49 ["getLocalizedSuggestions"]
  DUPCLOSURE R18 K50 [PROTO_20]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K51 ["getLocalizedFooter"]
  DUPCLOSURE R18 K52 [PROTO_21]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K53 ["getLocalizedTooManyCollaborators"]
  DUPCLOSURE R18 K54 [PROTO_22]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K55 ["getLocalizedBuyPrompt"]
  DUPCLOSURE R18 K56 [PROTO_23]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K57 ["getLocalizedInsufficientFundsPrompt"]
  DUPCLOSURE R18 K58 [PROTO_24]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K59 ["getPurchaseFailedDetails"]
  DUPCLOSURE R18 K60 [PROTO_25]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K61 ["getPurchaseSuccessDetails"]
  DUPCLOSURE R18 K62 [PROTO_26]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K63 ["getScriptConfirmation"]
  DUPCLOSURE R18 K64 [PROTO_27]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K65 ["getMaxTags"]
  DUPCLOSURE R18 K66 [PROTO_28]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K67 ["getThumbnailStatus"]
  DUPCLOSURE R18 K68 [PROTO_29]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K69 ["getUploadWithFee"]
  DUPCLOSURE R18 K70 [PROTO_30]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K71 ["getGroupPermissionLockedTooltip"]
  DUPCLOSURE R18 K72 [PROTO_31]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K73 ["destroy"]
  DUPCLOSURE R18 K74 [PROTO_32]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K75 ["_getDefaultLocaleId"]
  DUPCLOSURE R18 K76 [PROTO_33]
  CAPTURE VAL R6
  CAPTURE VAL R13
  SETTABLEKS R18 R14 K77 ["_getLocaleId"]
  DUPCLOSURE R18 K78 [PROTO_34]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K79 ["_getTranslator"]
  DUPCLOSURE R18 K80 [PROTO_35]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K81 ["_getFallbackTranslator"]
  DUPCLOSURE R18 K82 [PROTO_36]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K83 ["_getDefaultTranslator"]
  DUPCLOSURE R18 K84 [PROTO_37]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R18 R14 K85 ["_update"]
  DUPCLOSURE R18 K86 [PROTO_38]
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R18 R14 K87 ["_safeLocalize"]
  DUPCLOSURE R18 K88 [PROTO_40]
  CAPTURE VAL R6
  SETTABLEKS R18 R14 K89 ["_safeLocalizeInner"]
  DUPCLOSURE R18 K90 [PROTO_41]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R2
  SETTABLEKS R18 R14 K91 ["_recalculateContent"]
  DUPCLOSURE R18 K92 [PROTO_42]
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R18 R14 K93 ["_localizeTable"]
  RETURN R14 1
