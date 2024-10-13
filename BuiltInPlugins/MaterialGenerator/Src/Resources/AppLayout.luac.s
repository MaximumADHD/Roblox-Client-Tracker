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
  NEWTABLE R5 0 4
  DUPTABLE R6 K12 [{"value"}]
  DUPTABLE R7 K17 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
  LOADK R8 K18 ["Prompt, Browser, Editor (horizontal)"]
  SETTABLEKS R8 R7 K13 ["name"]
  GETIMPORT R8 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K14 ["fillDirection"]
  GETIMPORT R8 K25 [UDim2.new]
  LOADN R9 1
  MINUS R10 R2
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K15 ["mainContentSize"]
  GETIMPORT R8 K25 [UDim2.new]
  LOADN R9 0
  MOVE R10 R2
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K16 ["editorSize"]
  SETTABLEKS R7 R6 K11 ["value"]
  DUPTABLE R7 K27 [{"maxWidth", "value"}]
  LOADN R8 64
  SETTABLEKS R8 R7 K26 ["maxWidth"]
  DUPTABLE R8 K17 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
  LOADK R9 K28 ["Prompt, Browser, Editor (vertical)"]
  SETTABLEKS R9 R8 K13 ["name"]
  GETIMPORT R9 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K14 ["fillDirection"]
  GETIMPORT R9 K25 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  MINUS R13 R3
  CALL R9 4 1
  SETTABLEKS R9 R8 K15 ["mainContentSize"]
  GETIMPORT R9 K25 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  MOVE R13 R3
  CALL R9 4 1
  SETTABLEKS R9 R8 K16 ["editorSize"]
  SETTABLEKS R8 R7 K11 ["value"]
  DUPTABLE R8 K32 [{"maxWidth", "maxHeight", "value"}]
  LOADN R9 64
  SETTABLEKS R9 R8 K26 ["maxWidth"]
  ADD R10 R4 R3
  ADDK R9 R10 K33 [50]
  SETTABLEKS R9 R8 K31 ["maxHeight"]
  DUPTABLE R9 K35 [{"name", "fillDirection", "mainContentSize", "editorSize", "browserVisible"}]
  LOADK R10 K36 ["Prompt, Editor (vertical)"]
  SETTABLEKS R10 R9 K13 ["name"]
  GETIMPORT R10 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K14 ["fillDirection"]
  GETIMPORT R10 K25 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R4
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["mainContentSize"]
  GETIMPORT R10 K25 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  MINUS R14 R4
  CALL R10 4 1
  SETTABLEKS R10 R9 K16 ["editorSize"]
  LOADB R10 0
  SETTABLEKS R10 R9 K34 ["browserVisible"]
  SETTABLEKS R9 R8 K11 ["value"]
  DUPTABLE R9 K32 [{"maxWidth", "maxHeight", "value"}]
  LOADN R10 64
  SETTABLEKS R10 R9 K26 ["maxWidth"]
  ADDK R10 R3 K33 [50]
  SETTABLEKS R10 R9 K31 ["maxHeight"]
  DUPTABLE R10 K38 [{"name", "mainContentVisible", "editorSize"}]
  LOADK R11 K39 ["Editor only"]
  SETTABLEKS R11 R10 K13 ["name"]
  LOADB R11 0
  SETTABLEKS R11 R10 K37 ["mainContentVisible"]
  GETIMPORT R11 K41 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["editorSize"]
  SETTABLEKS R10 R9 K11 ["value"]
  SETLIST R5 R6 4 [1]
  RETURN R5 1
