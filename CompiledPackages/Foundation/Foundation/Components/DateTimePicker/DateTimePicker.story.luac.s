PROTO_0:
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [DateTime.now]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"Size", "tag"}]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADK R5 K10 ["row"]
  SETTABLEKS R5 R4 K5 ["tag"]
  DUPTABLE R5 K12 [{"DateTimePicker"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K20 [{"hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
  GETTABLEKS R10 R0 K21 ["controls"]
  GETTABLEKS R9 R10 K13 ["hasError"]
  SETTABLEKS R9 R8 K13 ["hasError"]
  GETTABLEKS R10 R0 K21 ["controls"]
  GETTABLEKS R9 R10 K14 ["isDisabled"]
  SETTABLEKS R9 R8 K14 ["isDisabled"]
  GETTABLEKS R10 R0 K21 ["controls"]
  GETTABLEKS R9 R10 K15 ["label"]
  SETTABLEKS R9 R8 K15 ["label"]
  DUPCLOSURE R9 K22 [PROTO_0]
  SETTABLEKS R9 R8 K16 ["onChanged"]
  GETTABLEKS R11 R0 K21 ["controls"]
  GETTABLEKS R10 R11 K23 ["showUnselectableDates"]
  JUMPIFNOT R10 [+12]
  DUPTABLE R9 K26 [{"startDate", "endDate"}]
  SETTABLEKS R1 R9 K24 ["startDate"]
  GETIMPORT R10 K28 [DateTime.fromUnixTimestamp]
  GETTABLEKS R12 R1 K30 ["UnixTimestamp"]
  ADDK R11 R12 K29 [172800]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["endDate"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K17 ["selectableDateRange"]
  GETTABLEKS R10 R0 K21 ["controls"]
  GETTABLEKS R9 R10 K18 ["variant"]
  SETTABLEKS R9 R8 K18 ["variant"]
  GETIMPORT R9 K32 [UDim.new]
  LOADN R10 0
  GETTABLEKS R12 R0 K21 ["controls"]
  GETTABLEKS R11 R12 K19 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["width"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DateTimePicker"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [DateTime.now]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"Size", "tag"}]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADK R5 K10 ["row"]
  SETTABLEKS R5 R4 K5 ["tag"]
  DUPTABLE R5 K12 [{"DateTimePicker"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K21 [{"defaultSelectedDate", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
  GETIMPORT R9 K23 [DateTime.fromLocalTime]
  LOADN R10 208
  LOADN R11 1
  LOADN R12 1
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["defaultSelectedDate"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K14 ["hasError"]
  SETTABLEKS R9 R8 K14 ["hasError"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K15 ["isDisabled"]
  SETTABLEKS R9 R8 K15 ["isDisabled"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K16 ["label"]
  SETTABLEKS R9 R8 K16 ["label"]
  DUPCLOSURE R9 K25 [PROTO_2]
  SETTABLEKS R9 R8 K17 ["onChanged"]
  GETTABLEKS R11 R0 K24 ["controls"]
  GETTABLEKS R10 R11 K26 ["showUnselectableDates"]
  JUMPIFNOT R10 [+12]
  DUPTABLE R9 K29 [{"startDate", "endDate"}]
  SETTABLEKS R1 R9 K27 ["startDate"]
  GETIMPORT R10 K31 [DateTime.fromUnixTimestamp]
  GETTABLEKS R12 R1 K33 ["UnixTimestamp"]
  ADDK R11 R12 K32 [172800]
  CALL R10 1 1
  SETTABLEKS R10 R9 K28 ["endDate"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K18 ["selectableDateRange"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K19 ["variant"]
  SETTABLEKS R9 R8 K19 ["variant"]
  GETIMPORT R9 K35 [UDim.new]
  LOADN R10 0
  GETTABLEKS R12 R0 K24 ["controls"]
  GETTABLEKS R11 R12 K20 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["width"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DateTimePicker"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["DateTimePicker"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["DateTimePickerVariant"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K13 ["View"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K14 ["values"]
  MOVE R8 R5
  CALL R7 1 1
  DUPTABLE R8 K18 [{"summary", "stories", "controls"}]
  LOADK R9 K10 ["DateTimePicker"]
  SETTABLEKS R9 R8 K15 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K21 [{"name", "story"}]
  LOADK R11 K22 ["DateTimePicker with no default selected date"]
  SETTABLEKS R11 R10 K19 ["name"]
  DUPCLOSURE R11 K23 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K20 ["story"]
  DUPTABLE R11 K21 [{"name", "story"}]
  LOADK R12 K24 ["DateTimePicker with default selected date"]
  SETTABLEKS R12 R11 K19 ["name"]
  DUPCLOSURE R12 K25 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K20 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K16 ["stories"]
  DUPTABLE R9 K32 [{"variant", "hasError", "isDisabled", "label", "showUnselectableDates", "width"}]
  SETTABLEKS R7 R9 K26 ["variant"]
  LOADB R10 0
  SETTABLEKS R10 R9 K27 ["hasError"]
  LOADB R10 0
  SETTABLEKS R10 R9 K28 ["isDisabled"]
  LOADK R10 K33 ["Date"]
  SETTABLEKS R10 R9 K29 ["label"]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["showUnselectableDates"]
  LOADN R10 144
  SETTABLEKS R10 R9 K31 ["width"]
  SETTABLEKS R9 R8 K17 ["controls"]
  RETURN R8 1
