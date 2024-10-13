PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  DUPTABLE R1 K6 [{"Intent", "Heading", "Body", "ActionPrimary", "Modal"}]
  LOADK R2 K7 ["Warning"]
  SETTABLEKS R2 R1 K1 ["Intent"]
  LOADK R4 K8 ["Plugin"]
  LOADK R5 K9 ["AgeRestrictionDialog.Heading"]
  NAMECALL R2 R0 K10 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K2 ["Heading"]
  LOADK R4 K8 ["Plugin"]
  LOADK R5 K11 ["AgeRestrictionDialog.Body"]
  NAMECALL R2 R0 K10 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Body"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["CANCEL"]
  SETTABLEKS R2 R1 K4 ["ActionPrimary"]
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["Modal"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R2 R3 K9 ["Localization"]
  GETTABLEKS R4 R1 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["DialogAction"]
  NEWTABLE R4 1 0
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K13 ["get"]
  RETURN R4 1
