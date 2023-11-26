MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPTABLE R1 K3 [{"min", "max", "increment"}]
  LOADK R2 K4 [0.9]
  SETTABLEKS R2 R1 K0 ["min"]
  LOADK R2 K5 [1.05]
  SETTABLEKS R2 R1 K1 ["max"]
  LOADK R2 K6 [0.05]
  SETTABLEKS R2 R1 K2 ["increment"]
  SETTABLEKS R1 R0 K7 ["Height"]
  DUPTABLE R1 K3 [{"min", "max", "increment"}]
  LOADK R2 K8 [0.7]
  SETTABLEKS R2 R1 K0 ["min"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["max"]
  LOADK R2 K6 [0.05]
  SETTABLEKS R2 R1 K2 ["increment"]
  SETTABLEKS R1 R0 K9 ["Width"]
  DUPTABLE R1 K3 [{"min", "max", "increment"}]
  LOADK R2 K10 [0.95]
  SETTABLEKS R2 R1 K0 ["min"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["max"]
  LOADK R2 K6 [0.05]
  SETTABLEKS R2 R1 K2 ["increment"]
  SETTABLEKS R1 R0 K11 ["Head"]
  DUPTABLE R1 K3 [{"min", "max", "increment"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["min"]
  LOADK R2 K12 [0.3]
  SETTABLEKS R2 R1 K1 ["max"]
  LOADK R2 K6 [0.05]
  SETTABLEKS R2 R1 K2 ["increment"]
  SETTABLEKS R1 R0 K13 ["BodyType"]
  DUPTABLE R1 K3 [{"min", "max", "increment"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["min"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["max"]
  LOADK R2 K6 [0.05]
  SETTABLEKS R2 R1 K2 ["increment"]
  SETTABLEKS R1 R0 K14 ["Proportion"]
  RETURN R0 1
