MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["imageQueries"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["renderWithMocks"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["createRenderSpy"]
  CALL R2 1 1
  DUPTABLE R3 K8 [{"Queries", "renderWithMocks", "createRenderSpy"}]
  DUPTABLE R4 K15 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
  GETTABLEKS R5 R0 K9 ["queryByImage"]
  SETTABLEKS R5 R4 K9 ["queryByImage"]
  GETTABLEKS R5 R0 K10 ["queryAllByImage"]
  SETTABLEKS R5 R4 K10 ["queryAllByImage"]
  GETTABLEKS R5 R0 K11 ["getAllByImage"]
  SETTABLEKS R5 R4 K11 ["getAllByImage"]
  GETTABLEKS R5 R0 K12 ["getByImage"]
  SETTABLEKS R5 R4 K12 ["getByImage"]
  GETTABLEKS R5 R0 K13 ["findAllByImage"]
  SETTABLEKS R5 R4 K13 ["findAllByImage"]
  GETTABLEKS R5 R0 K14 ["findByImage"]
  SETTABLEKS R5 R4 K14 ["findByImage"]
  SETTABLEKS R4 R3 K7 ["Queries"]
  SETTABLEKS R1 R3 K5 ["renderWithMocks"]
  SETTABLEKS R2 R3 K6 ["createRenderSpy"]
  RETURN R3 1
