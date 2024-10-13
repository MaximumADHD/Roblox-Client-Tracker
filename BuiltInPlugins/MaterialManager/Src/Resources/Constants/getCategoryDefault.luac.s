PROTO_0:
  LOADNIL R1
  GETUPVAL R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R1 R1 R6
  JUMPIF R1 [+1]
  RETURN R1 1
  FORGLOOP R2 2 [-4]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+3]
  LOADNIL R2
  RETURN R2 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  CALL R2 1 1
  DUPTABLE R3 K9 [{"Materials"}]
  DUPTABLE R4 K22 [{"Ceramic", "Concrete", "Fabric", "Ground", "Metal", "Organic", "Paper", "Plastic", "Rock", "Stone", "Synthetic", "Wood"}]
  GETIMPORT R5 K26 [Enum.Material.CeramicTiles]
  SETTABLEKS R5 R4 K10 ["Ceramic"]
  GETIMPORT R5 K27 [Enum.Material.Concrete]
  SETTABLEKS R5 R4 K11 ["Concrete"]
  GETIMPORT R5 K28 [Enum.Material.Fabric]
  SETTABLEKS R5 R4 K12 ["Fabric"]
  GETIMPORT R5 K29 [Enum.Material.Ground]
  SETTABLEKS R5 R4 K13 ["Ground"]
  GETIMPORT R5 K30 [Enum.Material.Metal]
  SETTABLEKS R5 R4 K14 ["Metal"]
  GETIMPORT R5 K32 [Enum.Material.Ice]
  SETTABLEKS R5 R4 K15 ["Organic"]
  GETIMPORT R5 K34 [Enum.Material.Cardboard]
  SETTABLEKS R5 R4 K16 ["Paper"]
  GETIMPORT R5 K35 [Enum.Material.Plastic]
  SETTABLEKS R5 R4 K17 ["Plastic"]
  GETIMPORT R5 K36 [Enum.Material.Rock]
  SETTABLEKS R5 R4 K18 ["Rock"]
  GETIMPORT R5 K38 [Enum.Material.Slate]
  SETTABLEKS R5 R4 K19 ["Stone"]
  GETIMPORT R5 K40 [Enum.Material.Rubber]
  SETTABLEKS R5 R4 K20 ["Synthetic"]
  GETIMPORT R5 K41 [Enum.Material.Wood]
  SETTABLEKS R5 R4 K21 ["Wood"]
  SETTABLEKS R4 R3 K8 ["Materials"]
  DUPCLOSURE R4 K42 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
