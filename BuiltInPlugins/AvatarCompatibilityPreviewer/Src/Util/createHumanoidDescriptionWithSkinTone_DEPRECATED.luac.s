PROTO_0:
  MOVE R1 R0
  JUMPIF R1 [+1]
  GETUPVAL R1 0
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["HumanoidDescription"]
  CALL R2 1 1
  SETTABLEKS R1 R2 K4 ["HeadColor"]
  SETTABLEKS R1 R2 K5 ["TorsoColor"]
  SETTABLEKS R1 R2 K6 ["LeftArmColor"]
  SETTABLEKS R1 R2 K7 ["RightArmColor"]
  SETTABLEKS R1 R2 K8 ["LeftLegColor"]
  SETTABLEKS R1 R2 K9 ["RightLegColor"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [Color3.fromRGB]
  LOADN R1 205
  LOADN R2 205
  LOADN R3 204
  CALL R0 3 1
  DUPCLOSURE R1 K3 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
