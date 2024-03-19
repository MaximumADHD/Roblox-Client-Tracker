MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K10 [{"BrickColor", "Color", "ColorSequence", "Derive", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "Theme", "TokenReference"}]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K15 ["BrickColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrickColor"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K16 ["ColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Color"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K17 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K18 ["ColorSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ColorSequence"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K19 ["DeriveRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Derive"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K20 ["FontRenderers"]
  GETTABLEKS R2 R3 K21 ["FontFamilyRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["FontFamily"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K20 ["FontRenderers"]
  GETTABLEKS R2 R3 K22 ["FontStyleRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["FontStyle"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K20 ["FontRenderers"]
  GETTABLEKS R2 R3 K23 ["FontWeightRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["FontWeight"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K17 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K24 ["NumberSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["NumberSequence"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K25 ["BreadcrumbRadioRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["Theme"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K26 ["TokenReferenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["TokenReference"]
  RETURN R0 1
