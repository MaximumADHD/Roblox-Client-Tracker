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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADK R2 K1 ["I'm a chip"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K5 ["row gap-small wrap auto-y size-full-0"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K8 [{"Chip1", "Chip2"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K13 [{"icon", "text", "onActivated", "isChecked"}]
  LOADK R10 K14 ["icons/common/robux"]
  SETTABLEKS R10 R9 K9 ["icon"]
  LOADK R10 K1 ["I'm a chip"]
  SETTABLEKS R10 R9 K10 ["text"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K11 ["onActivated"]
  JUMPIFEQKS R1 K1 ["I'm a chip"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K12 ["isChecked"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Chip1"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K15 [{"text", "onActivated", "isChecked"}]
  LOADK R10 K16 ["I'm a dale"]
  SETTABLEKS R10 R9 K10 ["text"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K11 ["onActivated"]
  JUMPIFEQKS R1 K16 ["I'm a dale"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K12 ["isChecked"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Chip2"]
  CALL R3 3 -1
  RETURN R3 -1

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
