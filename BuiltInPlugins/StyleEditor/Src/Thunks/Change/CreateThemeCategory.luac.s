PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Folder"]
  CALL R0 1 1
  LOADK R1 K3 ["Folder"]
  SETTABLEKS R1 R0 K4 ["Name"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["Parent"]
  JUMP [+1]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K5 ["Parent"]
  LOADK R3 K6 ["StyleCategory"]
  LOADK R4 K7 ["Themes"]
  NAMECALL R1 R0 K8 ["SetAttribute"]
  CALL R1 3 0
  GETIMPORT R1 K12 [Enum.FinishRecordingOperation.Commit]
  RETURN R1 1

PROTO_1:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Window"]
  GETTABLEKS R3 R4 K2 ["DesignSheet"]
  GETTABLEKS R4 R1 K3 ["recordChange"]
  DUPTABLE R5 K7 [{"Name", "DisplayName", "DoChange"}]
  LOADK R6 K8 ["StyleEditor/CreateThemeCategory"]
  SETTABLEKS R6 R5 K4 ["Name"]
  LOADK R6 K9 ["StyleEditor - Create Theme Category"]
  SETTABLEKS R6 R5 K5 ["DisplayName"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  SETTABLEKS R6 R5 K6 ["DoChange"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE UPVAL U0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Reducers"]
  GETTABLEKS R3 R4 K11 ["RootReducer"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Thunks"]
  GETTABLEKS R4 R5 K13 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_2]
  CAPTURE VAL R0
  RETURN R4 1
