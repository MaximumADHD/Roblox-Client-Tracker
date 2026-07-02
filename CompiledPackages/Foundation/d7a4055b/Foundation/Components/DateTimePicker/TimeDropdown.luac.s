PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Minute"]
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
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K10 ["Year"]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K11 ["Month"]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K12 ["Day"]
       32 MOVE                             R11 R5
       33 MOVE                             R12 R6
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K13 ["Second"]
       37 CALL                             R7 6 1
       38 JUMPIFNOT                        R1 ; [+32]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K14 ["UnixTimestamp"]
       42 GETTABLEKS                       R9 R7 K14 ["UnixTimestamp"]
       44 JUMPIFNOTLT                      R8 R9 ; [+26]
       46 DUPTABLE                         R10 K22 [{["icon"] = , ["id"], ["isChecked"] = True, ["isDisabled"] = True, ["text"]}]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K14 ["UnixTimestamp"]
       50 SETTABLEKS                       R11 R10 K17 ["id"]
       52 GETUPVAL                         R11 1
       53 GETUPVAL                         R13 2
       54 GETTABLEKS                       R13 R13 K23 ["TIME_COMPOSITE_TOKEN"]
       56 GETUPVAL                         R14 3
       57 GETTABLEKS                       R14 R14 K24 ["RobloxLocaleId"]
       59 NAMECALL                         R11 R11 K25 ["FormatLocalTime"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K21 ["text"]
       64 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       66 MOVE                             R9 R0
       67 GETIMPORT                        R8 K28 [table.insert]
       69 CALL                             R8 2 0
       70 LOADB                            R1 0
       71 DUPTABLE                         R10 K29 [{["icon"] = , ["id"], ["isChecked"], ["isDisabled"], ["text"]}]
       72 GETTABLEKS                       R11 R7 K14 ["UnixTimestamp"]
       74 SETTABLEKS                       R11 R10 K17 ["id"]
       76 GETTABLEKS                       R12 R7 K14 ["UnixTimestamp"]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K14 ["UnixTimestamp"]
       81 JUMPIFEQ                         R12 R13 ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 SETTABLEKS                       R11 R10 K18 ["isChecked"]
       87 GETTABLEKS                       R12 R7 K14 ["UnixTimestamp"]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R13 R13 K14 ["UnixTimestamp"]
       92 JUMPIFEQ                         R12 R13 ; [+2]
       94 LOADB                            R11 0 +1
       95 LOADB                            R11 1
       96 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
       98 GETUPVAL                         R13 2
       99 GETTABLEKS                       R13 R13 K23 ["TIME_COMPOSITE_TOKEN"]
      101 GETUPVAL                         R14 3
      102 GETTABLEKS                       R14 R14 K24 ["RobloxLocaleId"]
      104 NAMECALL                         R11 R7 K25 ["FormatLocalTime"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K21 ["text"]
      109 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      111 MOVE                             R9 R0
      112 GETIMPORT                        R8 K28 [table.insert]
      114 CALL                             R8 2 0
      115 FORNLOOP                         R2
      116 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["roundDownToNearestMinute"]
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
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R6 R6 K3 ["createElement"]
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K4 ["Root"]
       27 DUPTABLE                         R8 K16 [{["items"], ["label"] = "", ["LayoutOrder"], ["maxHeight"], ["onItemChanged"], ["placeholder"], ["size"], ["testId"], ["width"], ["value"]}]
       28 MOVE                             R9 R5
       29 CALL                             R9 0 1
       30 SETTABLEKS                       R9 R8 K5 ["items"]
       32 GETTABLEKS                       R9 R1 K17 ["layoutOrder"]
       34 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       36 SETTABLEKS                       R4 R8 K9 ["maxHeight"]
       38 GETTABLEKS                       R9 R1 K10 ["onItemChanged"]
       40 SETTABLEKS                       R9 R8 K10 ["onItemChanged"]
       42 GETUPVAL                         R9 7
       43 LOADK                            R11 K18 ["CommonUI.Controls.Label.SelectTheTime"]
       44 NAMECALL                         R9 R9 K19 ["FormatByKey"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K11 ["placeholder"]
       49 GETUPVAL                         R9 8
       50 GETTABLEKS                       R9 R9 K20 ["Medium"]
       52 SETTABLEKS                       R9 R8 K12 ["size"]
       54 GETTABLEKS                       R9 R1 K13 ["testId"]
       56 SETTABLEKS                       R9 R8 K13 ["testId"]
       58 GETTABLEKS                       R9 R1 K14 ["width"]
       60 SETTABLEKS                       R9 R8 K14 ["width"]
       62 GETTABLEKS                       R9 R2 K21 ["UnixTimestamp"]
       64 SETTABLEKS                       R9 R8 K15 ["value"]
       66 CALL                             R6 2 -1
       67 RETURN                           R6 -1

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
       20 GETTABLEKS                       R4 R4 K10 ["DateTimeUtilities"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R5 K11 ["Dropdown"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Utility"]
       41 GETTABLEKS                       R7 R7 K15 ["Wrappers"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R6 R6 K16 ["Services"]
       46 GETTABLEKS                       R6 R6 K17 ["LocalizationService"]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Utility"]
       52 GETTABLEKS                       R8 R8 K18 ["Localization"]
       54 GETTABLEKS                       R8 R8 K19 ["Translator"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K14 ["Utility"]
       61 GETTABLEKS                       R9 R9 K20 ["useScaledValue"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K14 ["Utility"]
       68 GETTABLEKS                       R10 R10 K21 ["withDefaults"]
       70 CALL                             R9 1 1
       71 DUPTABLE                         R10 K25 [{["dateTime"], ["testId"] = "--foundation-time-dropdown"}]
       72 GETIMPORT                        R11 K28 [DateTime.fromLocalTime]
       74 LOADN                            R12 2000
       75 LOADN                            R13 1
       76 LOADN                            R14 1
       77 LOADN                            R15 0
       78 LOADN                            R16 0
       79 LOADN                            R17 0
       80 CALL                             R11 6 1
       81 SETTABLEKS                       R11 R10 K22 ["dateTime"]
       83 DUPCLOSURE                       R11 K29 [PROTO_1]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R5
       93 RETURN                           R11 1
