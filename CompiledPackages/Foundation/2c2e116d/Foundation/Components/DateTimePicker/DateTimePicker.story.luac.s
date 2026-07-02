PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 100
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 DUPTABLE                         R4 K9 [{"DateTimePicker"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K16 [{"hasError", "isDisabled", "label", "onChanged", "variant", "width"}]
       20 GETTABLEKS                       R8 R0 K17 ["controls"]
       22 GETTABLEKS                       R8 R8 K10 ["hasError"]
       24 SETTABLEKS                       R8 R7 K10 ["hasError"]
       26 GETTABLEKS                       R8 R0 K17 ["controls"]
       28 GETTABLEKS                       R8 R8 K11 ["isDisabled"]
       30 SETTABLEKS                       R8 R7 K11 ["isDisabled"]
       32 GETTABLEKS                       R8 R0 K17 ["controls"]
       34 GETTABLEKS                       R8 R8 K12 ["label"]
       36 SETTABLEKS                       R8 R7 K12 ["label"]
       38 DUPCLOSURE                       R8 K18 [PROTO_0]
       39 SETTABLEKS                       R8 R7 K13 ["onChanged"]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K19 ["SingleWithTime"]
       44 SETTABLEKS                       R8 R7 K14 ["variant"]
       46 GETTABLEKS                       R9 R0 K17 ["controls"]
       48 GETTABLEKS                       R9 R9 K20 ["fullWidth"]
       50 JUMPIFNOT                        R9 ; [+6]
       51 GETIMPORT                        R8 K22 [UDim.new]
       53 LOADN                            R9 1
       54 LOADN                            R10 0
       55 CALL                             R8 2 1
       56 JUMP                             ; [+8]
       57 GETIMPORT                        R8 K22 [UDim.new]
       59 LOADN                            R9 0
       60 GETTABLEKS                       R10 R0 K17 ["controls"]
       62 GETTABLEKS                       R10 R10 K15 ["width"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K15 ["width"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K8 ["DateTimePicker"]
       70 CALL                             R1 3 -1
       71 RETURN                           R1 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K7 [{["Size"], ["tag"] = "row"}]
        8 GETIMPORT                        R5 K10 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K20 [{"hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       23 GETTABLEKS                       R9 R0 K21 ["controls"]
       25 GETTABLEKS                       R9 R9 K13 ["hasError"]
       27 SETTABLEKS                       R9 R8 K13 ["hasError"]
       29 GETTABLEKS                       R9 R0 K21 ["controls"]
       31 GETTABLEKS                       R9 R9 K14 ["isDisabled"]
       33 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
       35 GETTABLEKS                       R9 R0 K21 ["controls"]
       37 GETTABLEKS                       R9 R9 K15 ["label"]
       39 SETTABLEKS                       R9 R8 K15 ["label"]
       41 DUPCLOSURE                       R9 K22 [PROTO_2]
       42 SETTABLEKS                       R9 R8 K16 ["onChanged"]
       44 GETTABLEKS                       R10 R0 K21 ["controls"]
       46 GETTABLEKS                       R10 R10 K23 ["showUnselectableDates"]
       48 JUMPIFNOT                        R10 ; [+12]
       49 DUPTABLE                         R9 K26 [{"startDate", "endDate"}]
       50 SETTABLEKS                       R1 R9 K24 ["startDate"]
       52 GETIMPORT                        R10 K28 [DateTime.fromUnixTimestamp]
       54 GETTABLEKS                       R12 R1 K30 ["UnixTimestamp"]
       56 ADDK                             R11 R12 K29 [172800]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K25 ["endDate"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K17 ["selectableDateRange"]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K31 ["Dual"]
       67 SETTABLEKS                       R9 R8 K18 ["variant"]
       69 GETTABLEKS                       R10 R0 K21 ["controls"]
       71 GETTABLEKS                       R10 R10 K32 ["fullWidth"]
       73 JUMPIFNOT                        R10 ; [+6]
       74 GETIMPORT                        R9 K34 [UDim.new]
       76 LOADN                            R10 1
       77 LOADN                            R11 0
       78 CALL                             R9 2 1
       79 JUMP                             ; [+8]
       80 GETIMPORT                        R9 K34 [UDim.new]
       82 LOADN                            R10 0
       83 GETTABLEKS                       R11 R0 K21 ["controls"]
       85 GETTABLEKS                       R11 R11 K19 ["width"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K19 ["width"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
       93 CALL                             R2 3 -1
       94 RETURN                           R2 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K7 [{["Size"], ["tag"] = "row"}]
        8 GETIMPORT                        R5 K10 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K20 [{"hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       23 GETTABLEKS                       R9 R0 K21 ["controls"]
       25 GETTABLEKS                       R9 R9 K13 ["hasError"]
       27 SETTABLEKS                       R9 R8 K13 ["hasError"]
       29 GETTABLEKS                       R9 R0 K21 ["controls"]
       31 GETTABLEKS                       R9 R9 K14 ["isDisabled"]
       33 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
       35 GETTABLEKS                       R9 R0 K21 ["controls"]
       37 GETTABLEKS                       R9 R9 K15 ["label"]
       39 SETTABLEKS                       R9 R8 K15 ["label"]
       41 DUPCLOSURE                       R9 K22 [PROTO_4]
       42 SETTABLEKS                       R9 R8 K16 ["onChanged"]
       44 GETTABLEKS                       R10 R0 K21 ["controls"]
       46 GETTABLEKS                       R10 R10 K23 ["showUnselectableDates"]
       48 JUMPIFNOT                        R10 ; [+12]
       49 DUPTABLE                         R9 K26 [{"startDate", "endDate"}]
       50 SETTABLEKS                       R1 R9 K24 ["startDate"]
       52 GETIMPORT                        R10 K28 [DateTime.fromUnixTimestamp]
       54 GETTABLEKS                       R12 R1 K30 ["UnixTimestamp"]
       56 ADDK                             R11 R12 K29 [172800]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K25 ["endDate"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K17 ["selectableDateRange"]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K31 ["Single"]
       67 SETTABLEKS                       R9 R8 K18 ["variant"]
       69 GETTABLEKS                       R10 R0 K21 ["controls"]
       71 GETTABLEKS                       R10 R10 K32 ["fullWidth"]
       73 JUMPIFNOT                        R10 ; [+6]
       74 GETIMPORT                        R9 K34 [UDim.new]
       76 LOADN                            R10 1
       77 LOADN                            R11 0
       78 CALL                             R9 2 1
       79 JUMP                             ; [+8]
       80 GETIMPORT                        R9 K34 [UDim.new]
       82 LOADN                            R10 0
       83 GETTABLEKS                       R11 R0 K21 ["controls"]
       85 GETTABLEKS                       R11 R11 K19 ["width"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K19 ["width"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
       93 CALL                             R2 3 -1
       94 RETURN                           R2 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K7 [{["Size"], ["tag"] = "row"}]
        8 GETIMPORT                        R5 K10 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       23 GETIMPORT                        R9 K23 [DateTime.fromLocalTime]
       25 LOADN                            R10 2000
       26 LOADN                            R11 1
       27 LOADN                            R12 1
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K13 ["defaultDates"]
       31 GETTABLEKS                       R9 R0 K24 ["controls"]
       33 GETTABLEKS                       R9 R9 K14 ["hasError"]
       35 SETTABLEKS                       R9 R8 K14 ["hasError"]
       37 GETTABLEKS                       R9 R0 K24 ["controls"]
       39 GETTABLEKS                       R9 R9 K15 ["isDisabled"]
       41 SETTABLEKS                       R9 R8 K15 ["isDisabled"]
       43 GETTABLEKS                       R9 R0 K24 ["controls"]
       45 GETTABLEKS                       R9 R9 K16 ["label"]
       47 SETTABLEKS                       R9 R8 K16 ["label"]
       49 DUPCLOSURE                       R9 K25 [PROTO_6]
       50 SETTABLEKS                       R9 R8 K17 ["onChanged"]
       52 GETTABLEKS                       R10 R0 K24 ["controls"]
       54 GETTABLEKS                       R10 R10 K26 ["showUnselectableDates"]
       56 JUMPIFNOT                        R10 ; [+12]
       57 DUPTABLE                         R9 K29 [{"startDate", "endDate"}]
       58 SETTABLEKS                       R1 R9 K27 ["startDate"]
       60 GETIMPORT                        R10 K31 [DateTime.fromUnixTimestamp]
       62 GETTABLEKS                       R12 R1 K33 ["UnixTimestamp"]
       64 ADDK                             R11 R12 K32 [172800]
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K28 ["endDate"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R9
       70 SETTABLEKS                       R9 R8 K18 ["selectableDateRange"]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K34 ["Single"]
       75 SETTABLEKS                       R9 R8 K19 ["variant"]
       77 GETTABLEKS                       R10 R0 K24 ["controls"]
       79 GETTABLEKS                       R10 R10 K35 ["fullWidth"]
       81 JUMPIFNOT                        R10 ; [+6]
       82 GETIMPORT                        R9 K37 [UDim.new]
       84 LOADN                            R10 1
       85 LOADN                            R11 0
       86 CALL                             R9 2 1
       87 JUMP                             ; [+8]
       88 GETIMPORT                        R9 K37 [UDim.new]
       90 LOADN                            R10 0
       91 GETTABLEKS                       R11 R0 K24 ["controls"]
       93 GETTABLEKS                       R11 R11 K20 ["width"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K20 ["width"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
      101 CALL                             R2 3 -1
      102 RETURN                           R2 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K7 [{["Size"], ["tag"] = "row"}]
        8 GETIMPORT                        R5 K10 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       23 NEWTABLE                         R9 0 2
       25 GETIMPORT                        R10 K23 [DateTime.fromLocalTime]
       27 LOADN                            R11 2000
       28 LOADN                            R12 1
       29 LOADN                            R13 1
       30 CALL                             R10 3 1
       31 GETIMPORT                        R11 K23 [DateTime.fromLocalTime]
       33 LOADN                            R12 2000
       34 LOADN                            R13 1
       35 LOADN                            R14 3
       36 CALL                             R11 3 -1
       37 SETLIST                          R9 R10 -1 [1]
       39 SETTABLEKS                       R9 R8 K13 ["defaultDates"]
       41 GETTABLEKS                       R9 R0 K24 ["controls"]
       43 GETTABLEKS                       R9 R9 K14 ["hasError"]
       45 SETTABLEKS                       R9 R8 K14 ["hasError"]
       47 GETTABLEKS                       R9 R0 K24 ["controls"]
       49 GETTABLEKS                       R9 R9 K15 ["isDisabled"]
       51 SETTABLEKS                       R9 R8 K15 ["isDisabled"]
       53 GETTABLEKS                       R9 R0 K24 ["controls"]
       55 GETTABLEKS                       R9 R9 K16 ["label"]
       57 SETTABLEKS                       R9 R8 K16 ["label"]
       59 DUPCLOSURE                       R9 K25 [PROTO_8]
       60 SETTABLEKS                       R9 R8 K17 ["onChanged"]
       62 GETTABLEKS                       R10 R0 K24 ["controls"]
       64 GETTABLEKS                       R10 R10 K26 ["showUnselectableDates"]
       66 JUMPIFNOT                        R10 ; [+12]
       67 DUPTABLE                         R9 K29 [{"startDate", "endDate"}]
       68 SETTABLEKS                       R1 R9 K27 ["startDate"]
       70 GETIMPORT                        R10 K31 [DateTime.fromUnixTimestamp]
       72 GETTABLEKS                       R12 R1 K33 ["UnixTimestamp"]
       74 ADDK                             R11 R12 K32 [172800]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K28 ["endDate"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K18 ["selectableDateRange"]
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K34 ["Dual"]
       85 SETTABLEKS                       R9 R8 K19 ["variant"]
       87 GETTABLEKS                       R10 R0 K24 ["controls"]
       89 GETTABLEKS                       R10 R10 K35 ["fullWidth"]
       91 JUMPIFNOT                        R10 ; [+6]
       92 GETIMPORT                        R9 K37 [UDim.new]
       94 LOADN                            R10 1
       95 LOADN                            R11 0
       96 CALL                             R9 2 1
       97 JUMP                             ; [+8]
       98 GETIMPORT                        R9 K37 [UDim.new]
      100 LOADN                            R10 0
      101 GETTABLEKS                       R11 R0 K24 ["controls"]
      103 GETTABLEKS                       R11 R11 K20 ["width"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K20 ["width"]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
      111 CALL                             R2 3 -1
      112 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["DateTimePicker"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["DateTimePickerVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 DUPTABLE                         R6 K16 [{["summary"] = "DateTimePicker", ["stories"], ["controls"]}]
       36 NEWTABLE                         R7 0 5
       38 DUPTABLE                         R8 K20 [{["name"] = "DateTimePicker - Single With Time", ["story"]}]
       39 DUPCLOSURE                       R9 K21 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R9 R8 K19 ["story"]
       46 DUPTABLE                         R9 K23 [{["name"] = "DateTimePicker - Dual", ["story"]}]
       47 DUPCLOSURE                       R10 K24 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R10 R9 K19 ["story"]
       54 DUPTABLE                         R10 K26 [{["name"] = "DateTimePicker - Single", ["story"]}]
       55 DUPCLOSURE                       R11 K27 [PROTO_5]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R11 R10 K19 ["story"]
       62 DUPTABLE                         R11 K29 [{["name"] = "DateTimePicker - Single with default selected date 1/1/2000", ["story"]}]
       63 DUPCLOSURE                       R12 K30 [PROTO_7]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R12 R11 K19 ["story"]
       70 DUPTABLE                         R12 K32 [{["name"] = "DateTimePicker - Dual with default selected date 1/1/2000 - 1/3/2000", ["story"]}]
       71 DUPCLOSURE                       R13 K33 [PROTO_9]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R13 R12 K19 ["story"]
       78 SETLIST                          R7 R8 5 [1]
       80 SETTABLEKS                       R7 R6 K14 ["stories"]
       82 DUPTABLE                         R7 K43 [{["fullWidth"] = False, ["hasError"] = False, ["isDisabled"] = False, ["label"] = "Date", ["showUnselectableDates"] = False, ["width"] = 400}]
       83 SETTABLEKS                       R7 R6 K15 ["controls"]
       85 RETURN                           R6 1
