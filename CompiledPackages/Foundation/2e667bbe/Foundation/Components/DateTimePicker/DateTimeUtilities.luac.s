PROTO_0:
        0 NEWTABLE                         R2 0 12
        2 LOADN                            R3 31
        3 LOADN                            R4 28
        4 LOADN                            R5 31
        5 LOADN                            R6 30
        6 LOADN                            R7 31
        7 LOADN                            R8 30
        8 LOADN                            R9 31
        9 LOADN                            R10 31
       10 LOADN                            R11 30
       11 LOADN                            R12 31
       12 LOADN                            R13 30
       13 LOADN                            R14 31
       14 SETLIST                          R2 R3 12 [1]
       16 JUMPIFNOTEQKN                    R0 K0 [2] ; [+12]
       18 MODK                             R3 R1 K1 [4]
       19 JUMPIFNOTEQKN                    R3 K2 [0] ; [+4]
       21 MODK                             R3 R1 K3 [100]
       22 JUMPIFNOTEQKN                    R3 K2 [0] ; [+4]
       24 MODK                             R3 R1 K4 [400]
       25 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
       27 LOADN                            R3 29
       28 RETURN                           R3 1
       29 GETTABLE                         R3 R2 R0
       30 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [DateTime.fromLocalTime]
        2 MOVE                             R3 R1
        3 MOVE                             R4 R0
        4 LOADN                            R5 1
        5 CALL                             R2 3 1
        6 JUMPIFNOT                        R2 ; [+12]
        7 LOADK                            R5 K3 ["d"]
        8 LOADK                            R6 K4 ["en-us"]
        9 NAMECALL                         R3 R2 K5 ["FormatLocalTime"]
       11 CALL                             R3 3 1
       12 FASTCALL1                        TONUMBER R3 ; [+3]
       13 MOVE                             R6 R3
       14 GETIMPORT                        R5 K8 [tonumber]
       16 CALL                             R5 1 1
       17 ORK                              R4 R5 K6 [0]
       18 RETURN                           R4 1
       19 LOADN                            R3 0
       20 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [DateTime.fromLocalTime]
        2 MOVE                             R3 R1
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 CALL                             R2 3 1
        9 JUMPIFNOT                        R2 ; [+12]
       10 LOADK                            R5 K3 ["d"]
       11 LOADK                            R6 K4 ["en-us"]
       12 NAMECALL                         R3 R2 K5 ["FormatLocalTime"]
       14 CALL                             R3 3 1
       15 FASTCALL1                        TONUMBER R3 ; [+3]
       16 MOVE                             R6 R3
       17 GETIMPORT                        R5 K8 [tonumber]
       19 CALL                             R5 1 1
       20 ORK                              R4 R5 K6 [0]
       21 RETURN                           R4 1
       22 LOADN                            R3 0
       23 RETURN                           R3 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["ToLocalTime"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R3 K3 [DateTime.fromLocalTime]
        5 GETTABLEKS                       R4 R1 K4 ["Year"]
        7 GETTABLEKS                       R5 R1 K5 ["Month"]
        9 GETTABLEKS                       R6 R1 K6 ["Day"]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R2 R3 K7 ["UnixTimestamp"]
       14 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["startDate"]
        2 NAMECALL                         R4 R3 K1 ["ToLocalTime"]
        4 CALL                             R4 1 1
        5 GETIMPORT                        R5 K4 [DateTime.fromLocalTime]
        7 GETTABLEKS                       R6 R4 K5 ["Year"]
        9 GETTABLEKS                       R7 R4 K6 ["Month"]
       11 GETTABLEKS                       R8 R4 K7 ["Day"]
       13 CALL                             R5 3 1
       14 GETTABLEKS                       R2 R5 K8 ["UnixTimestamp"]
       16 GETTABLEKS                       R4 R1 K9 ["endDate"]
       18 NAMECALL                         R5 R4 K1 ["ToLocalTime"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [DateTime.fromLocalTime]
       23 GETTABLEKS                       R7 R5 K5 ["Year"]
       25 GETTABLEKS                       R8 R5 K6 ["Month"]
       27 GETTABLEKS                       R9 R5 K7 ["Day"]
       29 CALL                             R6 3 1
       30 GETTABLEKS                       R3 R6 K8 ["UnixTimestamp"]
       32 NAMECALL                         R5 R0 K1 ["ToLocalTime"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [DateTime.fromLocalTime]
       37 GETTABLEKS                       R7 R5 K5 ["Year"]
       39 GETTABLEKS                       R8 R5 K6 ["Month"]
       41 GETTABLEKS                       R9 R5 K7 ["Day"]
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R4 R6 K8 ["UnixTimestamp"]
       46 LOADB                            R5 0
       47 JUMPIFNOTLE                      R2 R4 ; [+5]
       49 JUMPIFLE                         R4 R3 ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [3] ; [+25]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["^(%d%d)[/%.%-](%d%d)[/%.%-](%d%d%d%d)$"]
        5 NAMECALL                         R0 R0 K2 ["match"]
        7 CALL                             R0 2 3
        8 GETIMPORT                        R3 K5 [DateTime.fromLocalTime]
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R5 R2
       12 GETIMPORT                        R4 K7 [tonumber]
       14 CALL                             R4 1 1
       15 FASTCALL1                        TONUMBER R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K7 [tonumber]
       19 CALL                             R5 1 1
       20 FASTCALL1                        TONUMBER R1 ; [+3]
       21 MOVE                             R7 R1
       22 GETIMPORT                        R6 K7 [tonumber]
       24 CALL                             R6 1 1
       25 CALL                             R3 3 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R0 0
       28 JUMPIFNOTEQKN                    R0 K8 [5] ; [+25]
       30 GETUPVAL                         R0 1
       31 LOADK                            R2 K9 ["^(%d%d%d%d)[/%.%-](%d%d)[/%.%-](%d%d)$"]
       32 NAMECALL                         R0 R0 K2 ["match"]
       34 CALL                             R0 2 3
       35 GETIMPORT                        R3 K5 [DateTime.fromLocalTime]
       37 FASTCALL1                        TONUMBER R0 ; [+3]
       38 MOVE                             R5 R0
       39 GETIMPORT                        R4 K7 [tonumber]
       41 CALL                             R4 1 1
       42 FASTCALL1                        TONUMBER R1 ; [+3]
       43 MOVE                             R6 R1
       44 GETIMPORT                        R5 K7 [tonumber]
       46 CALL                             R5 1 1
       47 FASTCALL1                        TONUMBER R2 ; [+3]
       48 MOVE                             R7 R2
       49 GETIMPORT                        R6 K7 [tonumber]
       51 CALL                             R6 1 1
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1
       54 GETIMPORT                        R0 K11 [error]
       56 LOADK                            R2 K12 ["Invalid date format: "]
       57 GETUPVAL                         R3 1
       58 CONCAT                           R1 R2 R3
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K1 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R1 R0 K2 ["match"]
        3 CALL                             R1 2 1
        4 ORK                              R0 R1 K0 [""]
        5 LOADK                            R3 K3 ["[/%.%-]"]
        6 NAMECALL                         R1 R0 K4 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+3]
       10 LOADNIL                          R2
       11 CLOSEUPVALS                      R0
       12 RETURN                           R2 1
       13 GETIMPORT                        R2 K6 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R0
       18 CALL                             R2 1 2
       19 JUMPIFNOT                        R2 ; [+3]
       20 JUMPIFNOT                        R3 ; [+2]
       21 CLOSEUPVALS                      R0
       22 RETURN                           R3 1
       23 LOADNIL                          R4
       24 CLOSEUPVALS                      R0
       25 RETURN                           R4 1

PROTO_7:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+4]
        2 LOADN                            R2 12
        3 SUBK                             R3 R1 K0 [1]
        4 RETURN                           R2 2
        5 SUBK                             R2 R0 K0 [1]
        6 MOVE                             R3 R1
        7 RETURN                           R2 2

PROTO_8:
        0 JUMPIFNOTEQKN                    R0 K0 [12] ; [+4]
        2 LOADN                            R2 1
        3 ADDK                             R3 R1 K1 [1]
        4 RETURN                           R2 2
        5 ADDK                             R2 R0 K1 [1]
        6 MOVE                             R3 R1
        7 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Utility"]
       11 GETTABLEKS                       R3 R4 K7 ["Localization"]
       13 GETTABLEKS                       R2 R3 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 12
       18 LOADK                            R5 K9 ["CommonUI.Controls.Label.January"]
       19 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       21 CALL                             R3 2 1
       22 SETTABLEN                        R3 R2 1
       23 LOADK                            R5 K11 ["CommonUI.Controls.Label.February"]
       24 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       26 CALL                             R3 2 1
       27 SETTABLEN                        R3 R2 2
       28 LOADK                            R5 K12 ["CommonUI.Controls.Label.March"]
       29 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       31 CALL                             R3 2 1
       32 SETTABLEN                        R3 R2 3
       33 LOADK                            R5 K13 ["CommonUI.Controls.Label.April"]
       34 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       36 CALL                             R3 2 1
       37 SETTABLEN                        R3 R2 4
       38 LOADK                            R5 K14 ["CommonUI.Controls.Label.May"]
       39 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       41 CALL                             R3 2 1
       42 SETTABLEN                        R3 R2 5
       43 LOADK                            R5 K15 ["CommonUI.Controls.Label.June"]
       44 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       46 CALL                             R3 2 1
       47 SETTABLEN                        R3 R2 6
       48 LOADK                            R5 K16 ["CommonUI.Controls.Label.July"]
       49 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       51 CALL                             R3 2 1
       52 SETTABLEN                        R3 R2 7
       53 LOADK                            R5 K17 ["CommonUI.Controls.Label.August"]
       54 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       56 CALL                             R3 2 1
       57 SETTABLEN                        R3 R2 8
       58 LOADK                            R5 K18 ["CommonUI.Controls.Label.September"]
       59 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       61 CALL                             R3 2 1
       62 SETTABLEN                        R3 R2 9
       63 LOADK                            R5 K19 ["CommonUI.Controls.Label.October"]
       64 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       66 CALL                             R3 2 1
       67 SETTABLEN                        R3 R2 10
       68 LOADK                            R5 K20 ["CommonUI.Controls.Label.November"]
       69 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       71 CALL                             R3 2 1
       72 SETTABLEN                        R3 R2 11
       73 LOADK                            R5 K21 ["CommonUI.Controls.Label.December"]
       74 NAMECALL                         R3 R1 K10 ["FormatByKey"]
       76 CALL                             R3 2 1
       77 SETTABLEN                        R3 R2 12
       78 NEWTABLE                         R3 0 7
       80 LOADK                            R6 K22 ["CommonUI.Controls.Label.SundayAbbreviated"]
       81 NAMECALL                         R4 R1 K10 ["FormatByKey"]
       83 CALL                             R4 2 1
       84 SETTABLEN                        R4 R3 1
       85 LOADK                            R6 K23 ["CommonUI.Controls.Label.MondayAbbreviated"]
       86 NAMECALL                         R4 R1 K10 ["FormatByKey"]
       88 CALL                             R4 2 1
       89 SETTABLEN                        R4 R3 2
       90 LOADK                            R6 K24 ["CommonUI.Controls.Label.TuesdayAbbreviated"]
       91 NAMECALL                         R4 R1 K10 ["FormatByKey"]
       93 CALL                             R4 2 1
       94 SETTABLEN                        R4 R3 3
       95 LOADK                            R6 K25 ["CommonUI.Controls.Label.WednesdayAbbreviation"]
       96 NAMECALL                         R4 R1 K10 ["FormatByKey"]
       98 CALL                             R4 2 1
       99 SETTABLEN                        R4 R3 4
      100 LOADK                            R6 K26 ["CommonUI.Controls.Label.ThursdayAbbreviated"]
      101 NAMECALL                         R4 R1 K10 ["FormatByKey"]
      103 CALL                             R4 2 1
      104 SETTABLEN                        R4 R3 5
      105 LOADK                            R6 K27 ["CommonUI.Controls.Label.FridayAbbreviated"]
      106 NAMECALL                         R4 R1 K10 ["FormatByKey"]
      108 CALL                             R4 2 1
      109 SETTABLEN                        R4 R3 6
      110 LOADK                            R6 K28 ["CommonUI.Controls.Label.SaturdayAbbreviated"]
      111 NAMECALL                         R4 R1 K10 ["FormatByKey"]
      113 CALL                             R4 2 1
      114 SETTABLEN                        R4 R3 7
      115 DUPCLOSURE                       R4 K29 [PROTO_0]
      116 DUPCLOSURE                       R5 K30 [PROTO_1]
      117 DUPCLOSURE                       R6 K31 [PROTO_2]
      118 CAPTURE                          VAL R4
      119 DUPCLOSURE                       R7 K32 [PROTO_3]
      120 DUPCLOSURE                       R8 K33 [PROTO_4]
      121 DUPCLOSURE                       R9 K34 [PROTO_6]
      122 DUPCLOSURE                       R10 K35 [PROTO_7]
      123 DUPCLOSURE                       R11 K36 [PROTO_8]
      124 DUPTABLE                         R12 K48 [{"DATE_COMPOSITE_TOKEN", "getDaysInMonth", "getFirstDayOfWeek", "getLastDayOfWeek", "getNextMonthInfo", "getPrevMonthInfo", "isDateWithinRange", "getDateTimeFromText", "monthMap", "roundToStartOfDay", "weekdays"}]
      125 LOADK                            R13 K49 ["L"]
      126 SETTABLEKS                       R13 R12 K37 ["DATE_COMPOSITE_TOKEN"]
      128 SETTABLEKS                       R4 R12 K38 ["getDaysInMonth"]
      130 SETTABLEKS                       R5 R12 K39 ["getFirstDayOfWeek"]
      132 SETTABLEKS                       R6 R12 K40 ["getLastDayOfWeek"]
      134 SETTABLEKS                       R11 R12 K41 ["getNextMonthInfo"]
      136 SETTABLEKS                       R10 R12 K42 ["getPrevMonthInfo"]
      138 SETTABLEKS                       R8 R12 K43 ["isDateWithinRange"]
      140 SETTABLEKS                       R9 R12 K44 ["getDateTimeFromText"]
      142 SETTABLEKS                       R2 R12 K45 ["monthMap"]
      144 SETTABLEKS                       R7 R12 K46 ["roundToStartOfDay"]
      146 SETTABLEKS                       R3 R12 K47 ["weekdays"]
      148 RETURN                           R12 1
