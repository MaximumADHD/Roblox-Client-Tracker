PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K3 [{"tag", "testId"}]
  LOADK R6 K4 ["col gap-small auto-y size-full-0"]
  SETTABLEKS R6 R5 K1 ["tag"]
  LOADK R6 K5 ["--knowledge-tutorials-MarkdownRoot"]
  SETTABLEKS R6 R5 K2 ["testId"]
  GETTABLEKS R6 R1 K6 ["processChildren"]
  GETTABLEKS R7 R0 K7 ["children"]
  MOVE R8 R1
  CALL R6 2 -1
  CALL R3 -1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["View"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
