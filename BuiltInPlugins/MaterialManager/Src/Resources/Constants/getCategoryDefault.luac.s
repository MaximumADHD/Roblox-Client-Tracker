PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  GETUPVAL R1 1
  JUMP [+1]
  GETUPVAL R1 2
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
  GETTABLEKS R3 R2 K8 ["getFFlagMSPhase02"]
  DUPTABLE R4 K10 [{"Materials"}]
  DUPTABLE R5 K20 [{"Concrete", "Fabric", "Ground", "Metal", "Organic", "Plastic", "Rock", "Stone", "Wood"}]
  GETIMPORT R6 K23 [Enum.Material.Concrete]
  SETTABLEKS R6 R5 K11 ["Concrete"]
  GETIMPORT R6 K24 [Enum.Material.Fabric]
  SETTABLEKS R6 R5 K12 ["Fabric"]
  GETIMPORT R6 K25 [Enum.Material.Ground]
  SETTABLEKS R6 R5 K13 ["Ground"]
  GETIMPORT R6 K26 [Enum.Material.Metal]
  SETTABLEKS R6 R5 K14 ["Metal"]
  GETIMPORT R6 K28 [Enum.Material.Ice]
  SETTABLEKS R6 R5 K15 ["Organic"]
  GETIMPORT R6 K29 [Enum.Material.Plastic]
  SETTABLEKS R6 R5 K16 ["Plastic"]
  GETIMPORT R6 K30 [Enum.Material.Rock]
  SETTABLEKS R6 R5 K17 ["Rock"]
  GETIMPORT R6 K32 [Enum.Material.Slate]
  SETTABLEKS R6 R5 K18 ["Stone"]
  GETIMPORT R6 K33 [Enum.Material.Wood]
  SETTABLEKS R6 R5 K19 ["Wood"]
  SETTABLEKS R5 R4 K9 ["Materials"]
  DUPTABLE R5 K10 [{"Materials"}]
  DUPTABLE R6 K37 [{"Ceramic", "Concrete", "Fabric", "Ground", "Metal", "Organic", "Paper", "Plastic", "Rock", "Stone", "Synthetic", "Wood"}]
  GETIMPORT R7 K39 [Enum.Material.CeramicTiles]
  SETTABLEKS R7 R6 K34 ["Ceramic"]
  GETIMPORT R7 K23 [Enum.Material.Concrete]
  SETTABLEKS R7 R6 K11 ["Concrete"]
  GETIMPORT R7 K24 [Enum.Material.Fabric]
  SETTABLEKS R7 R6 K12 ["Fabric"]
  GETIMPORT R7 K25 [Enum.Material.Ground]
  SETTABLEKS R7 R6 K13 ["Ground"]
  GETIMPORT R7 K26 [Enum.Material.Metal]
  SETTABLEKS R7 R6 K14 ["Metal"]
  GETIMPORT R7 K28 [Enum.Material.Ice]
  SETTABLEKS R7 R6 K15 ["Organic"]
  GETIMPORT R7 K41 [Enum.Material.Cardboard]
  SETTABLEKS R7 R6 K35 ["Paper"]
  GETIMPORT R7 K29 [Enum.Material.Plastic]
  SETTABLEKS R7 R6 K16 ["Plastic"]
  GETIMPORT R7 K30 [Enum.Material.Rock]
  SETTABLEKS R7 R6 K17 ["Rock"]
  GETIMPORT R7 K32 [Enum.Material.Slate]
  SETTABLEKS R7 R6 K18 ["Stone"]
  GETIMPORT R7 K43 [Enum.Material.Rubber]
  SETTABLEKS R7 R6 K36 ["Synthetic"]
  GETIMPORT R7 K33 [Enum.Material.Wood]
  SETTABLEKS R7 R6 K19 ["Wood"]
  SETTABLEKS R6 R5 K9 ["Materials"]
  DUPCLOSURE R6 K44 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
