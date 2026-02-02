PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["C"] [+3]
  LOADK R1 K1 [" With A Lot Of Extra Text To See How It Behaves When It Might Need To Be WrappedTo Multiple Lines Because It's Just So Long We Simply Cannot Fit It On One Line"]
  JUMP [+1]
  LOADK R1 K2 [""]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Item"]
  DUPTABLE R6 K10 [{"value", "icon", "label", "description", "size"}]
  SETTABLEKS R0 R6 K5 ["value"]
  GETUPVAL R8 3
  GETIMPORT R9 K13 [math.random]
  LOADN R10 1
  GETUPVAL R12 3
  LENGTH R11 R12
  CALL R9 2 1
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K6 ["icon"]
  GETUPVAL R9 4
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+10]
  LOADK R8 K14 ["%*%* %*"]
  GETUPVAL R10 4
  MOVE R11 R1
  MOVE R12 R0
  NAMECALL R8 R8 K15 ["format"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+1]
  LOADK R7 K2 [""]
  SETTABLEKS R7 R6 K7 ["label"]
  GETUPVAL R9 5
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+10]
  LOADK R8 K14 ["%*%* %*"]
  GETUPVAL R10 5
  MOVE R11 R1
  MOVE R12 R0
  NAMECALL R8 R8 K15 ["format"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K8 ["description"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K9 ["size"]
  SETTABLEKS R7 R6 K9 ["size"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K18 [table.insert]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Checking value"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R2 R1 K1 ["optionLabel"]
  GETTABLEKS R3 R1 K2 ["optionDescription"]
  NEWTABLE R4 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["forEach"]
  GETUPVAL R6 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CALL R5 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Root"]
  DUPTABLE R7 K9 [{"value", "onValueChanged", "orientation"}]
  GETTABLEKS R8 R1 K6 ["value"]
  SETTABLEKS R8 R7 K6 ["value"]
  DUPCLOSURE R8 K10 [PROTO_1]
  SETTABLEKS R8 R7 K7 ["onValueChanged"]
  GETTABLEKS R8 R1 K8 ["orientation"]
  SETTABLEKS R8 R7 K8 ["orientation"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R6 R0 K9 ["Enums"]
  GETTABLEKS R5 R6 K10 ["InputSize"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Enums"]
  GETTABLEKS R6 R7 K11 ["Orientation"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["OptionSelectorGroup"]
  CALL R6 1 1
  NEWTABLE R7 0 6
  LOADK R8 K14 ["A"]
  LOADK R9 K15 ["B"]
  LOADK R10 K16 ["C"]
  LOADK R11 K17 ["D"]
  LOADK R12 K18 ["E"]
  LOADK R13 K19 ["F"]
  SETLIST R7 R8 6 [1]
  NEWTABLE R8 0 6
  LOADK R9 K20 ["arm-left"]
  LOADK R10 K21 ["hat-fedora"]
  LOADK R11 K22 ["chart-pie"]
  LOADK R12 K23 ["lipstick"]
  LOADK R13 K24 ["moon"]
  LOADK R14 K25 ["star"]
  SETLIST R8 R9 6 [1]
  DUPCLOSURE R9 K26 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPTABLE R10 K30 [{"summary", "stories", "controls"}]
  LOADK R11 K31 ["OptionSelectorGroup component"]
  SETTABLEKS R11 R10 K27 ["summary"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K34 [{"name", "story"}]
  LOADK R13 K35 ["Basic"]
  SETTABLEKS R13 R12 K32 ["name"]
  SETTABLEKS R9 R12 K33 ["story"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K28 ["stories"]
  DUPTABLE R11 K41 [{"optionLabel", "optionDescription", "orientation", "size", "value"}]
  LOADK R12 K42 ["Option"]
  SETTABLEKS R12 R11 K36 ["optionLabel"]
  LOADK R12 K43 ["Description"]
  SETTABLEKS R12 R11 K37 ["optionDescription"]
  GETTABLEKS R12 R3 K44 ["values"]
  MOVE R13 R5
  CALL R12 1 1
  SETTABLEKS R12 R11 K38 ["orientation"]
  GETTABLEKS R12 R3 K44 ["values"]
  MOVE R13 R4
  CALL R12 1 1
  SETTABLEKS R12 R11 K39 ["size"]
  GETTABLEKS R12 R3 K44 ["values"]
  MOVE R13 R7
  CALL R12 1 1
  SETTABLEKS R12 R11 K40 ["value"]
  SETTABLEKS R11 R10 K29 ["controls"]
  RETURN R10 1
