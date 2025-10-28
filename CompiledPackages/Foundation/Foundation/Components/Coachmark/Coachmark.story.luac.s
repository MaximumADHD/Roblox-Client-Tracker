PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Primary button clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Secondary button clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 1
  DUPTABLE R2 K3 [{"text", "onActivated", "variant"}]
  LOADK R3 K4 ["Got it"]
  SETTABLEKS R3 R2 K0 ["text"]
  DUPCLOSURE R3 K5 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["onActivated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Emphasis"]
  SETTABLEKS R3 R2 K2 ["variant"]
  SETLIST R1 R2 1 [1]
  JUMPIFNOT R0 [+18]
  DUPTABLE R4 K3 [{"text", "onActivated", "variant"}]
  LOADK R5 K7 ["Skipppp"]
  SETTABLEKS R5 R4 K0 ["text"]
  DUPCLOSURE R5 K8 [PROTO_1]
  SETTABLEKS R5 R4 K1 ["onActivated"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["Standard"]
  SETTABLEKS R5 R4 K2 ["variant"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K12 [table.insert]
  CALL R2 2 0
  RETURN R1 1

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Close affordance clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Icon button clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Size", "tag"}]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 244
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  LOADK R4 K7 ["row align-x-center align-y-center"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K16 [{"title", "side", "align", "text", "isOpen", "onClose", "steps", "actions"}]
  GETTABLEKS R8 R0 K17 ["controls"]
  GETTABLEKS R7 R8 K8 ["title"]
  SETTABLEKS R7 R6 K8 ["title"]
  GETTABLEKS R8 R0 K17 ["controls"]
  GETTABLEKS R7 R8 K9 ["side"]
  SETTABLEKS R7 R6 K9 ["side"]
  GETTABLEKS R8 R0 K17 ["controls"]
  GETTABLEKS R7 R8 K10 ["align"]
  SETTABLEKS R7 R6 K10 ["align"]
  GETTABLEKS R8 R0 K17 ["controls"]
  GETTABLEKS R7 R8 K11 ["text"]
  SETTABLEKS R7 R6 K11 ["text"]
  GETTABLEKS R8 R0 K17 ["controls"]
  GETTABLEKS R7 R8 K12 ["isOpen"]
  SETTABLEKS R7 R6 K12 ["isOpen"]
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K18 ["hasCloseAffordance"]
  JUMPIFNOT R8 [+2]
  DUPCLOSURE R7 K19 [PROTO_3]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K13 ["onClose"]
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K20 ["showSteps"]
  JUMPIFNOT R8 [+8]
  DUPTABLE R7 K23 [{"current", "total"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K21 ["current"]
  LOADN R8 5
  SETTABLEKS R8 R7 K22 ["total"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K14 ["steps"]
  GETUPVAL R7 3
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K24 ["hasSecondaryButton"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K15 ["actions"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K28 [{"icon", "size", "onActivated"}]
  LOADK R10 K29 ["icons/controls/voice/microphone_off_light"]
  SETTABLEKS R10 R9 K25 ["icon"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K30 ["Medium"]
  SETTABLEKS R10 R9 K26 ["size"]
  DUPCLOSURE R10 K31 [PROTO_4]
  SETTABLEKS R10 R9 K27 ["onActivated"]
  CALL R7 2 -1
  CALL R4 -1 -1
  CALL R1 -1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Coachmark"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["IconButton"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["InputSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K13 ["Enums"]
  GETTABLEKS R9 R10 K15 ["PopoverSide"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K13 ["Enums"]
  GETTABLEKS R10 R11 K16 ["PopoverAlign"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K13 ["Enums"]
  GETTABLEKS R11 R12 K17 ["ButtonVariant"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K9 ["Components"]
  GETTABLEKS R12 R13 K18 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K19 [PROTO_2]
  CAPTURE VAL R10
  DUPTABLE R13 K23 [{"summary", "story", "controls"}]
  LOADK R14 K10 ["Coachmark"]
  SETTABLEKS R14 R13 K20 ["summary"]
  DUPCLOSURE R14 K24 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K21 ["story"]
  DUPTABLE R14 K33 [{"title", "text", "side", "align", "hasSecondaryButton", "hasCloseAffordance", "isOpen", "showSteps"}]
  LOADK R15 K34 ["Title"]
  SETTABLEKS R15 R14 K25 ["title"]
  LOADK R15 K35 ["Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."]
  SETTABLEKS R15 R14 K26 ["text"]
  GETTABLEKS R15 R3 K36 ["values"]
  MOVE R16 R8
  CALL R15 1 1
  SETTABLEKS R15 R14 K27 ["side"]
  GETTABLEKS R15 R3 K36 ["values"]
  MOVE R16 R9
  CALL R15 1 1
  SETTABLEKS R15 R14 K28 ["align"]
  LOADB R15 0
  SETTABLEKS R15 R14 K29 ["hasSecondaryButton"]
  LOADB R15 0
  SETTABLEKS R15 R14 K30 ["hasCloseAffordance"]
  LOADB R15 1
  SETTABLEKS R15 R14 K31 ["isOpen"]
  LOADB R15 1
  SETTABLEKS R15 R14 K32 ["showSteps"]
  SETTABLEKS R14 R13 K22 ["controls"]
  RETURN R13 1
