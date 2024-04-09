MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K12 [{"BrickColor", "Color", "ColorSequence", "Derive", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "PropertyName", "StaticText", "Theme", "TokenReference"}]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K17 ["BrickColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrickColor"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K18 ["ColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Color"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R4 K16 [script]
  GETTABLEKS R3 R4 K19 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K20 ["ColorSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ColorSequence"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K21 ["DeriveRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Derive"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R4 K16 [script]
  GETTABLEKS R3 R4 K22 ["FontRenderers"]
  GETTABLEKS R2 R3 K23 ["FontFamilyRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["FontFamily"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R4 K16 [script]
  GETTABLEKS R3 R4 K22 ["FontRenderers"]
  GETTABLEKS R2 R3 K24 ["FontStyleRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["FontStyle"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R4 K16 [script]
  GETTABLEKS R3 R4 K22 ["FontRenderers"]
  GETTABLEKS R2 R3 K25 ["FontWeightRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["FontWeight"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R4 K16 [script]
  GETTABLEKS R3 R4 K19 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K26 ["NumberSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["NumberSequence"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K27 ["PropertyNameRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["PropertyName"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K28 ["StaticTextRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["StaticText"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K29 ["BreadcrumbRadioRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K10 ["Theme"]
  GETIMPORT R1 K14 [require]
  GETIMPORT R3 K16 [script]
  GETTABLEKS R2 R3 K30 ["TokenReferenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K11 ["TokenReference"]
  RETURN R0 1
