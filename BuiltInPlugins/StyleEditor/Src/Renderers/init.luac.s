MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K11 [{"BrickColor", "Color", "ColorSequence", "Derive", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "PropertyName", "Theme", "TokenReference"}]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K16 ["BrickColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrickColor"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K17 ["ColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Color"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R4 K15 [script]
  GETTABLEKS R3 R4 K18 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K19 ["ColorSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ColorSequence"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K20 ["DeriveRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Derive"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R4 K15 [script]
  GETTABLEKS R3 R4 K21 ["FontRenderers"]
  GETTABLEKS R2 R3 K22 ["FontFamilyRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["FontFamily"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R4 K15 [script]
  GETTABLEKS R3 R4 K21 ["FontRenderers"]
  GETTABLEKS R2 R3 K23 ["FontStyleRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["FontStyle"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R4 K15 [script]
  GETTABLEKS R3 R4 K21 ["FontRenderers"]
  GETTABLEKS R2 R3 K24 ["FontWeightRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["FontWeight"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R4 K15 [script]
  GETTABLEKS R3 R4 K18 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K25 ["NumberSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["NumberSequence"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K26 ["PropertyNameRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["PropertyName"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K27 ["BreadcrumbRadioRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["Theme"]
  GETIMPORT R1 K13 [require]
  GETIMPORT R3 K15 [script]
  GETTABLEKS R2 R3 K28 ["TokenReferenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K10 ["TokenReference"]
  RETURN R0 1
