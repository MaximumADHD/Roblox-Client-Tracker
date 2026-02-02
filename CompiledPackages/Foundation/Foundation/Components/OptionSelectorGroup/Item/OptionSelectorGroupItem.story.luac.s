PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETTABLEKS R4 R1 K2 ["label"]
  GETTABLEKS R5 R1 K3 ["metadata"]
  GETTABLEKS R6 R1 K4 ["description"]
  GETTABLEKS R7 R0 K5 ["useLongText"]
  JUMPIFNOT R7 [+36]
  LENGTH R7 R4
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+8]
  LOADK R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
  MOVE R9 R4
  NAMECALL R7 R7 K7 ["format"]
  CALL R7 2 1
  MOVE R4 R7
  JUMP [+1]
  LOADK R4 K8 [""]
  LENGTH R7 R5
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+8]
  LOADK R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
  MOVE R9 R5
  NAMECALL R7 R7 K7 ["format"]
  CALL R7 2 1
  MOVE R5 R7
  JUMP [+1]
  LOADK R5 K8 [""]
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+8]
  LOADK R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
  MOVE R9 R6
  NAMECALL R7 R7 K7 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  JUMP [+1]
  LOADK R6 K8 [""]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Provider"]
  DUPTABLE R9 K12 [{"value"}]
  DUPTABLE R10 K16 [{"value", "onValueChanged", "Selectable", "orientation"}]
  SETTABLEKS R2 R10 K11 ["value"]
  SETTABLEKS R3 R10 K13 ["onValueChanged"]
  LOADB R11 1
  SETTABLEKS R11 R10 K14 ["Selectable"]
  GETTABLEKS R11 R1 K15 ["orientation"]
  SETTABLEKS R11 R10 K15 ["orientation"]
  SETTABLEKS R10 R9 K11 ["value"]
  NEWTABLE R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["Item"]
  DUPTABLE R13 K21 [{"icon", "value", "label", "metadata", "description", "isDisabled", "size"}]
  GETTABLEKS R14 R1 K18 ["icon"]
  SETTABLEKS R14 R13 K18 ["icon"]
  GETTABLEKS R14 R1 K11 ["value"]
  SETTABLEKS R14 R13 K11 ["value"]
  LENGTH R15 R4
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+10]
  LOADK R15 K22 ["%* %*"]
  MOVE R17 R4
  GETTABLEKS R18 R1 K11 ["value"]
  NAMECALL R15 R15 K7 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  JUMP [+1]
  LOADK R14 K8 [""]
  SETTABLEKS R14 R13 K2 ["label"]
  LENGTH R15 R5
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+3]
  MOVE R14 R5
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K3 ["metadata"]
  LENGTH R15 R6
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+3]
  MOVE R14 R6
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K4 ["description"]
  GETTABLEKS R14 R1 K19 ["isDisabled"]
  SETTABLEKS R14 R13 K19 ["isDisabled"]
  GETTABLEKS R14 R1 K20 ["size"]
  SETTABLEKS R14 R13 K20 ["size"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"useLongText"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["useLongText"]
  CALL R3 2 -1
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
  GETTABLEKS R3 R1 K7 ["BuilderIcons"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Enums"]
  GETTABLEKS R6 R7 K11 ["InputSize"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K10 ["Enums"]
  GETTABLEKS R7 R8 K12 ["Orientation"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K13 ["OptionSelectorGroupContext"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["OptionSelectorGroup"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  DUPTABLE R10 K20 [{"summary", "stories", "controls"}]
  LOADK R11 K21 ["OptionSelectorGroupItem component"]
  SETTABLEKS R11 R10 K17 ["summary"]
  DUPTABLE R11 K24 [{"Default", "LongText"}]
  DUPTABLE R12 K27 [{"name", "story"}]
  LOADK R13 K22 ["Default"]
  SETTABLEKS R13 R12 K25 ["name"]
  SETTABLEKS R9 R12 K26 ["story"]
  SETTABLEKS R12 R11 K22 ["Default"]
  DUPTABLE R12 K27 [{"name", "story"}]
  LOADK R13 K28 ["Long Text"]
  SETTABLEKS R13 R12 K25 ["name"]
  DUPCLOSURE R13 K29 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K26 ["story"]
  SETTABLEKS R12 R11 K23 ["LongText"]
  SETTABLEKS R11 R10 K18 ["stories"]
  DUPTABLE R11 K38 [{"icon", "isDisabled", "label", "metadata", "description", "size", "value", "orientation"}]
  GETTABLEKS R12 R3 K39 ["values"]
  GETTABLEKS R13 R2 K40 ["Icon"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K30 ["icon"]
  LOADB R12 0
  SETTABLEKS R12 R11 K31 ["isDisabled"]
  LOADK R12 K41 ["Label"]
  SETTABLEKS R12 R11 K32 ["label"]
  LOADK R12 K42 [""]
  SETTABLEKS R12 R11 K33 ["metadata"]
  LOADK R12 K43 ["Description"]
  SETTABLEKS R12 R11 K34 ["description"]
  GETTABLEKS R12 R3 K39 ["values"]
  MOVE R13 R5
  CALL R12 1 1
  SETTABLEKS R12 R11 K35 ["size"]
  LOADK R12 K44 ["A"]
  SETTABLEKS R12 R11 K36 ["value"]
  GETTABLEKS R12 R3 K39 ["values"]
  MOVE R13 R6
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["orientation"]
  SETTABLEKS R11 R10 K19 ["controls"]
  RETURN R10 1
