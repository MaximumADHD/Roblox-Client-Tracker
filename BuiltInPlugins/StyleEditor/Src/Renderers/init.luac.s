MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K9 [{"BrickColor", "Color", "ColorSequence", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "Theme", "TokenReference"}]
  GETIMPORT R1 K11 [require]
  GETIMPORT R3 K13 [script]
  GETTABLEKS R2 R3 K14 ["BrickColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrickColor"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R3 K13 [script]
  GETTABLEKS R2 R3 K15 ["ColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Color"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R4 K13 [script]
  GETTABLEKS R3 R4 K16 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K17 ["ColorSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ColorSequence"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R4 K13 [script]
  GETTABLEKS R3 R4 K18 ["FontRenderers"]
  GETTABLEKS R2 R3 K19 ["FontFamilyRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["FontFamily"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R4 K13 [script]
  GETTABLEKS R3 R4 K18 ["FontRenderers"]
  GETTABLEKS R2 R3 K20 ["FontStyleRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["FontStyle"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R4 K13 [script]
  GETTABLEKS R3 R4 K18 ["FontRenderers"]
  GETTABLEKS R2 R3 K21 ["FontWeightRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["FontWeight"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R4 K13 [script]
  GETTABLEKS R3 R4 K16 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K22 ["NumberSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["NumberSequence"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R3 K13 [script]
  GETTABLEKS R2 R3 K23 ["BreadcrumbRadioRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["Theme"]
  GETIMPORT R1 K11 [require]
  GETIMPORT R3 K13 [script]
  GETTABLEKS R2 R3 K24 ["TokenReferenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["TokenReference"]
  RETURN R0 1
