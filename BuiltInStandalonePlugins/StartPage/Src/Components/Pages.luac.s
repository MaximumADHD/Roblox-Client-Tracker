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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K13 ["RecentsPage"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K14 ["SharedFlags"]
  GETTABLEKS R9 R10 K15 ["getFFlagLuaStartPageAddingRecentsPage"]
  CALL R8 1 1
  CALL R8 0 1
  NEWTABLE R9 0 4
  DUPTABLE R10 K19 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R11 K20 ["PageMenu.Home"]
  SETTABLEKS R11 R10 K16 ["TextKey"]
  SETTABLEKS R3 R10 K17 ["PageComponent"]
  LOADK R11 K21 ["StartPage-HomeIcon"]
  SETTABLEKS R11 R10 K18 ["Tag"]
  DUPTABLE R11 K19 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R12 K22 ["PageMenu.Experiences"]
  SETTABLEKS R12 R11 K16 ["TextKey"]
  SETTABLEKS R4 R11 K17 ["PageComponent"]
  LOADK R12 K23 ["StartPage-ExperiencesIcon"]
  SETTABLEKS R12 R11 K18 ["Tag"]
  DUPTABLE R12 K19 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R13 K24 ["PageMenu.Templates"]
  SETTABLEKS R13 R12 K16 ["TextKey"]
  SETTABLEKS R5 R12 K17 ["PageComponent"]
  LOADK R13 K25 ["StartPage-TemplatesIcon"]
  SETTABLEKS R13 R12 K18 ["Tag"]
  DUPTABLE R13 K19 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R14 K26 ["PageMenu.Archive"]
  SETTABLEKS R14 R13 K16 ["TextKey"]
  SETTABLEKS R6 R13 K17 ["PageComponent"]
  LOADK R14 K27 ["StartPage-ArchiveIcon"]
  SETTABLEKS R14 R13 K18 ["Tag"]
  SETLIST R9 R10 4 [1]
  JUMPIFNOT R8 [+16]
  LOADN R12 1
  DUPTABLE R13 K19 [{"TextKey", "PageComponent", "Tag"}]
  LOADK R14 K28 ["PageMenu.Recents"]
  SETTABLEKS R14 R13 K16 ["TextKey"]
  SETTABLEKS R7 R13 K17 ["PageComponent"]
  LOADK R14 K29 ["StartPage-RecentsIcon"]
  SETTABLEKS R14 R13 K18 ["Tag"]
  FASTCALL3 TABLE_INSERT R9 R12 R13
  MOVE R11 R9
  GETIMPORT R10 K32 [table.insert]
  CALL R10 3 0
  RETURN R9 1
