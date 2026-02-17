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
  DUPTABLE R3 K12 [{"uri", "text", "onActivated"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["fromWidget"]
  LOADK R5 K14 ["Dialog"]
  LOADK R6 K15 ["Primary"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["uri"]
  LOADK R4 K15 ["Primary"]
  SETTABLEKS R4 R3 K10 ["text"]
  DUPCLOSURE R4 K16 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["onActivated"]
  SETTABLEKS R3 R2 K3 ["primaryAction"]
  DUPTABLE R3 K12 [{"uri", "text", "onActivated"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["fromWidget"]
  LOADK R5 K14 ["Dialog"]
  LOADK R6 K17 ["Secondary"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["uri"]
  LOADK R4 K17 ["Secondary"]
  SETTABLEKS R4 R3 K10 ["text"]
  DUPCLOSURE R4 K18 [PROTO_1]
  SETTABLEKS R4 R3 K11 ["onActivated"]
  SETTABLEKS R3 R2 K4 ["secondaryAction"]
  DUPTABLE R3 K12 [{"uri", "text", "onActivated"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["fromWidget"]
  LOADK R5 K14 ["Dialog"]
  LOADK R6 K19 ["Tertiary"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["uri"]
  LOADK R4 K19 ["Tertiary"]
  SETTABLEKS R4 R3 K10 ["text"]
  DUPCLOSURE R4 K20 [PROTO_2]
  SETTABLEKS R4 R3 K11 ["onActivated"]
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
  CAPTURE UPVAL U2
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
  JUMPIFEQKS R5 K9 [""] [+20]
  DUPTABLE R4 K13 [{"uri", "text", "onActivated"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["fromWidget"]
  LOADK R6 K15 ["Dialog"]
  LOADK R7 K16 ["Primary"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["uri"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K8 ["primaryActionText"]
  SETTABLEKS R5 R4 K11 ["text"]
  DUPCLOSURE R5 K17 [PROTO_5]
  SETTABLEKS R5 R4 K12 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["primaryAction"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K18 ["secondaryActionText"]
  JUMPIFEQKS R5 K9 [""] [+20]
  DUPTABLE R4 K13 [{"uri", "text", "onActivated"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["fromWidget"]
  LOADK R6 K15 ["Dialog"]
  LOADK R7 K19 ["Secondary"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["uri"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K18 ["secondaryActionText"]
  SETTABLEKS R5 R4 K11 ["text"]
  DUPCLOSURE R5 K20 [PROTO_6]
  SETTABLEKS R5 R4 K12 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["secondaryAction"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K21 ["tertiaryActionText"]
  JUMPIFEQKS R5 K9 [""] [+20]
  DUPTABLE R4 K13 [{"uri", "text", "onActivated"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["fromWidget"]
  LOADK R6 K15 ["Dialog"]
  LOADK R7 K22 ["Tertiary"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["uri"]
  GETTABLEKS R6 R0 K7 ["controls"]
  GETTABLEKS R5 R6 K21 ["tertiaryActionText"]
  SETTABLEKS R5 R4 K11 ["text"]
  DUPCLOSURE R5 K23 [PROTO_7]
  SETTABLEKS R5 R4 K12 ["onActivated"]
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
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["StudioFoundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["StudioUri"]
  GETTABLEKS R6 R2 K15 ["createElement"]
  DUPCLOSURE R7 K16 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  DUPTABLE R8 K20 [{"name", "controls", "stories"}]
  LOADK R9 K7 ["DialogView"]
  SETTABLEKS R9 R8 K17 ["name"]
  DUPTABLE R9 K27 [{"type", "title", "description", "primaryActionText", "secondaryActionText", "tertiaryActionText"}]
  NEWTABLE R10 0 3
  LOADK R11 K28 ["Default"]
  LOADK R12 K29 ["Warning"]
  LOADK R13 K30 ["Critical"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K21 ["type"]
  LOADK R10 K31 ["Save changes to Place1?"]
  SETTABLEKS R10 R9 K22 ["title"]
  LOADK R10 K32 [""]
  SETTABLEKS R10 R9 K23 ["description"]
  LOADK R10 K33 ["Save"]
  SETTABLEKS R10 R9 K24 ["primaryActionText"]
  LOADK R10 K34 ["Don't save"]
  SETTABLEKS R10 R9 K25 ["secondaryActionText"]
  LOADK R10 K35 ["Cancel"]
  SETTABLEKS R10 R9 K26 ["tertiaryActionText"]
  SETTABLEKS R9 R8 K18 ["controls"]
  NEWTABLE R9 0 4
  DUPTABLE R10 K37 [{"name", "story"}]
  LOADK R11 K38 ["Configurable"]
  SETTABLEKS R11 R10 K17 ["name"]
  DUPCLOSURE R11 K39 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K36 ["story"]
  DUPTABLE R11 K37 [{"name", "story"}]
  LOADK R12 K28 ["Default"]
  SETTABLEKS R12 R11 K17 ["name"]
  LOADK R13 K28 ["Default"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K36 ["story"]
  DUPTABLE R12 K37 [{"name", "story"}]
  LOADK R13 K29 ["Warning"]
  SETTABLEKS R13 R12 K17 ["name"]
  LOADK R14 K29 ["Warning"]
  NEWCLOSURE R13 P2
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K36 ["story"]
  DUPTABLE R13 K37 [{"name", "story"}]
  LOADK R14 K30 ["Critical"]
  SETTABLEKS R14 R13 K17 ["name"]
  LOADK R15 K30 ["Critical"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K36 ["story"]
  SETLIST R9 R10 4 [1]
  SETTABLEKS R9 R8 K19 ["stories"]
  RETURN R8 1
