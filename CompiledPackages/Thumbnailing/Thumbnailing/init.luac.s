MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["EmoteUtility"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["CameraUtility"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["LightUtility"]
  CALL R2 1 1
  DUPTABLE R3 K14 [{"CameraPresetsUtility", "CameraUtility", "CFrameUtility", "ColorUtility", "EmoteUtility", "LightUtility", "VectorUtility", "CharacterUtility", "ParticleUtility", "MannequinUtility"}]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["CameraPresetsUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["CameraPresetsUtility"]
  SETTABLEKS R1 R3 K5 ["CameraUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["CFrameUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["CFrameUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K9 ["ColorUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["ColorUtility"]
  SETTABLEKS R0 R3 K4 ["EmoteUtility"]
  SETTABLEKS R2 R3 K6 ["LightUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K10 ["VectorUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["VectorUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K11 ["CharacterUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["CharacterUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K12 ["ParticleUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["ParticleUtility"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K13 ["MannequinUtility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["MannequinUtility"]
  RETURN R3 1
