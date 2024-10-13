MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K8 ["Components"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K9 ["HomePage"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K10 ["ExperiencesPage"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K11 ["TemplatesPage"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K12 ["ArchivePage"]
  CALL R6 1 1
  NEWTABLE R7 0 4
  DUPTABLE R8 K16 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R9 K17 ["PageMenu.Home"]
  SETTABLEKS R9 R8 K13 ["TextKey"]
  SETTABLEKS R3 R8 K14 ["PageComponent"]
  LOADK R9 K18 ["StartPage-HomeIcon"]
  SETTABLEKS R9 R8 K15 ["Tag"]
  DUPTABLE R9 K16 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R10 K19 ["PageMenu.Experiences"]
  SETTABLEKS R10 R9 K13 ["TextKey"]
  SETTABLEKS R4 R9 K14 ["PageComponent"]
  LOADK R10 K20 ["StartPage-ExperiencesIcon"]
  SETTABLEKS R10 R9 K15 ["Tag"]
  DUPTABLE R10 K16 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R11 K21 ["PageMenu.Templates"]
  SETTABLEKS R11 R10 K13 ["TextKey"]
  SETTABLEKS R5 R10 K14 ["PageComponent"]
  LOADK R11 K22 ["StartPage-TemplatesIcon"]
  SETTABLEKS R11 R10 K15 ["Tag"]
  DUPTABLE R11 K16 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R12 K23 ["PageMenu.Archive"]
  SETTABLEKS R12 R11 K13 ["TextKey"]
  SETTABLEKS R6 R11 K14 ["PageComponent"]
  LOADK R12 K24 ["StartPage-ArchiveIcon"]
  SETTABLEKS R12 R11 K15 ["Tag"]
  SETLIST R7 R8 4 [1]
  RETURN R7 1
