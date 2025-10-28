MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Types"]
  CALL R0 1 1
  DUPTABLE R1 K17 [{"Class", "Context", "Function", "ForwardRef", "HostComponent", "Memo", "OtherOrUnknown", "Profiler", "Root", "Suspense", "SuspenseList"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K6 ["Class"]
  LOADN R2 2
  SETTABLEKS R2 R1 K7 ["Context"]
  LOADN R2 5
  SETTABLEKS R2 R1 K8 ["Function"]
  LOADN R2 6
  SETTABLEKS R2 R1 K9 ["ForwardRef"]
  LOADN R2 7
  SETTABLEKS R2 R1 K10 ["HostComponent"]
  LOADN R2 8
  SETTABLEKS R2 R1 K11 ["Memo"]
  LOADN R2 9
  SETTABLEKS R2 R1 K12 ["OtherOrUnknown"]
  LOADN R2 10
  SETTABLEKS R2 R1 K13 ["Profiler"]
  LOADN R2 11
  SETTABLEKS R2 R1 K14 ["Root"]
  LOADN R2 12
  SETTABLEKS R2 R1 K15 ["Suspense"]
  LOADN R2 13
  SETTABLEKS R2 R1 K16 ["SuspenseList"]
  DUPTABLE R2 K19 [{"ElementType"}]
  SETTABLEKS R1 R2 K18 ["ElementType"]
  RETURN R2 1
