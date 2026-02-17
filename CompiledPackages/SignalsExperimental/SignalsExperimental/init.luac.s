MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Signals"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["SignalsExperimental"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"createSignal", "createComputed", "createEffect", "onDisposed", "createRoot"}]
  GETTABLEKS R3 R0 K7 ["createSignal"]
  SETTABLEKS R3 R2 K7 ["createSignal"]
  GETTABLEKS R3 R0 K8 ["createComputed"]
  SETTABLEKS R3 R2 K8 ["createComputed"]
  GETTABLEKS R3 R1 K9 ["createEffect"]
  SETTABLEKS R3 R2 K9 ["createEffect"]
  GETTABLEKS R3 R1 K10 ["onDisposed"]
  SETTABLEKS R3 R2 K10 ["onDisposed"]
  GETTABLEKS R3 R1 K11 ["createRoot"]
  SETTABLEKS R3 R2 K11 ["createRoot"]
  RETURN R2 1
