MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["FaceControlEditorWrapper"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["FaceControlEditorAssetProvider"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["FaceControlEditorStandaloneProvider"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["setup"]
  CALL R3 1 1
  DUPTABLE R4 K8 [{"FaceControlEditorWrapper", "FaceControlEditorAssetProvider", "FaceControlEditorStandaloneProvider", "setup"}]
  SETTABLEKS R0 R4 K4 ["FaceControlEditorWrapper"]
  SETTABLEKS R1 R4 K5 ["FaceControlEditorAssetProvider"]
  SETTABLEKS R2 R4 K6 ["FaceControlEditorStandaloneProvider"]
  SETTABLEKS R3 R4 K7 ["setup"]
  RETURN R4 1
