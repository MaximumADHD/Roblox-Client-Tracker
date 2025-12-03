PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Size", "tag"}]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 100
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  LOADK R4 K7 ["row"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K9 [{"DateTimePicker"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"hasError", "isDisabled", "label", "onChanged", "variant", "width"}]
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K10 ["hasError"]
  SETTABLEKS R8 R7 K10 ["hasError"]
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K11 ["isDisabled"]
  SETTABLEKS R8 R7 K11 ["isDisabled"]
  GETTABLEKS R9 R0 K17 ["controls"]
  GETTABLEKS R8 R9 K12 ["label"]
  SETTABLEKS R8 R7 K12 ["label"]
  DUPCLOSURE R8 K18 [PROTO_0]
  SETTABLEKS R8 R7 K13 ["onChanged"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K19 ["SingleWithTime"]
  SETTABLEKS R8 R7 K14 ["variant"]
  GETTABLEKS R10 R0 K17 ["controls"]
  GETTABLEKS R9 R10 K20 ["fullWidth"]
  JUMPIFNOT R9 [+6]
  GETIMPORT R8 K22 [UDim.new]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  JUMP [+8]
  GETIMPORT R8 K22 [UDim.new]
  LOADN R9 0
  GETTABLEKS R11 R0 K17 ["controls"]
  GETTABLEKS R10 R11 K15 ["width"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["width"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["DateTimePicker"]
  CALL R1 3 -1
  RETURN R1 -1

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
  DUPCLOSURE R9 K22 [PROTO_2]
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
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K31 ["Dual"]
  SETTABLEKS R9 R8 K18 ["variant"]
  GETTABLEKS R11 R0 K21 ["controls"]
  GETTABLEKS R10 R11 K32 ["fullWidth"]
  JUMPIFNOT R10 [+6]
  GETIMPORT R9 K34 [UDim.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  JUMP [+8]
  GETIMPORT R9 K34 [UDim.new]
  LOADN R10 0
  GETTABLEKS R12 R0 K21 ["controls"]
  GETTABLEKS R11 R12 K19 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["width"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DateTimePicker"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  RETURN R0 0

PROTO_5:
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
  DUPCLOSURE R9 K22 [PROTO_4]
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
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K31 ["Single"]
  SETTABLEKS R9 R8 K18 ["variant"]
  GETTABLEKS R11 R0 K21 ["controls"]
  GETTABLEKS R10 R11 K32 ["fullWidth"]
  JUMPIFNOT R10 [+6]
  GETIMPORT R9 K34 [UDim.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  JUMP [+8]
  GETIMPORT R9 K34 [UDim.new]
  LOADN R10 0
  GETTABLEKS R12 R0 K21 ["controls"]
  GETTABLEKS R11 R12 K19 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["width"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DateTimePicker"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  RETURN R0 0

PROTO_7:
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
  DUPTABLE R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
  GETIMPORT R9 K23 [DateTime.fromLocalTime]
  LOADN R10 208
  LOADN R11 1
  LOADN R12 1
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["defaultDates"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K14 ["hasError"]
  SETTABLEKS R9 R8 K14 ["hasError"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K15 ["isDisabled"]
  SETTABLEKS R9 R8 K15 ["isDisabled"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K16 ["label"]
  SETTABLEKS R9 R8 K16 ["label"]
  DUPCLOSURE R9 K25 [PROTO_6]
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
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K34 ["Single"]
  SETTABLEKS R9 R8 K19 ["variant"]
  GETTABLEKS R11 R0 K24 ["controls"]
  GETTABLEKS R10 R11 K35 ["fullWidth"]
  JUMPIFNOT R10 [+6]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  JUMP [+8]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 0
  GETTABLEKS R12 R0 K24 ["controls"]
  GETTABLEKS R11 R12 K20 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["width"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DateTimePicker"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  RETURN R0 0

PROTO_9:
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
  DUPTABLE R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
  NEWTABLE R9 0 2
  GETIMPORT R10 K23 [DateTime.fromLocalTime]
  LOADN R11 208
  LOADN R12 1
  LOADN R13 1
  CALL R10 3 1
  GETIMPORT R11 K23 [DateTime.fromLocalTime]
  LOADN R12 208
  LOADN R13 1
  LOADN R14 3
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  SETTABLEKS R9 R8 K13 ["defaultDates"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K14 ["hasError"]
  SETTABLEKS R9 R8 K14 ["hasError"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K15 ["isDisabled"]
  SETTABLEKS R9 R8 K15 ["isDisabled"]
  GETTABLEKS R10 R0 K24 ["controls"]
  GETTABLEKS R9 R10 K16 ["label"]
  SETTABLEKS R9 R8 K16 ["label"]
  DUPCLOSURE R9 K25 [PROTO_8]
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
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K34 ["Dual"]
  SETTABLEKS R9 R8 K19 ["variant"]
  GETTABLEKS R11 R0 K24 ["controls"]
  GETTABLEKS R10 R11 K35 ["fullWidth"]
  JUMPIFNOT R10 [+6]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  JUMP [+8]
  GETIMPORT R9 K37 [UDim.new]
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
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["DateTimePicker"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["DateTimePickerVariant"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K12 ["View"]
  CALL R5 1 1
  DUPTABLE R6 K16 [{"summary", "stories", "controls"}]
  LOADK R7 K9 ["DateTimePicker"]
  SETTABLEKS R7 R6 K13 ["summary"]
  NEWTABLE R7 0 5
  DUPTABLE R8 K19 [{"name", "story"}]
  LOADK R9 K20 ["DateTimePicker - Single With Time"]
  SETTABLEKS R9 R8 K17 ["name"]
  DUPCLOSURE R9 K21 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K18 ["story"]
  DUPTABLE R9 K19 [{"name", "story"}]
  LOADK R10 K22 ["DateTimePicker - Dual"]
  SETTABLEKS R10 R9 K17 ["name"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K18 ["story"]
  DUPTABLE R10 K19 [{"name", "story"}]
  LOADK R11 K24 ["DateTimePicker - Single"]
  SETTABLEKS R11 R10 K17 ["name"]
  DUPCLOSURE R11 K25 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K18 ["story"]
  DUPTABLE R11 K19 [{"name", "story"}]
  LOADK R12 K26 ["DateTimePicker - Single with default selected date 1/1/2000"]
  SETTABLEKS R12 R11 K17 ["name"]
  DUPCLOSURE R12 K27 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K18 ["story"]
  DUPTABLE R12 K19 [{"name", "story"}]
  LOADK R13 K28 ["DateTimePicker - Dual with default selected date 1/1/2000 - 1/3/2000"]
  SETTABLEKS R13 R12 K17 ["name"]
  DUPCLOSURE R13 K29 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K18 ["story"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K14 ["stories"]
  DUPTABLE R7 K36 [{"fullWidth", "hasError", "isDisabled", "label", "showUnselectableDates", "width"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K30 ["fullWidth"]
  LOADB R8 0
  SETTABLEKS R8 R7 K31 ["hasError"]
  LOADB R8 0
  SETTABLEKS R8 R7 K32 ["isDisabled"]
  LOADK R8 K37 ["Date"]
  SETTABLEKS R8 R7 K33 ["label"]
  LOADB R8 0
  SETTABLEKS R8 R7 K34 ["showUnselectableDates"]
  LOADN R8 144
  SETTABLEKS R8 R7 K35 ["width"]
  SETTABLEKS R7 R6 K15 ["controls"]
  RETURN R6 1
