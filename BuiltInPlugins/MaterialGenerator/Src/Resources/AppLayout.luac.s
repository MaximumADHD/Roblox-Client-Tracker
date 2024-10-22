MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["EDITOR_WIDTH"]
  GETTABLEKS R3 R1 K9 ["EDITOR_HEIGHT"]
  GETTABLEKS R4 R1 K10 ["PROMPT_HEIGHT"]
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["MaterialGeneratorFixUILayout"]
  LOADB R8 0
  NAMECALL R5 R5 K14 ["DefineFastFlag"]
  CALL R5 3 1
  JUMPIFNOT R5 [+4]
  LOADN R8 2
  MUL R7 R8 R2
  ADDK R6 R7 K15 [50]
  JUMP [+1]
  LOADN R6 64
  NEWTABLE R7 0 4
  DUPTABLE R8 K17 [{"value"}]
  DUPTABLE R9 K22 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
  LOADK R10 K23 ["Prompt, Browser, Editor (horizontal)"]
  SETTABLEKS R10 R9 K18 ["name"]
  GETIMPORT R10 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K19 ["fillDirection"]
  GETIMPORT R10 K30 [UDim2.new]
  LOADN R11 1
  MINUS R12 R2
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K20 ["mainContentSize"]
  GETIMPORT R10 K30 [UDim2.new]
  LOADN R11 0
  MOVE R12 R2
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K21 ["editorSize"]
  SETTABLEKS R9 R8 K16 ["value"]
  DUPTABLE R9 K32 [{"maxWidth", "value"}]
  SETTABLEKS R6 R9 K31 ["maxWidth"]
  DUPTABLE R10 K22 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
  LOADK R11 K33 ["Prompt, Browser, Editor (vertical)"]
  SETTABLEKS R11 R10 K18 ["name"]
  GETIMPORT R11 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K19 ["fillDirection"]
  GETIMPORT R11 K30 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  MINUS R15 R3
  CALL R11 4 1
  SETTABLEKS R11 R10 K20 ["mainContentSize"]
  GETIMPORT R11 K30 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  MOVE R15 R3
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["editorSize"]
  SETTABLEKS R10 R9 K16 ["value"]
  DUPTABLE R10 K37 [{"maxWidth", "maxHeight", "value"}]
  SETTABLEKS R6 R10 K31 ["maxWidth"]
  ADD R12 R4 R3
  ADDK R11 R12 K15 [50]
  SETTABLEKS R11 R10 K36 ["maxHeight"]
  DUPTABLE R11 K39 [{"name", "fillDirection", "mainContentSize", "editorSize", "browserVisible"}]
  LOADK R12 K40 ["Prompt, Editor (vertical)"]
  SETTABLEKS R12 R11 K18 ["name"]
  GETIMPORT R12 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K19 ["fillDirection"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  MOVE R16 R4
  CALL R12 4 1
  SETTABLEKS R12 R11 K20 ["mainContentSize"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  MINUS R16 R4
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["editorSize"]
  LOADB R12 0
  SETTABLEKS R12 R11 K38 ["browserVisible"]
  SETTABLEKS R11 R10 K16 ["value"]
  DUPTABLE R11 K37 [{"maxWidth", "maxHeight", "value"}]
  SETTABLEKS R6 R11 K31 ["maxWidth"]
  ADDK R12 R3 K15 [50]
  SETTABLEKS R12 R11 K36 ["maxHeight"]
  DUPTABLE R12 K42 [{"name", "mainContentVisible", "editorSize"}]
  LOADK R13 K43 ["Editor only"]
  SETTABLEKS R13 R12 K18 ["name"]
  LOADB R13 0
  SETTABLEKS R13 R12 K41 ["mainContentVisible"]
  GETIMPORT R13 K45 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["editorSize"]
  SETTABLEKS R12 R11 K16 ["value"]
  SETLIST R7 R8 4 [1]
  RETURN R7 1
