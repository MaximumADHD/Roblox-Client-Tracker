PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["I'm a chip"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R1 K0 ["I'm a dale"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADK R1 K1 ["I'm a chip"]
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["row gap-small wrap auto-y size-full-0"]
  SETTABLEKS R5 R4 K3 ["tag"]
  DUPTABLE R5 K8 [{"Chip1", "Chip2"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K13 [{"icon", "text", "onActivated", "isChecked"}]
  LOADK R9 K14 ["icons/common/robux"]
  SETTABLEKS R9 R8 K9 ["icon"]
  LOADK R9 K1 ["I'm a chip"]
  SETTABLEKS R9 R8 K10 ["text"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K11 ["onActivated"]
  JUMPIFEQKS R0 K1 ["I'm a chip"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["isChecked"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Chip1"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K15 [{"text", "onActivated", "isChecked"}]
  LOADK R9 K16 ["I'm a dale"]
  SETTABLEKS R9 R8 K10 ["text"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K11 ["onActivated"]
  JUMPIFEQKS R0 K16 ["I'm a dale"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["isChecked"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Chip2"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Chip"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["FillBehavior"]
  CALL R5 1 1
  DUPTABLE R6 K15 [{"summary", "story"}]
  LOADK R7 K9 ["Chip"]
  SETTABLEKS R7 R6 K13 ["summary"]
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K14 ["story"]
  RETURN R6 1
