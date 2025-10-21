PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["PrimaryButton clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["SecondaryButton clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  NEWTABLE R4 2 0
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["row gap-small wrap auto-y size-full-0"]
  GETTABLEKS R6 R0 K4 ["fillBehavior"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["Fill"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["fill-x"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K9 [{"Button1", "Button2"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K15 [{"icon", "text", "variant", "onActivated", "fillBehavior", "size"}]
  LOADK R8 K16 ["icons/common/robux"]
  SETTABLEKS R8 R7 K10 ["icon"]
  LOADK R8 K17 ["BUT WAIT NO CLICK ME!!!"]
  SETTABLEKS R8 R7 K11 ["text"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K18 ["Emphasis"]
  SETTABLEKS R8 R7 K12 ["variant"]
  DUPCLOSURE R8 K19 [PROTO_0]
  SETTABLEKS R8 R7 K13 ["onActivated"]
  GETTABLEKS R8 R0 K4 ["fillBehavior"]
  SETTABLEKS R8 R7 K4 ["fillBehavior"]
  GETTABLEKS R8 R0 K14 ["size"]
  SETTABLEKS R8 R7 K14 ["size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Button1"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K20 [{"text", "variant", "onActivated", "fillBehavior", "size"}]
  GETTABLEKS R8 R0 K11 ["text"]
  SETTABLEKS R8 R7 K11 ["text"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["Standard"]
  SETTABLEKS R8 R7 K12 ["variant"]
  DUPCLOSURE R8 K22 [PROTO_1]
  SETTABLEKS R8 R7 K13 ["onActivated"]
  GETTABLEKS R8 R0 K4 ["fillBehavior"]
  SETTABLEKS R8 R7 K4 ["fillBehavior"]
  GETTABLEKS R8 R0 K14 ["size"]
  SETTABLEKS R8 R7 K14 ["size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Button2"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K3 [{"text", "size", "fillBehavior"}]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K0 ["text"]
  SETTABLEKS R3 R2 K0 ["text"]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K1 ["size"]
  SETTABLEKS R3 R2 K1 ["size"]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K2 ["fillBehavior"]
  SETTABLEKS R3 R2 K2 ["fillBehavior"]
  CALL R1 1 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Button"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["InputSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K14 ["ButtonVariant"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K12 ["Enums"]
  GETTABLEKS R9 R10 K15 ["FillBehavior"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPTABLE R10 K20 [{"summary", "story", "controls"}]
  LOADK R11 K21 ["Button Stack"]
  SETTABLEKS R11 R10 K17 ["summary"]
  DUPCLOSURE R11 K22 [PROTO_3]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K18 ["story"]
  DUPTABLE R11 K26 [{"text", "size", "fillBehavior"}]
  LOADK R12 K27 ["Click me!"]
  SETTABLEKS R12 R11 K23 ["text"]
  GETTABLEKS R12 R3 K28 ["values"]
  MOVE R13 R6
  CALL R12 1 1
  SETTABLEKS R12 R11 K24 ["size"]
  NEWTABLE R12 0 2
  GETTABLEKS R13 R8 K29 ["Fit"]
  GETTABLEKS R14 R8 K30 ["Fill"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K25 ["fillBehavior"]
  SETTABLEKS R11 R10 K19 ["controls"]
  RETURN R10 1
