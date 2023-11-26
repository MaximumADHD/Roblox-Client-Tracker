PROTO_0:
  DUPTABLE R0 K3 [{"Metadata", "Events", "Instances"}]
  DUPTABLE R1 K11 [{"Name", "StartTick", "EndTick", "Looping", "Priority", "FrameRate", "Guid"}]
  LOADK R2 K12 [""]
  SETTABLEKS R2 R1 K4 ["Name"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["StartTick"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["EndTick"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["Looping"]
  GETIMPORT R2 K16 [Enum.AnimationPriority.Core]
  SETTABLEKS R2 R1 K8 ["Priority"]
  LOADN R2 30
  SETTABLEKS R2 R1 K9 ["FrameRate"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K17 ["GenerateGUID"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["Guid"]
  SETTABLEKS R1 R0 K0 ["Metadata"]
  DUPTABLE R1 K21 [{"NamedKeyframes", "Keyframes", "Data"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K18 ["NamedKeyframes"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K19 ["Keyframes"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K20 ["Data"]
  SETTABLEKS R1 R0 K1 ["Events"]
  DUPTABLE R1 K23 [{"Root"}]
  DUPTABLE R2 K26 [{"Type", "Tracks"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K24 ["Type"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K25 ["Tracks"]
  SETTABLEKS R2 R1 K22 ["Root"]
  SETTABLEKS R1 R0 K2 ["Instances"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R0 K2 [{"Type", "Tracks"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["Type"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["Tracks"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R1 K2 [{"Type", "IsCurveTrack"}]
  SETTABLEKS R0 R1 K0 ["Type"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["IsCurveTrack"]
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K5 [{"Name", "Depth", "Expanded", "Selected", "Type"}]
  LOADK R2 K6 [""]
  SETTABLEKS R2 R1 K0 ["Name"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["Depth"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["Expanded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["Selected"]
  SETTABLEKS R0 R1 K4 ["Type"]
  RETURN R1 1

PROTO_4:
  DUPTABLE R0 K6 [{"Value", "EasingStyle", "EasingDirection", "InterpolationMode", "LeftSlope", "RightSlope"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["Value"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["EasingStyle"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["EasingDirection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["InterpolationMode"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["LeftSlope"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["RightSlope"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["animationData"]
  DUPCLOSURE R4 K14 [PROTO_1]
  SETTABLEKS R4 R3 K15 ["instance"]
  DUPCLOSURE R4 K16 [PROTO_2]
  SETTABLEKS R4 R3 K17 ["track"]
  DUPCLOSURE R4 K18 [PROTO_3]
  SETTABLEKS R4 R3 K19 ["trackListEntry"]
  DUPCLOSURE R4 K20 [PROTO_4]
  SETTABLEKS R4 R3 K21 ["keyframe"]
  RETURN R3 1
