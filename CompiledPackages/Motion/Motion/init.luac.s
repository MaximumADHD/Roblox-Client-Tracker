MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Motion"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["Utility"]
  GETTABLEKS R2 R3 K6 ["useMotion"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["AnimatePresence"]
  GETTABLEKS R3 R4 K7 ["AnimatePresence"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["AnimatePresence"]
  GETTABLEKS R4 R5 K8 ["usePresence"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K9 ["Types"]
  CALL R4 1 1
  DUPTABLE R5 K14 [{"createState", "animate", "transition", "useMotion", "usePresence", "AnimatePresence", "TransitionPreset"}]
  GETTABLEKS R6 R0 K10 ["createState"]
  SETTABLEKS R6 R5 K10 ["createState"]
  GETTABLEKS R6 R0 K11 ["animate"]
  SETTABLEKS R6 R5 K11 ["animate"]
  GETTABLEKS R6 R0 K12 ["transition"]
  SETTABLEKS R6 R5 K12 ["transition"]
  SETTABLEKS R1 R5 K6 ["useMotion"]
  SETTABLEKS R3 R5 K8 ["usePresence"]
  SETTABLEKS R2 R5 K7 ["AnimatePresence"]
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K15 ["Enums"]
  GETTABLEKS R7 R8 K13 ["TransitionPreset"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["TransitionPreset"]
  RETURN R5 1
