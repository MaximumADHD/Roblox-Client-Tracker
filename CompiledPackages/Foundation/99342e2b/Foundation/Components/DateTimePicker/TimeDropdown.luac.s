PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Minute"]
        5 MODK                             R2 R3 K0 [30]
        6 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 LOADN                            R4 0
       11 LOADN                            R2 47
       12 LOADN                            R3 1
       13 FORNPREP                         R2
       14 DIVK                             R6 R4 K3 [2]
       15 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       16 GETIMPORT                        R5 K6 [math.floor]
       18 CALL                             R5 1 1
       19 MODK                             R7 R4 K3 [2]
       20 MULK                             R6 R7 K0 [30]
       21 GETIMPORT                        R7 K9 [DateTime.fromLocalTime]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K10 ["Year"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K11 ["Month"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K12 ["Day"]
       32 MOVE                             R11 R5
       33 MOVE                             R12 R6
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R13 R14 K13 ["Second"]
       37 CALL                             R7 6 1
       38 JUMPIFNOT                        R1 ; [+41]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K14 ["UnixTimestamp"]
       42 GETTABLEKS                       R9 R7 K14 ["UnixTimestamp"]
       44 JUMPIFNOTLT                      R8 R9 ; [+35]
       46 DUPTABLE                         R10 K20 [{"icon", "id", "isChecked", "isDisabled", "text"}]
       47 LOADNIL                          R11
       48 SETTABLEKS                       R11 R10 K15 ["icon"]
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K14 ["UnixTimestamp"]
       53 SETTABLEKS                       R11 R10 K16 ["id"]
       55 LOADB                            R11 1
       56 SETTABLEKS                       R11 R10 K17 ["isChecked"]
       58 LOADB                            R11 1
       59 SETTABLEKS                       R11 R10 K18 ["isDisabled"]
       61 GETUPVAL                         R11 1
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R13 R14 K21 ["TIME_COMPOSITE_TOKEN"]
       65 GETUPVAL                         R15 3
       66 GETTABLEKS                       R14 R15 K22 ["RobloxLocaleId"]
       68 NAMECALL                         R11 R11 K23 ["FormatLocalTime"]
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K19 ["text"]
       73 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       75 MOVE                             R9 R0
       76 GETIMPORT                        R8 K26 [table.insert]
       78 CALL                             R8 2 0
       79 LOADB                            R1 0
       80 DUPTABLE                         R10 K20 [{"icon", "id", "isChecked", "isDisabled", "text"}]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K15 ["icon"]
       84 GETTABLEKS                       R11 R7 K14 ["UnixTimestamp"]
       86 SETTABLEKS                       R11 R10 K16 ["id"]
       88 GETTABLEKS                       R12 R7 K14 ["UnixTimestamp"]
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R13 R14 K14 ["UnixTimestamp"]
       93 JUMPIFEQ                         R12 R13 ; [+2]
       95 LOADB                            R11 0 +1
       96 LOADB                            R11 1
       97 SETTABLEKS                       R11 R10 K17 ["isChecked"]
       99 GETTABLEKS                       R12 R7 K14 ["UnixTimestamp"]
      101 GETUPVAL                         R14 1
      102 GETTABLEKS                       R13 R14 K14 ["UnixTimestamp"]
      104 JUMPIFEQ                         R12 R13 ; [+2]
      106 LOADB                            R11 0 +1
      107 LOADB                            R11 1
      108 SETTABLEKS                       R11 R10 K18 ["isDisabled"]
      110 GETUPVAL                         R14 2
      111 GETTABLEKS                       R13 R14 K21 ["TIME_COMPOSITE_TOKEN"]
      113 GETUPVAL                         R15 3
      114 GETTABLEKS                       R14 R15 K22 ["RobloxLocaleId"]
      116 NAMECALL                         R11 R7 K23 ["FormatLocalTime"]
      118 CALL                             R11 3 1
      119 SETTABLEKS                       R11 R10 K19 ["text"]
      121 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      123 MOVE                             R9 R0
      124 GETIMPORT                        R8 K26 [table.insert]
      126 CALL                             R8 2 0
      127 FORNLOOP                         R2
      128 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["roundDownToNearestMinute"]
        7 GETTABLEKS                       R3 R1 K1 ["dateTime"]
        9 CALL                             R2 1 1
       10 NAMECALL                         R3 R2 K2 ["ToLocalTime"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 LOADN                            R5 200
       15 CALL                             R4 1 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U4
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R6 R7 K3 ["createElement"]
       24 GETUPVAL                         R8 6
       25 GETTABLEKS                       R7 R8 K4 ["Root"]
       27 DUPTABLE                         R8 K15 [{"items", "label", "LayoutOrder", "maxHeight", "onItemChanged", "placeholder", "size", "testId", "width", "value"}]
       28 MOVE                             R9 R5
       29 CALL                             R9 0 1
       30 SETTABLEKS                       R9 R8 K5 ["items"]
       32 LOADK                            R9 K16 [""]
       33 SETTABLEKS                       R9 R8 K6 ["label"]
       35 GETTABLEKS                       R9 R1 K17 ["layoutOrder"]
       37 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       39 SETTABLEKS                       R4 R8 K8 ["maxHeight"]
       41 GETTABLEKS                       R9 R1 K9 ["onItemChanged"]
       43 SETTABLEKS                       R9 R8 K9 ["onItemChanged"]
       45 GETUPVAL                         R9 7
       46 LOADK                            R11 K18 ["CommonUI.Controls.Label.SelectTheTime"]
       47 NAMECALL                         R9 R9 K19 ["FormatByKey"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K10 ["placeholder"]
       52 GETUPVAL                         R10 8
       53 GETTABLEKS                       R9 R10 K20 ["Medium"]
       55 SETTABLEKS                       R9 R8 K11 ["size"]
       57 GETTABLEKS                       R9 R1 K12 ["testId"]
       59 SETTABLEKS                       R9 R8 K12 ["testId"]
       61 GETTABLEKS                       R9 R1 K13 ["width"]
       63 SETTABLEKS                       R9 R8 K13 ["width"]
       65 GETTABLEKS                       R9 R2 K21 ["UnixTimestamp"]
       67 SETTABLEKS                       R9 R8 K14 ["value"]
       69 CALL                             R6 2 -1
       70 RETURN                           R6 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["DateTimePicker"]
       20 GETTABLEKS                       R4 R5 K10 ["DateTimeUtilities"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["Dropdown"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K12 ["Enums"]
       34 GETTABLEKS                       R6 R7 K13 ["InputSize"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R10 R0 K14 ["Utility"]
       41 GETTABLEKS                       R9 R10 K15 ["Wrappers"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R7 R8 K16 ["Services"]
       46 GETTABLEKS                       R6 R7 K17 ["LocalizationService"]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R10 R0 K14 ["Utility"]
       52 GETTABLEKS                       R9 R10 K18 ["Localization"]
       54 GETTABLEKS                       R8 R9 K19 ["Translator"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R10 R0 K14 ["Utility"]
       61 GETTABLEKS                       R9 R10 K20 ["useScaledValue"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R11 R0 K14 ["Utility"]
       68 GETTABLEKS                       R10 R11 K21 ["withDefaults"]
       70 CALL                             R9 1 1
       71 DUPTABLE                         R10 K24 [{"dateTime", "testId"}]
       72 GETIMPORT                        R11 K27 [DateTime.fromLocalTime]
       74 LOADN                            R12 208
       75 LOADN                            R13 1
       76 LOADN                            R14 1
       77 LOADN                            R15 0
       78 LOADN                            R16 0
       79 LOADN                            R17 0
       80 CALL                             R11 6 1
       81 SETTABLEKS                       R11 R10 K22 ["dateTime"]
       83 LOADK                            R11 K28 ["--foundation-time-dropdown"]
       84 SETTABLEKS                       R11 R10 K23 ["testId"]
       86 DUPCLOSURE                       R11 K29 [PROTO_1]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 RETURN                           R11 1
