PROTO_0:
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K2 ["DmChanged"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [require]
  GETUPVAL R1 0
  CALL R0 1 1
  CALL R0 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["Ribbon"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["DebugEnableRibbonStorybook"]
  LOADB R4 0
  NAMECALL R1 R1 K9 ["DefineFastFlag"]
  CALL R1 3 1
  GETIMPORT R2 K11 [require]
  GETTABLEKS R5 R0 K12 ["Src"]
  GETTABLEKS R4 R5 K13 ["SharedFlags"]
  GETTABLEKS R3 R4 K14 ["getFFlagDebugEnableFoundationInspector"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K15 ["Bin"]
  GETTABLEKS R3 R4 K16 ["Common"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R3 K17 ["defineLuaFlags"]
  CALL R4 1 0
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R0 K18 ["Packages"]
  GETTABLEKS R5 R6 K19 ["TestLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K20 ["launch"]
  LOADK R6 K4 ["Ribbon"]
  GETTABLEKS R7 R0 K12 ["Src"]
  CALL R5 2 0
  GETTABLEKS R5 R4 K21 ["isCli"]
  CALL R5 0 1
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K7 [game]
  LOADK R7 K22 ["EnableRibbonPluginFeature"]
  NAMECALL R5 R5 K23 ["GetEngineFeature"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R7 K1 [plugin]
  GETTABLEKS R6 R7 K24 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R7 R6 K25 ["FocusedDataModelSession"]
  GETTABLEKS R8 R7 K26 ["CurrentDataModelTypeAboutToChange"]
  DUPCLOSURE R10 K27 [PROTO_0]
  NAMECALL R8 R8 K28 ["Connect"]
  CALL R8 2 0
  GETTABLEKS R8 R7 K29 ["CurrentDataModelType"]
  GETIMPORT R9 K33 [Enum.StudioDataModelType.Edit]
  JUMPIFNOTEQ R8 R9 [+17]
  GETIMPORT R8 K11 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K34 ["Util"]
  GETTABLEKS R10 R11 K35 ["SocialPresence"]
  GETTABLEKS R9 R10 K36 ["SocialPresenceDmBridge"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K37 ["initAssetDm"]
  GETIMPORT R10 K1 [plugin]
  CALL R9 1 0
  GETIMPORT R8 K1 [plugin]
  LOADK R10 K38 ["DmChanged"]
  GETTABLEKS R11 R7 K29 ["CurrentDataModelType"]
  NAMECALL R8 R8 K39 ["Invoke"]
  CALL R8 3 0
  GETIMPORT R8 K7 [game]
  LOADK R10 K40 ["StudioService"]
  NAMECALL R8 R8 K41 ["GetService"]
  CALL R8 2 1
  NAMECALL R8 R8 K42 ["HasInternalPermission"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  MOVE R9 R2
  CALL R9 0 1
  JUMPIFNOT R9 [+24]
  GETIMPORT R9 K7 [game]
  LOADK R11 K43 ["RobloxPluginGuiService"]
  NAMECALL R9 R9 K41 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K44 ["FoundationInspector"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K45 ["watchDockWidgets"]
  GETIMPORT R12 K1 [plugin]
  MOVE R13 R9
  CALL R11 2 0
  GETTABLEKS R11 R10 K46 ["watchEnabledState"]
  GETIMPORT R12 K1 [plugin]
  CALL R11 1 0
  JUMPIFNOT R1 [+42]
  GETIMPORT R9 K7 [game]
  LOADK R11 K47 ["ReplicatedStorage"]
  NAMECALL R9 R9 K41 ["GetService"]
  CALL R9 2 1
  LOADK R12 K4 ["Ribbon"]
  NAMECALL R10 R9 K48 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIFNOT R10 [+3]
  NAMECALL R11 R10 K49 ["Destroy"]
  CALL R11 1 0
  GETTABLEKS R15 R0 K18 ["Packages"]
  GETTABLEKS R14 R15 K51 ["_Index"]
  GETTABLEKS R13 R14 K52 ["DeveloperFramework"]
  GETTABLEKS R12 R13 K52 ["DeveloperFramework"]
  GETTABLEKS R11 R12 K50 ["DeveloperFramework.storybook"]
  NAMECALL R11 R11 K49 ["Destroy"]
  CALL R11 1 0
  SETTABLEKS R9 R0 K53 ["Parent"]
  GETIMPORT R11 K56 [Instance.new]
  LOADK R12 K57 ["ObjectValue"]
  CALL R11 1 1
  LOADK R12 K58 ["Plugin"]
  SETTABLEKS R12 R11 K59 ["Name"]
  GETIMPORT R12 K1 [plugin]
  SETTABLEKS R12 R11 K60 ["Value"]
  SETTABLEKS R0 R11 K53 ["Parent"]
  GETIMPORT R9 K7 [game]
  LOADK R11 K61 ["RibbonDeclareFlags"]
  LOADB R12 0
  NAMECALL R9 R9 K9 ["DefineFastFlag"]
  CALL R9 3 1
  JUMPIFNOT R9 [+20]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["SharedFlags"]
  NAMECALL R10 R10 K62 ["GetChildren"]
  CALL R10 1 3
  FORGPREP R10
  LOADK R17 K63 ["ModuleScript"]
  NAMECALL R15 R14 K64 ["IsA"]
  CALL R15 2 1
  JUMPIFNOT R15 [+5]
  GETIMPORT R15 K66 [pcall]
  NEWCLOSURE R16 P1
  CAPTURE VAL R14
  CALL R15 1 0
  FORGLOOP R10 2 [-11]
  RETURN R0 0
