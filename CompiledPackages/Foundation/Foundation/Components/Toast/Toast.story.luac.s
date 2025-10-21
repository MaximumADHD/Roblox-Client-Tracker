PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R0 K1 [print]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["controls"]
  GETTABLEKS R1 R2 K3 ["button1"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["controls"]
  GETTABLEKS R1 R2 K3 ["button2"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K5 [{"title", "text", "icon", "actions", "width"}]
  GETTABLEKS R4 R0 K6 ["controls"]
  GETTABLEKS R3 R4 K0 ["title"]
  SETTABLEKS R3 R2 K0 ["title"]
  GETTABLEKS R4 R0 K6 ["controls"]
  GETTABLEKS R3 R4 K1 ["text"]
  SETTABLEKS R3 R2 K1 ["text"]
  GETTABLEKS R4 R0 K6 ["controls"]
  GETTABLEKS R3 R4 K2 ["icon"]
  SETTABLEKS R3 R2 K2 ["icon"]
  NEWTABLE R3 0 2
  GETTABLEKS R6 R0 K6 ["controls"]
  GETTABLEKS R5 R6 K7 ["button1"]
  JUMPIFEQKS R5 K8 [""] [+18]
  DUPTABLE R4 K11 [{"onActivated", "variant", "text"}]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K9 ["onActivated"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["Emphasis"]
  SETTABLEKS R5 R4 K10 ["variant"]
  GETTABLEKS R6 R0 K6 ["controls"]
  GETTABLEKS R5 R6 K7 ["button1"]
  SETTABLEKS R5 R4 K1 ["text"]
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R7 R0 K6 ["controls"]
  GETTABLEKS R6 R7 K13 ["button2"]
  JUMPIFEQKS R6 K8 [""] [+18]
  DUPTABLE R5 K11 [{"onActivated", "variant", "text"}]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K9 ["onActivated"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["Subtle"]
  SETTABLEKS R6 R5 K10 ["variant"]
  GETTABLEKS R7 R0 K6 ["controls"]
  GETTABLEKS R6 R7 K13 ["button2"]
  SETTABLEKS R6 R5 K1 ["text"]
  JUMP [+1]
  LOADNIL R5
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K3 ["actions"]
  GETIMPORT R3 K17 [UDim.new]
  LOADN R4 0
  GETTABLEKS R6 R0 K6 ["controls"]
  GETTABLEKS R5 R6 K4 ["width"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["width"]
  CALL R1 1 -1
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
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["ButtonVariant"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Utility"]
  GETTABLEKS R5 R6 K11 ["getRbxThumb"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Enums"]
  GETTABLEKS R6 R7 K12 ["ThumbnailType"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["Toast"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPTABLE R8 K19 [{"summary", "stories", "controls"}]
  LOADK R9 K14 ["Toast"]
  SETTABLEKS R9 R8 K16 ["summary"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K22 [{"name", "story"}]
  LOADK R11 K14 ["Toast"]
  SETTABLEKS R11 R10 K20 ["name"]
  DUPCLOSURE R11 K23 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K21 ["story"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K17 ["stories"]
  DUPTABLE R9 K30 [{"icon", "title", "text", "button1", "button2", "width"}]
  NEWTABLE R10 0 3
  MOVE R11 R4
  GETTABLEKS R12 R5 K31 ["AvatarHeadShot"]
  LOADK R13 K32 [6181525679]
  CALL R11 2 1
  LOADK R12 K33 ["icons/common/play"]
  LOADK R13 K34 [""]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K24 ["icon"]
  LOADK R10 K35 ["Toast Notification"]
  SETTABLEKS R10 R9 K25 ["title"]
  LOADK R10 K36 ["U have been toasted . >:)"]
  SETTABLEKS R10 R9 K26 ["text"]
  LOADK R10 K37 ["Action 1"]
  SETTABLEKS R10 R9 K27 ["button1"]
  LOADK R10 K38 ["Action 2"]
  SETTABLEKS R10 R9 K28 ["button2"]
  NEWTABLE R10 0 3
  LOADN R11 144
  LOADN R12 44
  LOADN R13 244
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K29 ["width"]
  SETTABLEKS R9 R8 K18 ["controls"]
  RETURN R8 1
