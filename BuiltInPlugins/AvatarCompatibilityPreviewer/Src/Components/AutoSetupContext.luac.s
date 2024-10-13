PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+76]
  MOVE R1 R0
  DUPTABLE R2 K6 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K0 ["progressPercentage"]
  LOADK R3 K7 ["Initializing"]
  SETTABLEKS R3 R2 K1 ["progressName"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["completionStart"]
  LOADK R3 K8 [0.2]
  SETTABLEKS R3 R2 K3 ["completionEnd"]
  LOADK R3 K9 ["Created"]
  SETTABLEKS R3 R2 K4 ["jobStatus"]
  LOADK R3 K10 ["abcd"]
  SETTABLEKS R3 R2 K5 ["jobId"]
  CALL R1 1 0
  GETIMPORT R1 K13 [task.wait]
  LOADN R2 5
  CALL R1 1 0
  MOVE R1 R0
  DUPTABLE R2 K6 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K0 ["progressPercentage"]
  LOADK R3 K14 ["NotProcessing"]
  SETTABLEKS R3 R2 K1 ["progressName"]
  LOADK R3 K8 [0.2]
  SETTABLEKS R3 R2 K2 ["completionStart"]
  LOADK R3 K15 [0.95]
  SETTABLEKS R3 R2 K3 ["completionEnd"]
  LOADK R3 K16 ["Processing"]
  SETTABLEKS R3 R2 K4 ["jobStatus"]
  LOADK R3 K10 ["abcd"]
  SETTABLEKS R3 R2 K5 ["jobId"]
  CALL R1 1 0
  GETIMPORT R1 K13 [task.wait]
  LOADN R2 12
  CALL R1 1 0
  MOVE R1 R0
  DUPTABLE R2 K6 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K0 ["progressPercentage"]
  LOADK R3 K17 ["Finalizing"]
  SETTABLEKS R3 R2 K1 ["progressName"]
  LOADK R3 K15 [0.95]
  SETTABLEKS R3 R2 K2 ["completionStart"]
  LOADN R3 1
  SETTABLEKS R3 R2 K3 ["completionEnd"]
  LOADK R3 K17 ["Finalizing"]
  SETTABLEKS R3 R2 K4 ["jobStatus"]
  LOADK R3 K10 ["abcd"]
  SETTABLEKS R3 R2 K5 ["jobId"]
  CALL R1 1 0
  GETIMPORT R1 K13 [task.wait]
  LOADN R2 3
  CALL R1 1 0
  JUMP [+12]
  LOADN R3 30
  LOADN R1 1
  LOADN R2 255
  FORNPREP R1
  MOVE R4 R0
  MOVE R5 R3
  CALL R4 1 0
  GETIMPORT R4 K13 [task.wait]
  LOADN R5 1
  CALL R4 1 0
  FORNLOOP R1
  GETUPVAL R1 1
  LOADN R3 109
  NAMECALL R1 R1 K18 ["CreateHumanoidModelFromUserId"]
  CALL R1 2 1
  LOADK R4 K19 ["Accessory"]
  NAMECALL R2 R1 K20 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+17]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K21 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K23 [assert]
  CALL R3 2 0
  NAMECALL R3 R2 K24 ["Destroy"]
  CALL R3 1 0
  JUMPBACK [-22]
  RETURN R1 1

