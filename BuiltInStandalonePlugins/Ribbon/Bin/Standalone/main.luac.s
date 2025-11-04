PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Packages"]
  GETTABLEKS R2 R3 K3 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K4 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["MainPlugin"]
  CALL R3 1 1
  LOADK R6 K7 ["Ribbon"]
  DUPTABLE R7 K18 [{"Id", "InitialEnabled", "MinSize", "Modal", "Panel", "Resizable", "Size", "Title", "Parent", "AddToParentLayout"}]
  LOADK R8 K7 ["Ribbon"]
  SETTABLEKS R8 R7 K8 ["Id"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["InitialEnabled"]
  GETIMPORT R8 K21 [Vector2.new]
  LOADN R9 128
  LOADN R10 129
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["MinSize"]
  LOADB R8 0
  SETTABLEKS R8 R7 K11 ["Modal"]
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["Panel"]
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["Resizable"]
  GETIMPORT R8 K21 [Vector2.new]
  LOADN R9 128
  LOADN R10 129
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Size"]
  LOADK R8 K7 ["Ribbon"]
  SETTABLEKS R8 R7 K15 ["Title"]
  LOADK R8 K22 ["studioTopBar"]
  SETTABLEKS R8 R7 K16 ["Parent"]
  LOADB R8 1
  SETTABLEKS R8 R7 K17 ["AddToParentLayout"]
  NAMECALL R4 R0 K23 ["CreateQWidgetPluginGui"]
  CALL R4 3 1
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["Enabled"]
  LOADK R5 K7 ["Ribbon"]
  SETTABLEKS R5 R4 K15 ["Title"]
  GETIMPORT R5 K28 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K26 ["ZIndexBehavior"]
  LOADK R7 K29 ["Floating"]
  DUPTABLE R8 K31 [{"Id", "Popup", "Resizable", "Title"}]
  LOADK R9 K29 ["Floating"]
  SETTABLEKS R9 R8 K8 ["Id"]
  DUPTABLE R9 K33 [{"PassesThroughMouseEvents"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K32 ["PassesThroughMouseEvents"]
  SETTABLEKS R9 R8 K30 ["Popup"]
  LOADB R9 1
  SETTABLEKS R9 R8 K13 ["Resizable"]
  LOADK R9 K29 ["Floating"]
  SETTABLEKS R9 R8 K15 ["Title"]
  NAMECALL R5 R0 K23 ["CreateQWidgetPluginGui"]
  CALL R5 3 1
  LOADK R6 K34 ["FloatingRibbon"]
  SETTABLEKS R6 R5 K15 ["Title"]
  GETIMPORT R6 K28 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K26 ["ZIndexBehavior"]
  GETTABLEKS R6 R1 K35 ["createElement"]
  MOVE R7 R3
  DUPTABLE R8 K39 [{"Plugin", "Widget", "Floating", "Mdi"}]
  SETTABLEKS R0 R8 K36 ["Plugin"]
  SETTABLEKS R4 R8 K37 ["Widget"]
  SETTABLEKS R5 R8 K29 ["Floating"]
  GETTABLEKS R9 R0 K40 ["MultipleDocumentInterfaceInstance"]
  SETTABLEKS R9 R8 K38 ["Mdi"]
  CALL R6 2 1
  GETTABLEKS R7 R2 K41 ["createRoot"]
  MOVE R8 R4
  CALL R7 1 1
  MOVE R10 R6
  NAMECALL R8 R7 K42 ["render"]
  CALL R8 2 0
  GETTABLEKS R8 R0 K43 ["Unloading"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R7
  CAPTURE VAL R4
  NAMECALL R8 R8 K44 ["Once"]
  CALL R8 2 0
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+23]
  GETIMPORT R8 K46 [game]
  LOADK R10 K47 ["RobloxPluginGuiService"]
  NAMECALL R8 R8 K48 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K1 [require]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["Src"]
  GETTABLEKS R10 R11 K49 ["FoundationInspector"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K50 ["open"]
  MOVE R11 R0
  CALL R10 1 0
  GETTABLEKS R10 R9 K51 ["watchDockWidgets"]
  MOVE R11 R0
  MOVE R12 R8
  CALL R10 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagDebugEnableFoundationInspector"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
