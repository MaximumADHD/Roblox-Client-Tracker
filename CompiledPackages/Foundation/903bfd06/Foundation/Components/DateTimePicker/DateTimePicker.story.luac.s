PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 100
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 DUPTABLE                         R4 K9 [{"DateTimePicker"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K16 [{"hasError", "isDisabled", "label", "onChanged", "variant", "width"}]
       23 GETTABLEKS                       R8 R0 K17 ["controls"]
       25 GETTABLEKS                       R8 R8 K10 ["hasError"]
       27 SETTABLEKS                       R8 R7 K10 ["hasError"]
       29 GETTABLEKS                       R8 R0 K17 ["controls"]
       31 GETTABLEKS                       R8 R8 K11 ["isDisabled"]
       33 SETTABLEKS                       R8 R7 K11 ["isDisabled"]
       35 GETTABLEKS                       R8 R0 K17 ["controls"]
       37 GETTABLEKS                       R8 R8 K12 ["label"]
       39 SETTABLEKS                       R8 R7 K12 ["label"]
       41 DUPCLOSURE                       R8 K18 [PROTO_0]
       42 SETTABLEKS                       R8 R7 K13 ["onChanged"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K19 ["SingleWithTime"]
       47 SETTABLEKS                       R8 R7 K14 ["variant"]
       49 GETTABLEKS                       R9 R0 K17 ["controls"]
       51 GETTABLEKS                       R9 R9 K20 ["fullWidth"]
       53 JUMPIFNOT                        R9 ; [+6]
       54 GETIMPORT                        R8 K22 [UDim.new]
       56 LOADN                            R9 1
       57 LOADN                            R10 0
       58 CALL                             R8 2 1
       59 JUMP                             ; [+8]
       60 GETIMPORT                        R8 K22 [UDim.new]
       62 LOADN                            R9 0
       63 GETTABLEKS                       R10 R0 K17 ["controls"]
       65 GETTABLEKS                       R10 R10 K15 ["width"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K15 ["width"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K8 ["DateTimePicker"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K6 [{"Size", "tag"}]
        8 GETIMPORT                        R5 K9 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 LOADK                            R5 K10 ["row"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K20 [{"hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       26 GETTABLEKS                       R9 R0 K21 ["controls"]
       28 GETTABLEKS                       R9 R9 K13 ["hasError"]
       30 SETTABLEKS                       R9 R8 K13 ["hasError"]
       32 GETTABLEKS                       R9 R0 K21 ["controls"]
       34 GETTABLEKS                       R9 R9 K14 ["isDisabled"]
       36 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
       38 GETTABLEKS                       R9 R0 K21 ["controls"]
       40 GETTABLEKS                       R9 R9 K15 ["label"]
       42 SETTABLEKS                       R9 R8 K15 ["label"]
       44 DUPCLOSURE                       R9 K22 [PROTO_2]
       45 SETTABLEKS                       R9 R8 K16 ["onChanged"]
       47 GETTABLEKS                       R10 R0 K21 ["controls"]
       49 GETTABLEKS                       R10 R10 K23 ["showUnselectableDates"]
       51 JUMPIFNOT                        R10 ; [+12]
       52 DUPTABLE                         R9 K26 [{"startDate", "endDate"}]
       53 SETTABLEKS                       R1 R9 K24 ["startDate"]
       55 GETIMPORT                        R10 K28 [DateTime.fromUnixTimestamp]
       57 GETTABLEKS                       R12 R1 K30 ["UnixTimestamp"]
       59 ADDK                             R11 R12 K29 [172800]
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K25 ["endDate"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 SETTABLEKS                       R9 R8 K17 ["selectableDateRange"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K31 ["Dual"]
       70 SETTABLEKS                       R9 R8 K18 ["variant"]
       72 GETTABLEKS                       R10 R0 K21 ["controls"]
       74 GETTABLEKS                       R10 R10 K32 ["fullWidth"]
       76 JUMPIFNOT                        R10 ; [+6]
       77 GETIMPORT                        R9 K34 [UDim.new]
       79 LOADN                            R10 1
       80 LOADN                            R11 0
       81 CALL                             R9 2 1
       82 JUMP                             ; [+8]
       83 GETIMPORT                        R9 K34 [UDim.new]
       85 LOADN                            R10 0
       86 GETTABLEKS                       R11 R0 K21 ["controls"]
       88 GETTABLEKS                       R11 R11 K19 ["width"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K19 ["width"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K6 [{"Size", "tag"}]
        8 GETIMPORT                        R5 K9 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 LOADK                            R5 K10 ["row"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K20 [{"hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       26 GETTABLEKS                       R9 R0 K21 ["controls"]
       28 GETTABLEKS                       R9 R9 K13 ["hasError"]
       30 SETTABLEKS                       R9 R8 K13 ["hasError"]
       32 GETTABLEKS                       R9 R0 K21 ["controls"]
       34 GETTABLEKS                       R9 R9 K14 ["isDisabled"]
       36 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
       38 GETTABLEKS                       R9 R0 K21 ["controls"]
       40 GETTABLEKS                       R9 R9 K15 ["label"]
       42 SETTABLEKS                       R9 R8 K15 ["label"]
       44 DUPCLOSURE                       R9 K22 [PROTO_4]
       45 SETTABLEKS                       R9 R8 K16 ["onChanged"]
       47 GETTABLEKS                       R10 R0 K21 ["controls"]
       49 GETTABLEKS                       R10 R10 K23 ["showUnselectableDates"]
       51 JUMPIFNOT                        R10 ; [+12]
       52 DUPTABLE                         R9 K26 [{"startDate", "endDate"}]
       53 SETTABLEKS                       R1 R9 K24 ["startDate"]
       55 GETIMPORT                        R10 K28 [DateTime.fromUnixTimestamp]
       57 GETTABLEKS                       R12 R1 K30 ["UnixTimestamp"]
       59 ADDK                             R11 R12 K29 [172800]
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K25 ["endDate"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 SETTABLEKS                       R9 R8 K17 ["selectableDateRange"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K31 ["Single"]
       70 SETTABLEKS                       R9 R8 K18 ["variant"]
       72 GETTABLEKS                       R10 R0 K21 ["controls"]
       74 GETTABLEKS                       R10 R10 K32 ["fullWidth"]
       76 JUMPIFNOT                        R10 ; [+6]
       77 GETIMPORT                        R9 K34 [UDim.new]
       79 LOADN                            R10 1
       80 LOADN                            R11 0
       81 CALL                             R9 2 1
       82 JUMP                             ; [+8]
       83 GETIMPORT                        R9 K34 [UDim.new]
       85 LOADN                            R10 0
       86 GETTABLEKS                       R11 R0 K21 ["controls"]
       88 GETTABLEKS                       R11 R11 K19 ["width"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K19 ["width"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K6 [{"Size", "tag"}]
        8 GETIMPORT                        R5 K9 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 LOADK                            R5 K10 ["row"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       26 GETIMPORT                        R9 K23 [DateTime.fromLocalTime]
       28 LOADN                            R10 208
       29 LOADN                            R11 1
       30 LOADN                            R12 1
       31 CALL                             R9 3 1
       32 SETTABLEKS                       R9 R8 K13 ["defaultDates"]
       34 GETTABLEKS                       R9 R0 K24 ["controls"]
       36 GETTABLEKS                       R9 R9 K14 ["hasError"]
       38 SETTABLEKS                       R9 R8 K14 ["hasError"]
       40 GETTABLEKS                       R9 R0 K24 ["controls"]
       42 GETTABLEKS                       R9 R9 K15 ["isDisabled"]
       44 SETTABLEKS                       R9 R8 K15 ["isDisabled"]
       46 GETTABLEKS                       R9 R0 K24 ["controls"]
       48 GETTABLEKS                       R9 R9 K16 ["label"]
       50 SETTABLEKS                       R9 R8 K16 ["label"]
       52 DUPCLOSURE                       R9 K25 [PROTO_6]
       53 SETTABLEKS                       R9 R8 K17 ["onChanged"]
       55 GETTABLEKS                       R10 R0 K24 ["controls"]
       57 GETTABLEKS                       R10 R10 K26 ["showUnselectableDates"]
       59 JUMPIFNOT                        R10 ; [+12]
       60 DUPTABLE                         R9 K29 [{"startDate", "endDate"}]
       61 SETTABLEKS                       R1 R9 K27 ["startDate"]
       63 GETIMPORT                        R10 K31 [DateTime.fromUnixTimestamp]
       65 GETTABLEKS                       R12 R1 K33 ["UnixTimestamp"]
       67 ADDK                             R11 R12 K32 [172800]
       68 CALL                             R10 1 1
       69 SETTABLEKS                       R10 R9 K28 ["endDate"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K18 ["selectableDateRange"]
       75 GETUPVAL                         R9 3
       76 GETTABLEKS                       R9 R9 K34 ["Single"]
       78 SETTABLEKS                       R9 R8 K19 ["variant"]
       80 GETTABLEKS                       R10 R0 K24 ["controls"]
       82 GETTABLEKS                       R10 R10 K35 ["fullWidth"]
       84 JUMPIFNOT                        R10 ; [+6]
       85 GETIMPORT                        R9 K37 [UDim.new]
       87 LOADN                            R10 1
       88 LOADN                            R11 0
       89 CALL                             R9 2 1
       90 JUMP                             ; [+8]
       91 GETIMPORT                        R9 K37 [UDim.new]
       93 LOADN                            R10 0
       94 GETTABLEKS                       R11 R0 K24 ["controls"]
       96 GETTABLEKS                       R11 R11 K20 ["width"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K20 ["width"]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
      104 CALL                             R2 3 -1
      105 RETURN                           R2 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["createElement"]
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K6 [{"Size", "tag"}]
        8 GETIMPORT                        R5 K9 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 100
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K4 ["Size"]
       17 LOADK                            R5 K10 ["row"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K12 [{"DateTimePicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K21 [{"defaultDates", "hasError", "isDisabled", "label", "onChanged", "selectableDateRange", "variant", "width"}]
       26 NEWTABLE                         R9 0 2
       28 GETIMPORT                        R10 K23 [DateTime.fromLocalTime]
       30 LOADN                            R11 208
       31 LOADN                            R12 1
       32 LOADN                            R13 1
       33 CALL                             R10 3 1
       34 GETIMPORT                        R11 K23 [DateTime.fromLocalTime]
       36 LOADN                            R12 208
       37 LOADN                            R13 1
       38 LOADN                            R14 3
       39 CALL                             R11 3 -1
       40 SETLIST                          R9 R10 -1 [1]
       42 SETTABLEKS                       R9 R8 K13 ["defaultDates"]
       44 GETTABLEKS                       R9 R0 K24 ["controls"]
       46 GETTABLEKS                       R9 R9 K14 ["hasError"]
       48 SETTABLEKS                       R9 R8 K14 ["hasError"]
       50 GETTABLEKS                       R9 R0 K24 ["controls"]
       52 GETTABLEKS                       R9 R9 K15 ["isDisabled"]
       54 SETTABLEKS                       R9 R8 K15 ["isDisabled"]
       56 GETTABLEKS                       R9 R0 K24 ["controls"]
       58 GETTABLEKS                       R9 R9 K16 ["label"]
       60 SETTABLEKS                       R9 R8 K16 ["label"]
       62 DUPCLOSURE                       R9 K25 [PROTO_8]
       63 SETTABLEKS                       R9 R8 K17 ["onChanged"]
       65 GETTABLEKS                       R10 R0 K24 ["controls"]
       67 GETTABLEKS                       R10 R10 K26 ["showUnselectableDates"]
       69 JUMPIFNOT                        R10 ; [+12]
       70 DUPTABLE                         R9 K29 [{"startDate", "endDate"}]
       71 SETTABLEKS                       R1 R9 K27 ["startDate"]
       73 GETIMPORT                        R10 K31 [DateTime.fromUnixTimestamp]
       75 GETTABLEKS                       R12 R1 K33 ["UnixTimestamp"]
       77 ADDK                             R11 R12 K32 [172800]
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K28 ["endDate"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R9
       83 SETTABLEKS                       R9 R8 K18 ["selectableDateRange"]
       85 GETUPVAL                         R9 3
       86 GETTABLEKS                       R9 R9 K34 ["Dual"]
       88 SETTABLEKS                       R9 R8 K19 ["variant"]
       90 GETTABLEKS                       R10 R0 K24 ["controls"]
       92 GETTABLEKS                       R10 R10 K35 ["fullWidth"]
       94 JUMPIFNOT                        R10 ; [+6]
       95 GETIMPORT                        R9 K37 [UDim.new]
       97 LOADN                            R10 1
       98 LOADN                            R11 0
       99 CALL                             R9 2 1
      100 JUMP                             ; [+8]
      101 GETIMPORT                        R9 K37 [UDim.new]
      103 LOADN                            R10 0
      104 GETTABLEKS                       R11 R0 K24 ["controls"]
      106 GETTABLEKS                       R11 R11 K20 ["width"]
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K20 ["width"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K11 ["DateTimePicker"]
      114 CALL                             R2 3 -1
      115 RETURN                           R2 -1

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
       35 DUPTABLE                         R6 K16 [{"summary", "stories", "controls"}]
       36 LOADK                            R7 K9 ["DateTimePicker"]
       37 SETTABLEKS                       R7 R6 K13 ["summary"]
       39 NEWTABLE                         R7 0 5
       41 DUPTABLE                         R8 K19 [{"name", "story"}]
       42 LOADK                            R9 K20 ["DateTimePicker - Single With Time"]
       43 SETTABLEKS                       R9 R8 K17 ["name"]
       45 DUPCLOSURE                       R9 K21 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R9 R8 K18 ["story"]
       52 DUPTABLE                         R9 K19 [{"name", "story"}]
       53 LOADK                            R10 K22 ["DateTimePicker - Dual"]
       54 SETTABLEKS                       R10 R9 K17 ["name"]
       56 DUPCLOSURE                       R10 K23 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R10 R9 K18 ["story"]
       63 DUPTABLE                         R10 K19 [{"name", "story"}]
       64 LOADK                            R11 K24 ["DateTimePicker - Single"]
       65 SETTABLEKS                       R11 R10 K17 ["name"]
       67 DUPCLOSURE                       R11 K25 [PROTO_5]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R11 R10 K18 ["story"]
       74 DUPTABLE                         R11 K19 [{"name", "story"}]
       75 LOADK                            R12 K26 ["DateTimePicker - Single with default selected date 1/1/2000"]
       76 SETTABLEKS                       R12 R11 K17 ["name"]
       78 DUPCLOSURE                       R12 K27 [PROTO_7]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R12 R11 K18 ["story"]
       85 DUPTABLE                         R12 K19 [{"name", "story"}]
       86 LOADK                            R13 K28 ["DateTimePicker - Dual with default selected date 1/1/2000 - 1/3/2000"]
       87 SETTABLEKS                       R13 R12 K17 ["name"]
       89 DUPCLOSURE                       R13 K29 [PROTO_9]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R13 R12 K18 ["story"]
       96 SETLIST                          R7 R8 5 [1]
       98 SETTABLEKS                       R7 R6 K14 ["stories"]
      100 DUPTABLE                         R7 K36 [{"fullWidth", "hasError", "isDisabled", "label", "showUnselectableDates", "width"}]
      101 LOADB                            R8 0
      102 SETTABLEKS                       R8 R7 K30 ["fullWidth"]
      104 LOADB                            R8 0
      105 SETTABLEKS                       R8 R7 K31 ["hasError"]
      107 LOADB                            R8 0
      108 SETTABLEKS                       R8 R7 K32 ["isDisabled"]
      110 LOADK                            R8 K37 ["Date"]
      111 SETTABLEKS                       R8 R7 K33 ["label"]
      113 LOADB                            R8 0
      114 SETTABLEKS                       R8 R7 K34 ["showUnselectableDates"]
      116 LOADN                            R8 144
      117 SETTABLEKS                       R8 R7 K35 ["width"]
      119 SETTABLEKS                       R7 R6 K15 ["controls"]
      121 RETURN                           R6 1