PROTO_1:
  LOADK R4 K0 ["SurfaceAppearance"]
  NAMECALL R2 R1 K1 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+7]
  NAMECALL R3 R0 K2 ["Clone"]
  CALL R3 1 1
  SETTABLEKS R1 R3 K3 ["Parent"]
  RETURN R0 0
  GETTABLEKS R3 R2 K4 ["ColorMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K4 ["ColorMap"]
  SETTABLEKS R3 R2 K4 ["ColorMap"]
  GETTABLEKS R3 R2 K6 ["NormalMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K6 ["NormalMap"]
  SETTABLEKS R3 R2 K6 ["NormalMap"]
  GETTABLEKS R3 R2 K7 ["MetalnessMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K7 ["MetalnessMap"]
  SETTABLEKS R3 R2 K7 ["MetalnessMap"]
  GETTABLEKS R3 R2 K8 ["RoughnessMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K8 ["RoughnessMap"]
  SETTABLEKS R3 R2 K8 ["RoughnessMap"]
  RETURN R0 0

PROTO_2:
  NAMECALL R2 R1 K0 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["MeshPart"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 0
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 0
  FORGLOOP R2 2 [-10]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  LOADK R1 K0 ["rbxasset://mock"]
  RETURN R1 1
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioAssetService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  NAMECALL R2 R0 K5 ["Clone"]
  CALL R2 1 1
  JUMPIF R2 [+4]
  GETIMPORT R3 K7 [error]
  LOADK R4 K8 ["Failed to clone body"]
  CALL R3 1 0
  GETIMPORT R3 K11 [CFrame.new]
  NAMECALL R5 R2 K12 ["GetBoundingBox"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["Position"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  NAMECALL R5 R2 K14 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  LOADK R12 K15 ["BasePart"]
  NAMECALL R10 R9 K16 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+6]
  GETTABLEKS R12 R9 K9 ["CFrame"]
  NAMECALL R10 R3 K17 ["ToObjectSpace"]
  CALL R10 2 1
  SETTABLE R10 R4 R9
  FORGLOOP R5 2 [-12]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  SETTABLEKS R9 R8 K9 ["CFrame"]
  FORGLOOP R5 2 [-3]
  NEWTABLE R7 0 1
  MOVE R8 R2
  SETLIST R7 R8 1 [1]
  NAMECALL R5 R1 K18 ["SerializeInstances"]
  CALL R5 2 1
  DUPTABLE R6 K28 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
  LOADK R7 K29 ["Model"]
  SETTABLEKS R7 R6 K19 ["AssetType"]
  LOADK R7 K30 ["Auto-setup character model"]
  SETTABLEKS R7 R6 K20 ["AssetName"]
  LOADK R7 K30 ["Auto-setup character model"]
  SETTABLEKS R7 R6 K21 ["Description"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["AssetId"]
  GETUPVAL R7 1
  NAMECALL R7 R7 K31 ["GetUserId"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K23 ["CreatorId"]
  GETIMPORT R7 K35 [Enum.AssetCreatorType.User]
  SETTABLEKS R7 R6 K24 ["CreatorType"]
  LOADK R7 K36 ["model/x-rbxm"]
  SETTABLEKS R7 R6 K25 ["ContentType"]
  LOADK R7 K37 [""]
  SETTABLEKS R7 R6 K26 ["Token"]
  DUPTABLE R7 K39 [{"PublishAsPackage"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K38 ["PublishAsPackage"]
  SETTABLEKS R7 R6 K27 ["AdditionalParameters"]
  GETUPVAL R7 2
  MOVE R9 R5
  MOVE R10 R6
  NAMECALL R7 R7 K40 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
  CALL R7 3 1
  LOADK R9 K41 ["rbxassetid://%*"]
  GETTABLEKS R11 R7 K22 ["AssetId"]
  NAMECALL R9 R9 K42 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  RETURN R8 1

PROTO_4:
  GETUPVAL R3 0
  CALL R3 0 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["FFlag::AvatarPreviewerUseAnyModel is not enabled"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K5 ["StudioAssetService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R3 R2 K7 ["AutoSetupAvatarAsync"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  LOADK R5 K0 ["MeshPart"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Expected MeshPart"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["FFlag::AvatarPreviewerUseAnyModel is enabled"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1
  GETIMPORT R2 K7 [game]
  LOADK R4 K8 ["StudioAssetService"]
  NAMECALL R2 R2 K9 ["GetService"]
  CALL R2 2 1
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+28]
  LOADK R5 K10 ["SurfaceAppearance"]
  NAMECALL R3 R0 K11 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R5 R3 K12 ["ColorMap"]
  JUMPIFEQKS R5 K13 [""] [+4]
  GETTABLEKS R4 R3 K12 ["ColorMap"]
  JUMP [+2]
  GETTABLEKS R4 R0 K14 ["TextureID"]
  GETTABLEKS R7 R0 K15 ["MeshId"]
  MOVE R8 R4
  MOVE R9 R1
  NAMECALL R5 R2 K16 ["RequestAvatarAutosetupAsync"]
  CALL R5 4 1
  JUMPIFEQKNIL R3 [+5]
  GETUPVAL R6 4
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  RETURN R5 1
  GETTABLEKS R5 R0 K15 ["MeshId"]
  GETTABLEKS R6 R0 K14 ["TextureID"]
  MOVE R7 R1
  NAMECALL R3 R2 K16 ["RequestAvatarAutosetupAsync"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PublishService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [script]
  LOADK R5 K8 ["AvatarCompatibilityPreviewer"]
  NAMECALL R3 R3 K9 ["FindFirstAncestor"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R8 R3 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R3 K14 ["Src"]
  GETTABLEKS R7 R8 K17 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R3 K14 ["Src"]
  GETTABLEKS R9 R10 K18 ["Flags"]
  GETTABLEKS R8 R9 K19 ["getFFlagAvatarAutosetupUseSurfaceAppearance"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R3 K14 ["Src"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  GETTABLEKS R9 R10 K20 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R12 R3 K14 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K21 ["getFFlagDebugAvatarPreviewerMockAutoSetup"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R3 K14 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K22 ["getFFlagStudioAvatarAutosetupReportsProgress"]
  CALL R10 1 1
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R5
  DUPCLOSURE R12 K24 [PROTO_1]
  DUPCLOSURE R13 K25 [PROTO_2]
  CAPTURE VAL R12
  DUPCLOSURE R14 K26 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R1
  DUPCLOSURE R15 K27 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  DUPCLOSURE R16 K28 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R13
  DUPTABLE R17 K33 [{"uploadModelAsync", "startAutoSetupAsync", "DEPRECATED_startAutoSetupAsync", "autoSetupClickedSignal"}]
  SETTABLEKS R14 R17 K29 ["uploadModelAsync"]
  SETTABLEKS R15 R17 K30 ["startAutoSetupAsync"]
  SETTABLEKS R16 R17 K31 ["DEPRECATED_startAutoSetupAsync"]
  LOADNIL R18
  SETTABLEKS R18 R17 K32 ["autoSetupClickedSignal"]
  GETTABLEKS R18 R4 K34 ["createContext"]
  MOVE R19 R17
  CALL R18 1 1
  RETURN R18 1
