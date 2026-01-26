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
  GETIMPORT R6 K1 [plugin]
  GETTABLEKS R5 R6 K22 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R6 R5 K23 ["FocusedDataModelSession"]
  GETTABLEKS R7 R6 K24 ["CurrentDataModelTypeAboutToChange"]
  DUPCLOSURE R9 K25 [PROTO_0]
  NAMECALL R7 R7 K26 ["Connect"]
  CALL R7 2 0
  GETTABLEKS R7 R6 K27 ["CurrentDataModelType"]
  GETIMPORT R8 K31 [Enum.StudioDataModelType.Edit]
  JUMPIFNOTEQ R7 R8 [+17]
  GETIMPORT R7 K11 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K32 ["Util"]
  GETTABLEKS R9 R10 K33 ["SocialPresence"]
  GETTABLEKS R8 R9 K34 ["SocialPresenceDmBridge"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K35 ["initAssetDm"]
  GETIMPORT R9 K1 [plugin]
  CALL R8 1 0
  GETIMPORT R7 K1 [plugin]
  LOADK R9 K36 ["DmChanged"]
  GETTABLEKS R10 R6 K27 ["CurrentDataModelType"]
  NAMECALL R7 R7 K37 ["Invoke"]
  CALL R7 3 0
  GETIMPORT R7 K7 [game]
  LOADK R9 K38 ["StudioService"]
  NAMECALL R7 R7 K39 ["GetService"]
  CALL R7 2 1
  NAMECALL R7 R7 K40 ["HasInternalPermission"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  MOVE R8 R2
  CALL R8 0 1
  JUMPIFNOT R8 [+24]
  GETIMPORT R8 K7 [game]
  LOADK R10 K41 ["RobloxPluginGuiService"]
  NAMECALL R8 R8 K39 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K42 ["FoundationInspector"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K43 ["watchDockWidgets"]
  GETIMPORT R11 K1 [plugin]
  MOVE R12 R8
  CALL R10 2 0
  GETTABLEKS R10 R9 K44 ["watchEnabledState"]
  GETIMPORT R11 K1 [plugin]
  CALL R10 1 0
  JUMPIFNOT R1 [+42]
  GETIMPORT R8 K7 [game]
  LOADK R10 K45 ["ReplicatedStorage"]
  NAMECALL R8 R8 K39 ["GetService"]
  CALL R8 2 1
  LOADK R11 K4 ["Ribbon"]
  NAMECALL R9 R8 K46 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  NAMECALL R10 R9 K47 ["Destroy"]
  CALL R10 1 0
  GETTABLEKS R14 R0 K18 ["Packages"]
  GETTABLEKS R13 R14 K49 ["_Index"]
  GETTABLEKS R12 R13 K50 ["DeveloperFramework"]
  GETTABLEKS R11 R12 K50 ["DeveloperFramework"]
  GETTABLEKS R10 R11 K48 ["DeveloperFramework.storybook"]
  NAMECALL R10 R10 K47 ["Destroy"]
  CALL R10 1 0
  SETTABLEKS R8 R0 K51 ["Parent"]
  GETIMPORT R10 K54 [Instance.new]
  LOADK R11 K55 ["ObjectValue"]
  CALL R10 1 1
  LOADK R11 K56 ["Plugin"]
  SETTABLEKS R11 R10 K57 ["Name"]
  GETIMPORT R11 K1 [plugin]
  SETTABLEKS R11 R10 K58 ["Value"]
  SETTABLEKS R0 R10 K51 ["Parent"]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["SharedFlags"]
  NAMECALL R8 R8 K59 ["GetChildren"]
  CALL R8 1 3
  FORGPREP R8
  LOADK R15 K60 ["ModuleScript"]
  NAMECALL R13 R12 K61 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+5]
  GETIMPORT R13 K63 [pcall]
  NEWCLOSURE R14 P1
  CAPTURE VAL R12
  CALL R13 1 0
  FORGLOOP R8 2 [-11]
  RETURN R0 0
