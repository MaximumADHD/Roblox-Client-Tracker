PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Primary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Secondary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Tertiary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  DUPTABLE R2 K6 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K0 ["type"]
  LOADK R3 K7 ["Dialog Title"]
  SETTABLEKS R3 R2 K1 ["title"]
  LOADK R3 K8 ["This is a description for the dialog. It provides more details about the purpose of the dialog."]
  SETTABLEKS R3 R2 K2 ["description"]
  DUPTABLE R3 K11 [{"text", "onActivated"}]
  LOADK R4 K12 ["Primary"]
  SETTABLEKS R4 R3 K9 ["text"]
  DUPCLOSURE R4 K13 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["onActivated"]
  SETTABLEKS R3 R2 K3 ["primaryAction"]
  DUPTABLE R3 K11 [{"text", "onActivated"}]
  LOADK R4 K14 ["Secondary"]
  SETTABLEKS R4 R3 K9 ["text"]
  DUPCLOSURE R4 K15 [PROTO_1]
  SETTABLEKS R4 R3 K10 ["onActivated"]
  SETTABLEKS R3 R2 K4 ["secondaryAction"]
  DUPTABLE R3 K11 [{"text", "onActivated"}]
  LOADK R4 K16 ["Tertiary"]
  SETTABLEKS R4 R3 K9 ["text"]
  DUPCLOSURE R4 K17 [PROTO_2]
  SETTABLEKS R4 R3 K10 ["onActivated"]
  SETTABLEKS R3 R2 K5 ["tertiaryAction"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  DUPTABLE R1 K2 [{"name", "story"}]
  SETTABLEKS R0 R1 K0 ["name"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["story"]
  RETURN R1 1

PROTO_5:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Primary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Secondary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Tertiary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction"}]
  GETTABLEKS R5 R0 K7 ["controls"]
  GETTABLEKS R4 R5 K0 ["type"]
  SETTABLEKS R4 R3 K0 ["type"]
  GETTABLEKS R5 R0 K7 ["controls"]
  GETTABLEKS R4 R5 K1 ["title"]
  SETTABLEKS R4 R3 K1 ["title"]
  GETTABLEKS R5 R0 K7 ["controls"]
  GETTABLEKS R4 R5 K2 ["description"]
  SETTABLEKS R4 R3 K2 ["description"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K8 ["primaryActionText"]
  JUMPIFEQKS R5 K9 [""] [+12]
  DUPTABLE R4 K12 [{"text", "onActivated"}]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K8 ["primaryActionText"]
  SETTABLEKS R5 R4 K10 ["text"]
  DUPCLOSURE R5 K13 [PROTO_5]
  SETTABLEKS R5 R4 K11 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["primaryAction"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K14 ["secondaryActionText"]
  JUMPIFEQKS R5 K9 [""] [+12]
  DUPTABLE R4 K12 [{"text", "onActivated"}]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K14 ["secondaryActionText"]
  SETTABLEKS R5 R4 K10 ["text"]
  DUPCLOSURE R5 K15 [PROTO_6]
  SETTABLEKS R5 R4 K11 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["secondaryAction"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K16 ["tertiaryActionText"]
  JUMPIFEQKS R5 K9 [""] [+12]
  DUPTABLE R4 K12 [{"text", "onActivated"}]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K16 ["tertiaryActionText"]
  SETTABLEKS R5 R4 K10 ["text"]
  DUPCLOSURE R5 K17 [PROTO_7]
  SETTABLEKS R5 R4 K11 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["tertiaryAction"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["DialogView"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["createElement"]
  DUPCLOSURE R5 K13 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  DUPTABLE R6 K17 [{"name", "controls", "stories"}]
  LOADK R7 K7 ["DialogView"]
  SETTABLEKS R7 R6 K14 ["name"]
  DUPTABLE R7 K24 [{"type", "title", "description", "primaryActionText", "secondaryActionText", "tertiaryActionText"}]
  NEWTABLE R8 0 3
  LOADK R9 K25 ["Default"]
  LOADK R10 K26 ["Warning"]
  LOADK R11 K27 ["Critical"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K18 ["type"]
  LOADK R8 K28 ["Save changes to Place1?"]
  SETTABLEKS R8 R7 K19 ["title"]
  LOADK R8 K29 [""]
  SETTABLEKS R8 R7 K20 ["description"]
  LOADK R8 K30 ["Save"]
  SETTABLEKS R8 R7 K21 ["primaryActionText"]
  LOADK R8 K31 ["Don't save"]
  SETTABLEKS R8 R7 K22 ["secondaryActionText"]
  LOADK R8 K32 ["Cancel"]
  SETTABLEKS R8 R7 K23 ["tertiaryActionText"]
  SETTABLEKS R7 R6 K15 ["controls"]
  NEWTABLE R7 0 4
  DUPTABLE R8 K34 [{"name", "story"}]
  LOADK R9 K35 ["Configurable"]
  SETTABLEKS R9 R8 K14 ["name"]
  DUPCLOSURE R9 K36 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K33 ["story"]
  DUPTABLE R9 K34 [{"name", "story"}]
  LOADK R10 K25 ["Default"]
  SETTABLEKS R10 R9 K14 ["name"]
  LOADK R11 K25 ["Default"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R10 R9 K33 ["story"]
  DUPTABLE R10 K34 [{"name", "story"}]
  LOADK R11 K26 ["Warning"]
  SETTABLEKS R11 R10 K14 ["name"]
  LOADK R12 K26 ["Warning"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R11 R10 K33 ["story"]
  DUPTABLE R11 K34 [{"name", "story"}]
  LOADK R12 K27 ["Critical"]
  SETTABLEKS R12 R11 K14 ["name"]
  LOADK R13 K27 ["Critical"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R12 R11 K33 ["story"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K16 ["stories"]
  RETURN R6 1
