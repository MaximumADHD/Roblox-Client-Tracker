MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TagEditorFolderRemovalFix"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TagEditorFolderRemovalFix"]
  NAMECALL R0 R0 K4 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1
