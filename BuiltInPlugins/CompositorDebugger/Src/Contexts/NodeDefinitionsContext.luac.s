PROTO_0:
  DUPTABLE R1 K2 [{"nodeDefinitions", "nodeGroups"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["nodeDefinitions"]
  SETTABLEKS R2 R1 K0 ["nodeDefinitions"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["nodeGroups"]
  SETTABLEKS R2 R1 K1 ["nodeGroups"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["Provider"]
  DUPTABLE R4 K6 [{"value"}]
  SETTABLEKS R1 R4 K5 ["value"]
  GETTABLEKS R5 R0 K7 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K12 [{"nodeGroups", "nodeDefinitions"}]
  NEWTABLE R4 0 5
  DUPTABLE R5 K15 [{"name", "nodes"}]
  LOADK R6 K16 ["sources"]
  SETTABLEKS R6 R5 K13 ["name"]
  NEWTABLE R6 0 4
  LOADK R7 K17 ["empty_clip"]
  LOADK R8 K18 ["emptygroup"]
  LOADK R9 K19 ["pose"]
  LOADK R10 K20 ["pose_cache"]
  SETLIST R6 R7 4 [1]
  SETTABLEKS R6 R5 K14 ["nodes"]
  DUPTABLE R6 K15 [{"name", "nodes"}]
  LOADK R7 K21 ["blending"]
  SETTABLEKS R7 R6 K13 ["name"]
  NEWTABLE R7 0 3
  LOADK R8 K22 ["blend"]
  LOADK R9 K23 ["additive"]
  LOADK R10 K24 ["blend_space"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K14 ["nodes"]
  DUPTABLE R7 K15 [{"name", "nodes"}]
  LOADK R8 K25 ["selection"]
  SETTABLEKS R8 R7 K13 ["name"]
  NEWTABLE R8 0 3
  LOADK R9 K26 ["select"]
  LOADK R10 K27 ["state_machine"]
  LOADK R11 K28 ["sequence"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K14 ["nodes"]
  DUPTABLE R8 K15 [{"name", "nodes"}]
  LOADK R9 K29 ["effects"]
  SETTABLEKS R9 R8 K13 ["name"]
  NEWTABLE R9 0 4
  LOADK R10 K30 ["mask"]
  LOADK R11 K31 ["mirror"]
  LOADK R12 K32 ["noise"]
  LOADK R13 K33 ["time_warp"]
  SETLIST R9 R10 4 [1]
  SETTABLEKS R9 R8 K14 ["nodes"]
  DUPTABLE R9 K15 [{"name", "nodes"}]
  LOADK R10 K34 ["transforms"]
  SETTABLEKS R10 R9 K13 ["name"]
  NEWTABLE R10 0 3
  LOADK R11 K35 ["set_transform"]
  LOADK R12 K36 ["copy_transform"]
  LOADK R13 K37 ["look_at"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K14 ["nodes"]
  SETLIST R4 R5 5 [1]
  SETTABLEKS R4 R3 K10 ["nodeGroups"]
  DUPTABLE R4 K39 [{"empty_clip", "emptygroup", "pose", "pose_cache", "blend", "additive", "blend_space", "select", "state_machine", "sequence", "mask", "mirror", "noise", "time_warp", "inertialize", "set_transform", "copy_transform", "look_at"}]
  DUPTABLE R5 K41 [{"parameters"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K43 [{"name", "type"}]
  LOADK R8 K44 ["AnimationId"]
  SETTABLEKS R8 R7 K13 ["name"]
  LOADK R8 K45 ["String"]
  SETTABLEKS R8 R7 K42 ["type"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K40 ["parameters"]
  SETTABLEKS R5 R4 K17 ["empty_clip"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K18 ["emptygroup"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K19 ["pose"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K20 ["pose_cache"]
  DUPTABLE R5 K41 [{"parameters"}]
  NEWTABLE R6 0 3
  DUPTABLE R7 K47 [{"name", "type", "default"}]
  LOADK R8 K48 ["BlendFactor"]
  SETTABLEKS R8 R7 K13 ["name"]
  LOADK R8 K49 ["Number"]
  SETTABLEKS R8 R7 K42 ["type"]
  LOADK R8 K50 [0.5]
  SETTABLEKS R8 R7 K46 ["default"]
  DUPTABLE R8 K43 [{"name", "type"}]
  LOADK R9 K51 ["Animation A"]
  SETTABLEKS R9 R8 K13 ["name"]
  LOADK R9 K52 ["Layer"]
  SETTABLEKS R9 R8 K42 ["type"]
  DUPTABLE R9 K43 [{"name", "type"}]
  LOADK R10 K53 ["Animation B"]
  SETTABLEKS R10 R9 K13 ["name"]
  LOADK R10 K52 ["Layer"]
  SETTABLEKS R10 R9 K42 ["type"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K40 ["parameters"]
  SETTABLEKS R5 R4 K22 ["blend"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K23 ["additive"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K24 ["blend_space"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K26 ["select"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K27 ["state_machine"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K28 ["sequence"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K30 ["mask"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K31 ["mirror"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K32 ["noise"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K33 ["time_warp"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K38 ["inertialize"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K35 ["set_transform"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K36 ["copy_transform"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K37 ["look_at"]
  SETTABLEKS R4 R3 K11 ["nodeDefinitions"]
  GETTABLEKS R4 R1 K54 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K55 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R6 K58 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K56 ["Context"]
  SETTABLEKS R5 R6 K57 ["Provider"]
  RETURN R6 1
