PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  NEWTABLE R4 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Tag"]
  LOADK R6 K5 ["Component-BasicExample X-Fit"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K7 [{"OptionalContent"}]
  GETTABLEKS R7 R0 K8 ["showContent"]
  JUMPIFNOT R7 [+10]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K9 ["TextLabel"]
  DUPTABLE R8 K11 [{"Text"}]
  LOADK R9 K12 ["Kangaroos are great!"]
  SETTABLEKS R9 R8 K10 ["Text"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K6 ["OptionalContent"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K8 ["StudioFoundation"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["Contexts"]
  GETTABLEKS R2 R3 K10 ["Localization"]
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
