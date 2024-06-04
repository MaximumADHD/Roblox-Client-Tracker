PROTO_0:
  NEWTABLE R3 4 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K3 ["_maid"]
  FASTCALL2K ASSERT R1 K4 [+5]
  MOVE R4 R1
  LOADK R5 K4 ["No tracker"]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["_visualizationModeServiceTracker"]
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R4 R0
  LOADK R5 K8 ["No plugin"]
  GETIMPORT R3 K6 [assert]
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["_plugin"]
  NAMECALL R3 R2 K10 ["_setupStateBinding"]
  CALL R3 1 0
  NAMECALL R3 R2 K11 ["_bindRemoteRequests"]
  CALL R3 1 0
  RETURN R2 1

PROTO_1:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Bad visualizationModeCategoryName"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K6 [+4]
  LOADK R5 K6 ["Bad visualizationModeName"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K7 ["boolean"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Bad isEnabled"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["_visualizationModeServiceTracker"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K10 ["updateVisualizationModeIsEnabled"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Bad visualizationModeCategoryName"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["boolean"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Bad isEnabled"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["_visualizationModeServiceTracker"]
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["updateVisualizationModeCategoryIsEnabled"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_plugin"]
  LOADK R5 K2 ["updateVisualizationModeIsEnabled"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["OnInvoke"]
  CALL R3 3 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_plugin"]
  LOADK R5 K5 ["updateVisualizationModeCategoryIsEnabled"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["OnInvoke"]
  CALL R3 3 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_reportCombinerClientState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_reportCombinerClientState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_reportCombinerClientState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_reportCombinerClientClosingState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R4 R0 K1 ["_visualizationModeServiceTracker"]
  GETTABLEKS R3 R4 K2 ["changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K5 ["_plugin"]
  LOADK R5 K6 ["queryClientCombinerState"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K7 ["OnInvoke"]
  CALL R3 3 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K5 ["_plugin"]
  LOADK R5 K8 ["HostDataModelType"]
  NAMECALL R3 R3 K9 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 2 0
  NAMECALL R1 R0 K10 ["_reportCombinerClientState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_visualizationModeServiceTracker"]
  NAMECALL R1 R1 K1 ["getState"]
  CALL R1 1 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  DUPTABLE R2 K4 [{"visualizationModeServiceState", "hostDataModelType"}]
  SETTABLEKS R1 R2 K2 ["visualizationModeServiceState"]
  GETTABLEKS R4 R0 K5 ["_plugin"]
  GETTABLEKS R3 R4 K6 ["HostDataModelType"]
  SETTABLEKS R3 R2 K3 ["hostDataModelType"]
  GETTABLEKS R3 R0 K5 ["_plugin"]
  LOADK R5 K7 ["reportClientCombinerState"]
  MOVE R6 R2
  NAMECALL R3 R3 K8 ["Invoke"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"visualizationModeServiceState", "hostDataModelType"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["visualizationModeServiceState"]
  GETTABLEKS R3 R0 K3 ["_plugin"]
  GETTABLEKS R2 R3 K4 ["HostDataModelType"]
  SETTABLEKS R2 R1 K1 ["hostDataModelType"]
  GETTABLEKS R2 R0 K3 ["_plugin"]
  LOADK R4 K5 ["reportClientCombinerState"]
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_maid"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Maid"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K10 ["Model"]
  GETTABLEKS R5 R6 K11 ["Tracking"]
  GETTABLEKS R4 R5 K12 ["VisualizationModeServiceTracker"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K13 ["__index"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K15 ["new"]
  DUPCLOSURE R5 K16 [PROTO_3]
  SETTABLEKS R5 R4 K17 ["_bindRemoteRequests"]
  DUPCLOSURE R5 K18 [PROTO_8]
  SETTABLEKS R5 R4 K19 ["_setupStateBinding"]
  DUPCLOSURE R5 K20 [PROTO_9]
  SETTABLEKS R5 R4 K21 ["_reportCombinerClientState"]
  DUPCLOSURE R5 K22 [PROTO_10]
  SETTABLEKS R5 R4 K23 ["_reportCombinerClientClosingState"]
  DUPCLOSURE R5 K24 [PROTO_11]
  SETTABLEKS R5 R4 K25 ["destroy"]
  RETURN R4 1
