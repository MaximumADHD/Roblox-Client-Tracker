PROTO_0:
  DUPTABLE R2 K8 [{"CFrame", "CollaboratorColor3", "CurDocGUID", "CurScriptLineNumber", "IsIdle", "Status", "UserId", "Username"}]
  GETIMPORT R3 K10 [CFrame.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["CFrame"]
  GETIMPORT R3 K12 [Color3.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["CollaboratorColor3"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["CurDocGUID"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["CurScriptLineNumber"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["IsIdle"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Editing3D"]
  SETTABLEKS R3 R2 K5 ["Status"]
  ORK R3 R0 K14 [3570764360]
  SETTABLEKS R3 R2 K6 ["UserId"]
  ORK R3 R1 K15 ["Kresselia1"]
  SETTABLEKS R3 R2 K7 ["Username"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SocialPresence"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Components"]
  GETTABLEKS R2 R3 K8 ["CollaboratorStatus"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
