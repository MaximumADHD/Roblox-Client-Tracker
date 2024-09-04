PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["https://www.roblox.com/my/account#!/info"]
  NAMECALL R0 R0 K1 ["openLink"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  DUPTABLE R1 K7 [{"Intent", "Heading", "Body", "ActionPrimary", "ActionSecondary", "Modal"}]
  LOADK R2 K8 ["Warning"]
  SETTABLEKS R2 R1 K1 ["Intent"]
  LOADK R4 K9 ["Plugin"]
  LOADK R5 K10 ["VerifyAgeDialog.Heading"]
  NAMECALL R2 R0 K11 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K2 ["Heading"]
  LOADK R8 K9 ["Plugin"]
  LOADK R9 K12 ["VerifyAgeDialog.BodyPoint1"]
  NAMECALL R6 R0 K11 ["getText"]
  CALL R6 3 1
  MOVE R3 R6
  LOADK R4 K13 ["
"]
  LOADK R7 K9 ["Plugin"]
  LOADK R8 K14 ["VerifyAgeDialog.BodyPoint2"]
  NAMECALL R5 R0 K11 ["getText"]
  CALL R5 3 1
  CONCAT R2 R3 R5
  SETTABLEKS R2 R1 K3 ["Body"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K15 ["CANCEL"]
  SETTABLEKS R2 R1 K4 ["ActionPrimary"]
  DUPTABLE R2 K20 [{"Label", "OnActivated", "Enabled", "HidesDialog"}]
  LOADK R5 K9 ["Plugin"]
  LOADK R6 K21 ["VerifyAgeDialog.Action"]
  NAMECALL R3 R0 K11 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K16 ["Label"]
  DUPCLOSURE R3 K22 [PROTO_0]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K17 ["OnActivated"]
  LOADB R3 1
  SETTABLEKS R3 R2 K18 ["Enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["HidesDialog"]
  SETTABLEKS R2 R1 K5 ["ActionSecondary"]
  LOADB R2 1
  SETTABLEKS R2 R1 K6 ["Modal"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K13 ["Services"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["StartPageManager"]
  NEWTABLE R6 1 0
  DUPCLOSURE R7 K15 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K16 ["get"]
  RETURN R6 1
