PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSubmit"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Text"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["Text"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R3 R0 K1 ["Text"]
  JUMPIFNOTEQKS R3 K2 [""] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Frame"]
  NEWTABLE R5 2 0
  GETTABLEKS R6 R0 K5 ["LayoutOrder"]
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["Tag"]
  LOADK R7 K7 ["Component-CancelSubmitFooter X-Right X-RowM X-FitY"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K10 [{"CancelButton", "SubmitButton"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["TextButton"]
  NEWTABLE R9 2 0
  LOADK R12 K12 ["AddAnnotation"]
  LOADK R13 K13 ["Cancel"]
  NAMECALL R10 R1 K14 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Text"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["Event"]
  GETTABLEKS R10 R11 K16 ["Activated"]
  GETTABLEKS R11 R0 K17 ["OnCancel"]
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["CancelButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["TextButton"]
  NEWTABLE R9 8 0
  LOADK R12 K12 ["AddAnnotation"]
  LOADK R13 K18 ["Submit"]
  NAMECALL R10 R1 K14 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Text"]
  SETTABLEKS R2 R9 K19 ["Interactable"]
  SETTABLEKS R2 R9 K20 ["Selectable"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["Event"]
  GETTABLEKS R10 R11 K16 ["Activated"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLE R11 R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["Tag"]
  JUMPIFNOT R2 [+2]
  LOADNIL R11
  JUMP [+1]
  LOADK R11 K21 ["Disabled"]
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["SubmitButton"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
